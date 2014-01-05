

clc

javaaddpath 'mysql-connector-java-5.1.27-bin.jar';
bd = database('empresamoto', 'root', '', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost/');
a='Luizito';
colnames = {'nomecli','telcli'};
exdata = {a,666666};
%%exdata_table = cell2table(exdata,'VariableNames',colnames)
insert(bd, 'cliente', colnames, exdata);

