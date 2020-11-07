function nuova_tabella = crea_tabella_annuale(nome_cella_benzina, nome_cella_gasolio, nome_cella_olio, anno)

%creo funzione che crea table annuale con le celle benzina, gasolio, olii

pos_benzina = [2,3,4,5];
pos_gasolio = [2,4,5,6,7,8];
pos_olio = [2,4,5,6,7,9,10];

ben_cell =crea_cella(nome_cella_benzina, pos_benzina);
gas_cell =crea_cella(nome_cella_gasolio, pos_gasolio);
olio_cell =crea_cella(nome_cella_olio, pos_olio);


%elimino le colonne con i nomi delle provincie (ridonandanti)
gas_cell(:,1) = [];
olio_cell(:,1) = [];

%calcolo la lunghezza delle celle
col_1 = ben_cell(:,1);
lunghezza = length(col_1);
vettore_anno = NaN(lunghezza,1);

for int = 1:lunghezza
    vettore_anno(int) = anno;
end

vettore_anno = num2cell(vettore_anno);

%unisco tutto
nuova_cella = [vettore_anno, ben_cell, gas_cell, olio_cell];

nuova_tabella = cell2table(nuova_cella);
%voce 'gasolio_termoelettrico non è presente nell tabella annuali
%2003-2012, analogo per i lubrificanti, sostituisco con le voci presenti
nuova_tabella.Properties.VariableNames={'Anno','Provincia', 'Benzina_vendita_rete_ord','Benzina_vendita_rete_autostrade', 'Benzina_vendita_extra_rete'...
   'Gasolio_vendita_rete_ord', 'Gasolio_vendita_rete_autostrade', 'Gasolio_vendita_extra_rete', 'Gasolio_vendita_riscaldamento',...
    'Gasolio_vendita_agricolo','Olio_comb_ust_BTZ', 'GPL_vendita_totale'...
    'GPL_vendita_autotrazione',  'GPL_vendita_autotrazione_rete' , 'lubrificanti_rete' , 'lubrificanti_extra_rete'};

end


