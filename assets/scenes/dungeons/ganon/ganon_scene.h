#ifndef GANON_SCENE_H
#define GANON_SCENE_H 1

extern SceneCmd ganon_sceneCommands[];
extern ActorEntry ganon_sceneStartPositionList0x000060[];
extern TransitionActorEntry ganon_sceneTransitionActorList_000090[];
extern RomFile ganon_sceneRoomList0x000120[];
extern EntranceEntry ganon_sceneEntranceList0x000170[];
extern u16 ganon_sceneExitList_000178[];
extern LightSettings ganon_sceneLightSettings0x00017C[];
extern Vec3s ganon_sceneCollisionHeader_00E7A0CamPosData[];
extern CamData ganon_sceneCollisionHeader_00E7A0CamDataList[];
extern SurfaceType ganon_sceneCollisionHeader_00E7A0SurfaceType[];
extern CollisionPoly ganon_sceneCollisionHeader_00E7A0Polygons[];
extern Vec3s ganon_sceneCollisionHeader_00E7A0Vertices[];
extern CollisionHeader ganon_sceneCollisionHeader_00E7A0;
extern u64 ganon_sceneTLUT_00E7D0[];
extern u64 ganon_sceneTLUT_00E9D8[];
extern u64 ganon_sceneTLUT_00EBE0[];
extern u64 ganon_sceneTLUT_00EDA0[];
extern u64 ganon_sceneTex_00EFA8[];
extern u64 ganon_sceneTex_00F3A8[];
extern u64 ganon_sceneTex_00F7A8[];
extern u64 ganon_sceneTex_00FBA8[];
extern u64 ganon_sceneTex_00FFA8[];

#endif
