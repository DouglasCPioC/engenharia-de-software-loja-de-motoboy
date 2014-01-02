function [listreg,tamr]= listaregiao ()

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
setdbprefs('DataReturnFormat','cellarray');
listreg = fetch(bd,'SELECT nomereg, codreg FROM regiao');
tamr= size (listreg);



end