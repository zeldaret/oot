#ifndef KINSUTA_SCENE_H
#define KINSUTA_SCENE_H 1

extern SceneCmd kinsuta_sceneCommands[];
extern ActorEntry kinsuta_sceneStartPositionList0x000060[];
extern TransitionActorEntry kinsuta_sceneTransitionActorList_000070[];
extern RomFile kinsuta_sceneRoomList0x000080[];
extern EntranceEntry kinsuta_sceneEntranceList0x000088[];
extern u16 kinsuta_sceneExitList_00008C[];
extern LightSettings kinsuta_sceneLightSettings0x000090[];
extern CamData kinsuta_sceneCollisionHeader_0015E4CamDataList[];
extern SurfaceType kinsuta_sceneCollisionHeader_0015E4SurfaceType[];
extern CollisionPoly kinsuta_sceneCollisionHeader_0015E4Polygons[];
extern Vec3s kinsuta_sceneCollisionHeader_0015E4Vertices[];
extern CollisionHeader kinsuta_sceneCollisionHeader_0015E4;

#endif
