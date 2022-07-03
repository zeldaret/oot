#ifndef BDAN_SCENE_H
#define BDAN_SCENE_H 1

extern SceneCmd bdan_sceneCommands[];
extern SceneCmd* bdan_sceneAlternateHeaders0x000068[];
extern ActorEntry bdan_sceneStartPositionList0x000078[];
extern TransitionActorEntry bdan_sceneTransitionActorList_000098[];
extern RomFile bdan_sceneRoomList0x0001F8[];
extern EntranceEntry bdan_sceneEntranceList0x000278[];
extern u16 bdan_sceneExitList_00027C[];
extern LightSettings bdan_sceneLightSettings0x000280[];
extern CamData bdan_sceneCollisionHeader_013074CamDataList[];
extern SurfaceType bdan_sceneCollisionHeader_013074SurfaceType[];
extern CollisionPoly bdan_sceneCollisionHeader_013074Polygons[];
extern Vec3s bdan_sceneCollisionHeader_013074Vertices[];
extern WaterBox bdan_sceneCollisionHeader_013074WaterBoxes[];
extern CollisionHeader bdan_sceneCollisionHeader_013074;
extern CutsceneData bdan_sceneCutsceneData_0130A0[];
extern SceneCmd bdan_sceneSet_013720[];
extern ActorEntry bdan_sceneStartPositionList0x013788[];
extern TransitionActorEntry bdan_sceneTransitionActorList_0137A8[];
extern RomFile bdan_sceneRoomList0x013908[];
extern EntranceEntry bdan_sceneEntranceList0x013988[];
extern u16 bdan_sceneExitList_01398C[];
extern LightSettings bdan_sceneLightSettings0x013990[];
extern u64 bdan_sceneTLUT_0139F0[];
extern u64 bdan_sceneTLUT_013BF8[];
extern u64 bdan_sceneTex_013E00[];
extern u64 bdan_sceneTex_014600[];
extern u64 bdan_sceneTex_014A00[];
extern u64 bdan_sceneTex_015200[];
extern CutsceneData gJabuJabuIntroCs[];

#endif
