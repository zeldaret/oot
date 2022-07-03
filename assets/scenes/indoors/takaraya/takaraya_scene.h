#ifndef TAKARAYA_SCENE_H
#define TAKARAYA_SCENE_H 1

extern SceneCmd takaraya_sceneCommands[];
extern ActorEntry takaraya_sceneStartPositionList0x000060[];
extern TransitionActorEntry takaraya_sceneTransitionActorList_000070[];
extern RomFile takaraya_sceneRoomList0x0000E0[];
extern EntranceEntry takaraya_sceneEntranceList0x000118[];
extern u16 takaraya_sceneExitList_00011C[];
extern LightSettings takaraya_sceneLightSettings0x000120[];
extern Vec3s takaraya_sceneCollisionHeader_005178CamPosData[];
extern CamData takaraya_sceneCollisionHeader_005178CamDataList[];
extern SurfaceType takaraya_sceneCollisionHeader_005178SurfaceType[];
extern CollisionPoly takaraya_sceneCollisionHeader_005178Polygons[];
extern Vec3s takaraya_sceneCollisionHeader_005178Vertices[];
extern CollisionHeader takaraya_sceneCollisionHeader_005178;
extern u64 takaraya_sceneTex_0051B0[];
extern u64 takaraya_sceneTex_0059B0[];
extern u64 takaraya_sceneTex_0061B0[];
extern u64 takaraya_sceneTex_0069B0[];

#endif
