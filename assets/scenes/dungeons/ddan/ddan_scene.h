#ifndef DDAN_SCENE_H
#define DDAN_SCENE_H 1

extern SceneCmd ddan_sceneCommands[];
extern ActorEntry ddan_sceneStartPositionList0x000060[];
extern TransitionActorEntry ddan_sceneTransitionActorList_000080[];
extern RomFile ddan_sceneRoomList0x0001F0[];
extern EntranceEntry ddan_sceneEntranceList0x000278[];
extern u16 ddan_sceneExitList_00027C[];
extern LightSettings ddan_sceneLightSettings0x000280[];
extern CamData ddan_sceneCollisionHeader_011D40CamDataList[];
extern SurfaceType ddan_sceneCollisionHeader_011D40SurfaceType[];
extern CollisionPoly ddan_sceneCollisionHeader_011D40Polygons[];
extern Vec3s ddan_sceneCollisionHeader_011D40Vertices[];
extern CollisionHeader ddan_sceneCollisionHeader_011D40;
extern u64 ddan_sceneTLUT_011D70[];
extern u64 gDCLavaFloor1Tex[];
extern u64 gDCDayEntranceTex[];
extern u64 gDCLavaFloor8Tex[];
extern u64 gDCLavaFloor7Tex[];
extern u64 gDCNightEntranceTex[];
extern u64 gDCLavaFloor6Tex[];
extern u64 gDCLavaFloor4Tex[];
extern u64 gDCLavaFloor3Tex[];
extern u64 gDCLavaFloor2Tex[];
extern u64 gDCLavaFloor5Tex[];
extern CutsceneData gDcOpeningCs[];

#endif
