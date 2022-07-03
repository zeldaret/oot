#ifndef GANON_TOU_SCENE_H
#define GANON_TOU_SCENE_H 1

extern SceneCmd ganon_tou_sceneCommands[];
extern SceneCmd* ganon_tou_sceneAlternateHeaders0x000060[];
extern ActorEntry ganon_tou_sceneStartPositionList0x000070[];
extern RomFile ganon_tou_sceneRoomList0x0000A0[];
extern EntranceEntry ganon_tou_sceneEntranceList0x0000A8[];
extern u16 ganon_tou_sceneExitList_0000B0[];
extern LightSettings ganon_tou_sceneLightSettings0x0000B8[];
extern CamData ganon_tou_sceneCollisionHeader_002610CamDataList[];
extern SurfaceType ganon_tou_sceneCollisionHeader_002610SurfaceType[];
extern CollisionPoly ganon_tou_sceneCollisionHeader_002610Polygons[];
extern Vec3s ganon_tou_sceneCollisionHeader_002610Vertices[];
extern CollisionHeader ganon_tou_sceneCollisionHeader_002610;
extern CutsceneData gRainbowBridgeCs[];
extern SceneCmd ganon_tou_sceneSet_003180[];
extern ActorEntry ganon_tou_sceneStartPositionList0x0031E0[];
extern RomFile ganon_tou_sceneRoomList0x003210[];
extern EntranceEntry ganon_tou_sceneEntranceList0x003218[];
extern u16 ganon_tou_sceneExitList_003220[];
extern LightSettings ganon_tou_sceneLightSettings0x003228[];
extern u64 ganon_tou_sceneTex_003280[];
extern CutsceneData gGanonsCastleIntroCs[];

#endif
