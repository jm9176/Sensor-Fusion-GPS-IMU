
# Takes the input and new file name and saves the
# the GPGGA format data from inp_file to the new_file
def filter_data(inp_file, new_file):

    # open the new file (where the GPGGA data has to be
    # saved) as write
    out_file = open(new_file,'w')

    # open the raw input file as read and process each
    # line to check for the starting string as $GPGGA
    # If yes, then save it in the new text file
    with open(inp_file,'r') as infile:
        for line in infile:
            if line[:6] == "$GPGGA":

                # Replacing the direction with +/-1
                # N = +1, S = -1, E = +1, W = -1
                line = line.replace('N','1')
                line = line.replace('W','-1')
                line = line.replace('E','+1')
                line = line.replace('S','-1')

                # write the line to the output file
                out_file.write(line)

    # close the output file
    out_file.close()
    print("Data saved")


# Defing the input and the new file
new_file = "gps-GPGGA-data.txt"
inp_file = "GPS_raw_data.txt"
filter_data(inp_file, new_file)
