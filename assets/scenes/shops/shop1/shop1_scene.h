#ifndef SHOP1_SCENE_H
#define SHOP1_SCENE_H 1

extern SceneCmd shop1_sceneCommands[];
extern ActorEntry shop1_sceneStartPositionList0x000058[];
extern RomFile shop1_sceneRoomList0x000078[];
extern EntranceEntry shop1_sceneEntranceList0x000080[];
extern u16 shop1_sceneExitList_000084[];
extern LightSettings shop1_sceneLightSettings0x000088[];
extern Vec3s shop1_sceneCollisionHeader_0002B8CamPosData[];
extern CamData shop1_sceneCollisionHeader_0002B8CamDataList[];
extern SurfaceType shop1_sceneCollisionHeader_0002B8SurfaceType[];
extern CollisionPoly shop1_sceneCollisionHeader_0002B8Polygons[];
extern Vec3s shop1_sceneCollisionHeader_0002B8Vertices[];
extern CollisionHeader shop1_sceneCollisionHeader_0002B8;

#endif
