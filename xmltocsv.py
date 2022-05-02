# import packages 
import csv
import pandas as pd
import os
import openpyxl

# saving a list of files in the current directory
files = os.listdir()

# finding and saving the sample file name
for i in files:
    if "SAMEA" in i:
        sample_file = i

# using the sample file name to save the sample_id value 
sample_id = sample_file.replace('.xlsx', '')

# retrieving columns with metadata variable names and responses
answersdf = pd.read_excel(sample_file, usecols="J,K", names=['questions','answers'])

# removing variables containing “vioscreen” as most are empty and thus 
# to limit data usage
answersdf = answersdf[answersdf["questions"].str.contains("vioscreen") == False]

# saving all questionnaire answers to a list 
answerslist = answersdf['answers'].tolist()
removed = answerslist.pop(0)

# inserting the sample_id to the beginning of the answers list 
answerslist.insert(0, sample_id)

# removing null and irrelevant values at the end of Excel file
answerslist = answerslist[:204]

# converting all values into string for MySQL upload at TINYTEXT
for index, value in enumerate(answerslist):
    if type(value) != str:
        answerslist[index] = str(value)

# exporting the questionnaire answers to a csv file for MySQL upload
with open(str(sample_id) + '.csv', 'w') as f:
    write = csv.writer(f)
    write.writerow(answerslist)
