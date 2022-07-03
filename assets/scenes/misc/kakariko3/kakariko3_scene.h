#ifndef KAKARIKO3_SCENE_H
#define KAKARIKO3_SCENE_H 1

extern SceneCmd kakariko3_sceneCommands[];
extern ActorEntry kakariko3_sceneStartPositionList0x000060[];
extern TransitionActorEntry kakariko3_sceneTransitionActorList_000070[];
extern RomFile kakariko3_sceneRoomList0x000080[];
extern EntranceEntry kakariko3_sceneEntranceList0x000088[];
extern u16 kakariko3_sceneExitList_00008C[];
extern LightSettings kakariko3_sceneLightSettings0x000090[];
extern Vec3s kakariko3_sceneCollisionHeader_000808CamPosData[];
extern CamData kakariko3_sceneCollisionHeader_000808CamDataList[];
extern SurfaceType kakariko3_sceneCollisionHeader_000808SurfaceType[];
extern CollisionPoly kakariko3_sceneCollisionHeader_000808Polygons[];
extern Vec3s kakariko3_sceneCollisionHeader_000808Vertices[];
extern CollisionHeader kakariko3_sceneCollisionHeader_000808;

#endif
