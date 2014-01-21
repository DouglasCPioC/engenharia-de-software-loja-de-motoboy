classdef moto
  
    properties
        codmoto;
        placa;
        cor;
        statusmoto;
    end
    
    methods
        function mot=moto(cod,pl,color,valor)
        mot.codmoto=cod;
        mot.placa=pl;
        mot.cor=color;
        mot.statusmoto=valor;
        end
    end
    
end

