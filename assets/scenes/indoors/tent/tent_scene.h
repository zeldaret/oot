#ifndef TENT_SCENE_H
#define TENT_SCENE_H 1

extern SceneCmd tent_sceneCommands[];
extern ActorEntry tent_sceneStartPositionList0x000058[];
extern RomFile tent_sceneRoomList0x000068[];
extern EntranceEntry tent_sceneEntranceList0x000070[];
extern u16 tent_sceneExitList_000074[];
extern LightSettings tent_sceneLightSettings0x000078[];
extern Vec3s tent_sceneCollisionHeader_00064CCamPosData[];
extern CamData tent_sceneCollisionHeader_00064CCamDataList[];
extern SurfaceType tent_sceneCollisionHeader_00064CSurfaceType[];
extern CollisionPoly tent_sceneCollisionHeader_00064CPolygons[];
extern Vec3s tent_sceneCollisionHeader_00064CVertices[];
extern CollisionHeader tent_sceneCollisionHeader_00064C;

#endif
