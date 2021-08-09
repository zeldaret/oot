#pragma once

#include <Vec3s.h>
#include <assimp/scene.h>
#include <stdint.h>
#include <string>
#include <vector>
#include "../ZDisplayList.h"
#include "../ZSkeleton.h"
#include "HLFileIntermediette.h"
#include "tinyxml2.h"

/*
 * An intermediette format for models. Goes from FBX<-->Intermediette<-->Display List C Code.
 */

class HLModelIntermediette;

class HLIntermediette
{
public:
	std::string name;
	HLModelIntermediette* parent;

	HLIntermediette();
	~HLIntermediette();

	virtual std::string OutputCode();
	virtual std::string OutputOBJ();
	virtual void OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts);
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root);
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
};

class HLModelObj
{
public:
	Vec3s pos;
	Vec3s rot;
	std::vector<aiVector3D> vertices;
	std::vector<int32_t> indices;

	HLModelObj() = default;
	HLModelObj(Vec3s nPos, Vec3s nRot, std::vector<aiVector3D> nVerts,
	           std::vector<int32_t> nIndices);
};

class HLModelIntermediette : public HLFileIntermediette
{
public:
	std::vector<HLIntermediette*> blocks;
	std::vector<Vec3s> meshTranslations;
	std::vector<HLModelObj*> objects;
	Vec3s lastTrans;

	bool hasSkeleton;

	bool startsWithPipeSync;
	bool startsWithClearGeometryMode;
	bool lerpBeforeTextureBlock;

	uint32_t startIndex;
	uint32_t meshStartIndex;

	HLModelIntermediette();
	~HLModelIntermediette();

	static HLModelIntermediette* FromXML(tinyxml2::XMLElement* root);
	static void FromZDisplayList(HLModelIntermediette* model, ZDisplayList* zDisplayList);
	static void FromZSkeleton(HLModelIntermediette* model, ZSkeleton* zSkeleton);
	static void ProcessZSkeletonLimb(HLModelIntermediette* model, ZSkeleton* zSkeleton,
	                                 ZLimb* limb);
	std::string ToOBJFile();
	std::string ToAssimpFile();

	std::string OutputCode();
	std::string OutputXML();

	template <typename T>
	T* FindByName(std::string name);

	template <typename T>
	T* FindByType();
};

class HLTextureIntermediette : public HLIntermediette
{
public:
	ZTexture* tex;
	std::string fileName;

	HLTextureIntermediette();

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode();
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root);
};

class HLSetTranslation : public HLIntermediette
{
public:
	float transX, transY, transZ;

	HLSetTranslation();
	HLSetTranslation(float nTransX, float nTransY, float nTransZ);

	virtual void OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts);
};

class HLTerminator : public HLIntermediette
{
public:
	HLTerminator();
	~HLTerminator();

	virtual void OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts);
};

enum class HLMaterialCmt
{
	Wrap,
	Mirror,
	Clamp
};

class HLMaterialIntermediette : public HLIntermediette
{
public:
	std::string textureName;
	// int32_t repeatH, repeatV;
	uint8_t clrR, clrG, clrB, clrA, clrM, clrL;
	// bool clampH, clampV;
	// bool mirrorH, mirrorV;
	HLMaterialCmt cmtH, cmtV;

	// TODO: Remember to add lerp params here...

	HLMaterialIntermediette();

	virtual std::string OutputCode();
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* parent);
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
};

class HLMeshCommand
{
public:
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode(HLModelIntermediette* parent);
	virtual std::string OutputOBJ(HLModelIntermediette* parent);
	virtual void OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh);

	virtual void OutputXML(tinyxml2::XMLElement* parent);
};

class HLVerticesIntermediette : public HLIntermediette
{
public:
	std::vector<ZVtx> vertices;

	HLVerticesIntermediette();

	virtual void InitFromXML(tinyxml2::XMLElement* verticesElement);
	void InitFromVertices(std::vector<ZVtx> dispListVertices);
	virtual std::string OutputCode(HLModelIntermediette* parent);
	virtual std::string OutputOBJ();
	virtual void OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts);
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root);
};

class HLMeshCmdTriangle1 : public HLMeshCommand
{
public:
	int32_t v0, v1, v2, flag;

	HLMeshCmdTriangle1();
	HLMeshCmdTriangle1(int32_t nV0, int32_t nV1, int32_t nV2, int32_t nFlag);

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode(HLModelIntermediette* parent);
	virtual void OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh);
	virtual void OutputXML(tinyxml2::XMLElement* parent);
};

class HLMeshCmdTriangle2 : public HLMeshCommand
{
public:
	int32_t v0, v1, v2, flag0, v10, v11, v12, flag1;

	HLMeshCmdTriangle2();
	HLMeshCmdTriangle2(int32_t nV0, int32_t nV1, int32_t nV2, int32_t nFlag0, int32_t nV10,
	                   int32_t nV11, int32_t nV12, int32_t nFlag1);

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode(HLModelIntermediette* parent);
	virtual std::string OutputOBJ(HLModelIntermediette* parent);
	virtual void OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh);
	virtual void OutputXML(tinyxml2::XMLElement* parent);
};

class HLMeshCmdLoadVertices : public HLMeshCommand
{
public:
	uint8_t numVerts;
	uint8_t startIndex;

	HLMeshCmdLoadVertices();
	HLMeshCmdLoadVertices(uint8_t nNumVerts, uint8_t nStartIndex);

	virtual void OutputXML(tinyxml2::XMLElement* parent);
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputOBJ(HLModelIntermediette* parent);
	virtual void OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh);
	virtual std::string OutputCode(HLModelIntermediette* parent);
};

class HLMeshCmdCull : public HLMeshCommand
{
public:
	uint8_t indexStart;
	uint8_t indexEnd;

	HLMeshCmdCull();

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode(HLModelIntermediette* parent);
};

class HLMeshCmdGeoSettings : public HLMeshCommand
{
public:
	std::string on, off;

	HLMeshCmdGeoSettings();

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode(HLModelIntermediette* parent);
};

class HLMeshIntermediette : public HLIntermediette
{
public:
	std::vector<HLMeshCommand*> commands;

	HLMeshIntermediette();

	void InitFromXML(tinyxml2::XMLElement* xmlElement);
	std::string OutputCode(std::string materialName);
	virtual std::string OutputOBJ();
	virtual void OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts);
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root);
};

class HLDisplayListCommand
{
public:
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode();
};

class HLDisplayListCmdDrawMesh : public HLDisplayListCommand
{
public:
	std::string meshName, materialName;

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode();
};

class HLDisplayListCmdPipeSync : public HLDisplayListCommand
{
public:
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual std::string OutputCode();
};

class HLDisplayListIntermediette : public HLIntermediette
{
public:
	std::vector<HLDisplayListCommand*> commands;
	uint32_t address;

	HLDisplayListIntermediette();

	virtual std::string OutputCode();
	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
};

class HLLimbCommand
{
public:
	std::string meshName, materialName;

	HLLimbCommand();
	HLLimbCommand(std::string nMeshName, std::string nMaterialName);

	virtual void InitFromXML(tinyxml2::XMLElement* xmlElement);
	virtual void OutputXML(tinyxml2::XMLElement* parent);
	virtual std::string OutputCode(HLModelIntermediette* parent);
};

class HLLimbIntermediette : public HLIntermediette
{
public:
	std::vector<HLLimbCommand*> commands;

	HLLimbIntermediette();

	void InitFromXML(tinyxml2::XMLElement* xmlElement);
	std::string OutputCode();
	virtual void OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root);
};