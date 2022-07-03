#ifndef IMPA_SCENE_H
#define IMPA_SCENE_H 1

extern SceneCmd impa_sceneCommands[];
extern ActorEntry impa_sceneStartPositionList0x000060[];
extern TransitionActorEntry impa_sceneTransitionActorList_000070[];
extern RomFile impa_sceneRoomList0x000080[];
extern EntranceEntry impa_sceneEntranceList0x000088[];
extern u16 impa_sceneExitList_00008C[];
extern LightSettings impa_sceneLightSettings0x000090[];
extern Vec3s impa_sceneCollisionHeader_000CE0CamPosData[];
extern CamData impa_sceneCollisionHeader_000CE0CamDataList[];
extern SurfaceType impa_sceneCollisionHeader_000CE0SurfaceType[];
extern CollisionPoly impa_sceneCollisionHeader_000CE0Polygons[];
extern Vec3s impa_sceneCollisionHeader_000CE0Vertices[];
extern CollisionHeader impa_sceneCollisionHeader_000CE0;

#endif
