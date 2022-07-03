#ifndef SHRINE_R_SCENE_H
#define SHRINE_R_SCENE_H 1

extern SceneCmd shrine_r_sceneCommands[];
extern ActorEntry shrine_r_sceneStartPositionList0x000058[];
extern RomFile shrine_r_sceneRoomList0x000078[];
extern EntranceEntry shrine_r_sceneEntranceList0x000080[];
extern u16 shrine_r_sceneExitList_000084[];
extern LightSettings shrine_r_sceneLightSettings0x000088[];
extern Vec3s shrine_r_sceneCollisionHeader_00145CCamPosData[];
extern CamData shrine_r_sceneCollisionHeader_00145CCamDataList[];
extern SurfaceType shrine_r_sceneCollisionHeader_00145CSurfaceType[];
extern CollisionPoly shrine_r_sceneCollisionHeader_00145CPolygons[];
extern Vec3s shrine_r_sceneCollisionHeader_00145CVertices[];
extern CollisionHeader shrine_r_sceneCollisionHeader_00145C;

#endif
