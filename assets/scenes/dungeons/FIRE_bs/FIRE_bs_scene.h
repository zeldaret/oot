#ifndef FIRE_BS_SCENE_H
#define FIRE_BS_SCENE_H 1

extern SceneCmd FIRE_bs_sceneCommands[];
extern ActorEntry FIRE_bs_sceneStartPositionList0x000060[];
extern TransitionActorEntry FIRE_bs_sceneTransitionActorList_000070[];
extern RomFile FIRE_bs_sceneRoomList0x000080[];
extern EntranceEntry FIRE_bs_sceneEntranceList0x000090[];
extern u16 FIRE_bs_sceneExitList_000094[];
extern LightSettings FIRE_bs_sceneLightSettings0x000098[];
extern CamData FIRE_bs_sceneCollisionHeader_002BCCCamDataList[];
extern SurfaceType FIRE_bs_sceneCollisionHeader_002BCCSurfaceType[];
extern CollisionPoly FIRE_bs_sceneCollisionHeader_002BCCPolygons[];
extern Vec3s FIRE_bs_sceneCollisionHeader_002BCCVertices[];
extern CollisionHeader FIRE_bs_sceneCollisionHeader_002BCC;
extern u64 FIRE_bs_sceneTex_002C00[];
extern u64 FIRE_bs_sceneTex_003400[];
extern u64 FIRE_bs_sceneTex_003C00[];
extern u64 FIRE_bs_sceneTex_004400[];

#endif
