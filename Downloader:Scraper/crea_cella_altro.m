function nuova_cella = crea_cella_altro(nome_tabella, vettore_pos)

%Seleziono le colonne che mi servono e importo la tabella
opts = detectImportOptions(nome_tabella);
opts.SelectedVariableNames = vettore_pos;
table = readtable(nome_tabella, opts);

%Converto la tabella in una cell-array
cell = table2cell(table);

%Ordino la cella in ordine alfabetico di provincia
ordered_cell = sortrows(cell);

%Per le tabelle dal 2014 in su le righe da eliminare sono un numero fisso
%21
for int = 1:1:21
    ordered_cell(1,:) = [];
end

col_1 = ordered_cell(:,1); 
pos = find(contains(col_1,'TT'));

ordered_cell(pos,:) = [];

nuova_cella = ordered_cell;
end
