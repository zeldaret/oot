#!/usr/bin/env python3

import os
import argparse

# all occurrences of keys will be replaced by associated value
simpleReplace = {
    "Math_Rand_":"Rand_",
    "ACTORTYPE":"ACTORCAT",
    "DistToLink":"DistToPlayer",
    "HitItem":"HitInfo",
}

# all occurrences of keys will be replaced by associated value,
# if the occurence is the whole word
# for example, if there is a space before and an open parenthesis after,
# like for a function call: ` func_8002E4B4(`
wordReplace = {
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
    "skelAnime.unk_03":"skelAnime.taper",
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
    "Math_SmoothScaleMaxS(":"Math_ApproachS(",
    "Actor_SetHeight":"Actor_SetFocus",
    "func_8002E4B4":"Actor_UpdateBgCheckInfo",
    "func_8002BDB0":"Actor_SetFeetPos",
    "func_8002DA78":"Actor_WorldYawTowardActor",
    "func_8002DAC0":"Actor_WorldYawTowardPoint",
    "func_8002DB48":"Actor_WorldDistXYZToActor",
    "func_8002DB6C":"Actor_WorldDistXYZToPoint",
    "func_8002DAE0":"Actor_WorldPitchTowardActor",
    "func_8002DB28":"Actor_WorldPitchTowardPoint",
    "func_8002DB8C":"Actor_WorldDistXZToActor",
    "func_8002DBB0":"Actor_WorldDistXZToPoint",
    "func_8002EEE4":"Actor_GetFocus",
    "func_8002EF14":"Actor_GetWorld",
    "func_8002EF44":"Actor_GetWorldPosShapeRot",
    "actor.unk_1F":"actor.targetMode",
    "ICHAIN_U8(unk_1F":"ICHAIN_U8(targetMode",
    "actor.initPosRot":"actor.home",
    "actor.posRot.":"actor.world.",
    "actor.posRot2":"actor.focus",
    "actor.unk_4C":"actor.targetArrowOffset",
    "ICHAIN_F32(unk_4C":"ICHAIN_F32(targetArrowOffset",
    "actor.groundY":"actor.floorHeight",
    "actor.wallPolySource":"actor.wallBgId",
    "actor.floorPolySource":"actor.floorBgId",
    "actor.wallPolyRot":"actor.wallYaw",
    "yawTowardsLink":"yawTowardsPlayer",
    "colChkInfo.unk_10":"colChkInfo.cylRadius",
    "colChkInfo.unk_12":"colChkInfo.cylHeight",
    "colChkInfo.unk_14":"colChkInfo.cylYShift",
    "shape.unk_08":"shape.yOffset",
    "shape.shadowDrawFunc":"shape.shadowDraw",
    "shape.unk_10":"shape.shadowScale",
    "shape.unk_14":"shape.shadowAlpha",
    "actor.unk_CC":"actor.shape.feetPos",
    "actor.pos4":"actor.prevPos",
    "actor.unk_10C":"actor.isTargeted",
    "actor.unk_10D":"actor.targetPriority",
    "actor.dmgEffectTimer":"actor.colorFilterTimer",
    "actor.dmgEffectParams":"actor.colorFilterParams",
    "actor.unk_116":"actor.dropFlag",
    "actorCtx.actorList[":"actorCtx.actorLists[",
    "Actor_ChangeType":"Actor_ChangeCategory",
    "ActorShadow_DrawFunc_Squiggly":"ActorShadow_DrawHorse",
    "ActorShadow_DrawFunc_":"ActorShadow_Draw",
    "actor.type":"actor.category",
    ".body.":".info.",
    "bumper.unk_06":"bumper.hitPos",
    "base.list":"base.elements",
    "toucher.flags":"toucher.dmgFlags",
    "bumper.flags":"bumper.dmgFlags",
    "maskA ":"ocFlags1 ",
    "maskB ":"ocFlags2 ",
    ".base.type":".base.colType",
    "COLTYPE_UNK11":"COLTYPE_HARD",
    "COLTYPE_UNK12":"COLTYPE_WOOD",
    "COLTYPE_UNK13":"COLTYPE_TREE",
    "COLTYPE_METAL_SHIELD":"COLTYPE_METAL",
    "COLTYPE_UNK10":"COLTYPE_NONE",
    "COLTYPE_UNK":"COLTYPE_HIT",
    "info.flags":"info.elemtype",
    "ColliderBody":"ColliderInfo",
    "ColliderJntSphItem":"ColliderJntSphElement",
    "ColliderTrisItem":"ColliderTrisElement",
    "Collider_CylinderUpdate":"Collider_UpdateCylinder",
    "func_800628A4":"Collider_UpdateSpheres",
    "func_800627A0":"Collider_SetTrisVertices",
    "func_80062734":"Collider_SetQuadVertices",
    "func_80061ED4":"CollisionCheck_SetInfo",
    "func_80061EFC":"CollisionCheck_SetInfo2",
    "func_80061EB0":"CollisionCheck_SetInfoNoDamageTable",
    "func_8002E084": "Actor_IsFacingPlayer",
    "func_8002E0D0": "Actor_ActorAIsFacingActorB",
    "func_8002E12C": "Actor_IsFacingAndNearPlayer",
    "func_8002E1A8": "Actor_ActorAIsFacingAndNearActorB",
    "func_80033A84": "Actor_IsTargeted",
    "func_80033AB8": "Actor_OtherIsTargeted",
    "func_80035650": "Actor_SetDropFlag",
    "func_8003573C": "Actor_SetDropFlagJntSph",
    "func_80033780": "Actor_GetProjectileActor",
    "func_80033260": "Actor_SpawnFloorDustRing",
    "Actor_SpawnFloorDust": "Actor_SpawnFloorDustRing",
    "func_80032C7C": "Enemy_StartFinishingBlow",
    "actorCtx.unk_00": "actorCtx.freezeFlashTimer",
    "func_800339B8": "Actor_TestFloorInDirection",
    "Matrix_Reverse": "Matrix_Transpose",
    "func_800D20CC": "Matrix_MtxFToYXZRotS",
    "func_800D2264": "Matrix_MtxFToZYXRotS",
    "func_800D23FC": "Matrix_RotateAxis",
    "PLAYER": ("GET_PLAYER(globalCtx)", {"ignore": (-1, '"PLAYER"')}), # ignore "PLAYER" in sSoundBankNames
    "ACTIVE_CAM": "GET_ACTIVE_CAM(globalCtx)",
}

# [a-zA-Z0-9_]
def is_word_char(c):
    return (c >= 'a' and c <= 'z') or (c >= 'A' and c <= 'Z') or (c >= '0' and c <= '9') or c == '_'

def replace_single(file):
    with open(file, 'r', encoding = 'utf-8') as infile:
        srcdata = infile.read()

    changesCount = 0

    for old, new in simpleReplace.items():
        # replace `old` with `new`
        if old in srcdata:
            changesCount += 1
            print(old, "->", new)
            srcdata = srcdata.replace(old, new)

    for old, new in wordReplace.items():
        # `new` can be a tuple where the first element is what to replace `old` with,
        # and the second element is a dict containing "custom behavior" properties.
        if isinstance(new, tuple):
            custom_behavior = True
            new, custom_behavior_data = new
            # The "ignore" data is a tuple where the first element is an offset relative to
            # where `old` was found, and the string from that index must differ from the
            # tuple's second element for the replacement to be done.
            custom_behavior_ignore_data = custom_behavior_data.get("ignore")
            custom_behavior_ignore = custom_behavior_ignore_data is not None
            if custom_behavior_ignore:
                custom_behavior_ignore_offset, custom_behavior_ignore_match = custom_behavior_ignore_data
        else:
            custom_behavior = False
        # replace `old` with `new` if the occurence of `old` is the whole word
        oldStartIdx = srcdata.find(old)
        if oldStartIdx >= 0:
            old_start_as_word = is_word_char(old[0])
            old_end_as_word = is_word_char(old[-1])
            replaceCount = 0
            while oldStartIdx >= 0:
                replace = True
                if old_start_as_word:
                    if oldStartIdx == 0:
                        pass
                    elif is_word_char(srcdata[oldStartIdx-1]):
                        replace = False
                if old_end_as_word:
                    oldEndIdx = oldStartIdx + len(old)
                    if oldEndIdx >= len(srcdata):
                        pass
                    elif is_word_char(srcdata[oldEndIdx]):
                        replace = False
                if replace and custom_behavior and custom_behavior_ignore:
                    if srcdata[oldStartIdx + custom_behavior_ignore_offset:].startswith(custom_behavior_ignore_match):
                        replace = False
                if replace:
                    srcdata = srcdata[:oldStartIdx] + new + srcdata[oldEndIdx:]
                    replaceCount += 1
                oldStartIdx = srcdata.find(old, oldStartIdx + len(new))
            if replaceCount > 0:
                changesCount += 1
                print(old, "->", new)

    if changesCount > 0:
        print('Changed', changesCount, 'entry' if changesCount == 1 else 'entries', 'in', file)
        with open(file, 'w', encoding = 'utf-8', newline = '\n') as outfile:
            outfile.write(srcdata)

def replace_all(repo):
    for subdir, dirs, files in os.walk(repo + os.sep + 'src'):
        for filename in files:
            if filename.endswith('.c'):
                file = subdir + os.sep + filename
                replace_single(file)
    for subdir, dirs, files in os.walk(repo + os.sep + 'asm' + os.sep + 'non_matchings'):
        for filename in files:
            if filename.endswith('.s'):
                file = subdir + os.sep + filename
                replace_single(file)

parser = argparse.ArgumentParser(description='Apply function renames to a file')
parser.add_argument('file', help="source file to be processed. use . to process the whole repo")

if __name__ == "__main__":
    args = parser.parse_args()
    if args.file == '.':
        replace_all(os.curdir)
    else:
        replace_single(args.file)
