#ifndef HAKADAN_SCENE_H
#define HAKADAN_SCENE_H 1

extern SceneCmd HAKAdan_sceneCommands[];
extern ActorEntry HAKAdan_sceneStartPositionList0x000060[];
extern TransitionActorEntry HAKAdan_sceneTransitionActorList_000080[];
extern RomFile HAKAdan_sceneRoomList0x0001F0[];
extern EntranceEntry HAKAdan_sceneEntranceList0x0002A8[];
extern u16 HAKAdan_sceneExitList_0002AC[];
extern LightSettings HAKAdan_sceneLightSettings0x0002B0[];
extern CamData HAKAdan_sceneCollisionHeader_016394CamDataList[];
extern SurfaceType HAKAdan_sceneCollisionHeader_016394SurfaceType[];
extern CollisionPoly HAKAdan_sceneCollisionHeader_016394Polygons[];
extern Vec3s HAKAdan_sceneCollisionHeader_016394Vertices[];
extern CollisionHeader HAKAdan_sceneCollisionHeader_016394;
extern u64 HAKAdan_sceneTex_0163C0[];
extern u64 HAKAdan_sceneTex_016BC0[];
extern u64 HAKAdan_sceneTex_0173C0[];
extern u64 HAKAdan_sceneTex_017BC0[];

#endif
