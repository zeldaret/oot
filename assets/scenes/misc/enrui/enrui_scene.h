#ifndef ENRUI_SCENE_H
#define ENRUI_SCENE_H 1

extern SceneCmd enrui_sceneCommands[];
extern ActorEntry enrui_sceneStartPositionList0x000060[];
extern TransitionActorEntry enrui_sceneTransitionActorList_000090[];
extern RomFile enrui_sceneRoomList0x0000A0[];
extern EntranceEntry enrui_sceneEntranceList0x0000A8[];
extern u16 enrui_sceneExitList_0000B0[];
extern LightSettings enrui_sceneLightSettings0x0000B8[];
extern Vec3s enrui_sceneCollisionHeader_0003B4CamPosData[];
extern CamData enrui_sceneCollisionHeader_0003B4CamDataList[];
extern SurfaceType enrui_sceneCollisionHeader_0003B4SurfaceType[];
extern CollisionPoly enrui_sceneCollisionHeader_0003B4Polygons[];
extern Vec3s enrui_sceneCollisionHeader_0003B4Vertices[];
extern CollisionHeader enrui_sceneCollisionHeader_0003B4;

#endif
