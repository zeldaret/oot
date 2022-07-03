#ifndef BMORI1_SCENE_H
#define BMORI1_SCENE_H 1

extern SceneCmd Bmori1_sceneCommands[];
extern ActorEntry Bmori1_sceneStartPositionList0x000060[];
extern TransitionActorEntry Bmori1_sceneTransitionActorList_000090[];
extern RomFile Bmori1_sceneRoomList0x000260[];
extern EntranceEntry Bmori1_sceneEntranceList0x000318[];
extern u16 Bmori1_sceneExitList_000320[];
extern LightSettings Bmori1_sceneLightSettings0x000324[];
extern CamData Bmori1_sceneCollisionHeader_014054CamDataList[];
extern SurfaceType Bmori1_sceneCollisionHeader_014054SurfaceType[];
extern CollisionPoly Bmori1_sceneCollisionHeader_014054Polygons[];
extern Vec3s Bmori1_sceneCollisionHeader_014054Vertices[];
extern WaterBox Bmori1_sceneCollisionHeader_014054WaterBoxes[];
extern CollisionHeader Bmori1_sceneCollisionHeader_014054;
extern u64 Bmori1_sceneTLUT_014080[];
extern u64 Bmori1_sceneTLUT_014288[];
extern u64 Bmori1_sceneTex_014490[];
extern u64 gForestTempleNightEntranceTex[];
extern u64 gForestTempleDayEntranceTex[];
extern u64 Bmori1_sceneTex_015590[];
extern u64 Bmori1_sceneTex_015690[];
extern u64 Bmori1_sceneTex_015A90[];
extern u64 Bmori1_sceneTex_015B90[];

#endif
