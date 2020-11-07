function tabella_totale = tabella_totale_2014_2019()

tab2014= crea_tabella_annuale_altro('benzina_2014.xls', 'gpl_2014.xls', 2014);
tab2015= crea_tabella_annuale_altro('benzina_2015.xlsx', 'gpl_2015.xlsx', 2015);
tab2016= crea_tabella_annuale_altro('benzina_2016.xlsx', 'gpl_2016.xlsx', 2016);
tab2017= crea_tabella_annuale_altro('benzina_2017.xls', 'gpl_2017.xls', 2017);
tab2018= crea_tabella_annuale_altro('benzina_2018.xls', 'gpl_2018.xls', 2018);
tab2019= crea_tabella_annuale_altro('benzina_2019.xls', 'gpl_2019.xls', 2019);

tabella_totale = [tab2014; tab2015; tab2016; tab2017; tab2018; tab2019];





end