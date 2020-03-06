tableName = input("\nPlease enter the table name: ")
# This script takes a .csv file, a table name, and the number of attributes in the table
# and generates a file containing an SQL INSERT statement with the data.

filePath = input("\nPlease enter the .csv file name: ")
numOfAttributesPerRow = int(input("\nPlease enter the number of attributes per row: "))
outputFileName = tableName+'_Insert_Statement.txt'
data = []


# Process file and extract data
with open(filePath if ".csv" in filePath else filePath + ".csv") as f:

    # Read data from file, strip beginning and end of whitespace, 
    # then replace newlines with commas and split data by commas:
    data = f.read().strip().replace("\n", ",").split(',')
    f.close()


# Write data to output file as an SQL statement
with open(outputFileName, 'w') as f:
    f.write('INSERT INTO {} VALUES '.format(tableName))
    for i in range(0, len(data) - 1):

        # If this is the first attribute of a new tuple:
        if i % numOfAttributesPerRow == 0:
            f.write("({}, ".format(data[i]))

        # If this is the last attribute of a tuple:
        elif i % numOfAttributesPerRow == numOfAttributesPerRow - 1 % numOfAttributesPerRow:
            f.write("{}), ".format(data[i]))

        # If this is data within the middle of the tuple:
        else:
            f.write("{}, ".format(data[i]))

    # If this is the very last attribute of the very last tuple:
    f.write("{});".format(data[-1]))


# Tell user the output file name
print("\n\n{} has been created.\n".format(outputFileName))