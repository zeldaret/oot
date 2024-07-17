#pragma once

#include "ZRoom/ZRoomCommand.h"

class CutsceneEntry
{
protected:
	int16_t priority;
	int16_t length;
	int16_t csCamId;
	int16_t scriptIndex;
	int16_t additionalCsId;
	uint8_t endSfx;
	uint8_t customValue;
	int16_t hudVisibility;
	uint8_t endCam;
	uint8_t letterboxSize;

public:
	CutsceneEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);

	std::string GetBodySourceCode() const;
	std::string GetSourceTypeName() const;
};

class SetActorCutsceneList : public ZRoomCommand
{
public:
	std::vector<CutsceneEntry> cutscenes;

	SetActorCutsceneList(ZFile* nParent);

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;

	std::string GetCommandCName() const override;
	RoomCommand GetRoomCommand() const override;

private:
};
