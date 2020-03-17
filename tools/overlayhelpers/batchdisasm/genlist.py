outFile = open("output.cfg", "w+")
inFile = open("../../../docs/notes/out.csv")
lines = inFile.readlines()


for line in lines:
    name = line.split(',')[1]
    vramAddress = line.split(',')[2]

    if (name.startswith("ovl_")):
        outFile.write(name + " " + vramAddress)

outFile.close()