#ifndef LABO_SCENE_H
#define LABO_SCENE_H 1

extern SceneCmd labo_sceneCommands[];
extern ActorEntry labo_sceneStartPositionList0x000060[];
extern TransitionActorEntry labo_sceneTransitionActorList_000080[];
extern RomFile labo_sceneRoomList0x000090[];
extern EntranceEntry labo_sceneEntranceList0x000098[];
extern u16 labo_sceneExitList_00009C[];
extern LightSettings labo_sceneLightSettings0x0000A0[];
extern Vec3s labo_sceneCollisionHeader_000EC4CamPosData[];
extern CamData labo_sceneCollisionHeader_000EC4CamDataList[];
extern SurfaceType labo_sceneCollisionHeader_000EC4SurfaceType[];
extern CollisionPoly labo_sceneCollisionHeader_000EC4Polygons[];
extern Vec3s labo_sceneCollisionHeader_000EC4Vertices[];
extern CollisionHeader labo_sceneCollisionHeader_000EC4;

#endif
