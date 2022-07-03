#ifndef ENTRA_SCENE_H
#define ENTRA_SCENE_H 1

extern SceneCmd entra_sceneCommands[];
extern ActorEntry entra_sceneStartPositionList0x000060[];
extern TransitionActorEntry entra_sceneTransitionActorList_000090[];
extern RomFile entra_sceneRoomList0x0000A0[];
extern EntranceEntry entra_sceneEntranceList0x0000A8[];
extern u16 entra_sceneExitList_0000B0[];
extern LightSettings entra_sceneLightSettings0x0000B8[];
extern Vec3s entra_sceneCollisionHeader_0003B4CamPosData[];
extern CamData entra_sceneCollisionHeader_0003B4CamDataList[];
extern SurfaceType entra_sceneCollisionHeader_0003B4SurfaceType[];
extern CollisionPoly entra_sceneCollisionHeader_0003B4Polygons[];
extern Vec3s entra_sceneCollisionHeader_0003B4Vertices[];
extern CollisionHeader entra_sceneCollisionHeader_0003B4;

#endif
