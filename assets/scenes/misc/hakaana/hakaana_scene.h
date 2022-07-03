#ifndef HAKAANA_SCENE_H
#define HAKAANA_SCENE_H 1

extern SceneCmd hakaana_sceneCommands[];
extern ActorEntry hakaana_sceneStartPositionList0x000058[];
extern RomFile hakaana_sceneRoomList0x000068[];
extern EntranceEntry hakaana_sceneEntranceList0x000070[];
extern u16 hakaana_sceneExitList_000074[];
extern LightSettings hakaana_sceneLightSettings0x000078[];
extern CamData hakaana_sceneCollisionHeader_000A60CamDataList[];
extern SurfaceType hakaana_sceneCollisionHeader_000A60SurfaceType[];
extern CollisionPoly hakaana_sceneCollisionHeader_000A60Polygons[];
extern Vec3s hakaana_sceneCollisionHeader_000A60Vertices[];
extern CollisionHeader hakaana_sceneCollisionHeader_000A60;

#endif
