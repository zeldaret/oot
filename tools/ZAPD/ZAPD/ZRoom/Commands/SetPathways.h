#pragma once

#include "Vec3s.h"
#include "ZPath.h"
#include "ZResource.h"
#include "ZRoom/ZRoomCommand.h"

class SetPathways : public ZRoomCommand
{
public:
	SetPathways(ZFile* nParent);

	void DeclareReferences(const std::string& prefix) override;

	void ParseRawDataLate() override;
	void DeclareReferencesLate(const std::string& prefix) override;

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);

	std::string GetBodySourceCode() const override;

	RoomCommand GetRoomCommand() const override;
	size_t GetRawDataSize() const override;
	std::string GetCommandCName() const override;

private:
	ZPath pathwayList;
};
