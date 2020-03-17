import os

overlayListFile = open("overlays.cfg")
overlayListLines = overlayListFile.readlines()

for line in overlayListLines:
    overlayName = line.split(' ')[0]
    overlayVRAM = int(line.split(' ')[1], 16)

    #print(overlayName)

    overlaySize = os.path.getsize("../../../baserom/" + overlayName)

    execStr = "./mipsdisasm -o output/%s.s ../../../baserom/%s 0x%x:0x%x -v -p" % (overlayName, overlayName, overlayVRAM, overlayVRAM + overlaySize)

    print(execStr)
    os.system(execStr)
