function [codcli]= pegacodcli(nome)
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
results = fetch(bd,'SELECT codcli,nomecli FROM cliente');
tam= size (results);


for i=1:tam(1)
    if strcmp(nome,results(i,2))==1   
        codcli= results{i,1};
        break
    end
    
end

end