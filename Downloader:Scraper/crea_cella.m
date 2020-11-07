function nuova_cella = crea_cella(nome_tabella, vettore_pos)

%Seleziono le colonne che mi servono e importo la tabella
opts = detectImportOptions(nome_tabella);
opts.SelectedVariableNames = vettore_pos;
table = readtable(nome_tabella, opts);

%Converto la tabella in una cell-array
cell = table2cell(table);

%Ordino la cella in ordine alfabetico di provincia
ordered_cell = sortrows(cell);

%prendo in considerazione la colonna delle province ed elimino i dati
%superflui

col_1 = ordered_cell(:,1);
pos = find(contains(col_1,'TOTALE'));
index = pos(1);
if(not(isempty(pos)))
    for int= 1:length(pos)       
        ordered_cell(index,:) = [];
    end
end

col_1 = ordered_cell(:,1);
pos = find(contains(col_1,'ENTI'));
index2= pos(1);
if(not(isempty(pos)))
    
    for int= 1:length(pos)
        ordered_cell(index2,:) = [];
    end
    

end
nuova_cella = ordered_cell;
end
