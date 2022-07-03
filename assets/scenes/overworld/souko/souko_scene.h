#ifndef SOUKO_SCENE_H
#define SOUKO_SCENE_H 1

extern SceneCmd souko_sceneCommands[];
extern ActorEntry souko_sceneStartPositionList0x000060[];
extern TransitionActorEntry souko_sceneTransitionActorList_000090[];
extern RomFile souko_sceneRoomList0x0000C0[];
extern EntranceEntry souko_sceneEntranceList0x0000D8[];
extern u16 souko_sceneExitList_0000E0[];
extern LightSettings souko_sceneLightSettings0x0000E4[];
extern Vec3s souko_sceneCollisionHeader_0043E0CamPosData[];
extern CamData souko_sceneCollisionHeader_0043E0CamDataList[];
extern SurfaceType souko_sceneCollisionHeader_0043E0SurfaceType[];
extern CollisionPoly souko_sceneCollisionHeader_0043E0Polygons[];
extern Vec3s souko_sceneCollisionHeader_0043E0Vertices[];
extern CollisionHeader souko_sceneCollisionHeader_0043E0;
extern u64 souko_sceneTex_004410[];
extern u64 souko_sceneTex_004C10[];
extern u64 gLonLonHouseNightEntranceTex[];
extern u64 gLonLonHouseDayEntranceTex[];
extern u64 souko_sceneTex_005410[];
extern u64 souko_sceneTex_005C10[];

#endif
