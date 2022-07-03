#ifndef SYOTES_SCENE_H
#define SYOTES_SCENE_H 1

extern SceneCmd syotes_sceneCommands[];
extern ActorEntry syotes_sceneStartPositionList0x000050[];
extern RomFile syotes_sceneRoomList0x000060[];
extern EntranceEntry syotes_sceneEntranceList0x000068[];
extern LightSettings syotes_sceneLightSettings0x00006C[];
extern CamData syotes_sceneCollisionHeader_001BD4CamDataList[];
extern SurfaceType syotes_sceneCollisionHeader_001BD4SurfaceType[];
extern CollisionPoly syotes_sceneCollisionHeader_001BD4Polygons[];
extern Vec3s syotes_sceneCollisionHeader_001BD4Vertices[];
extern CollisionHeader syotes_sceneCollisionHeader_001BD4;

#endif
