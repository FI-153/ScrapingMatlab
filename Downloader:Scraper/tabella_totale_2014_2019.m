function tabella_totale = tabella_totale_2014_2019()

tabella_totale = [];

for anno = 2019 :-1:2014
    
    annoStr = int2str(anno);
    
    pathBGO = append('FogliScaricati/',annoStr,'_BGO.xls');
    pathGL = append('FogliScaricati/',annoStr,'_GL.xls');
    
    %%aggiustamenti minori per il 2015 e 2016
    if (anno == 2015) | (anno == 2016)
        pathBGO = append(pathBGO,'x');
        pathGL = append(pathGL,'x');
    end
    
    %compila tabella finale
    tabella_totale = [tabella_totale; crea_tabella_annuale_altro(pathBGO, pathGL, anno)];
end

end