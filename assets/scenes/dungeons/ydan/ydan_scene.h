#ifndef YDAN_SCENE_H
#define YDAN_SCENE_H 1

extern SceneCmd ydan_sceneCommands[];
extern ActorEntry ydan_sceneStartPositionList0x000060[];
extern TransitionActorEntry ydan_sceneTransitionActorList_000080[];
extern RomFile ydan_sceneRoomList0x000140[];
extern EntranceEntry ydan_sceneEntranceList0x0001A0[];
extern u16 ydan_sceneExitList_0001A4[];
extern LightSettings ydan_sceneLightSettings0x0001A8[];
extern Vec3s ydan_sceneCollisionHeader_00B618CamPosData[];
extern CamData ydan_sceneCollisionHeader_00B618CamDataList[];
extern SurfaceType ydan_sceneCollisionHeader_00B618SurfaceType[];
extern CollisionPoly ydan_sceneCollisionHeader_00B618Polygons[];
extern Vec3s ydan_sceneCollisionHeader_00B618Vertices[];
extern WaterBox ydan_sceneCollisionHeader_00B618WaterBoxes[];
extern CollisionHeader ydan_sceneCollisionHeader_00B618;
extern CutsceneData gDekuTreeIntroCs[];
extern u64 ydan_sceneTLUT_00B810[];
extern u64 gYdanTex_00BA18[];
extern u64 gYdanTex_00CA18[];

#endif
