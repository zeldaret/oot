#ifndef MAHOUYA_SCENE_H
#define MAHOUYA_SCENE_H 1

extern SceneCmd mahouya_sceneCommands[];
extern ActorEntry mahouya_sceneStartPositionList0x000060[];
extern TransitionActorEntry mahouya_sceneTransitionActorList_000070[];
extern RomFile mahouya_sceneRoomList0x000080[];
extern EntranceEntry mahouya_sceneEntranceList0x000088[];
extern u16 mahouya_sceneExitList_00008C[];
extern LightSettings mahouya_sceneLightSettings0x000090[];
extern Vec3s mahouya_sceneCollisionHeader_0009F4CamPosData[];
extern CamData mahouya_sceneCollisionHeader_0009F4CamDataList[];
extern SurfaceType mahouya_sceneCollisionHeader_0009F4SurfaceType[];
extern CollisionPoly mahouya_sceneCollisionHeader_0009F4Polygons[];
extern Vec3s mahouya_sceneCollisionHeader_0009F4Vertices[];
extern CollisionHeader mahouya_sceneCollisionHeader_0009F4;
extern u64 mahouya_sceneTex_000A20[];
extern u64 mahouya_sceneTex_001220[];
extern u64 mahouya_sceneTex_001A20[];
extern u64 mahouya_sceneTex_002A20[];
extern u64 mahouya_sceneTex_003A20[];
extern u64 mahouya_sceneTex_004A20[];
extern u64 mahouya_sceneTex_005220[];
extern u64 mahouya_sceneTex_006220[];
extern u64 mahouya_sceneTex_007220[];
extern u64 mahouya_sceneTex_007A20[];
extern u64 mahouya_sceneTex_008A20[];
extern u64 mahouya_sceneTex_009220[];
extern u64 mahouya_sceneTex_009A20[];

#endif
