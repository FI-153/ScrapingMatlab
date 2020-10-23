for anno = 2019:-1:2015
    
  %Conversione dell'anno in stringa
  annoStr = int2str(anno);
    
  %Nome del file scaricato
  nome_File = (append('prova', annoStr));
  
  %Costruzione dinamica dell'URL
  path = append('https://dgsaie.mise.gov.it/pub/bollettino/',annoStr,'/vendite_prov_benzina_gasolio_oliocomb_',annoStr,'_12_m.xls');
  
  %Aggiustamento dell'URL (fino al 2016 si usava il formato "xlsx")
  if anno <= 2016; path = append(path, 'x'); end
  
  %Download del file
  websave(nome_File, path');
  
  %Pulisce spazio di lavoro
  clear
  
end