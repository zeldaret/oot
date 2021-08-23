#!/usr/bin/env python3

import os
import argparse

mathdict ={"Math_Rand_":"Rand_",
"func_800CA540(":"Math_FactorialF(",
"func_800CA63C(":"Math_Factorial(",
"func_800CA6FC(":"Math_PowF(",
"func_800CA720(":"Math_SinF(",
"func_800CA774(":"Math_CosF(",
"Math_atan2f(":"Math_FAtan2F(",
"atan2f(":"Math_Atan2F(",
"atan2s(":"Math_Atan2S(",
"Math_Coss(":"Math_CosS(",
"Math_Sins(":"Math_SinS(",
"Math_ApproxUpdateScaledS(":"Math_ScaledStepToS(",
"Math_ApproxS(":"Math_StepToS(",
"Math_ApproxF(":"Math_StepToF(",
"func_80077A90(":"Math_StepUntilAngleS(",
"func_80077AF8(":"Math_StepUntilS(",
"func_80077B58(":"Math_StepToAngleS(",
"func_80077C1C(":"Math_StepUntilF(",
"func_80077C6C(":"Math_AsymStepToF(",
"Math_SmoothScaleMaxMinF(":"Math_SmoothStepToF(",
"Math_SmoothScaleMaxF(":"Math_ApproachF(",
"Math_SmoothDownscaleMaxF(":"Math_ApproachZeroF(",
"func_800784D8(":"Math_SmoothStepToDegF(",
"Math_SmoothScaleMaxMinS(":"Math_SmoothStepToS(",
"Math_SmoothScaleMaxS(":"Math_ApproachS("}

def replace_math(file):
    with open(file,'r',encoding = 'utf-8') as infile:
        srcdata = infile.read()

    funcs = list(mathdict.keys())
    fixes = 0
    for func in funcs:
        newfunc = mathdict.get(func)
        if(newfunc is None):
            print("How did this happen?")
            return -1
        if(func in srcdata):
            fixes += 1
            srcdata = srcdata.replace(func, newfunc)


    if(fixes > 0):
        print('Changed', fixes,'function' + ('' if fixes == 1 else 's') + ' in',file)
        with open(file, 'w', encoding = 'utf-8', newline = '\n') as outfile:
            outfile.write(srcdata)
    return 1

def replace_math_all(repo):
    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                replace_math(file)
    for subdir, dirs, files in os.walk(repo + os.sep + 'asm' + os.sep + 'non_matchings'):
        for filename in files:
            if(filename.endswith('.c')):
                file = subdir + os.sep + filename
                replace_math(file)
    return 1

if __name__ == "__main__":
    repo = os.curdir
    replace_math_all(repo)