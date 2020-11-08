function tabella_totale = tabella_totale_2013_2003()

%Crea tabella totale
tabella_totale = [];

%Crea tabella per il 2012
tab2012 = crea_tabella_annuale('FogliScaricati_2013-14_Convertiti/benzina_2012.xlsx',...
    'FogliScaricati_2013-14_Convertiti/gasolio_2012.xlsx',...
    'FogliScaricati_2013-14_Convertiti/olio_2012.xlsx', 2012);

%Inserisce la tabella del 2012 nella tabella totale
tabella_totale = [tabella_totale; tab2012];

for anno = 2010 :-1:2003
    
    annoStr = int2str(anno);
    
    pathBe = append('FogliScaricati_2013-14_Convertiti/benzina_',annoStr,'.xlsx');
    pathGa = append('FogliScaricati_2013-14_Convertiti/gasolio_',annoStr,'.xlsx');
    pathGpl = append('FogliScaricati_2013-14_Convertiti/olio_',annoStr,'.xlsx');
    
    %Compila tabella totale
    tabella_totale = [tabella_totale; crea_tabella_annuale(pathBe, pathGa, pathGpl, anno)];
end

end
