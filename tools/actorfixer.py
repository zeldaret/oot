#!/usr/bin/env python3

import os
import argparse

animdict ={
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
    "DistToLink":"DistToPlayer",
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
    "ACTORTYPE":"ACTORCAT",
    "actor.type":"actor.category",
    ".body.":".info.",
    "HitItem":"HitInfo",
    "bumper.unk_06":"bumper.hitPos",
    "base.list":"base.elements",
    "toucher.flags":"toucher.dmgFlags",
    "bumper.flags":"bumper.dmgFlags",
    "maskA ":"ocFlags1 ",
    "maskB ":"ocFlags2 ",
    "base.type":"base.colType",
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
    "func_80033260": "Actor_SpawnFloorDust",
    "func_80032C7C": "Enemy_StartFinishingBlow",
    "actorCtx.unk_00": "actorCtx.freezeFlashTimer",
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
            print(func)
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

parser = argparse.ArgumentParser(description='Apply function renames to a file')
parser.add_argument('file', help="source file to be processed. use . to process the whole repo", default = None)

if __name__ == "__main__":
    args = parser.parse_args()
    if(args.file == '.'):
        replace_anim_all(os.curdir)
    else:
        replace_anim(args.file)
