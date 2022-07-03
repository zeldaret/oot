#ifndef HAKASITARELAY_SCENE_H
#define HAKASITARELAY_SCENE_H 1

extern SceneCmd hakasitarelay_sceneCommands[];
extern ActorEntry hakasitarelay_sceneStartPositionList0x000060[];
extern TransitionActorEntry hakasitarelay_sceneTransitionActorList_000090[];
extern RomFile hakasitarelay_sceneRoomList0x000100[];
extern EntranceEntry hakasitarelay_sceneEntranceList0x000138[];
extern u16 hakasitarelay_sceneExitList_000140[];
extern LightSettings hakasitarelay_sceneLightSettings0x000144[];
extern CamData hakasitarelay_sceneCollisionHeader_00C04CCamDataList[];
extern SurfaceType hakasitarelay_sceneCollisionHeader_00C04CSurfaceType[];
extern CollisionPoly hakasitarelay_sceneCollisionHeader_00C04CPolygons[];
extern Vec3s hakasitarelay_sceneCollisionHeader_00C04CVertices[];
extern CollisionHeader hakasitarelay_sceneCollisionHeader_00C04C;
extern u64 hakasitarelay_sceneTex_00C080[];
extern u64 hakasitarelay_sceneTex_00D080[];
extern u64 hakasitarelay_sceneTex_00D880[];
extern CutsceneData gSongOfStormsCs[];

#endif
