#pragma once

#include <cstdint>
#include <string>
#include <vector>

// TODO: should we drop the `_t` suffix because of UNIX compliance?
typedef uint32_t segptr_t;
typedef uint32_t offset_t;

#define SEGMENTED_NULL ((segptr_t)0)

enum class DeclarationAlignment
{
	Align4,
	Align8
};

enum class StaticConfig
{
	Off,
	Global,
	On
};

/// <summary>
/// A declaration is contains the C contents of a symbol for a file.
/// It contains at a minimum the address where the symbol would be in the binary file, alignment
/// settings, the size of the binary data, and the C code that makes it up. Optionally it can also
/// contain comments.
/// </summary>
class Declaration
{
public:
	// Where in the binary file (segment) will this C code end up being?
	offset_t address = 0;

	// How is this C code aligned?
	DeclarationAlignment alignment = DeclarationAlignment::Align4;

	// How many bytes will this C code take up in the resulting binary when compiled?
	size_t size = 0;

	// The C type of this declaration
	std::string declType = "";

	// The C variable name of this declaration
	std::string declName = "";

	// The body of the declaration containing the data.
	// In "int j = 7;", "7" would be text.
	std::string declBody = "";

	// #define's to be included in the header
	std::string defines = "";

	std::string includePath = "";

	// Is this declaration in an external file? (ie. a gameplay_keep reference being found in
	// another file that wishes to use its data)
	bool isExternal = false;

	bool isArray = false;

	// If true, will ensure that the arrays size is included in the declaration
	bool forceArrayCnt = false;

	// If this declaration is an array, how many items make it up?
	size_t arrayItemCnt = 0;

	// Overrides the brackets for the arrays size with a custom string
	std::string arrayItemCntStr = "";

	std::vector<segptr_t> references;

	// If true, this declaration represents data inside the file which we do not understand it's
	// purpose for. It will be outputted as just a byte array.
	bool isUnaccounted = false;

	// Is this declaration a placeholder that will be replaced later?
	bool isPlaceholder = false;

	// Does this declaration come straight from the XML?
	// If false, this means that the declaration was created by ZAPD when it was parsing the
	// resources.
	bool declaredInXml = false;

	StaticConfig staticConf = StaticConfig::Global;

	/// <summary>
	/// Creates a regular declaration.
	/// </summary>
	/// <param name="declAddr">The address inside a binary file this declaration will be in when
	/// compiled.</param> <param name="declAlign">The alignment of this declaration in the compiled
	/// binary file.</param> <param name="declSize">The size of this declaration when it is compiled
	/// to binary data.</param> <param name="declType">The C variable type this declaration will be
	/// declared as.</param> <param name="declName">The C variable name this declaration will be
	/// declared as.</param> <param name="declBody">The contents of the C variable
	/// declaration.</param> <returns></returns>
	static Declaration* Create(offset_t declAddr, DeclarationAlignment declAlign, size_t declSize,
	                           const std::string& declType, const std::string& declName,
	                           const std::string& declBody);

	/// <summary>
	/// Creates an array declaration.
	/// </summary>
	/// <param name="declAddr">The address inside a binary file this declaration will be in when
	/// compiled.</param> <param name="declAlign">The alignment of this declaration in the compiled
	/// binary file.</param> <param name="declSize">The size of this declaration when it is compiled
	/// to binary data.</param> <param name="declType">The C variable type this declaration will be
	/// declared as.</param> <param name="declName">The C variable name this declaration will be
	/// declared as.</param> <param name="declBody">The contents of the C variable
	/// declaration.</param> <param name="declArrayItemCnt">The number of items in the
	/// array.</param> <param name="isDeclExternal">(Optional) Is this declaration from another
	/// segment?</param> <returns></returns>
	static Declaration* CreateArray(offset_t declAddr, DeclarationAlignment declAlign,
	                                size_t declSize, const std::string& declType,
	                                const std::string& declName, const std::string& declBody,
	                                size_t declArrayItemCnt = 0, bool isDeclExternal = false);

	/// <summary>
	/// Creates an array declaration who's size in the C code uses a custom string.
	/// </summary>
	/// <param name="declAddr">The address inside a binary file this declaration will be in when
	/// compiled.</param> <param name="declAlign">The alignment of this declaration in the compiled
	/// binary file.</param> <param name="declSize">The size of this declaration when it is compiled
	/// to binary data.</param> <param name="declType">The C variable type this declaration will be
	/// declared as.</param> <param name="declName">The C variable name this declaration will be
	/// declared as.</param> <param name="declBody">The contents of the C variable
	/// declaration.</param> <param name="declArrayItemCntStr">The string to be put in the C array's
	/// size inbetween the brackets.</param> <param name="isDeclExternal">(Optional) Is this
	/// declaration from another segment?</param> <returns></returns>
	static Declaration* CreateArray(offset_t declAddr, DeclarationAlignment declAlign,
	                                size_t declSize, const std::string& declType,
	                                const std::string& declName, const std::string& declBody,
	                                const std::string& declArrayItemCntStr,
	                                bool isDeclExternal = false);

	/// <summary>
	/// Creates a declaration who's body uses a #include to include another file
	/// </summary>
	/// <param name="declAddr">The address inside a binary file this declaration will be in when
	/// compiled.</param> <param name="includePath">The path to the file this declaration will be
	/// #including.</param> <param name="declSize">The size of this declaration when it is compiled
	/// to binary data.</param> <param name="declType">The C variable type this declaration will be
	/// declared as.</param> <param name="declName">The C variable name this declaration will be
	/// declared as.</param> <param name="defines">(Optional) Any #define's we want to have
	/// outputted by this declaration.</param> <returns></returns>
	static Declaration* CreateInclude(offset_t declAddr, const std::string& includePath,
	                                  size_t declSize, const std::string& declType,
	                                  const std::string& declName, const std::string& defines = "");

	/// <summary>
	/// Creates a placeholder declaration to be replaced later.
	/// </summary>
	/// <param name="declAddr">The address inside a binary file this declaration will be in when
	/// compiled.</param> <param name="declName">The C variable name this declaration will be
	/// declared as.</param> <returns></returns>
	static Declaration* CreatePlaceholder(offset_t declAddr, const std::string& declName);

	bool IsStatic() const;

	// Returns the declaration as C code as it would be in the code file when the body contains the
	// needed data
	std::string GetNormalDeclarationStr() const;

	// Returns the declaration as C code as it would be in the code file when the body #include's
	// another file
	std::string GetExternalDeclarationStr() const;

	// Generates the extern for this item to be placed in header files.
	std::string GetExternStr() const;

	// Generates any #define's needed
	std::string GetDefinesStr() const;

	std::string GetStaticForwardDeclarationStr() const;

protected:
	Declaration(offset_t nAddress, DeclarationAlignment nAlignment, size_t nSize,
	            const std::string& nBody);
};
