function varargout = gerarsaida(varargin)
% GERARSAIDA MATLAB code for gerarsaida.fig
%      GERARSAIDA, by itself, creates a new GERARSAIDA or raises the existing
%      singleton*.
%
%      H = GERARSAIDA returns the handle to a new GERARSAIDA or the handle to
%      the existing singleton*.
%
%      GERARSAIDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GERARSAIDA.M with the given input arguments.
%
%      GERARSAIDA('Property','Value',...) creates a new GERARSAIDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gerarsaida_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gerarsaida_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gerarsaida

% Last Modified by GUIDE v2.5 21-Jan-2014 10:06:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gerarsaida_OpeningFcn, ...
                   'gui_OutputFcn',  @gerarsaida_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gerarsaida is made visible.
function gerarsaida_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gerarsaida (see VARARGIN)

% Choose default command line output for gerarsaida
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gerarsaida wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gerarsaida_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
caso = get(handles.popupmenu1, 'Value');

switch caso
    case 1
            setdbprefs('DataReturnFormat','cellarray');
            results = fetch(bd,'SELECT dataemissao ,descr,total FROM ordemserv O INNER JOIN bairro B ON O.codbairro=B.codbairro WHERE codreg="1" AND statusos="0"');   
    case 2
            setdbprefs('DataReturnFormat','cellarray');
            results = fetch(bd,'SELECT dataemissao ,descr,total FROM ordemserv O INNER JOIN bairro B ON O.codbairro=B.codbairro WHERE codreg="2" AND statusos="0"');
    case 3
            setdbprefs('DataReturnFormat','cellarray');
            results = fetch(bd,'SELECT dataemissao ,descr,total FROM ordemserv O INNER JOIN bairro B ON O.codbairro=B.codbairro WHERE codreg="3" AND statusos="0"');
    case 4
            setdbprefs('DataReturnFormat','cellarray');
            results = fetch(bd,'SELECT dataemissao ,descr,total FROM ordemserv O INNER JOIN bairro B ON O.codbairro=B.codbairro WHERE codreg="4" AND statusos="0"');
end     

coluna = {'Data','          Descrição          ','Total a Pagar'};
rows= {};
% position: [horizontal vertical dimensão(hori) dim(vertical)]
teste = uitable('Position',[270 260 267 100],'Rowname',rows,'Columnname',coluna,'Data',results);


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
 bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
 setdbprefs('DataReturnFormat','cellarray');
 results2 = fetch(bd,'SELECT nomeboy,statusmoto FROM motoboy M INNER JOIN posse P ON M.codboy=P.codboy INNER JOIN moto MT ON MT.codmoto=P.codmoto');   
 %numsai=fetch(bd,'SELECT COUNT(numsai) FROM saida S INNER JOIN moto MT ON MT.codmoto=S.codmoto GROUP BY codmoto')
coluna = {'Nome','Status'};
rows= {};
% position: [horizontal vertical dimensão(hori) dim(vertical)]
teste2 = uitable('Position',[280 150 230 90],'Rowname',rows,'Columnname',coluna,'Data',results2);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%os = get(handles.popupmenu1, 'Value');
nomeboy=get(handles.edit2,'String');
data=get(handles.edit3,'String');
hora=get(handles.edit6,'String');
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
%update(bd,'ordemserv',{'numsai'},1,'where numord= ''16,17,18''');
NaN=isempty(nomeboy);
NaN2=isempty(data);
NaN3=isempty(hora);

if NaN == 1 | NaN2==1 | NaN3==1 
    msgbox('Verifique se todos os campos estão preenchidos','Erro','error');     
else
[codboy]= pegacodboy(nomeboy);
colnames = {'datasai','horasai','codboy'};
guardanobd = {data,hora,codboy};
insert(bd, 'saida', colnames, guardanobd);
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function retorna_Callback(hObject, eventdata, handles)
% hObject    handle to retorna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close 
guihandles(telaprincipal);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close 
guihandles(telaprincipal);