#ifndef BESITU_SCENE_H
#define BESITU_SCENE_H 1

extern SceneCmd besitu_sceneCommands[];
extern ActorEntry besitu_sceneStartPositionList0x000048[];
extern RomFile besitu_sceneRoomList0x000058[];
extern EntranceEntry besitu_sceneEntranceList0x000060[];
extern LightSettings besitu_sceneLightSettings0x000064[];
extern CamData besitu_sceneCollisionHeader_000478CamDataList[];
extern SurfaceType besitu_sceneCollisionHeader_000478SurfaceType[];
extern CollisionPoly besitu_sceneCollisionHeader_000478Polygons[];
extern Vec3s besitu_sceneCollisionHeader_000478Vertices[];
extern CollisionHeader besitu_sceneCollisionHeader_000478;

#endif
