
function [codreg]= pegacodreg(reg)
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
results = fetch(bd,'SELECT codreg,nomereg FROM regiao');
tam= size (results);


for i=1:tam(1)
    if strcmp(reg,results(i,2))==1   
        codreg= results{i,1};
        break
    end
    
end

end