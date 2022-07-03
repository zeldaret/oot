#ifndef YDAN_BOSS_SCENE_H
#define YDAN_BOSS_SCENE_H 1

extern SceneCmd ydan_boss_sceneCommands[];
extern ActorEntry ydan_boss_sceneStartPositionList0x000060[];
extern TransitionActorEntry ydan_boss_sceneTransitionActorList_000070[];
extern RomFile ydan_boss_sceneRoomList0x000080[];
extern EntranceEntry ydan_boss_sceneEntranceList0x000090[];
extern u16 ydan_boss_sceneExitList_000094[];
extern LightSettings ydan_boss_sceneLightSettings0x000098[];
extern CamData ydan_boss_sceneCollisionHeader_000CFCCamDataList[];
extern SurfaceType ydan_boss_sceneCollisionHeader_000CFCSurfaceType[];
extern CollisionPoly ydan_boss_sceneCollisionHeader_000CFCPolygons[];
extern Vec3s ydan_boss_sceneCollisionHeader_000CFCVertices[];
extern CollisionHeader ydan_boss_sceneCollisionHeader_000CFC;
extern u64 ydan_boss_sceneTLUT_000D30[];
extern u64 ydan_boss_sceneTex_000F38[];

#endif
