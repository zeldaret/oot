#ifndef SPOT10_SCENE_H
#define SPOT10_SCENE_H 1

extern SceneCmd spot10_sceneCommands[];
extern SceneCmd* spot10_sceneAlternateHeaders0x000068[];
extern ActorEntry spot10_sceneStartPositionList0x000078[];
extern TransitionActorEntry spot10_sceneTransitionActorList_000118[];
extern RomFile spot10_sceneRoomList0x0001A8[];
extern EntranceEntry spot10_sceneEntranceList0x0001F8[];
extern u16 spot10_sceneExitList_00020C[];
extern LightSettings spot10_sceneLightSettings0x000220[];
extern Vec3s spot10_sceneCollisionHeader_00AC98CamPosData[];
extern CamData spot10_sceneCollisionHeader_00AC98CamDataList[];
extern SurfaceType spot10_sceneCollisionHeader_00AC98SurfaceType[];
extern CollisionPoly spot10_sceneCollisionHeader_00AC98Polygons[];
extern Vec3s spot10_sceneCollisionHeader_00AC98Vertices[];
extern WaterBox spot10_sceneCollisionHeader_00AC98WaterBoxes[];
extern CollisionHeader spot10_sceneCollisionHeader_00AC98;
extern CutsceneData spot10_sceneCutsceneData_00ACD0[];
extern SceneCmd spot10_sceneSet_00BD00[];
extern ActorEntry spot10_sceneStartPositionList0x00BD68[];
extern TransitionActorEntry spot10_sceneTransitionActorList_00BE08[];
extern RomFile spot10_sceneRoomList0x00BE98[];
extern EntranceEntry spot10_sceneEntranceList0x00BEE8[];
extern u16 spot10_sceneExitList_00BEFC[];
extern LightSettings spot10_sceneLightSettings0x00BF10[];
extern Vec3s spot10_scenePathwayList_00C018[];
extern Vec3s spot10_scenePathwayList_00C024[];
extern Vec3s spot10_scenePathwayList_00C06C[];
extern Path spot10_scenePathList_00C080[];
extern SceneCmd spot10_sceneSet_00C0A0[];
extern ActorEntry spot10_sceneStartPositionList0x00C108[];
extern TransitionActorEntry spot10_sceneTransitionActorList_00C118[];
extern RomFile spot10_sceneRoomList0x00C1A8[];
extern EntranceEntry spot10_sceneEntranceList0x00C1F8[];
extern u16 spot10_sceneExitList_00C1FC[];
extern LightSettings spot10_sceneLightSettings0x00C210[];
extern u64 spot10_sceneTex_00C230[];
extern u64 spot10_sceneTex_00CA30[];
extern u64 spot10_sceneTex_00D230[];
extern u64 spot10_sceneTex_00DA30[];
extern u64 spot10_sceneTex_00EA30[];
extern u64 spot10_sceneTex_00F230[];
extern u64 spot10_sceneTex_00F430[];
extern u64 spot10_sceneTex_00FC30[];

#endif
