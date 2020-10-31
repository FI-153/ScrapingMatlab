function Downloader19_14

cd FogliScaricati/
  for anno = 2019:-1:2015
    
  %Conversione dell'anno in stringa
  annoStr = int2str(anno);
    
  %Nome del file scaricato
  nome_File_BGO = (append(annoStr,'_BGO'));      %Benzina, gasolio, olio
  nome_File_GL = (append(annoStr, '_GL'));        %GPL, lubrificanti
  
  %Costruzione dinamica dell'URL
  path_BGO = append('https://dgsaie.mise.gov.it/pub/bollettino/',annoStr,'/vendite_prov_benzina_gasolio_oliocomb_',annoStr,'_12_m.xls');
  path_GL = append('https://dgsaie.mise.gov.it/pub/bollettino/',annoStr,'/vendite_prov_gpl_lub_',annoStr,'_12_m.xls');
    
  %Aggiustamento dell'URL per BGO (fino al 2016 si usava il formato "xlsx")
  if anno <= 2016; 
      path_BGO = append(path_BGO, 'x');
      path_GL = append(path_GL, 'x');  
  end
  
  
  %PROBLEMA DA DISCUTERE CON PROFE 
  if anno == 2015; 
      path_GL = 'https://dgsaie.mise.gov.it/pub/bollettino/2015/vendite_prov_gpl_lub_2015_p.xlsx'; 
  end
  
  
  %Download dei file
  websave(nome_File_BGO, path_BGO);
  websave(nome_File_GL, path_GL);
  
  %Pulisce workspace
  clear
  
  end
  
 cd ..

end