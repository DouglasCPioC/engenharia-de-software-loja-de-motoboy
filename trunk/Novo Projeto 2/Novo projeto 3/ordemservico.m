classdef ordemservico
   
    properties %%(GetAccess=private)
        numord;
        dataemissao;
        datalimite;
        descricao;
        total;
        statusos;
        
    end
    
    methods
        function os=ordemservico(num,data,datali,descr,valor,status)
        os.numord= num;
        os.dataemissao=data;
        os.datalimite=datali;
        os.descricao=descr;
        os.total=valor;
        os.statusos=status;
        end
    end
    
end

