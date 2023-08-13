import os

class FileEntry:
    def __init__(self, nFuncName):
        self.funcName = nFuncName
        self.lines = list()

def ReadAllLines(filename):
    with open(filename) as f:
        lines = f.read().splitlines()

    return lines;

def WriteAllLines(filename, lines):
    with open(filename, 'w') as f:
        for item in lines:
            f.write("%s\n" % item)

    return lines;

if not os.path.exists("asm"):
    os.makedirs("asm")

if not os.path.exists("c"):
    os.makedirs("c")

dirs = os.listdir("asm")

for directory in dirs:
    if (os.path.isdir("asm//" + directory)):
        continue

    print("Processing asm//" + directory)

    folderName = os.path.splitext(directory)[0]
    lines = ReadAllLines("asm//" + directory)
    functions = list()
    currentFunction = None

    for line in lines:
        if (line.startswith("glabel")):
            if (currentFunction != None):
                functions.insert(len(functions), currentFunction)

            currentFunction = FileEntry(line.split("glabel ")[1])

        if (currentFunction != None):
            currentFunction.lines.insert(len(currentFunction.lines), line)

    if (currentFunction != None):
        functions.insert(len(functions), currentFunction)

    if not os.path.exists("asm//" + folderName):
        os.makedirs("asm//" + folderName)

    for func in functions:
        WriteAllLines("asm//" + folderName + "//" + func.funcName + ".s", func.lines)

    cLines = list()

    cLines.insert(len(cLines), "#include <ultra64.h>")
    cLines.insert(len(cLines), "#include <global.h>\n")

    for func in functions:
        cLines.insert(len(cLines), "#pragma GLOBAL_ASM(\"asm/non_matchings/code/" + folderName + "/" + func.funcName + ".s\")\n")

    WriteAllLines("c//" + folderName + ".c", cLines)

print("Done!")
