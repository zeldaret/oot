#ifndef HIDAN_SCENE_H
#define HIDAN_SCENE_H 1

extern SceneCmd HIDAN_sceneCommands[];
extern ActorEntry HIDAN_sceneStartPositionList0x000068[];
extern TransitionActorEntry HIDAN_sceneTransitionActorList_000088[];
extern RomFile HIDAN_sceneRoomList0x0002D8[];
extern EntranceEntry HIDAN_sceneEntranceList0x0003B0[];
extern u16 HIDAN_sceneExitList_0003B4[];
extern LightSettings HIDAN_sceneLightSettings0x0003B8[];
extern Vec3s HIDAN_scenePathwayList_000410[];
extern Vec3s HIDAN_scenePathwayList_00041C[];
extern Vec3s HIDAN_scenePathwayList_000428[];
extern Vec3s HIDAN_scenePathwayList_000434[];
extern Path HIDAN_scenePathList_000440[];
extern Vec3s HIDAN_sceneCollisionHeader_01895CCamPosData[];
extern CamData HIDAN_sceneCollisionHeader_01895CCamDataList[];
extern SurfaceType HIDAN_sceneCollisionHeader_01895CSurfaceType[];
extern CollisionPoly HIDAN_sceneCollisionHeader_01895CPolygons[];
extern Vec3s HIDAN_sceneCollisionHeader_01895CVertices[];
extern CollisionHeader HIDAN_sceneCollisionHeader_01895C;
extern u64 HIDAN_sceneTLUT_018990[];
extern u64 HIDAN_sceneTLUT_0189B0[];
extern u64 HIDAN_sceneTex_0189D0[];
extern u64 HIDAN_sceneTex_018BD0[];
extern u64 HIDAN_sceneTex_018DD0[];
extern u64 HIDAN_sceneTex_0195D0[];
extern u64 HIDAN_sceneTex_019DD0[];
extern u64 HIDAN_sceneTex_019FD0[];

#endif
