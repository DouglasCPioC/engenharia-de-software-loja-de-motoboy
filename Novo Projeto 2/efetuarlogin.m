function [totallogin, totalsenha]= efetuarlogin ()

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('funcionario', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
results = fetch(bd,'SELECT login, senha FROM usuario');
tam= size (results);

%%%%%% Primeria entrada é linha, a segunda é coluna%%%%%

for i=1:tam(1)
    totallogin(i) = results(i,1);
end
for i=1:tam(1)
    totalsenha(i) = results(i,2);
end

end