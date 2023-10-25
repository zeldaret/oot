#pragma once

#include "Cutscene_Common.h"

// https://github.com/zeldaret/oot/blob/7235af2249843fb68740111b70089bad827a4730/include/z64cutscene.h#L35-L165
enum class CutsceneOoT_CommandType
{
	CS_CMD_CAM_EYE_SPLINE = 0x01,
	CS_CMD_CAM_AT_SPLINE,
	CS_CMD_MISC,
	CS_CMD_LIGHT_SETTING,
	CS_CMD_CAM_EYE_SPLINE_REL_TO_PLAYER,
	CS_CMD_CAM_AT_SPLINE_REL_TO_PLAYER,
	CS_CMD_CAM_EYE,
	CS_CMD_CAM_AT,
	CS_CMD_RUMBLE_CONTROLLER,
	CS_CMD_PLAYER_CUE,
	CS_CMD_UNIMPLEMENTED_B,
	CS_CMD_UNIMPLEMENTED_D = 0x0D,
	CS_CMD_ACTOR_CUE_1_0,
	CS_CMD_ACTOR_CUE_0_0,
	CS_CMD_ACTOR_CUE_1_1,
	CS_CMD_ACTOR_CUE_0_1,
	CS_CMD_ACTOR_CUE_0_2,
	CS_CMD_TEXT,
	CS_CMD_UNIMPLEMENTED_15 = 0x15,
	CS_CMD_UNIMPLEMENTED_16,
	CS_CMD_ACTOR_CUE_0_3,
	CS_CMD_ACTOR_CUE_1_2,
	CS_CMD_ACTOR_CUE_2_0,
	CS_CMD_UNIMPLEMENTED_1B = 0x1B,
	CS_CMD_UNIMPLEMENTED_1C,
	CS_CMD_ACTOR_CUE_3_0,
	CS_CMD_ACTOR_CUE_4_0,
	CS_CMD_ACTOR_CUE_6_0,
	CS_CMD_UNIMPLEMENTED_20,
	CS_CMD_UNIMPLEMENTED_21,
	CS_CMD_ACTOR_CUE_0_4,
	CS_CMD_ACTOR_CUE_1_3,
	CS_CMD_ACTOR_CUE_2_1,
	CS_CMD_ACTOR_CUE_3_1,
	CS_CMD_ACTOR_CUE_4_1,
	CS_CMD_ACTOR_CUE_0_5,
	CS_CMD_ACTOR_CUE_1_4,
	CS_CMD_ACTOR_CUE_2_2,
	CS_CMD_ACTOR_CUE_3_2,
	CS_CMD_ACTOR_CUE_4_2,
	CS_CMD_ACTOR_CUE_5_0,
	CS_CMD_TRANSITION,
	CS_CMD_ACTOR_CUE_0_6,
	CS_CMD_ACTOR_CUE_4_3,
	CS_CMD_ACTOR_CUE_1_5,
	CS_CMD_ACTOR_CUE_7_0,
	CS_CMD_ACTOR_CUE_2_3,
	CS_CMD_ACTOR_CUE_3_3,
	CS_CMD_ACTOR_CUE_6_1,
	CS_CMD_ACTOR_CUE_3_4,
	CS_CMD_ACTOR_CUE_4_4,
	CS_CMD_ACTOR_CUE_5_1,
	CS_CMD_ACTOR_CUE_6_2 = 0x39,
	CS_CMD_ACTOR_CUE_6_3,
	CS_CMD_UNIMPLEMENTED_3B,
	CS_CMD_ACTOR_CUE_7_1,
	CS_CMD_UNIMPLEMENTED_3D,
	CS_CMD_ACTOR_CUE_8_0,
	CS_CMD_ACTOR_CUE_3_5,
	CS_CMD_ACTOR_CUE_1_6,
	CS_CMD_ACTOR_CUE_3_6,
	CS_CMD_ACTOR_CUE_3_7,
	CS_CMD_ACTOR_CUE_2_4,
	CS_CMD_ACTOR_CUE_1_7,
	CS_CMD_ACTOR_CUE_2_5,
	CS_CMD_ACTOR_CUE_1_8,
	CS_CMD_UNIMPLEMENTED_47,
	CS_CMD_ACTOR_CUE_2_6,
	CS_CMD_UNIMPLEMENTED_49,
	CS_CMD_ACTOR_CUE_2_7,
	CS_CMD_ACTOR_CUE_3_8,
	CS_CMD_ACTOR_CUE_0_7,
	CS_CMD_ACTOR_CUE_5_2,
	CS_CMD_ACTOR_CUE_1_9,
	CS_CMD_ACTOR_CUE_4_5,
	CS_CMD_ACTOR_CUE_1_10,
	CS_CMD_ACTOR_CUE_2_8,
	CS_CMD_ACTOR_CUE_3_9,
	CS_CMD_ACTOR_CUE_4_6,
	CS_CMD_ACTOR_CUE_5_3,
	CS_CMD_ACTOR_CUE_0_8,
	CS_CMD_START_SEQ,
	CS_CMD_STOP_SEQ,
	CS_CMD_ACTOR_CUE_6_4,
	CS_CMD_ACTOR_CUE_7_2,
	CS_CMD_ACTOR_CUE_5_4,
	CS_CMD_ACTOR_CUE_0_9 = 0x5D,
	CS_CMD_ACTOR_CUE_1_11,
	CS_CMD_ACTOR_CUE_0_10 = 0x69,
	CS_CMD_ACTOR_CUE_2_9,
	CS_CMD_ACTOR_CUE_0_11,
	CS_CMD_ACTOR_CUE_3_10,
	CS_CMD_UNIMPLEMENTED_6D,
	CS_CMD_ACTOR_CUE_0_12,
	CS_CMD_ACTOR_CUE_7_3,
	CS_CMD_UNIMPLEMENTED_70,
	CS_CMD_UNIMPLEMENTED_71,
	CS_CMD_ACTOR_CUE_7_4,
	CS_CMD_ACTOR_CUE_6_5,
	CS_CMD_ACTOR_CUE_1_12,
	CS_CMD_ACTOR_CUE_2_10,
	CS_CMD_ACTOR_CUE_1_13,
	CS_CMD_ACTOR_CUE_0_13,
	CS_CMD_ACTOR_CUE_1_14,
	CS_CMD_ACTOR_CUE_2_11,
	CS_CMD_ACTOR_CUE_0_14 = 0x7B,
	CS_CMD_FADE_OUT_SEQ,
	CS_CMD_ACTOR_CUE_1_15,
	CS_CMD_ACTOR_CUE_2_12,
	CS_CMD_ACTOR_CUE_3_11,
	CS_CMD_ACTOR_CUE_4_7,
	CS_CMD_ACTOR_CUE_5_5,
	CS_CMD_ACTOR_CUE_6_6,
	CS_CMD_ACTOR_CUE_1_16,
	CS_CMD_ACTOR_CUE_2_13,
	CS_CMD_ACTOR_CUE_3_12,
	CS_CMD_ACTOR_CUE_7_5,
	CS_CMD_ACTOR_CUE_4_8,
	CS_CMD_ACTOR_CUE_5_6,
	CS_CMD_ACTOR_CUE_6_7,
	CS_CMD_ACTOR_CUE_0_15,
	CS_CMD_ACTOR_CUE_0_16,
	CS_CMD_TIME,
	CS_CMD_ACTOR_CUE_1_17,
	CS_CMD_ACTOR_CUE_7_6,
	CS_CMD_ACTOR_CUE_9_0,
	CS_CMD_ACTOR_CUE_0_17,
	CS_CMD_DESTINATION = 0x03E8,
	CS_CMD_END = 0xFFFF
};

/**** GENERIC ****/

class CutsceneOoTSubCommandEntry_GenericCmd : public CutsceneSubCommandEntry
{
public:
	CutsceneOoT_CommandType commandId;

	uint32_t word0 = 0;
	uint32_t word1 = 0;

	uint32_t unused1 = 0;
	uint32_t unused2 = 0;
	uint32_t unused3 = 0;
	uint32_t unused4 = 0;
	uint32_t unused5 = 0;
	uint32_t unused6 = 0;
	uint32_t unused7 = 0;
	uint32_t unused8 = 0;
	uint32_t unused9 = 0;
	uint32_t unused10 = 0;

	CutsceneOoTSubCommandEntry_GenericCmd(const std::vector<uint8_t>& rawData,
	                                      offset_t rawDataIndex, CutsceneOoT_CommandType cmdId);

	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneOoTCommand_GenericCmd : public CutsceneCommand
{
public:
	CutsceneOoTCommand_GenericCmd(const std::vector<uint8_t>& rawData, offset_t rawDataIndex,
	                              CutsceneOoT_CommandType cmdId);

	std::string GetCommandMacro() const override;
};

/**** CAMERA ****/

class CutsceneOoTCommand_CameraPoint : public CutsceneSubCommandEntry
{
public:
	int8_t continueFlag;
	int8_t cameraRoll;
	int16_t nextPointFrame;
	float viewAngle;
	int16_t posX, posY, posZ;
	int16_t unused;

	CutsceneOoTCommand_CameraPoint(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneOoTCommand_GenericCameraCmd : public CutsceneCommand
{
public:
	uint16_t base;
	uint16_t startFrame;
	uint16_t endFrame;
	uint16_t unused;

	CutsceneOoTCommand_GenericCameraCmd(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetCommandMacro() const override;

	size_t GetCommandSize() const override;
};

/**** TRANSITION ****/

class CutsceneOoTCommand_Transition : public CutsceneCommand
{
public:
	uint16_t base;
	uint16_t startFrame;
	uint16_t endFrame;

	CutsceneOoTCommand_Transition(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GenerateSourceCode() const override;
	size_t GetCommandSize() const override;
};

/**** RUMBLE ****/

class CutsceneOoTSubCommandEntry_Rumble : public CutsceneSubCommandEntry
{
public:
	uint8_t sourceStrength;
	uint8_t duration;
	uint8_t decreaseRate;
	uint8_t unk_09;
	uint8_t unk_0A;

	CutsceneOoTSubCommandEntry_Rumble(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneOoTCommand_Rumble : public CutsceneCommand
{
public:
	CutsceneOoTCommand_Rumble(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetCommandMacro() const override;
};

/**** TEXT ****/

class CutsceneOoTSubCommandEntry_Text : public CutsceneSubCommandEntry
{
public:
	uint16_t type;
	uint16_t textId1;
	uint16_t textId2;

	CutsceneOoTSubCommandEntry_Text(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneOoTCommand_Text : public CutsceneCommand
{
public:
	CutsceneOoTCommand_Text(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetCommandMacro() const override;
};

/**** ACTOR CUE ****/

class CutsceneOoTSubCommandEntry_ActorCue : public CutsceneSubCommandEntry
{
public:
	uint16_t rotX, rotY, rotZ;
	int32_t startPosX, startPosY, startPosZ;
	int32_t endPosX, endPosY, endPosZ;
	float normalX, normalY, normalZ;

	CutsceneOoTSubCommandEntry_ActorCue(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);
	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneOoTCommand_ActorCue : public CutsceneCommand
{
public:
	CutsceneOoTCommand_ActorCue(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetCommandMacro() const override;
};

/**** DESTINATION ****/

class CutsceneOoTCommand_Destination : public CutsceneCommand
{
public:
	uint16_t base;
	uint16_t startFrame;
	uint16_t endFrame;
	uint16_t unknown;

	CutsceneOoTCommand_Destination(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GenerateSourceCode() const override;
	size_t GetCommandSize() const override;
};
