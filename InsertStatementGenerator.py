#Write a python script in order to generate insert query
#Read from csv file
#OUTPUT INSERT query to the .sql file
#READ FROM the csv file first
# This script processes each .csv file in the directory it's in
# and generates a file containing an SQL INSERT statement with the data from each file.

from os import listdir, getcwd
from os.path import isfile
import csv

def readAndWrite(csvfile,file,numlines):
    spamreader = csv.reader(csvfile)
    count = 0
    for row in spamreader:
        if count < numlines-1:
            file.write("(" + ", ".join(row) + "),")
        else:
            file.write("(" + ", ".join(row) + ")")
        count = count + 1
            
for dataFilePath in listdir(getcwd()):
    if isfile(dataFilePath) and ".csv" in dataFilePath:
        tableName = dataFilePath[:-4]
        outputFileName = tableName + '.sql'
        file = open(outputFileName,"w")
        #Read number of line at current csv file
        f = open(dataFilePath)
        numlines = len(f.readlines())
        f.close()
        # Process file and extract data
        with open(dataFilePath,"r") as csvfile:
            file.write("INSERT INTO "+ tableName + " VALUES\n")
            readAndWrite(csvfile,file,numlines)
 
        file.close()
            
                