#ifndef DRAG_SCENE_H
#define DRAG_SCENE_H 1

extern SceneCmd drag_sceneCommands[];
extern ActorEntry drag_sceneStartPositionList0x000058[];
extern RomFile drag_sceneRoomList0x000088[];
extern EntranceEntry drag_sceneEntranceList0x000090[];
extern u16 drag_sceneExitList_000098[];
extern LightSettings drag_sceneLightSettings0x00009C[];
extern Vec3s drag_sceneCollisionHeader_0003C0CamPosData[];
extern CamData drag_sceneCollisionHeader_0003C0CamDataList[];
extern SurfaceType drag_sceneCollisionHeader_0003C0SurfaceType[];
extern CollisionPoly drag_sceneCollisionHeader_0003C0Polygons[];
extern Vec3s drag_sceneCollisionHeader_0003C0Vertices[];
extern CollisionHeader drag_sceneCollisionHeader_0003C0;

#endif
