# This script processes each .csv file in the directory it's in
# and generates a file containing an SQL INSERT statement with the data from each file.

from os import listdir, getcwd
from os.path import isfile
data = []


for dataFilePath in listdir(getcwd()):
    if isfile(dataFilePath) and ".csv" in dataFilePath:
        numOfColumns = 1
        tableName = dataFilePath[:-4]
        outputFileName = tableName + '_Insert_Statement.txt'

        # Process file and extract data
        with open(dataFilePath) as dataFile:

            # Get the number of columns in table by counting commas in the first
            # line of file
            for char in dataFile.readline():
                if char == ",":
                    numOfColumns += 1

            # Return to beginning of file
            dataFile.seek(0)

            # Read data from file, strip beginning and end of whitespace, 
            # then replace newlines with commas and split data by commas:
            data = dataFile.read().strip().replace("\n", ",").split(',')
            dataFile.close()


        # Write data to output file as an SQL statement
        with open(outputFileName, 'w') as dataFile:
            dataFile.write('INSERT INTO {} VALUES '.format(tableName))
            for i in range(0, len(data) - 1):

                # If this is the first attribute of a new tuple:
                if i % numOfColumns == 0:
                    dataFile.write("({}, ".format(data[i]))

                # If this is the last attribute of a tuple:
                elif i % numOfColumns == numOfColumns - 1 % numOfColumns:
                    dataFile.write("{}), ".format(data[i]))

                # If this is data within the middle of the tuple:
                else:
                    dataFile.write("{}, ".format(data[i]))

            # If this is the very last attribute of the very last tuple:
            dataFile.write("{});".format(data[-1]))
        
        # Tell user the output file name
        print("\t{} has been created.".format(outputFileName))