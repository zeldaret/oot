#ifndef HAKADANCH_SCENE_H
#define HAKADANCH_SCENE_H 1

extern SceneCmd HAKAdanCH_sceneCommands[];
extern ActorEntry HAKAdanCH_sceneStartPositionList0x000068[];
extern TransitionActorEntry HAKAdanCH_sceneTransitionActorList_000078[];
extern RomFile HAKAdanCH_sceneRoomList0x000168[];
extern EntranceEntry HAKAdanCH_sceneEntranceList0x0001A0[];
extern u16 HAKAdanCH_sceneExitList_0001A4[];
extern LightSettings HAKAdanCH_sceneLightSettings0x0001A8[];
extern Vec3s HAKAdanCH_scenePathwayList_000200[];
extern Vec3s HAKAdanCH_scenePathwayList_000224[];
extern Path HAKAdanCH_scenePathList_000248[];
extern Vec3s HAKAdanCH_sceneCollisionHeader_00A558CamPosData[];
extern CamData HAKAdanCH_sceneCollisionHeader_00A558CamDataList[];
extern SurfaceType HAKAdanCH_sceneCollisionHeader_00A558SurfaceType[];
extern CollisionPoly HAKAdanCH_sceneCollisionHeader_00A558Polygons[];
extern Vec3s HAKAdanCH_sceneCollisionHeader_00A558Vertices[];
extern WaterBox HAKAdanCH_sceneCollisionHeader_00A558WaterBoxes[];
extern CollisionHeader HAKAdanCH_sceneCollisionHeader_00A558;
extern u64 HAKAdanCH_sceneTex_00A590[];
extern u64 HAKAdanCH_sceneTex_00AD90[];
extern u64 HAKAdanCH_sceneTex_00B590[];
extern u64 HAKAdanCH_sceneTex_00BD90[];

#endif
