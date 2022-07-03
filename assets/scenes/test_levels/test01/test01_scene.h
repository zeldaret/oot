#ifndef TEST01_SCENE_H
#define TEST01_SCENE_H 1

extern SceneCmd test01_sceneCommands[];
extern ActorEntry test01_sceneStartPositionList0x000050[];
extern RomFile test01_sceneRoomList0x000060[];
extern EntranceEntry test01_sceneEntranceList0x000068[];
extern LightSettings test01_sceneLightSettings0x00006C[];
extern CamData test01_sceneCollisionHeader_003DECCamDataList[];
extern SurfaceType test01_sceneCollisionHeader_003DECSurfaceType[];
extern CollisionPoly test01_sceneCollisionHeader_003DECPolygons[];
extern Vec3s test01_sceneCollisionHeader_003DECVertices[];
extern WaterBox test01_sceneCollisionHeader_003DECWaterBoxes[];
extern CollisionHeader test01_sceneCollisionHeader_003DEC;

#endif
