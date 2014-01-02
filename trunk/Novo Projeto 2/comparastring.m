function [a,b,c]= comparastring (totallogin,totalsenha,nome,senha)

b=0;
c=0;
linhalogin=0;
linhasenha=0;

for i=1:3
    if strcmp(nome,totallogin(i))==1
        b=1;
        linhalogin=i;
        break
    end
    
end

for i=1:3
    if strcmp(senha,totalsenha(i))== 1 
        c=1;
        linhasenha=i;
        break
    end
    
end

if linhasenha == linhalogin
    a=b+c;
else 
    a=0;
end

end