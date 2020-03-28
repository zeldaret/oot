import os.path
from os import path
import sys
import struct

# Read in the original ROM
if (path.exists("baserom_original.z64")):
    print("File 'baserom_original.z64' found.")
    with open("baserom_original.z64", mode='rb') as file:
        fileContent = file.read()
elif (path.exists("baserom_original.n64")):
    print("File 'baserom_original.n64' found.")
    print("Byte swapping...")
    with open("baserom_original.n64", mode='rb') as file:
        fileContent = bytearray(file.read())
        
        # Byte Swap ROM
        # TODO: This is pretty slow at the moment. Look into optimizing it later...
        i = 0
        while (i < len(fileContent)):
            tmp = struct.unpack_from("BBBB", fileContent, i)
            struct.pack_into("BBBB", fileContent, i + 0, tmp[3], tmp[2], tmp[1], tmp[0])
            i += 4

            perc = float(i) / float(len(fileContent))

            if (i % (1024 * 1024 * 4) == 0):
                print(str(perc * 100) + "%")
        
    print("Byte swapping done.")
else:
    print("Error: Could not find a baserom_original.z64 or baserom_original.n64.")
    sys.exit(1)

# Strip the overdump
print("Stripping overdump...")
strippedContent = list(fileContent[0:0x3600000])

# Patch the header
print("Patching header...")
strippedContent[0x3E] = 0x50


# Write out our new ROM
print("Writing new ROM 'baserom.z64'.")
with open("baserom.z64", mode="wb") as file:
    file.write(bytes(strippedContent))

print("Done!")

