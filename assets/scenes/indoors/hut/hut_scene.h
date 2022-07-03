#ifndef HUT_SCENE_H
#define HUT_SCENE_H 1

extern SceneCmd hut_sceneCommands[];
extern ActorEntry hut_sceneStartPositionList0x000060[];
extern TransitionActorEntry hut_sceneTransitionActorList_000070[];
extern RomFile hut_sceneRoomList0x000080[];
extern EntranceEntry hut_sceneEntranceList0x000088[];
extern u16 hut_sceneExitList_00008C[];
extern LightSettings hut_sceneLightSettings0x000090[];
extern Vec3s hut_sceneCollisionHeader_0004DCCamPosData[];
extern CamData hut_sceneCollisionHeader_0004DCCamDataList[];
extern SurfaceType hut_sceneCollisionHeader_0004DCSurfaceType[];
extern CollisionPoly hut_sceneCollisionHeader_0004DCPolygons[];
extern Vec3s hut_sceneCollisionHeader_0004DCVertices[];
extern CollisionHeader hut_sceneCollisionHeader_0004DC;

#endif
