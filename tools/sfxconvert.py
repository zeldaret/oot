#!/usr/bin/env python3

import os
import argparse

AudioFunctions = {}
Verbose = False
Verbose2 = False

def set_verbose(v):
    global Verbose
    global Verbose2

    Verbose = v
    Verbose2 = v
    return 1

def make_audio_dict(AudioFunctions, repo):
    with open(repo + os.sep + 'include' + os.sep + 'functions.h','r') as funcfile:
        funcdata = funcfile.readlines()
    for i, line in enumerate(funcdata):
        if(line.count('sfxId')):
            funcname, argnum = get_func_data(funcdata,i)
            if(funcname != None):
                AudioFunctions[funcname] = argnum
    return 1

def get_func_data(funcdata,i):
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

def lookup_sfx(idnum, repo):
    if(type(idnum) is int):
        id = '0x' + format(idnum,'X')
    elif(idnum.isnumeric()):
        id = '0x' + format(int(idnum),'X')
    else:
        id = idnum
    idfix,sfxFlag = fix_sfx_flag(id)
    with open(repo + os.sep + 'include' + os.sep + 'sfx.h','r') as sfxfile:
        for line in sfxfile:
            if(line.count(idfix)):
                return line.split(' ')[1] + sfxFlag
    return 'INVALID_ID'

def fix_sfx_flag(id):
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

def fix_sfx_func(sourcedata, i, j, repo):
    data = ''.join(sourcedata[i:j])
    func = data.split('(')[0].strip()
    index = data.find(func)
    argnum = AudioFunctions.get(func,-1)
    if(argnum == -1 or index == -1):
        print('Function lookup error at line', i, 'in', func)
        return -1
    args = data[index:].replace('(',',').replace(')',',').split(',')
    sfxId = args[argnum + 1].strip()
    if(sfxId.count('NA_SE') != 0):
        return 0
    newId = lookup_sfx(sfxId, repo)
    if(newId == 'INVALID_ID'):
        print('ID parse error at line', i, 'in', func)
        return -2
    for k in range(i, j):
        sourcedata[k] = sourcedata[k].replace(sfxId,newId)
    if Verbose:
        print('Replaced', sfxId, 'with', newId, 'in', func, 'at line', i + 1)
    return 1

def find_audio_func(line):
    audiofuncs = list(AudioFunctions.keys())
    funcname = line.split('(')[0].strip()
    for func in audiofuncs:
        if(line.count(func)):
            return func
    return False

def fix_sfx_all(repo):
    global Verbose2

    tv = Verbose2
    Verbose2 = False

    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                fix_sfx(file, repo)

    Verbose2 = tv
    return 1

def fix_sfx(file, repo, outfile = None):
    if(outfile == None):
        outfile = file
    make_audio_dict(AudioFunctions, repo)
    with open(file,'r',encoding='utf-8') as sourcefile:
        sourcedata = sourcefile.readlines()
    replacements = set()
    j = 0
    lookuperrors = 0
    funcerrors = 0
    iderrors = 0
    fixes = 0
    for i, line in enumerate(sourcedata):
        if(i < j):
            continue
        if(find_audio_func(line)):
            j = i
            while(sourcedata[j].count(';') == 0):
                j += 1
            status = fix_sfx_func(sourcedata, i, j + 1, repo)
            if(status == -2):
                iderrors += 1
            elif(status == -1):
                lookuperrors += 1
            elif(status > 0):
                fixes += 1
    if(fixes > 0):
        with open(outfile,'w',encoding ='utf-8',newline='\n') as outfile:
            outfile.writelines(sourcedata)
        if Verbose:
            print(file, 'updated')
    elif Verbose2:
        print('No changes made to', file)
    if(lookuperrors > 0):
        print('Problem with function lookup. Try formatting functions.h')
    if(iderrors > 0):
        print('Problem with id parsing. Make sure your SFX ids are in hex.')
    return 1

parser = argparse.ArgumentParser(description='Convert hex SFX ids to macros')
parser.add_argument('file', help="source file to be processed")
parser.add_argument('repo', help="directory of the decomp repo")
parser.add_argument('-o', metavar='outfile',dest='outfile',help='file to write to instead of original')
parser.add_argument('-v', action='store_true',help='show what changes are made')

if __name__ == "__main__":
    args = parser.parse_args()
    set_verbose(args.v)
    fix_sfx(args.file, args.repo, outfile=args.outfile)


