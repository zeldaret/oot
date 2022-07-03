#ifndef SYOTES2_SCENE_H
#define SYOTES2_SCENE_H 1

extern SceneCmd syotes2_sceneCommands[];
extern ActorEntry syotes2_sceneStartPositionList0x000050[];
extern RomFile syotes2_sceneRoomList0x000060[];
extern EntranceEntry syotes2_sceneEntranceList0x000068[];
extern LightSettings syotes2_sceneLightSettings0x00006C[];
extern CamData syotes2_sceneCollisionHeader_002478CamDataList[];
extern SurfaceType syotes2_sceneCollisionHeader_002478SurfaceType[];
extern CollisionPoly syotes2_sceneCollisionHeader_002478Polygons[];
extern Vec3s syotes2_sceneCollisionHeader_002478Vertices[];
extern CollisionHeader syotes2_sceneCollisionHeader_002478;

#endif
