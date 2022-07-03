#ifndef KAKARIKO_SCENE_H
#define KAKARIKO_SCENE_H 1

extern SceneCmd kakariko_sceneCommands[];
extern ActorEntry kakariko_sceneStartPositionList0x000068[];
extern TransitionActorEntry kakariko_sceneTransitionActorList_000078[];
extern RomFile kakariko_sceneRoomList0x000088[];
extern EntranceEntry kakariko_sceneEntranceList0x000090[];
extern u16 kakariko_sceneExitList_000094[];
extern LightSettings kakariko_sceneLightSettings0x000098[];
extern Vec3s kakariko_scenePathwayList_0000B0[];
extern Path kakariko_scenePathway_0000BC[];
extern Vec3s kakariko_sceneCollisionHeader_000E68CamPosData[];
extern CamData kakariko_sceneCollisionHeader_000E68CamDataList[];
extern SurfaceType kakariko_sceneCollisionHeader_000E68SurfaceType[];
extern CollisionPoly kakariko_sceneCollisionHeader_000E68Polygons[];
extern Vec3s kakariko_sceneCollisionHeader_000E68Vertices[];
extern CollisionHeader kakariko_sceneCollisionHeader_000E68;

#endif
