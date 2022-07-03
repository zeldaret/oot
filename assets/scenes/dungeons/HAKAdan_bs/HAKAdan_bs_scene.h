#ifndef HAKADAN_BS_SCENE_H
#define HAKADAN_BS_SCENE_H 1

extern SceneCmd HAKAdan_bs_sceneCommands[];
extern ActorEntry HAKAdan_bs_sceneStartPositionList0x000060[];
extern TransitionActorEntry HAKAdan_bs_sceneTransitionActorList_000070[];
extern RomFile HAKAdan_bs_sceneRoomList0x000080[];
extern EntranceEntry HAKAdan_bs_sceneEntranceList0x000090[];
extern u16 HAKAdan_bs_sceneExitList_000094[];
extern LightSettings HAKAdan_bs_sceneLightSettings0x000098[];
extern CamData HAKAdan_bs_sceneCollisionHeader_00134CCamDataList[];
extern SurfaceType HAKAdan_bs_sceneCollisionHeader_00134CSurfaceType[];
extern CollisionPoly HAKAdan_bs_sceneCollisionHeader_00134CPolygons[];
extern Vec3s HAKAdan_bs_sceneCollisionHeader_00134CVertices[];
extern CollisionHeader HAKAdan_bs_sceneCollisionHeader_00134C;
extern u64 HAKAdan_bs_sceneTex_001380[];
extern u64 HAKAdan_bs_sceneTex_001580[];
extern u64 HAKAdan_bs_sceneTex_001780[];
extern u64 HAKAdan_bs_sceneTex_001F80[];

#endif
