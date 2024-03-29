function varargout = telaprincipal(varargin)
% TELAPRINCIPAL MATLAB code for telaprincipal.fig
%      TELAPRINCIPAL, by itself, creates a new TELAPRINCIPAL or raises the existing
%      singleton*.
%
%      H = TELAPRINCIPAL returns the handle to a new TELAPRINCIPAL or the handle to
%      the existing singleton*.
%
%      TELAPRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TELAPRINCIPAL.M with the given input arguments.
%
%      TELAPRINCIPAL('Property','Value',...) creates a new TELAPRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before telaprincipal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to telaprincipal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help telaprincipal

% Last Modified by GUIDE v2.5 05-Jan-2014 01:24:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @telaprincipal_OpeningFcn, ...
                   'gui_OutputFcn',  @telaprincipal_OutputFcn, ...
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


% --- Executes just before telaprincipal is made visible.
function telaprincipal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to telaprincipal (see VARARGIN)

% Choose default command line output for telaprincipal
handles.output = hObject;
axes(handles.axes1);
a = imread('MOTOBOY.jpg');
image (a);
axis off
axes(handles.axes1);

axes(handles.axes2);
b = imread('logo.jpg');
image (b);
axis off
axes(handles.axes2);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes telaprincipal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = telaprincipal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function logout_Callback(hObject, eventdata, handles)
% hObject    handle to logout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button = questdlg('Tem certeza que deseja fechar o programa?','Fechar programa','Sim','N�o','N�o');
    switch button
        case 'Sim',
            close 
            guihandles(login); 
        case 'N�o',
            quit cancel;
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

button = questdlg('O cliente j� est� cadastrado no sistema?','Fechar programa','Sim','N�o','N�o');
    switch button
        case 'Sim',
            close 
            guihandles(novopedido);
        case 'N�o',
            quit cancel;
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
guihandles(gerarsaida); 