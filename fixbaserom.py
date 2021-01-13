from os import path
import sys
import struct
import hashlib


def get_str_hash(byte_array):
    return str(hashlib.md5(byte_array).hexdigest())


# If the baserom exists and is correct, we don't need to change anything
if path.exists("baserom.z64"):
    with open("baserom.z64", mode="rb") as file:
        fileContent = bytearray(file.read())
        if get_str_hash(fileContent) == "f0b7f35375f9cc8ca1b2d59d78e35405":
            print("Found valid baserom - exiting early")
            sys.exit(0)

# Determine if we have a ROM file
romFileName = ""
if path.exists("baserom_original.z64"):
    romFileName = "baserom_original.z64"
elif path.exists("baserom_original.n64"):
    romFileName = "baserom_original.n64"
elif path.exists("baserom_original.v64"):
    romFileName = "baserom_original.v64"
else:
    print("Error: Could not find baserom_original.z64/baserom_original.n64/baserom_original.v64.")
    sys.exit(1)

# Read in the original ROM
print("File '" + romFileName + "' found.")
with open(romFileName, mode="rb") as file:
    fileContent = bytearray(file.read())

# Strip the overdump
print("Stripping overdump...")
fileContent = fileContent[0:0x3600000]

fileContentLen = len(fileContent)

# Check if ROM needs to be byte/word swapped
# Little-endian
if fileContent[0] == 0x40:
    # Word Swap ROM
    print("ROM needs to be word swapped...")
    words = str(int(fileContentLen/4))
    little_byte_format = "<" + words + "I"
    big_byte_format = ">" + words + "I"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)

    print("Word swapping done.")

# Byte-swapped
elif fileContent[0] == 0x37:
    # Byte Swap ROM
    print("ROM needs to be byte swapped...")
    halfwords = str(int(fileContentLen/2))
    little_byte_format = "<" + halfwords + "H"
    big_byte_format = ">" + halfwords + "H"
    tmp = struct.unpack_from(little_byte_format, fileContent, 0)
    struct.pack_into(big_byte_format, fileContent, 0, *tmp)

    print("Byte swapping done.")

# Patch the header
print("Patching header...")
fileContent[0x3E] = 0x50

# Check to see if the ROM is a "vanilla" Debug ROM
str_hash = get_str_hash(bytearray(fileContent))
if str_hash != "f0b7f35375f9cc8ca1b2d59d78e35405":
    print("Error: Expected a hash of f0b7f35375f9cc8ca1b2d59d78e35405 but got " + str_hash + ". " +
          "The baserom has probably been tampered, find a new one")
    sys.exit(1)

# Write out our new ROM
print("Writing new ROM 'baserom.z64'.")
with open("baserom.z64", mode="wb") as file:
    file.write(bytes(fileContent))

print("Done!")
