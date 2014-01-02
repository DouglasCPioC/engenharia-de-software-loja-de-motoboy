function [tel]= pegatel(nomecli)

[totalcli, totaltel,tam]= listaclienteetel ();
tel=0;

for i=1:tam(1)
    if strcmp(nomecli,totalcli(i))==1
        tel= totaltel(i);
        break
    end
    
end

end