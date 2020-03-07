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
        # Process file and extract data
        if  "Country.csv" in dataFilePath:
            with open(dataFilePath,"r") as csvfile:
                file.write("INSERT INTO `country` (`Country_Name`, `Population`, `No_of_Worldcup_won`, `Manager`) VALUES\n")
                readAndWrite(csvfile,file,numlines)
        elif "Match_results.csv" in dataFilePath:
            with open(dataFilePath,"r") as csvfile:
                file.write("INSERT INTO `match_results` (`Match_id`, `Date_of_Match`, `Start_Time_Of_Match`, `Team1`,`Team2`,`Team1_score`,`Team2_score`,`Stadium_Name`,`Host_City`) VALUES\n")
                readAndWrite(csvfile,file,numlines)
        elif "Players.csv" in dataFilePath:
            with open(dataFilePath,"r") as csvfile:
                file.write("INSERT INTO `players` (`Player_id`, `Name`, `Fname`, `Lname`,`DOB`,`Country`,`Height`,`Club`,`Position`,`Caps_for_Country`,`IS_CAPTAIN`) VALUES\n")
                readAndWrite(csvfile,file,numlines)
        elif "Player_Assists_Goals.csv" in dataFilePath:
            with open(dataFilePath,"r") as csvfile:
                file.write("INSERT INTO `player_assists_goals` (`Player_id`, `No_of_Matches`, `Goals`, `Assists`,`Minutes_Played`) VALUES\n")
                readAndWrite(csvfile,file,numlines)
        elif "Player_Cards.csv" in dataFilePath:
            with open(dataFilePath,"r") as csvfile:
                file.write("INSERT INTO `player_card` (`Player_id`, `Yellow_Cards`, `Red_Cards`) VALUES\n")
                readAndWrite(csvfile,file,numlines)
 
        f.close()
            
                

