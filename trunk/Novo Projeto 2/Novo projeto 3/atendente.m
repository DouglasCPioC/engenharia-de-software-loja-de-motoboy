classdef atendente
    
    properties
        codat;
        nomeat; 
        statusat;
    end
    
    methods
        function at=atendente(cod,nome,valor)
        at.codat=cod;
        at.nomeat=nome;
        at.statusat=valor;
        end
    end
    
end

