function [valor]= pegataxaservico(caso)

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');


switch caso
    case 1
       e = exec(bd,'SELECT taxa FROM tiposerv WHERE nometipo= "entrega" ');  
       dat = fetch(e, 3);
       valor= dat.Data{1,1};
    case 2
       e = exec(bd,'SELECT taxa FROM tiposerv WHERE nometipo= "pagamento"');  
       dat = fetch(e, 3);
       valor= dat.Data{1,1};
end

end