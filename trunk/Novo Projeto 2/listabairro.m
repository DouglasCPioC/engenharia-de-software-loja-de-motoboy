function [listbairro,tamb]= listabairro ()

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
listbairro = fetch(bd,'SELECT nomebairro, codreg FROM bairro');
tamb= size (listbairro);



end