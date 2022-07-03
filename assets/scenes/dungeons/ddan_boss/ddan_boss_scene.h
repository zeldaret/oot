#ifndef DDAN_BOSS_SCENE_H
#define DDAN_BOSS_SCENE_H 1

extern SceneCmd ddan_boss_sceneCommands[];
extern ActorEntry ddan_boss_sceneStartPositionList0x000060[];
extern TransitionActorEntry ddan_boss_sceneTransitionActorList_000070[];
extern RomFile ddan_boss_sceneRoomList0x000080[];
extern EntranceEntry ddan_boss_sceneEntranceList0x000090[];
extern u16 ddan_boss_sceneExitList_000094[];
extern LightSettings ddan_boss_sceneLightSettings0x000098[];
extern CamData ddan_boss_sceneCollisionHeader_000E20CamDataList[];
extern SurfaceType ddan_boss_sceneCollisionHeader_000E20SurfaceType[];
extern CollisionPoly ddan_boss_sceneCollisionHeader_000E20Polygons[];
extern Vec3s ddan_boss_sceneCollisionHeader_000E20Vertices[];
extern CollisionHeader ddan_boss_sceneCollisionHeader_000E20;
extern u64 ddan_boss_sceneTLUT_000E50[];
extern u64 ddan_boss_sceneTex_001058[];
extern u64 ddan_boss_sceneTex_001858[];
extern u64 ddan_boss_sceneTex_002058[];

#endif
