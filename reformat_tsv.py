# import packages
import numpy as np
import pandas as pd
import os

# importing QIIME2 View output file 
tsv = pd.read_table("metadata.tsv", header=0)

# creating list of files in the directory 
arr = os.listdir('.')

# saving the feature IDs, confidence values, taxonomic classifications
id = tsv['Feature ID']
confidence = tsv['Confidence']
classifications_list = tsv['Taxon']

# creating a pandas dataframe to store the values of kingdom, phylum, 
# class, order, family, genus, and species in separate columns with 
# the same length as the imported file 
classifications_df = pd.DataFrame(index=list(range(len(classifications_list))), columns=['Kingdom', 'Phylum', 'Class', 'Order', 'Family', 'Genus', 'Species'])

# iterating through each taxonomic classification from the input file 
# by separating each classification via ‘;’ and each hierarchical 
# designation via ‘__’ and saving them to variables 
counter = 0
for i in classifications_list:
    classifications_split = i.split("; ")

    for i in classifications_split:
        if i.startswith("k__"):
            kingdom = i.partition("__")[2]
            classifications_df['Kingdom'][counter] = kingdom
        if i.startswith("p__"):
            phylum = i.partition("__")[2]
            classifications_df['Phylum'][counter] = phylum
        if i.startswith("c__"):
            classs = i.partition("__")[2]
            classifications_df['Class'][counter] = classs
        if i.startswith("o__"):
            order = i.partition("__")[2]
            classifications_df['Order'][counter] = order
        if i.startswith("f__"):
            family = i.partition("__")[2]
            classifications_df['Family'][counter] = family
        if i.startswith("g__"):
            genus = i.partition("__")[2]
            classifications_df['Genus'][counter] = genus
        if i.startswith("s__"):
            species = i.partition("__")[2]
            classifications_df['Species'][counter] = species

    counter += 1

# dropping the column titles 
id = id.drop([0])
confidence = confidence.drop([0])

# saving the the run_id based on the sample file already in the 
# directory
for i in arr:
    if i.startswith("ERR"):
        run_id = i

# creating pandas dataframe to store the run_ids
run_id_df = pd.DataFrame({"run_id": pd.Series(run_id, index=list(range(len(classifications_list)-1)))})
run_id_df.index = np.arange(1,len(run_id_df)+1)

# concatenating the run_id, classification columns, and confidence 
# values
final = pd.concat([run_id_df, id, classifications_df, confidence],axis=1)
final = final[:-1]

# replacing NaN values with empty strings 
final = final.replace(np.nan, '')

# export final dataframe to csv file with the run_id as its name
final.to_csv(str(run_id)+'.csv', index = None)
