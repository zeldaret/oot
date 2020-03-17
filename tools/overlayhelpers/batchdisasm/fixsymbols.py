import os
import struct

def Main():
    symbolFile = open("symbols.txt")
    symbolList = symbolFile.readlines()
    symbolFile.close()

    asmFiles = os.listdir("output")

    for fileName in asmFiles:
        print("Processing " + fileName)
        asmFile = open("output/" + fileName)
        asmText = asmFile.read()

        for symbolLine in symbolList:
            asmText = asmText.replace(symbolLine.split(' ')[0], symbolLine.split(' ')[1])

        asmText = ".include \"macro.inc\"\n\n" + asmText
        asmText = FixIncBin(fileName, asmText)
        asmText = FixMove(asmText)
        asmText = FixInvalidOpcodes(asmText)

        outputFile = open("output2/" + fileName, "w+")
        outputFile.write(asmText)
        outputFile.close()

        asmFile.close()

def FixInvalidOpcodes(asmText):
    asmLines = asmText.split('\n')

    i = 0
    while i < len(asmLines):
        asmLine = asmLines[i]

        if (asmLine.find("Because of invalid n64 opcode") != -1):
            nextLine = asmLines[i + 1]

            if (nextLine.find("/*") != -1):
                asmLines.insert(i + 1, "/*" + nextLine.split("/*")[1])
                asmLines[i + 1] = nextLine.split("*/")[0] + "*/ .word 0x" + nextLine.split(" ")[3]

        i += 1

    output = ""

    for i in range(len(asmLines)):
        output += asmLines[i] + "\n"

    return output

def FixMove(asmText):
    asmLines = asmText.split('\n')

    i = 0
    while i < len(asmLines):
        asmLine = asmLines[i]

        if (asmLine.find(" move  $") != -1 and asmLine.split("/*")[1].split(" ")[3].endswith("21")):
            registers = asmLine.split("move")[1]

            asmLines[i] = asmLine.split("*/")[0] + "*/  addu %s, $zero" % (registers)

        i += 1

    output = ""

    for i in range(len(asmLines)):
        output += asmLines[i] + "\n"

    return output

def FixIncBin(fileName, asmText):
    asmLines = asmText.split('\n')

    ovlFile = open("../../../baserom/" + fileName.split('.s')[0], "rb")
    ovlData = bytearray(ovlFile.read())
    ovlFile.close()

    headerOffset = struct.unpack_from(">I", ovlData, offset = len(ovlData) - 4)[0]
    headerAddress = len(ovlData) - headerOffset
    dataSectionAddress = struct.unpack_from(">I", ovlData, offset = headerAddress + 4)[0]
    #print(dataSectionAddress)

    fixLineIndex = -1
    fixLineAddress = 0
    fixLineFileAddress = 0

    i = 0
    while i < len(asmLines):
        asmLine = asmLines[i]
        if ((asmLine.startswith("D_") and asmLine.endswith(":")) or (i == len(asmLines) - 1 and fixLineIndex != -1)):
            if (fixLineIndex == -1):
                if (asmLines[i + 1].startswith(".")):
                    i += 1
                
                if (asmLines[i + 1].split(" ")[3].startswith("27BD") == False):
                    fixLineFileAddress = int(asmLines[i + 1].split(" ")[1], 16)

                    if (fixLineFileAddress < dataSectionAddress):
                        i += 1
                        continue

                    fixLineAddress = int(asmLine.split("D_")[1].split(":")[0], 16)
                    fixLineIndex = i + 1
            else:
                if (i == len(asmLines) - 1):
                    ovlSize = os.path.getsize("../../../baserom/" + fileName.split('.s')[0])
                    dataSize = ovlSize - fixLineFileAddress

                    asmLines[fixLineIndex] = ".incbin \"baserom/%s\", 0x%X, 0x%X" % (fileName.split('.s')[0], fixLineFileAddress, dataSize)
                    del asmLines[fixLineIndex + 1 : i]
                else:
                    currentAddress = int(asmLine.split("D_")[1].split(":")[0], 16)
                    dataSize = currentAddress - fixLineAddress
                    del asmLines[fixLineIndex : i - 1]
                    asmLines[fixLineIndex] = ".incbin \"baserom/%s\", 0x%X, 0x%X" % (fileName.split('.s')[0], fixLineFileAddress, dataSize)

                    i -= (i - fixLineIndex)

                fixLineIndex = -1

        i += 1

    output = ""

    for i in range(len(asmLines)):
        output += asmLines[i] + "\n"

    return output

Main()