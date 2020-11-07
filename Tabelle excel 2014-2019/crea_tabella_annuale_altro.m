function nuova_tabella = crea_tabella_annuale_altro(nome_cella_benzina, nome_cella_gpl, anno)
%creo funzione che crea table annuale con le celle benzina, gasolio, olii

pos_benzina = [1,2,4,5,6,8,9,10,11,12,13,15];
pos_gpl = [1,3,4,5,6,7];

ben_cell =crea_cella_altro(nome_cella_benzina, pos_benzina);
gpl_cell =crea_cella_altro(nome_cella_gpl, pos_gpl);

%elimino la colonna delle provincie in più
gpl_cell(:,1) = [];

%calcolo la lunghezza delle celle
col_1 = ben_cell(:,1);
lunghezza = length(col_1);
vettore_anno = NaN(lunghezza,1);

for int = 1:lunghezza
    vettore_anno(int) = anno;
end

vettore_anno = num2cell(vettore_anno);

%unisco tutto
nuova_cella = [vettore_anno, ben_cell, gpl_cell];

nuova_tabella = cell2table(nuova_cella);

nuova_tabella.Properties.VariableNames={'Anno','Provincia','Cod_provincia','Benzina_vendita_rete_ord','Benzina_vendita_rete_autostrade', 'Benzina_vendita_extra_rete','Gasolio_vendita_rete_ord', 'Gasolio_vendita_rete_autostrade', 'Gasolio_vendita_extra_rete', 'Gasolio_vendita_riscaldamento', 'Gasolio_vendita_termoelettrico', 'Gasolio_vendita_agricolo','Olio_comb_ust_BTZ Olio_comb_ust_BTZ', 'GPL_vendita_totale' , 'GPL_vendita_autotrazione',  'GPL_vendita_autotrazione_rete' , 'GPL_vendita_combustione_bombole' , 'GPL_vendita_combustione_serbatoi'};
end



