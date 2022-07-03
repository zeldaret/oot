#ifndef GANONTIKA_SCENE_H
#define GANONTIKA_SCENE_H 1

extern SceneCmd ganontika_sceneCommands[];
extern ActorEntry ganontika_sceneStartPositionList0x000068[];
extern TransitionActorEntry ganontika_sceneTransitionActorList_0000F8[];
extern RomFile ganontika_sceneRoomList0x000248[];
extern EntranceEntry ganontika_sceneEntranceList0x0002E8[];
extern u16 ganontika_sceneExitList_0002FC[];
extern LightSettings ganontika_sceneLightSettings0x000300[];
extern Vec3s ganontika_scenePathwayList_00053C[];
extern Vec3s ganontika_scenePathwayList_0005D4[];
extern Vec3s ganontika_scenePathwayList_0005F4[];
extern Vec3s ganontika_scenePathwayList_000624[];
extern Vec3s ganontika_scenePathwayList_000630[];
extern Vec3s ganontika_scenePathwayList_00063C[];
extern Path ganontika_scenePathList_000668[];
extern Vec3s ganontika_sceneCollisionHeader_019EACCamPosData[];
extern CamData ganontika_sceneCollisionHeader_019EACCamDataList[];
extern SurfaceType ganontika_sceneCollisionHeader_019EACSurfaceType[];
extern CollisionPoly ganontika_sceneCollisionHeader_019EACPolygons[];
extern Vec3s ganontika_sceneCollisionHeader_019EACVertices[];
extern CollisionHeader ganontika_sceneCollisionHeader_019EAC;
extern CutsceneData gForestTrialSageCs[];
extern CutsceneData gWaterTrialSageCs[];
extern CutsceneData gShadowTrialSageCs[];
extern CutsceneData gFireTrialSageCs[];
extern CutsceneData gLightTrialSageCs[];
extern CutsceneData gSpiritTrialSageCs[];
extern CutsceneData gTowerBarrierCs[];
extern CutsceneData gLightBarrierCs[];
extern CutsceneData gFireBarrierCs[];
extern CutsceneData gForestBarrierCs[];
extern CutsceneData gSpiritBarrierCs[];
extern CutsceneData gWaterBarrierCs[];
extern u64 ganontika_sceneTLUT_01F380[];
extern u64 ganontika_sceneTex_01F580[];
extern u64 ganontika_sceneTex_01F780[];
extern u64 ganontika_sceneTex_01FF80[];
extern u64 ganontika_sceneTex_020380[];
extern u64 ganontika_sceneTex_020B80[];
extern CutsceneData gShadowBarrierCs[];

#endif
