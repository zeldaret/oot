#!/usr/bin/env python3

import os
import argparse

animdict ={
    "SkelAnime_FrameUpdateMatrix":"SkelAnime_Update",
    "SkelAnime_ChangeAnimTransitionRepeat":"Animation_MorphToLoop",
    "SkelAnime_ChangeAnimDefaultRepeat":"Animation_PlayLoop",
    "SkelAnime_ChangeAnimPlaybackRepeat":"Animation_PlayLoopSetSpeed",
    "SkelAnime_ChangeAnimTransitionStop":"Animation_MorphToPlayOnce",
    "SkelAnime_ChangeAnimDefaultStop":"Animation_PlayOnce",
    "SkelAnime_ChangeAnimPlaybackStop":"Animation_PlayOnceSetSpeed",
    "SkelAnime_ChangeAnimImpl":"Animation_ChangeImpl",
    "SkelAnime_ChangeAnim":"Animation_Change",
    "SkelAnime_GetFrameCount":"Animation_GetLastFrame",
    "func_800A56C8":"Animation_OnFrame",
    "skelAnime.animCurrentFrame":"skelAnime.curFrame",
    "skelAnime.animPlaybackSpeed":"skelAnime.playSpeed",
    "skelAnime.initialFrame":"skelAnime.startFrame",
    "skelAnime.animFrameCount":"skelAnime.endFrame",
    "skelAnime.totalFrames":"skelAnime.animLength",
    "skelAnime.limbDrawTbl":"skelAnime.jointTable",
    "skelAnime.transitionDrawTbl":"skelAnime.morphTable",
    "skelAnime.transCurrentFrame":"skelAnime.morphWeight",
    "skelAnime.transitionStep":"skelAnime.morphRate",
    "skelAnime.flags":"skelAnime.moveFlags",
    "skelAnime.prevFrameRot":"skelAnime.prevRot",
    "skelAnime.prevFramePos":"skelAnime.prevTransl",
    "skelAnime.unk_3E":"skelAnime.baseTransl",
    "skelAnime.unk_03":"skelAnime.taper"
}

def replace_anim(file):
    with open(file,'r',encoding = 'utf-8') as infile:
        srcdata = infile.read()

    funcs = list(animdict.keys())
    fixes = 0
    for func in funcs:
        newfunc = animdict.get(func)
        if(newfunc is None):
            print("How did this happen?")
            return -1
        if(func in srcdata):
            fixes += 1
            srcdata = srcdata.replace(func, newfunc)

    if(fixes > 0):
        print('Changed', fixes,'entr' + ('y' if fixes == 1 else 'ies') + ' in',file)
        with open(file, 'w', encoding = 'utf-8', newline = '\n') as outfile:
            outfile.write(srcdata)
    return 1

def replace_anim_all(repo):
    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                replace_anim(file)
    for subdir, dirs, files in os.walk(repo + os.sep + 'asm' + os.sep + 'non_matchings'):
        for filename in files:
            if(filename.endswith('.s')):
                file = subdir + os.sep + filename
                replace_anim(file)
    return 1

parser = argparse.ArgumentParser(description='Update to the new animation names')
parser.add_argument('file', help="source file to be processed. use '.' to process the whole repo", default = None)

if __name__ == "__main__":
    args = parser.parse_args()
    if(args.file is '.'):
        replace_anim_all(os.curdir)
    else:
        replace_anim(args.file)