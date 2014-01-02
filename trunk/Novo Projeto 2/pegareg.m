function [reg,codreg]= pegareg(bairro)

[listbairro,tamb]= listabairro ();
[listreg,tamr]= listaregiao ();
codreg=0;

for i=1:tamb(1)
    if strcmp(bairro,listbairro(i,1))==1
        codreg=cell2mat(listbairro(i,2));
        break
    end  
end

for i=1:tamr(1)
    comp=cell2mat(listreg(i,2));
    if  codreg == comp          
        reg= listreg(i,1);
        break
    end  
end

end