#ifndef SPOT13_SCENE_H
#define SPOT13_SCENE_H 1

extern SceneCmd spot13_sceneCommands[];
extern ActorEntry spot13_sceneStartPositionList0x000068[];
extern TransitionActorEntry spot13_sceneTransitionActorList_000088[];
extern RomFile spot13_sceneRoomList0x000098[];
extern EntranceEntry spot13_sceneEntranceList0x0000A8[];
extern u16 spot13_sceneExitList_0000AC[];
extern LightSettings spot13_sceneLightSettings0x0000B4[];
extern Vec3s spot13_scenePathwayList_0001BC[];
extern Path spot13_scenePathway_000218[];
extern Vec3s spot13_sceneCollisionHeader_003A00CamPosData[];
extern CamData spot13_sceneCollisionHeader_003A00CamDataList[];
extern SurfaceType spot13_sceneCollisionHeader_003A00SurfaceType[];
extern CollisionPoly spot13_sceneCollisionHeader_003A00Polygons[];
extern Vec3s spot13_sceneCollisionHeader_003A00Vertices[];
extern CollisionHeader spot13_sceneCollisionHeader_003A00;
extern u64 spot13_sceneTex_003A30[];
extern u64 spot13_sceneTex_003E30[];
extern u64 spot13_sceneTex_004E30[];

#endif
