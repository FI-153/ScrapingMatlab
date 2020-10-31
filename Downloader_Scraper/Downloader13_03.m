%fogli scaricati vengono salvati in questa certella
cd FogliScaricati/

for anno = 2013:-1:2003
    
    annoStr = int2str(anno);
    pathRaw = append('https://dgsaie.mise.gov.it/pub/bollettino/',annoStr,'/trimestre4/pagina');
    
    nomeBenzina = append(annoStr,'_Be');
    nomeGasolio = append(annoStr,'_Ga');
    nomeGPL = append(annoStr,'_Gpl');
    
    pathBenzina = append(pathRaw, '70-71.htm');
    pathGasolio = append(pathRaw, '80-81.htm');
    pathGPL = append(pathRaw, '90-91.htm');
    
    websave(nomeBenzina, pathBenzina);
    websave(nomeGasolio, pathGasolio);
    websave(nomeGPL,pathGPL);
    
    clear
end


%torna nella cartella dello script
cd ..