#ifndef SHRINE_SCENE_H
#define SHRINE_SCENE_H 1

extern SceneCmd shrine_sceneCommands[];
extern ActorEntry shrine_sceneStartPositionList0x000058[];
extern RomFile shrine_sceneRoomList0x000078[];
extern EntranceEntry shrine_sceneEntranceList0x000080[];
extern u16 shrine_sceneExitList_000084[];
extern LightSettings shrine_sceneLightSettings0x000088[];
extern Vec3s shrine_sceneCollisionHeader_0014ACCamPosData[];
extern CamData shrine_sceneCollisionHeader_0014ACCamDataList[];
extern SurfaceType shrine_sceneCollisionHeader_0014ACSurfaceType[];
extern CollisionPoly shrine_sceneCollisionHeader_0014ACPolygons[];
extern Vec3s shrine_sceneCollisionHeader_0014ACVertices[];
extern CollisionHeader shrine_sceneCollisionHeader_0014AC;

#endif
