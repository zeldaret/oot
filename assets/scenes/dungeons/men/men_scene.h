#ifndef MEN_SCENE_H
#define MEN_SCENE_H 1

extern SceneCmd men_sceneCommands[];
extern ActorEntry men_sceneStartPositionList0x000060[];
extern TransitionActorEntry men_sceneTransitionActorList_000070[];
extern RomFile men_sceneRoomList0x0001D0[];
extern EntranceEntry men_sceneEntranceList0x000228[];
extern u16 men_sceneExitList_00022C[];
extern LightSettings men_sceneLightSettings0x000230[];
extern Vec3s men_sceneCollisionHeader_00F690CamPosData[];
extern CamData men_sceneCollisionHeader_00F690CamDataList[];
extern SurfaceType men_sceneCollisionHeader_00F690SurfaceType[];
extern CollisionPoly men_sceneCollisionHeader_00F690Polygons[];
extern Vec3s men_sceneCollisionHeader_00F690Vertices[];
extern WaterBox men_sceneCollisionHeader_00F690WaterBoxes[];
extern CollisionHeader men_sceneCollisionHeader_00F690;
extern u64 men_sceneTLUT_00F6C0[];
extern u64 gGTGDayEntranceTex[];
extern u64 gGTGNightEntranceTex[];
extern u64 men_sceneTex_0108C0[];
extern u64 men_sceneTex_010CC0[];

#endif
