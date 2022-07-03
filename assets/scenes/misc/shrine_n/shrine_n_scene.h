#ifndef SHRINE_N_SCENE_H
#define SHRINE_N_SCENE_H 1

extern SceneCmd shrine_n_sceneCommands[];
extern ActorEntry shrine_n_sceneStartPositionList0x000060[];
extern RomFile shrine_n_sceneRoomList0x000080[];
extern EntranceEntry shrine_n_sceneEntranceList0x000088[];
extern u16 shrine_n_sceneExitList_00008C[];
extern LightSettings shrine_n_sceneLightSettings0x000090[];
extern Vec3s shrine_n_scenePathwayList_0000A8[];
extern Vec3s shrine_n_scenePathwayList_0000D4[];
extern Path shrine_n_scenePathList_000100[];
extern Vec3s shrine_n_sceneCollisionHeader_0014D4CamPosData[];
extern CamData shrine_n_sceneCollisionHeader_0014D4CamDataList[];
extern SurfaceType shrine_n_sceneCollisionHeader_0014D4SurfaceType[];
extern CollisionPoly shrine_n_sceneCollisionHeader_0014D4Polygons[];
extern Vec3s shrine_n_sceneCollisionHeader_0014D4Vertices[];
extern CollisionHeader shrine_n_sceneCollisionHeader_0014D4;

#endif
