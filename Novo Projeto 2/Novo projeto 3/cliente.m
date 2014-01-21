classdef cliente
  
    properties
        codcli;
        nomecli;
        telcli;
        CPF;
        statuscli;
    end
    
    methods
        function cli=cliente(cod,nome,tel,cpf,valor)
        cli.codcli=cod;
        cli.nomecli=nome;
        cli.telcli=tel;
        cli.CPF=cpf;
        cli.statuscli=valor;
        end
    end
    
end

