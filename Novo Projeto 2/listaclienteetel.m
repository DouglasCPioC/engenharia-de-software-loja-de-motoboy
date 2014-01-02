function [totalcli, totaltel,tam]= listaclienteetel ()

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
results = fetch(bd,'SELECT nomecli, telcli FROM cliente');
tam= size (results);

%%%%%% Primeria entrada é linha, a segunda é coluna%%%%%

for i=1:tam(1)
   totalcli(i) = cellstr(results{i,1});
end

for i=1:tam(1)
    totaltel(i) = results{i,2};
end

end