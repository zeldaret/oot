#!/usr/bin/env python3

import os
import argparse

AudioFunctions = {}
Verbose = False
Verbose2 = False

def SetVerbose(v):
    global Verbose
    global Verbose2

    Verbose = v
    Verbose2 = v

def MakeAudioDict(AudioFunctions, repo):
    with open(repo + os.sep + 'include' + os.sep + 'functions.h','r') as funcfile:
        funcdata = funcfile.readlines()
    for i, line in enumerate(funcdata):
        if(line.count('sfxId')):
            funcname, argnum = GetFuncData(funcdata,i)
            if(funcname != None):
                AudioFunctions[funcname] = argnum
    return 1

def GetFuncData(funcdata,i):
    j = i
    while(funcdata[j - 1].count(';') == 0):
        j -= 1
    k = i + 1
    while(funcdata[k - 1].count(';') == 0):
        k += 1
    prototype = "".join(funcdata[j:k])
    argdata = prototype.replace('(',',').replace(')',',').split(',')
    funcname = argdata[0].split(' ')[1]
    for x in range(len(argdata)):
        if(argdata[x].count('sfxId')):
            break;
    if(x == len(argdata) - 1):
        print('sfxId not found in ', funcname)
        return None,-1
    return funcname, x - 1

def LookupSFX(idnum, repo):
    if(type(idnum) is int):
        id = '0x' + format(id,'X')
    else:
        id = idnum
    id,sfxFlag = FixSFXFlag(id)
    with open(repo + os.sep + 'include' + os.sep + 'sfx.h','r') as sfxfile:
        for line in sfxfile:
            if(line.count(id)):
                return line.split(' ')[1] + sfxFlag
    return 'INVALID_ID'

def FixSFXFlag(id):
    if(id.endswith(' - SFX_FLAG')):
        splitdata = id.split('-')
        return splitdata[0].strip(), ' -' + splitdata[1]
    if not(int(id,16) & 0x800):
        newid = '0x' + format(int(id,16) + 0x800,'X')
        sfxFlag = ' - SFX_FLAG'
    else :
        newid = id
        sfxFlag = ''
    return newid,sfxFlag

def FixSFXFunc(sourcedata, i, j, repo):
    data = ''.join(sourcedata[i:j])
    func = FindAudioFunction(data)
    if(not func):
        print('Function parse error at line', i)
        return -3
    index = data.find(func)
    argnum = AudioFunctions.get(func,-1)
    if(argnum == -1 or index == -1):
        print('Function lookup error at line', i, 'in', func)
        return -1
    args = data[index:].replace('(',',').replace(')',',').split(',')
    sfxId = args[argnum + 1].strip()
    if(sfxId.count('0x') == 0):
        return 0
    newId = LookupSFX(sfxId, repo)
    if(newId == 'INVALID_ID'):
        print('ID parse error at line', i, 'in', func)
        return -2
    for k in range(i, j):
        sourcedata[k] = sourcedata[k].replace(sfxId,newId)
    if Verbose:
        print('Replaced', sfxId, 'with', newId, 'in', func, 'at line', i + 1)
    return 1

def FindAudioFunction(line):
    audiofuncs = list(AudioFunctions.keys())
    for func in audiofuncs:
        if(line.count(func)):
            return func
    return False

def ExtractId(data):
    args = data.replace('(',',').replace(')',',').split(',')
    ids = [x.strip() for x in args if x.find('0x') != -1]
    return ids

def FixSFX1(file,repo):
    FixSFX(file, file, repo)
    return 1

def FixSFXAll(repo):
    global Verbose2

    tv = Verbose2
    Verbose2 = False

    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                FixSFX(file, file, repo)

    Verbose2 = tv
    return 1

def FixSFX(file, outfile, repo):
    MakeAudioDict(AudioFunctions, repo)
    with open(file,'r',encoding='utf-8') as sourcefile:
        sourcedata = sourcefile.readlines()
    replacements = set()
    j = 0
    errors = 0
    fixes = 0
    for i, line in enumerate(sourcedata):
        if(i < j):
            continue
        if(FindAudioFunction(line)):
            if(line.count(';')):
                j = i + 1
            else:
                j = i
                while(sourcedata[j].count(';') == 0):
                    j += 1
            status = FixSFXFunc(sourcedata, i, j + 1, repo)
            if(status < 0):
                errors += 1
            elif(status > 0):
                fixes += 1
    if(fixes > 0):
        with open(outfile,'w',encoding ='utf-8',newline='\n') as outfile:
            outfile.writelines(sourcedata)
        if Verbose:
            print(file, 'updated')
    elif Verbose2:
        print('No changes made to', file)
    if(errors > 0):
        print('sfxdis encountered parse errors during execution. Consider formatting your source and functions.h')
    return 1

    parser = argparse.ArgumentParser(description='Convert hex SFX ids to macros')
    parser.add_argument('file', help="source file to be processed")
    parser.add_argument('repo', help="directory of the decomp repo")
    parser.add_argument('-o', metavar='outfile',dest='outfile',help='file to write to instead of original')
    parser.add_argument('-v', action='store_true',help='show what changes are made')

if __name__ == "__main__":
    args = parser.parse_args()
    SetVerbose(args.v)
    if(args.outfile == None):
        FixSFX(args.file, args.file, args.repo)
    else:
        FixSFX(args.file, args.outfile, args.repo)


