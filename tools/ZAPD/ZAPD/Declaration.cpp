#include "Declaration.h"

#include "Globals.h"
#include "Utils/StringHelper.h"

Declaration::Declaration(offset_t nAddress, DeclarationAlignment nAlignment, size_t nSize,
                         const std::string& nBody)
{
	address = nAddress;
	alignment = nAlignment;
	size = nSize;
	declBody = nBody;
}

Declaration* Declaration::Create(offset_t declAddr, DeclarationAlignment declAlign, size_t declSize,
                                 const std::string& declType, const std::string& declName,
                                 const std::string& declBody)
{
	Declaration* decl = new Declaration(declAddr, declAlign, declSize, declBody);

	decl->declType = declType;
	decl->declName = declName;
	decl->declBody = declBody;

	return decl;
}

Declaration* Declaration::CreateArray(offset_t declAddr, DeclarationAlignment declAlign,
                                      size_t declSize, const std::string& declType,
                                      const std::string& declName, const std::string& declBody,
                                      size_t declArrayItemCnt, bool isDeclExternal)
{
	Declaration* decl = new Declaration(declAddr, declAlign, declSize, declBody);

	decl->declName = declName;
	decl->declType = declType;
	decl->arrayItemCnt = declArrayItemCnt;
	decl->isExternal = isDeclExternal;
	decl->isArray = true;

	return decl;
}

Declaration* Declaration::CreateArray(offset_t declAddr, DeclarationAlignment declAlign,
                                      size_t declSize, const std::string& declType,
                                      const std::string& declName, const std::string& declBody,
                                      const std::string& declArrayItemCntStr, bool isDeclExternal)
{
	Declaration* decl = new Declaration(declAddr, declAlign, declSize, declBody);

	decl->declName = declName;
	decl->declType = declType;
	decl->arrayItemCntStr = declArrayItemCntStr;
	decl->isExternal = isDeclExternal;
	decl->isArray = true;

	return decl;
}

Declaration* Declaration::CreateInclude(offset_t declAddr, const std::string& includePath,
                                        size_t declSize, const std::string& declType,
                                        const std::string& declName, const std::string& defines)
{
	Declaration* decl = new Declaration(declAddr, DeclarationAlignment::Align4, declSize, "");
	decl->includePath = includePath;
	decl->declType = declType;
	decl->declName = declName;
	decl->defines = defines;

	return decl;
}

Declaration* Declaration::CreatePlaceholder(offset_t declAddr, const std::string& declName)
{
	Declaration* decl = new Declaration(declAddr, DeclarationAlignment::Align4, 0, "");
	decl->declName = declName;
	decl->isPlaceholder = true;

	return decl;
}

bool Declaration::IsStatic() const
{
	switch (staticConf)
	{
	case StaticConfig::Off:
		return false;

	case StaticConfig::Global:
		return Globals::Instance->forceStatic;

	case StaticConfig::On:
		return true;
	}

	return false;
}

std::string Declaration::GetNormalDeclarationStr() const
{
	std::string output;

	if (IsStatic())
	{
		output += "static ";
	}

	if (isArray)
	{
		bool includeArraySize = (IsStatic() || forceArrayCnt);

		if (includeArraySize)
		{
			if (arrayItemCntStr != "")
				output += StringHelper::Sprintf("%s %s[%s];\n", declType.c_str(), declName.c_str(),
				                                arrayItemCntStr.c_str());
			else
				output += StringHelper::Sprintf("%s %s[%i] = {\n", declType.c_str(),
				                                declName.c_str(), arrayItemCnt);
		}
		else
		{
			output += StringHelper::Sprintf("%s %s[] = {\n", declType.c_str(), declName.c_str());
		}

		output += declBody + "\n";
	}
	else
	{
		output += StringHelper::Sprintf("%s %s = { ", declType.c_str(), declName.c_str());
		output += declBody;
	}

	if (output.back() == '\n')
		output += "};";
	else
		output += " };";

	output += "\n";

	output += "\n";

	return output;
}

std::string Declaration::GetExternalDeclarationStr() const
{
	std::string output;

	if (IsStatic())
		output += "static ";

	bool includeArraySize = (IsStatic() || forceArrayCnt);

	if (includeArraySize)
	{
		if (arrayItemCntStr != "")
			output += StringHelper::Sprintf("%s %s[%s] = ", declType.c_str(), declName.c_str(),
			                                arrayItemCntStr.c_str());
		else
			output += StringHelper::Sprintf("%s %s[%i] = ", declType.c_str(), declName.c_str(),
			                                arrayItemCnt);
	}
	else
	{
		output += StringHelper::Sprintf("%s %s[] = ", declType.c_str(), declName.c_str());
	}

	output += StringHelper::Sprintf("{\n#include \"%s\"\n};", includePath.c_str());
	output += "\n\n";

	return output;
}

std::string Declaration::GetExternStr() const
{
	if (IsStatic() || declType == "" || isUnaccounted)
	{
		return "";
	}

	if (isArray)
	{
		if (arrayItemCntStr != "" && (IsStatic() || forceArrayCnt))
		{
			return StringHelper::Sprintf("extern %s %s[%s];\n", declType.c_str(), declName.c_str(),
			                             arrayItemCntStr.c_str());
		}
		else if (arrayItemCnt != 0 && (IsStatic() || forceArrayCnt))
		{
			return StringHelper::Sprintf("extern %s %s[%i];\n", declType.c_str(), declName.c_str(),
			                             arrayItemCnt);
		}
		else
			return StringHelper::Sprintf("extern %s %s[];\n", declType.c_str(), declName.c_str());
	}

	return StringHelper::Sprintf("extern %s %s;\n", declType.c_str(), declName.c_str());
}

std::string Declaration::GetDefinesStr() const
{
	if (IsStatic() || (declType == ""))
	{
		return "";
	}
	return StringHelper::Sprintf("%s", defines.c_str());
}

std::string Declaration::GetStaticForwardDeclarationStr() const
{
	if (!IsStatic() || isUnaccounted)
		return "";

	if (isArray)
	{
		if (arrayItemCntStr == "" && arrayItemCnt == 0)
		{
			// Forward declaring static arrays without specifying the size is not allowed.
			return "";
		}

		if (arrayItemCntStr != "")
		{
			return StringHelper::Sprintf("static %s %s[%s];\n", declType.c_str(), declName.c_str(),
			                             arrayItemCntStr.c_str());
		}
		else
		{
			return StringHelper::Sprintf("static %s %s[%i];\n", declType.c_str(), declName.c_str(),
			                             arrayItemCnt);
		}
	}

	return StringHelper::Sprintf("static %s %s;\n", declType.c_str(), declName.c_str());
}
