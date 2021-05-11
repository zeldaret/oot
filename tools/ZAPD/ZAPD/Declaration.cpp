#include "Declaration.h"

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, size_t nSize,
                         std::string nText)
{
	alignment = nAlignment;
	padding = nPadding;
	size = nSize;
	text = nText;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, std::string nVarType,
                         std::string nVarName, bool nIsArray, std::string nText)
	: Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, size_t nSize,
                         std::string nVarType, std::string nVarName, bool nIsArray,
                         std::string nText)
	: Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, std::string nVarType,
                         std::string nVarName, bool nIsArray, size_t nArrayItemCnt,
                         std::string nText)
	: Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, std::string nVarType,
                         std::string nVarName, bool nIsArray, std::string nArrayItemCntStr,
                         std::string nText)
	: Declaration(nAlignment, DeclarationPadding::None, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCntStr = nArrayItemCntStr;
}

Declaration::Declaration(DeclarationAlignment nAlignment, size_t nSize, std::string nVarType,
                         std::string nVarName, bool nIsArray, size_t nArrayItemCnt,
                         std::string nText, bool nIsExternal)
	: Declaration(nAlignment, nSize, nVarType, nVarName, nIsArray, nArrayItemCnt, nText)
{
	isExternal = nIsExternal;
}

Declaration::Declaration(DeclarationAlignment nAlignment, DeclarationPadding nPadding, size_t nSize,
                         std::string nVarType, std::string nVarName, bool nIsArray,
                         size_t nArrayItemCnt, std::string nText)
	: Declaration(nAlignment, nPadding, nSize, nText)
{
	varType = nVarType;
	varName = nVarName;
	isArray = nIsArray;
	arrayItemCnt = nArrayItemCnt;
}

Declaration::Declaration(std::string nIncludePath, size_t nSize, std::string nVarType,
                         std::string nVarName)
	: Declaration(DeclarationAlignment::None, DeclarationPadding::None, nSize, "")
{
	includePath = nIncludePath;
	varType = nVarType;
	varName = nVarName;
}
