#ifndef KAKUSIANA_SCENE_H
#define KAKUSIANA_SCENE_H 1

extern SceneCmd kakusiana_sceneCommands[];
extern ActorEntry kakusiana_sceneStartPositionList0x000058[];
extern RomFile kakusiana_sceneRoomList0x000138[];
extern EntranceEntry kakusiana_sceneEntranceList0x0001A8[];
extern u16 kakusiana_sceneExitList_0001C4[];
extern LightSettings kakusiana_sceneLightSettings0x0001C8[];
extern CamData kakusiana_sceneCollisionHeader_00B7F0CamDataList[];
extern SurfaceType kakusiana_sceneCollisionHeader_00B7F0SurfaceType[];
extern CollisionPoly kakusiana_sceneCollisionHeader_00B7F0Polygons[];
extern Vec3s kakusiana_sceneCollisionHeader_00B7F0Vertices[];
extern WaterBox kakusiana_sceneCollisionHeader_00B7F0WaterBoxes[];
extern CollisionHeader kakusiana_sceneCollisionHeader_00B7F0;
extern u64 kakusiana_sceneTex_00B820[];
extern u64 kakusiana_sceneTex_00C020[];
extern u64 kakusiana_sceneTex_00D020[];

#endif
