#ifndef ICE_DOUKUTU_SCENE_H
#define ICE_DOUKUTU_SCENE_H 1

extern SceneCmd ice_doukutu_sceneCommands[];
extern SceneCmd* ice_doukutu_sceneAlternateHeaders0x000070[];
extern ActorEntry ice_doukutu_sceneStartPositionList0x000080[];
extern TransitionActorEntry ice_doukutu_sceneTransitionActorList_0000A0[];
extern RomFile ice_doukutu_sceneRoomList0x000160[];
extern EntranceEntry ice_doukutu_sceneEntranceList0x0001C0[];
extern u16 ice_doukutu_sceneExitList_0001C4[];
extern LightSettings ice_doukutu_sceneLightSettings0x0001C8[];
extern Vec3s ice_doukutu_scenePathwayList_00024C[];
extern Vec3s ice_doukutu_scenePathwayList_000270[];
extern Vec3s ice_doukutu_scenePathwayList_000290[];
extern Vec3s ice_doukutu_scenePathwayList_0002CC[];
extern Vec3s ice_doukutu_scenePathwayList_0002E0[];
extern Path ice_doukutu_scenePathList_000304[];
extern CutsceneData gIceCavernSerenadeCs[];
extern CamData ice_doukutu_sceneCollisionHeader_00F668CamDataList[];
extern SurfaceType ice_doukutu_sceneCollisionHeader_00F668SurfaceType[];
extern CollisionPoly ice_doukutu_sceneCollisionHeader_00F668Polygons[];
extern Vec3s ice_doukutu_sceneCollisionHeader_00F668Vertices[];
extern WaterBox ice_doukutu_sceneCollisionHeader_00F668WaterBoxes[];
extern CollisionHeader ice_doukutu_sceneCollisionHeader_00F668;
extern SceneCmd ice_doukutu_sceneSet_00F6A0[];
extern ActorEntry ice_doukutu_sceneStartPositionList0x00F708[];
extern TransitionActorEntry ice_doukutu_sceneTransitionActorList_00F718[];
extern RomFile ice_doukutu_sceneRoomList0x00F7D8[];
extern EntranceEntry ice_doukutu_sceneEntranceList0x00F838[];
extern u16 ice_doukutu_sceneExitList_00F83C[];
extern LightSettings ice_doukutu_sceneLightSettings0x00F840[];
extern u64 ice_doukutu_sceneTLUT_00F8A0[];
extern u64 gIceCavernNightEntranceTex[];
extern u64 gIceCavernDayEntranceTex[];
extern u64 ice_doukutu_sceneTex_00FCC0[];
extern u64 ice_doukutu_sceneTex_0100C0[];
extern u64 ice_doukutu_sceneTex_0108C0[];
extern u64 ice_doukutu_sceneTex_010AC0[];
extern u64 ice_doukutu_sceneTex_010EC0[];

#endif
