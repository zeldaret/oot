#define GET_TRANSFADEDURATION gSaveContext.transFadeDuration
#define GET_TRANSFADEDURATION_VOID0 ((void)0, gSaveContext.transFadeDuration)
#define GET_RESPAWNFLAG gSaveContext.respawnFlag
#define GET_RESPAWN_A0_ROOMINDEX_VOID0(a0_) ((void)0, gSaveContext.respawn[a0_].roomIndex)
#define SET_TIMER1STATE(v_) (gSaveContext.timer1State = (v_))
#define SET_TIMER2STATE(v_) (gSaveContext.timer2State = (v_))
#define GET_EQUIPS_BUTTONITEMS gSaveContext.save.info.equips.buttonItems
#define GET_EQUIPS_BUTTONITEMS_A0(a0_) gSaveContext.save.info.equips.buttonItems[a0_]
#define SET_EQUIPS_BUTTONITEMS_A0(a0_, v_) (gSaveContext.save.info.equips.buttonItems[a0_] = (v_))
#define GET_BUTTONSTATUS_A0(a0_) gSaveContext.buttonStatus[a0_]
#define SET_NAYRUSLOVETIMER(v_) (gSaveContext.nayrusLoveTimer = (v_))
#define SET_NAVITIMER(v_) (gSaveContext.save.info.playerData.naviTimer = (v_))
#define SET_SEQID(v_) (gSaveContext.seqId = (v_))
#define SET_NATUREAMBIENCEID(v_) (gSaveContext.natureAmbienceId = (v_))
#define SET_EVENTINF_A0(a0_, v_) (gSaveContext.eventInf[a0_] = (v_))
#define SET_BUTTONSTATUS_A0(a0_, v_) (gSaveContext.buttonStatus[a0_] = (v_))
#define SET_UNK_13E7(v_) (gSaveContext.unk_13E7 = (v_))
#define SET_UNK_13E8(v_) (gSaveContext.unk_13E8 = (v_))
#define SET_UNK_13EA(v_) (gSaveContext.unk_13EA = (v_))
#define SET_UNK_13EC(v_) (gSaveContext.unk_13EC = (v_))
#define GET_EVENTCHKINF_A0(a0_) gSaveContext.save.info.eventChkInf[a0_]
#define GET_ITEMGETINF_A0(a0_) gSaveContext.save.info.itemGetInf[a0_]
#define GET_INFTABLE_A0(a0_) gSaveContext.save.info.infTable[a0_]
#define GET_EVENTINF_A0(a0_) gSaveContext.eventInf[a0_]
#define GET_MAPINDEX gSaveContext.mapIndex
#define GET_CUTSCENEINDEX gSaveContext.save.cutsceneIndex
#define GET_NEXTCUTSCENEINDEX gSaveContext.nextCutsceneIndex
#define GET_MAGICSTATE gSaveContext.magicState
#define SET_UNK_13EE(v_) (gSaveContext.unk_13EE = (v_))
#define GET_UNK_13EA gSaveContext.unk_13EA
#define GET_LINKAGE gSaveContext.save.linkAge
#define GET_LINKAGE_VOID0 ((void)0, gSaveContext.save.linkAge)
#define GET_SWORDHEALTH gSaveContext.save.info.playerData.swordHealth
#define GET_TEXTTRIGGERFLAGS gSaveContext.textTriggerFlags
#define GET_GAMEMODE gSaveContext.gameMode
#define GET_UNK_13EE gSaveContext.unk_13EE
#define GET_UNK_13E7 gSaveContext.unk_13E7
#define GET_UNK_13E8 gSaveContext.unk_13E8
#define GET_INVENTORY_ITEMS_A0(a0_) gSaveContext.save.info.inventory.items[a0_]
#define GET_MINIGAMESTATE gSaveContext.minigameState
#define SET_CHILDEQUIPS_BUTTONITEMS_A0(a0_, v_) (gSaveContext.save.info.playerData.childEquips.buttonItems[a0_] = (v_))
#define SET_CHILDEQUIPS_CBUTTONSLOTS_A0(a0_, v_) (gSaveContext.save.info.playerData.childEquips.cButtonSlots[a0_] = (v_))
#define SET_CHILDEQUIPS_EQUIPMENT(v_) (gSaveContext.save.info.playerData.childEquips.equipment = (v_))
#define GET_ADULTEQUIPS_BUTTONITEMS_A0(a0_) gSaveContext.save.info.playerData.adultEquips.buttonItems[a0_]
#define SET_EQUIPS_CBUTTONSLOTS_A0(a0_, v_) (gSaveContext.save.info.equips.cButtonSlots[a0_] = (v_))
#define SET_EQUIPS_EQUIPMENT(v_) (gSaveContext.save.info.equips.equipment = (v_))
#define GET_EQUIPS_CBUTTONSLOTS_A0(a0_) gSaveContext.save.info.equips.cButtonSlots[a0_]
#define SET_ADULTEQUIPS_BUTTONITEMS_A0(a0_, v_) (gSaveContext.save.info.playerData.adultEquips.buttonItems[a0_] = (v_))
#define SET_ADULTEQUIPS_CBUTTONSLOTS_A0(a0_, v_) (gSaveContext.save.info.playerData.adultEquips.cButtonSlots[a0_] = (v_))
#define SET_ADULTEQUIPS_EQUIPMENT(v_) (gSaveContext.save.info.playerData.adultEquips.equipment = (v_))
#define GET_CHILDEQUIPS_BUTTONITEMS_A0(a0_) gSaveContext.save.info.playerData.childEquips.buttonItems[a0_]
#define GET_EQUIPS_EQUIPMENT gSaveContext.save.info.equips.equipment
#define SET_MINIGAMESTATE(v_) (gSaveContext.minigameState = (v_))
#define SET_MINIGAMESCORE(v_) (gSaveContext.minigameScore = (v_))
#define GET_INVENTORY_QUESTITEMS gSaveContext.save.info.inventory.questItems
#define GET_INVENTORY_GSTOKENS gSaveContext.save.info.inventory.gsTokens
#define SET_SWORDHEALTH(v_) (gSaveContext.save.info.playerData.swordHealth = (v_))
#define GET_INVENTORY_DUNGEONKEYS_A0(a0_) gSaveContext.save.info.inventory.dungeonKeys[a0_]
#define SET_INVENTORY_DUNGEONKEYS_A0(a0_, v_) (gSaveContext.save.info.inventory.dungeonKeys[a0_] = (v_))
#define SET_INVENTORY_ITEMS_A0(a0_, v_) (gSaveContext.save.info.inventory.items[a0_] = (v_))
#define GET_INVENTORY_ITEMS gSaveContext.save.info.inventory.items
#define GET_LANGUAGE gSaveContext.language
#define GET_HEALTH gSaveContext.save.info.playerData.health
#define GET_HEALTHCAPACITY gSaveContext.save.info.playerData.healthCapacity
#define GET_ISDOUBLEDEFENSEACQUIRED gSaveContext.save.info.playerData.isDoubleDefenseAcquired
#define SET_HEALTH(v_) (gSaveContext.save.info.playerData.health = (v_))
#define GET_ISMAGICACQUIRED gSaveContext.save.info.playerData.isMagicAcquired
#define SET_PREVMAGICSTATE(v_) (gSaveContext.prevMagicState = (v_))
#define SET_MAGICFILLTARGET(v_) (gSaveContext.magicFillTarget = (v_))
#define SET_MAGICSTATE(v_) (gSaveContext.magicState = (v_))
#define GET_MAGIC gSaveContext.save.info.playerData.magic
#define GET_MAGICCAPACITY gSaveContext.magicCapacity
#define SET_MAGICTARGET(v_) (gSaveContext.magicTarget = (v_))
#define GET_MAGICTARGET gSaveContext.magicTarget
#define GET_MAGICLEVEL gSaveContext.save.info.playerData.magicLevel
#define SET_MAGICCAPACITY(v_) (gSaveContext.magicCapacity = (v_))
#define GET_MAGICFILLTARGET gSaveContext.magicFillTarget
#define SET_MAGIC(v_) (gSaveContext.save.info.playerData.magic = (v_))
#define SET_TIMERX_A0(a0_, v_) (gSaveContext.timerX[a0_] = (v_))
#define SET_TIMERY_A0(a0_, v_) (gSaveContext.timerY[a0_] = (v_))
#define SET_TIMER2VALUE(v_) (gSaveContext.timer2Value = (v_))
#define GET_TIMER2STATE gSaveContext.timer2State
#define SET_TIMER1VALUE(v_) (gSaveContext.timer1Value = (v_))
#define GET_RUPEES gSaveContext.save.info.playerData.rupees
#define SET_CUTSCENEINDEX(v_) (gSaveContext.save.cutsceneIndex = (v_))
#define GET_TIMER1STATE gSaveContext.timer1State
#define GET_TIMERX_A0(a0_) gSaveContext.timerX[a0_]
#define GET_TIMERY_A0(a0_) gSaveContext.timerY[a0_]
#define GET_TIMER1VALUE gSaveContext.timer1Value
#define GET_TIMERX_A0_VOID0(a0_) ((void)0, gSaveContext.timerX[a0_])
#define GET_TIMERY_A0_VOID0(a0_) ((void)0, gSaveContext.timerY[a0_])
#define GET_TIMER2VALUE gSaveContext.timer2Value
#define SET_LANGUAGE(v_) (gSaveContext.language = (v_))
#define GET_SCENELAYER gSaveContext.sceneLayer
#define GET_UNK_13EC gSaveContext.unk_13EC
#define GET_HEALTHACCUMULATOR gSaveContext.healthAccumulator
#define SET_HEALTHACCUMULATOR(v_) (gSaveContext.healthAccumulator = (v_))
#define GET_RUPEEACCUMULATOR gSaveContext.rupeeAccumulator
#define SET_RUPEES(v_) (gSaveContext.save.info.playerData.rupees = (v_))
#define SET_RUPEEACCUMULATOR(v_) (gSaveContext.rupeeAccumulator = (v_))
#define SET_MAGICLEVEL(v_) (gSaveContext.save.info.playerData.magicLevel = (v_))
#define GET_MINIGAMESCORE gSaveContext.minigameScore
#define GET_SUNSSONGSTATE gSaveContext.sunsSongState
#define GET_DAYTIME gSaveContext.save.dayTime
#define SET_SUNSSONGSTATE(v_) (gSaveContext.sunsSongState = (v_))
#define SET_NEXTDAYTIME(v_) (gSaveContext.nextDayTime = (v_))
#define SET_NEXTTRANSITIONTYPE(v_) (gSaveContext.nextTransitionType = (v_))
#define SET_RESPAWNFLAG(v_) (gSaveContext.respawnFlag = (v_))
#define GET_ENTRANCEINDEX gSaveContext.save.entranceIndex
#define GET_ADULTEQUIPS_CBUTTONSLOTS_A0(a0_) gSaveContext.save.info.playerData.adultEquips.cButtonSlots[a0_]
#define GET_ADULTEQUIPS_EQUIPMENT gSaveContext.save.info.playerData.adultEquips.equipment
#define GET_CHILDEQUIPS_CBUTTONSLOTS_A0(a0_) gSaveContext.save.info.playerData.childEquips.cButtonSlots[a0_]
#define GET_CHILDEQUIPS_EQUIPMENT gSaveContext.save.info.playerData.childEquips.equipment
#define GET_ISDOUBLEMAGICACQUIRED gSaveContext.save.info.playerData.isDoubleMagicAcquired
#define GET_PREVMAGICSTATE gSaveContext.prevMagicState
#define SET_INFTABLE_A0(a0_, v_) (gSaveContext.save.info.infTable[a0_] = (v_))
#define GET_TIMER1STATE_VOID0 ((void)0, gSaveContext.timer1State)
#define GET_RESPAWNFLAG_VOID0 ((void)0, gSaveContext.respawnFlag)
#define SET_ENTRANCEINDEX(v_) (gSaveContext.save.entranceIndex = (v_))
#define SET_NEXTCUTSCENEINDEX(v_) (gSaveContext.nextCutsceneIndex = (v_))
#define GET_NEXTDAYTIME gSaveContext.nextDayTime
#define SET_DAYTIME(v_) (gSaveContext.save.dayTime = (v_))
#define SET_SKYBOXTIME(v_) (gSaveContext.skyboxTime = (v_))
#define SET_NIGHTFLAG(v_) (gSaveContext.save.nightFlag = (v_))
#define SET_SCENELAYER(v_) (gSaveContext.sceneLayer = (v_))
#define GET_ENTRANCEINDEX_VOID0 ((void)0, gSaveContext.save.entranceIndex)
#define GET_SCENELAYER_VOID0 ((void)0, gSaveContext.sceneLayer)
#define GET_TOTALDAYS gSaveContext.save.totalDays
#define GET_BGSDAYCOUNT gSaveContext.save.bgsDayCount
#define SET_DOGISLOST(v_) (gSaveContext.dogIsLost = (v_))
#define GET_NEXTTRANSITIONTYPE gSaveContext.nextTransitionType
#define SET_TRANSWIPESPEED(v_) (gSaveContext.transWipeSpeed = (v_))
#define SET_TRANSFADEDURATION(v_) (gSaveContext.transFadeDuration = (v_))
#define GET_CUTSCENETRANSITIONCONTROL gSaveContext.cutsceneTransitionControl
#define SET_WORLDMAPAREA(v_) (gSaveContext.worldMapArea = (v_))
#define GET_SCENEFLAGS_A0(a0_) gSaveContext.save.info.sceneFlags[a0_]
#define GET_RESPAWN_A0(a0_) gSaveContext.respawn[a0_]
#define SET_RESPAWN_A0_TEMPSWCHFLAGS(a0_, v_) (gSaveContext.respawn[a0_].tempSwchFlags = (v_))
#define SET_RESPAWN_A0_TEMPCOLLECTFLAGS(a0_, v_) (gSaveContext.respawn[a0_].tempCollectFlags = (v_))
#define GET_RESPAWN_A0_ENTRANCEINDEX(a0_) gSaveContext.respawn[a0_].entranceIndex
#define SET_FORCEDSEQID(v_) (gSaveContext.forcedSeqId = (v_))
#define SET_CUTSCENETRIGGER(v_) (gSaveContext.cutsceneTrigger = (v_))
#define SET_CHAMBERCUTSCENENUM(v_) (gSaveContext.chamberCutsceneNum = (v_))
#define GET_NIGHTFLAG_VOID0 ((void)0, gSaveContext.save.nightFlag)
#define GET_NIGHTFLAG gSaveContext.save.nightFlag
#define GET_RETAINWEATHERMODE gSaveContext.retainWeatherMode
#define GET_SKYBOXTIME gSaveContext.skyboxTime
#define GET_SKYBOXTIME_VOID0 ((void)0, gSaveContext.skyboxTime)
#define GET_PLAYERNAME gSaveContext.save.info.playerData.playerName
#define GET_PLAYERNAME_A0(a0_) gSaveContext.save.info.playerData.playerName[a0_]
#define GET_SCARECROWSPAWNSONGSET gSaveContext.save.info.scarecrowSpawnSongSet
#define SET_SCARECROWLONGSONGSET(v_) (gSaveContext.save.info.scarecrowLongSongSet = (v_))
#define GET_SCARECROWLONGSONG gSaveContext.save.info.scarecrowLongSong
#define GET_SCARECROWLONGSONG_A0(a0_) gSaveContext.save.info.scarecrowLongSong[a0_]
#define SET_SCARECROWSPAWNSONGSET(v_) (gSaveContext.save.info.scarecrowSpawnSongSet = (v_))
#define GET_SCARECROWSPAWNSONG gSaveContext.save.info.scarecrowSpawnSong
#define GET_SCARECROWSPAWNSONG_A0(a0_) gSaveContext.save.info.scarecrowSpawnSong[a0_]
#define GET_OCARINAGAMEROUNDNUM gSaveContext.save.info.playerData.ocarinaGameRoundNum
#define GET_SCARECROWLONGSONGSET gSaveContext.save.info.scarecrowLongSongSet
#define GET_CUTSCENEINDEX_VOID0 ((void)0, gSaveContext.save.cutsceneIndex)
#define GET_SCENEFLAGS_A0_ROOMS(a0_) gSaveContext.save.info.sceneFlags[a0_].rooms
#define SET_MAPINDEX(v_) (gSaveContext.mapIndex = (v_))
#define GET_FW_SET gSaveContext.save.info.fw.set
#define SET_RESPAWN_A0_DATA(a0_, v_) (gSaveContext.respawn[a0_].data = (v_))
#define SET_RESPAWN_A0_POS_X(a0_, v_) (gSaveContext.respawn[a0_].pos.x = (v_))
#define SET_RESPAWN_A0_POS_Y(a0_, v_) (gSaveContext.respawn[a0_].pos.y = (v_))
#define SET_RESPAWN_A0_POS_Z(a0_, v_) (gSaveContext.respawn[a0_].pos.z = (v_))
#define SET_RESPAWN_A0_YAW(a0_, v_) (gSaveContext.respawn[a0_].yaw = (v_))
#define SET_RESPAWN_A0_PLAYERPARAMS(a0_, v_) (gSaveContext.respawn[a0_].playerParams = (v_))
#define SET_RESPAWN_A0_ENTRANCEINDEX(a0_, v_) (gSaveContext.respawn[a0_].entranceIndex = (v_))
#define SET_RESPAWN_A0_ROOMINDEX(a0_, v_) (gSaveContext.respawn[a0_].roomIndex = (v_))
#define GET_RESPAWN_A0_POS_X(a0_) gSaveContext.respawn[a0_].pos.x
#define GET_RESPAWN_A0_POS_Y(a0_) gSaveContext.respawn[a0_].pos.y
#define GET_RESPAWN_A0_POS_Z(a0_) gSaveContext.respawn[a0_].pos.z
#define GET_RESPAWN_A0_DATA(a0_) gSaveContext.respawn[a0_].data
#define GET_RESPAWN_A0_POS(a0_) gSaveContext.respawn[a0_].pos
#define SET_RESPAWN_A0(a0_, v_) (gSaveContext.respawn[a0_] = (v_))
#define SET_RESPAWN_A0_POS(a0_, v_) (gSaveContext.respawn[a0_].pos = (v_))
#define SET_FW_SET(v_) (gSaveContext.save.info.fw.set = (v_))
#define GET_RESPAWN_A0_ENTRANCEINDEX_VOID0(a0_) ((void)0, gSaveContext.respawn[a0_].entranceIndex)
#define GET_RESPAWN_A0_POS_X_VOID0(a0_) ((void)0, gSaveContext.respawn[a0_].pos.x)
#define GET_RESPAWN_A0_POS_Y_VOID0(a0_) ((void)0, gSaveContext.respawn[a0_].pos.y)
#define GET_RESPAWN_A0_POS_Z_VOID0(a0_) ((void)0, gSaveContext.respawn[a0_].pos.z)
#define GET_FW_POS_X gSaveContext.save.info.fw.pos.x
#define GET_FW_POS_Y gSaveContext.save.info.fw.pos.y
#define GET_FW_POS_Z gSaveContext.save.info.fw.pos.z
#define GET_FW_YAW gSaveContext.save.info.fw.yaw
#define GET_FW_PLAYERPARAMS gSaveContext.save.info.fw.playerParams
#define GET_FW_ENTRANCEINDEX gSaveContext.save.info.fw.entranceIndex
#define GET_FW_ROOMINDEX gSaveContext.save.info.fw.roomIndex
#define GET_FW_TEMPSWCHFLAGS gSaveContext.save.info.fw.tempSwchFlags
#define GET_FW_TEMPCOLLECTFLAGS gSaveContext.save.info.fw.tempCollectFlags
#define GET_ISMAGICACQUIRED_VOID0 ((void)0, gSaveContext.save.info.playerData.isMagicAcquired)
#define SET_TOTALDAYS(v_) (gSaveContext.save.totalDays = (v_))
#define SET_BGSDAYCOUNT(v_) (gSaveContext.save.bgsDayCount = (v_))
#define SET_EQUIPS(v_) (gSaveContext.save.info.equips = (v_))
#define SET_INVENTORY(v_) (gSaveContext.save.info.inventory = (v_))
#define SET_HORSEDATA_SCENEID(v_) (gSaveContext.save.info.horseData.sceneId = (v_))
#define SET_HORSEDATA_POS_X(v_) (gSaveContext.save.info.horseData.pos.x = (v_))
#define SET_HORSEDATA_POS_Y(v_) (gSaveContext.save.info.horseData.pos.y = (v_))
#define SET_HORSEDATA_POS_Z(v_) (gSaveContext.save.info.horseData.pos.z = (v_))
#define SET_HORSEDATA_ANGLE(v_) (gSaveContext.save.info.horseData.angle = (v_))
#define SET_SCENEFLAGS_A0_SWCH(a0_, v_) (gSaveContext.save.info.sceneFlags[a0_].swch = (v_))
#define GET_FILENUM gSaveContext.fileNum
#define GET_SAVEDSCENEID gSaveContext.save.info.playerData.savedSceneId
#define SET_EVENTCHKINF_A0(a0_, v_) (gSaveContext.save.info.eventChkInf[a0_] = (v_))
#define SET_CHECKSUM(v_) (gSaveContext.save.info.checksum = (v_))
#define GET_DAYTIME_VOID0 ((void)0, gSaveContext.save.dayTime)
#define GET_CHECKSUM gSaveContext.save.info.checksum
#define SET_NEWF_A0(a0_, v_) (gSaveContext.save.info.playerData.newf[a0_] = (v_))
#define GET_NEWF_A0(a0_) gSaveContext.save.info.playerData.newf[a0_]
#define SET_LINKAGE(v_) (gSaveContext.save.linkAge = (v_))
#define SET_PLAYERNAME_A0(a0_, v_) (gSaveContext.save.info.playerData.playerName[a0_] = (v_))
#define SET_N64DDFLAG(v_) (gSaveContext.save.info.playerData.n64ddFlag = (v_))
#define SET_AUDIOSETTING(v_) (gSaveContext.audioSetting = (v_))
#define SET_ZTARGETSETTING(v_) (gSaveContext.zTargetSetting = (v_))
#define GET_AUDIOSETTING gSaveContext.audioSetting
#define GET_INVENTORY_DEFENSEHEARTS gSaveContext.save.info.inventory.defenseHearts
#define SET_CUTSCENETRANSITIONCONTROL(v_) (gSaveContext.cutsceneTransitionControl = (v_))
#define SET_RETAINWEATHERMODE(v_) (gSaveContext.retainWeatherMode = (v_))
#define GET_TOTALDAYS_VOID0 ((void)0, gSaveContext.save.totalDays)
#define GET_BGSDAYCOUNT_VOID0 ((void)0, gSaveContext.save.bgsDayCount)
#define GET_GAMEMODE_VOID0 ((void)0, gSaveContext.gameMode)
#define GET_NEXTDAYTIME_VOID0 ((void)0, gSaveContext.nextDayTime)
#define GET_FORCEDSEQID_VOID0 ((void)0, gSaveContext.forcedSeqId)
#define GET_NATUREAMBIENCEID_VOID0 ((void)0, gSaveContext.natureAmbienceId)
#define GET_SEQID_VOID0 ((void)0, gSaveContext.seqId)
#define GET_FORCEDSEQID gSaveContext.forcedSeqId
#define SET_GAMEMODE(v_) (gSaveContext.gameMode = (v_))
#define GET_SEQID gSaveContext.seqId
#define GET_WORLDMAPAREA gSaveContext.worldMapArea
#define GET_WORLDMAPAREADATA gSaveContext.save.info.worldMapAreaData
#define GET_TRANSWIPESPEED_VOID0 ((void)0, gSaveContext.transWipeSpeed)
#define GET_CUTSCENETRIGGER gSaveContext.cutsceneTrigger
#define SET_SHOWTITLECARD(v_) (gSaveContext.showTitleCard = (v_))
#define GET_HORSEDATA_SCENEID gSaveContext.save.info.horseData.sceneId
#define GET_HORSEDATA_POS_X gSaveContext.save.info.horseData.pos.x
#define GET_HORSEDATA_POS_Y gSaveContext.save.info.horseData.pos.y
#define GET_HORSEDATA_POS_Z gSaveContext.save.info.horseData.pos.z
#define GET_HORSEDATA_ANGLE gSaveContext.save.info.horseData.angle
#define GET_GSFLAGS_A0(a0_) gSaveContext.save.info.gsFlags[a0_]
#define GET_WORLDMAPAREA_VOID0 ((void)0, gSaveContext.worldMapArea)
#define GET_BGSFLAG gSaveContext.save.info.playerData.bgsFlag
#define SET_SAVEDSCENEID(v_) (gSaveContext.save.info.playerData.savedSceneId = (v_))
#define GET_DEATHS gSaveContext.save.info.playerData.deaths
#define SET_DEATHS(v_) (gSaveContext.save.info.playerData.deaths = (v_))
#define GET_SCENEFLAGS_A0_FLOORS(a0_) gSaveContext.save.info.sceneFlags[a0_].floors
#define GET_INVENTORY_EQUIPMENT gSaveContext.save.info.inventory.equipment
#define GET_INVENTORY_DUNGEONITEMS_A0(a0_) gSaveContext.save.info.inventory.dungeonItems[a0_]
#define SET_HEALTHCAPACITY(v_) (gSaveContext.save.info.playerData.healthCapacity = (v_))
#define SET_INVENTORY_GSTOKENS(v_) (gSaveContext.save.info.inventory.gsTokens = (v_))
#define SET_FILENUM(v_) (gSaveContext.fileNum = (v_))
#define SET_DOGPARAMS(v_) (gSaveContext.dogParams = (v_))
#define GET_MAGICFILLTARGET_VOID0 ((void)0, gSaveContext.magicFillTarget)
#define GET_ZTARGETSETTING gSaveContext.zTargetSetting
#define SET_BGSFLAG(v_) (gSaveContext.save.info.playerData.bgsFlag = (v_))
#define GET_NAYRUSLOVETIMER gSaveContext.nayrusLoveTimer
#define GET_TIMER2VALUE_VOID0 ((void)0, gSaveContext.timer2Value)
#define GET_CHAMBERCUTSCENENUM gSaveContext.chamberCutsceneNum
#define GET_DOGISLOST gSaveContext.dogIsLost
#define GET_DOGPARAMS gSaveContext.dogParams
#define SET_ENTRANCESPEED(v_) (gSaveContext.entranceSpeed = (v_))
#define SET_ENTRANCESOUND(v_) (gSaveContext.entranceSound = (v_))
#define GET_ENTRANCESPEED gSaveContext.entranceSpeed
#define GET_RESPAWN_A0_PLAYERPARAMS(a0_) gSaveContext.respawn[a0_].playerParams
#define GET_RESPAWN_A0_YAW(a0_) gSaveContext.respawn[a0_].yaw
#define GET_RESPAWN_A0_TEMPSWCHFLAGS(a0_) gSaveContext.respawn[a0_].tempSwchFlags
#define GET_RESPAWN_A0_TEMPCOLLECTFLAGS(a0_) gSaveContext.respawn[a0_].tempCollectFlags
#define GET_SHOWTITLECARD gSaveContext.showTitleCard
#define GET_ENTRANCESOUND gSaveContext.entranceSound
#define GET_ENTRANCESOUND_VOID0 ((void)0, gSaveContext.entranceSound)
#define SET_FW_POS_X(v_) (gSaveContext.save.info.fw.pos.x = (v_))
#define SET_FW_POS_Y(v_) (gSaveContext.save.info.fw.pos.y = (v_))
#define SET_FW_POS_Z(v_) (gSaveContext.save.info.fw.pos.z = (v_))
#define SET_FW_YAW(v_) (gSaveContext.save.info.fw.yaw = (v_))
#define SET_FW_PLAYERPARAMS(v_) (gSaveContext.save.info.fw.playerParams = (v_))
#define SET_FW_ENTRANCEINDEX(v_) (gSaveContext.save.info.fw.entranceIndex = (v_))
#define SET_FW_ROOMINDEX(v_) (gSaveContext.save.info.fw.roomIndex = (v_))
#define SET_FW_TEMPSWCHFLAGS(v_) (gSaveContext.save.info.fw.tempSwchFlags = (v_))
#define SET_FW_TEMPCOLLECTFLAGS(v_) (gSaveContext.save.info.fw.tempCollectFlags = (v_))
#define GET_RESPAWN_A0_ROOMINDEX(a0_) gSaveContext.respawn[a0_].roomIndex
#define SET_ISMAGICACQUIRED(v_) (gSaveContext.save.info.playerData.isMagicAcquired = (v_))
#define SET_ISDOUBLEMAGICACQUIRED(v_) (gSaveContext.save.info.playerData.isDoubleMagicAcquired = (v_))
#define SET_ISDOUBLEDEFENSEACQUIRED(v_) (gSaveContext.save.info.playerData.isDoubleDefenseAcquired = (v_))
#define GET_NAVITIMER gSaveContext.save.info.playerData.naviTimer
#define GET_SCENEFLAGS_A0_CHEST(a0_) gSaveContext.save.info.sceneFlags[a0_].chest
