function [codboy]= pegacodboy(nomeboy)
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
results = fetch(bd,'SELECT codboy,nomeboy FROM motoboy');
tam= size (results);


for i=1:tam(1)
    if strcmp(nomeboy,results(i,2))==1   
        codboy= results{i,1};
        break
    end
    
end

end