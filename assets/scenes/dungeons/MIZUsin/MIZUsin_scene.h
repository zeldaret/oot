#ifndef MIZUSIN_SCENE_H
#define MIZUSIN_SCENE_H 1

extern SceneCmd MIZUsin_sceneCommands[];
extern ActorEntry MIZUsin_sceneStartPositionList0x000068[];
extern TransitionActorEntry MIZUsin_sceneTransitionActorList_000078[];
extern RomFile MIZUsin_sceneRoomList0x000228[];
extern EntranceEntry MIZUsin_sceneEntranceList0x0002E0[];
extern u16 MIZUsin_sceneExitList_0002E4[];
extern LightSettings MIZUsin_sceneLightSettings0x0002E8[];
extern Vec3s MIZUsin_scenePathwayList_000358[];
extern Vec3s MIZUsin_scenePathwayList_000370[];
extern Path MIZUsin_scenePathList_000384[];
extern CamData MIZUsin_sceneCollisionHeader_013C04CamDataList[];
extern SurfaceType MIZUsin_sceneCollisionHeader_013C04SurfaceType[];
extern CollisionPoly MIZUsin_sceneCollisionHeader_013C04Polygons[];
extern Vec3s MIZUsin_sceneCollisionHeader_013C04Vertices[];
extern WaterBox MIZUsin_sceneCollisionHeader_013C04WaterBoxes[];
extern CollisionHeader MIZUsin_sceneCollisionHeader_013C04;
extern u64 MIZUsin_sceneTex_013C30[];
extern u64 MIZUsin_sceneTex_014430[];
extern u64 gWaterTempleDayEntranceTex[];
extern u64 MIZUsin_sceneTex_015030[];
extern u64 gWaterTempleNightEntranceTex[];

#endif
