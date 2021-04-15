#pragma once

#include "../Globals.h"
#include "../StringHelper.h"

#include <string>

class ZNames
{
public:
	static std::string GetObjectName(int id)
	{
		if (id >= Globals::Instance->cfg.objectList.size())
			return StringHelper::Sprintf("0x%04X", id);
		return Globals::Instance->cfg.objectList.at(id);
	}

	static std::string GetActorName(int id)
	{
		switch (Globals::Instance->game)
		{
		case ZGame::OOT_RETAIL:
		case ZGame::OOT_SW97:
			if (id < ZNames::GetNumActors())
				return Globals::Instance->cfg.actorList.at(id);
			else
				return StringHelper::Sprintf("0x%04X", id);
		case ZGame::MM_RETAIL:
		{
			int flags = id & 0xF000;
			id &= 0xFFF;
			std::string name = "";
			if (id < ZNames::GetNumActors())
				name = Globals::Instance->cfg.actorList.at(id);
			else
				name = StringHelper::Sprintf("0x%04X", id);

			if (flags == 0)
				return name;
			else
				return StringHelper::Sprintf("%s | 0x%04X", name.c_str(), flags);
		}
		}

		return "";
	}

	static int GetNumActors() { return Globals::Instance->cfg.actorList.size(); }
};
