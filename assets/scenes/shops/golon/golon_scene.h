#ifndef GOLON_SCENE_H
#define GOLON_SCENE_H 1

extern SceneCmd golon_sceneCommands[];
extern ActorEntry golon_sceneStartPositionList0x000050[];
extern RomFile golon_sceneRoomList0x000060[];
extern EntranceEntry golon_sceneEntranceList0x000068[];
extern u16 golon_sceneExitList_00006C[];
extern LightSettings golon_sceneLightSettings0x000070[];
extern Vec3s golon_sceneCollisionHeader_000368CamPosData[];
extern CamData golon_sceneCollisionHeader_000368CamDataList[];
extern SurfaceType golon_sceneCollisionHeader_000368SurfaceType[];
extern CollisionPoly golon_sceneCollisionHeader_000368Polygons[];
extern Vec3s golon_sceneCollisionHeader_000368Vertices[];
extern CollisionHeader golon_sceneCollisionHeader_000368;

#endif
