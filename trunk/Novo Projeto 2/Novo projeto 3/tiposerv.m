
classdef tiposerv
    
    properties %%(GetAccess=private)
        codtipo;
        nometipo;
        taxa;
        
    end
    
    methods
        function obj=tiposerv(cod,nome,valor)
        obj.codtipo=cod;
        obj.nometipo=nome;
        obj.taxa=valor;
        end
    end
    
end

