classdef saida
   
    properties
        numsai;
        datasai;
        horasai;
        horavolta;
    end
    
    methods
        function sai=saida(num,data,hora,horav)
        sai.numsai=num;
        sai.datasai=data;
        sai.horasai=hora;
        sai.horavolta=horav;
        end
    end
    
end

