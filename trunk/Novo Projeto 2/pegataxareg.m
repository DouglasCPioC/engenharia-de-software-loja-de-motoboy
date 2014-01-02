function [valorreg]= pegataxareg(codreg)

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');

valorreg=0;
switch codreg
    case 1
       e = exec(bd,'SELECT taxareg FROM regiao WHERE nomereg= "sul" ');  
       dat = fetch(e, 3);
       valorreg= dat.Data{1,1};
    case 2
       e = exec(bd,'SELECT taxareg FROM regiao WHERE nomereg= "suldeste"');  
       dat = fetch(e, 3);
       valorreg= dat.Data{1,1};
end

end