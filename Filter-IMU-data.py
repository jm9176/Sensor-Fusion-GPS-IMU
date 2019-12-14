# Takes the input and new file name and saves the
# the IMU format data from inp_file to the new_file
def filter_data(inp_file, new_file):

    # open the new file (where the raw IMU data has to be
    # saved) as write
    out_file = open(new_file,'w')

    # open the raw input file as read and process each
    # line to remove the curly brackets, making easier
    # to import data to MATLAB
    with open(inp_file,'r') as infile:
        for line in infile:
            line = line.replace("{","")
            line = line.replace("}","")
            out_file.write(line)

    # close the output file
    out_file.close()
    print("Data saved")

# Definig the input and the new file
new_file = "capture-1_filtered_data.txt"
inp_file = "capture-1.txt"
filter_data(inp_file, new_file)
