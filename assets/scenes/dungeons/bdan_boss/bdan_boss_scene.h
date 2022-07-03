#ifndef BDAN_BOSS_SCENE_H
#define BDAN_BOSS_SCENE_H 1

extern SceneCmd bdan_boss_sceneCommands[];
extern ActorEntry bdan_boss_sceneStartPositionList0x000060[];
extern TransitionActorEntry bdan_boss_sceneTransitionActorList_000070[];
extern RomFile bdan_boss_sceneRoomList0x000080[];
extern EntranceEntry bdan_boss_sceneEntranceList0x000090[];
extern u16 bdan_boss_sceneExitList_000094[];
extern LightSettings bdan_boss_sceneLightSettings0x000098[];
extern CamData bdan_boss_sceneCollisionHeader_000E14CamDataList[];
extern SurfaceType bdan_boss_sceneCollisionHeader_000E14SurfaceType[];
extern CollisionPoly bdan_boss_sceneCollisionHeader_000E14Polygons[];
extern Vec3s bdan_boss_sceneCollisionHeader_000E14Vertices[];
extern CollisionHeader bdan_boss_sceneCollisionHeader_000E14;

#endif
