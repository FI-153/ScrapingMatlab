
%Parte benzina

%Importo le caratteristiche della Tabella in excel
opts = detectImportOptions('FogliScaricati/2019_BGO.xls');

%Seleziono solo le colonne che mi servono davvero (NO C G N)
opts.SelectedVariableNames = opts.SelectedVariableNames([1,2,4,5,6,8,9,10,11,12,13,15]);

%Importo la tabella e le condizioni
Table = readtable('FogliScaricati/2019_BGO.xls', opts);

%Converto la tabella in una cella / simile ad un array
Cell = table2cell(Table);
%unisco etichetta con REGIONE TODO

%Riordino Cell per mettere in evidenza le righe da eliminare
Ordered_cell = sortrows(Cell);

%Le voci da eliminare sono generalmente 21 (Tabella della benzina)
for int = 1:1:21    
    Ordered_cell(1,:) = [];
end

%Calcolo il numero di RIGHE della nuova Cell
lunghezza = size(Ordered_cell,1);
%Creo un vettore d'appoggio e lo riempio con l'anno che mi serve
Anno = NaN(lunghezza,1);

for int = 1:lunghezza
    Anno(int) = 2015;
end

%Converto il vettore Anno in una Cella (per fare l'unione)
Anno2 = num2cell(Anno);
%unisco le due celle di array
Cella_finale = [Anno2,Ordered_cell];

%parte 2 unisco i gpl del relativo anno

opzioni = detectImportOptions('FogliScaricati/2019_GL.xls');
opzioni.SelectedVariableNames = opzioni.SelectedVariableNames([1,3,4,5,6,7]);
Table2 = readtable('FogliScaricati/2019_GL.xls', opzioni);

Cell2 = table2cell(Table2);
Ordered_cell2 = sortrows(Cell2);

for int = 1:1:21    
    Ordered_cell2(1,:) = [];
end

%Cancello la colonna relativa alle province

%unisco tutte le celle di array 

Cella_finale = [Anno2,Ordered_cell, Ordered_cell2];

%cambio il nome delle variabili sulla table finale

Tabella_finale = cell2table(Cella_finale);
Tabella_finale(:,14) = [];

Tabella_finale.Properties.VariableNames={'Anno','Provincia','Cod_provincia','Benzina_vendita_rete_ord','Benzina_vendita_rete_autostrade', 'Benzina_vendita_extra_rete','Gasolio_vendita_rete_ord', 'Gasolio_vendita_rete_autostrade', 'Gasolio_vendita_extra_rete', 'Gasolio_vendita_riscaldamento', 'Gasolio_vendita_termoelettrico', 'Gasolio_vendita_agricolo','Olio_comb_ust_BTZ Olio_comb_ust_BTZ', 'GPL_vendita_totale' , 'GPL_vendita_autotrazione',  'GPL_vendita_autotrazione_rete' , 'GPL_vendita_combustione_bombole' , 'GPL_vendita_combustione_serbatoi'};

