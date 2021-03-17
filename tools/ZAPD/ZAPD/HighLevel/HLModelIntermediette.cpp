#include "HLModelIntermediette.h"
#include "../ZDisplayList.h"
#include "../StringHelper.h"
#include "../Globals.h"
#include "../Path.h"
#include "../File.h"

#ifdef USE_ASSIMP
#include <assimp/Importer.hpp>
#include <assimp/Exporter.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>
#endif

using namespace std;
using namespace tinyxml2;

HLModelIntermediette::HLModelIntermediette()
{
	blocks = vector<HLIntermediette*>();
	startIndex = 0;
	meshStartIndex = 0;
	hasSkeleton = false;
}

HLModelIntermediette::~HLModelIntermediette()
{
}

HLModelIntermediette* HLModelIntermediette::FromXML(tinyxml2::XMLElement* root)
{
	HLModelIntermediette* model = new HLModelIntermediette();

	for (XMLElement* child = root->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		string childName = child->Name();
		HLIntermediette* block = nullptr;

		if (childName == "Mesh")
			block = new HLMeshIntermediette();
		else if (childName == "Limb")
			block = new HLLimbIntermediette();
		else if (childName == "Vertices")
			block = new HLVerticesIntermediette();
		else if (childName == "Texture")
			block = new HLTextureIntermediette();
		else if (childName == "Material")
			block = new HLMaterialIntermediette();

		if (block != nullptr)
		{
			block->parent = model;
			block->InitFromXML(child);
			model->blocks.push_back(block);
		}
	}

	return model;
}

void HLModelIntermediette::FromZDisplayList(HLModelIntermediette* model, ZDisplayList* zDisplayList)
{
	//HLModelIntermediette* model = new HLModelIntermediette();
	HLLimbIntermediette* limb = new HLLimbIntermediette();
	limb->name = zDisplayList->GetName();

	// Go through verts
	vector<Vertex> finalVerts = vector<Vertex>();

	uint32_t vStart = -1;

	for (pair<uint32_t, vector<Vertex>> pair : zDisplayList->vertices)
	{
		if (vStart == -1) // TODO: Find a better way to do this
			vStart = pair.first;

		for (Vertex v : pair.second)
			finalVerts.push_back(v);
	}

	HLVerticesIntermediette* vertIntr = new HLVerticesIntermediette();
	vertIntr->vertices = finalVerts;
	vertIntr->name = StringHelper::Sprintf("%s_verts", zDisplayList->GetName().c_str());
	model->blocks.push_back(vertIntr);

	// Go through textures
	for (pair<uint32_t, ZTexture*> pair : zDisplayList->textures)
	{
		HLTextureIntermediette* texIntr = new HLTextureIntermediette();
		texIntr->tex = pair.second;
		texIntr->name = texIntr->tex->GetName();

		model->blocks.push_back(texIntr);
	}

	// Analyze display lists to determine components
	HLDisplayListIntermediette* dList = new HLDisplayListIntermediette();
	dList->address = zDisplayList->GetRawDataIndex();
	int startIndex = 0;
	
	// Go through the display lists and setup commands
	int meshCnt = 0;

	HLMeshIntermediette* mesh = new HLMeshIntermediette();
	mesh->name = StringHelper::Sprintf("%s_%i", zDisplayList->GetName().c_str(), meshCnt);

	int matCnt = 0;
	HLMaterialIntermediette* lastMat = new HLMaterialIntermediette();
	lastMat->name = StringHelper::Sprintf("Material_%i", matCnt);

	uint8_t lastClrR = 0, lastClrG = 0, lastClrB = 0, lastClrA = 0, lastClrM = 0, lastClrL = 0;

	startIndex = 0;

	for (int i = startIndex; i < zDisplayList->instructions.size(); i++)
	{
		uint64_t data = zDisplayList->instructions[i];
		F3DZEXOpcode opcode = (F3DZEXOpcode)(data >> 56);

		if (opcode == F3DZEXOpcode::G_SETOTHERMODE_L)
		{
			int ss = (data & 0x0000FF0000000000) >> 40;
			int nn = (data & 0x000000FF00000000) >> 32;
			int dd = (data & 0xFFFFFFFF);

			int sft = 32 - (nn + 1) - ss;

			if (sft == 3)
			{
				int mode1 = (dd & 0xCCCC0000) >> 0;
				int mode2 = (dd & 0x33330000) >> 0;

			}
		}
		else if (opcode == F3DZEXOpcode::G_SETPRIMCOLOR)
		{
			int mm = (data & 0x0000FF0000000000) >> 40;
			int ff = (data & 0x000000FF00000000) >> 32;
			int rr = (data & 0x00000000FF000000) >> 24;
			int gg = (data & 0x0000000000FF0000) >> 16;
			int bb = (data & 0x000000000000FF00) >> 8;
			int aa = (data & 0x00000000000000FF) >> 0;

			lastClrR = rr;
			lastClrG = gg;
			lastClrB = bb;
			lastClrA = aa;
			lastClrL = ff;
			lastClrM = mm;

			lastMat->clrR = rr;
			lastMat->clrG = gg;
			lastMat->clrB = bb;
			lastMat->clrA = aa;
			lastMat->clrL = ff;
			lastMat->clrM = mm;
		}
		else if (opcode == F3DZEXOpcode::G_SETTILE && (F3DZEXOpcode)(zDisplayList->instructions[i - 1] >> 56) != F3DZEXOpcode::G_RDPPIPESYNC)
		{
			int fff = (data & 0b0000000011100000000000000000000000000000000000000000000000000000) >> 53;
			int ii = (data & 0b0000000000011000000000000000000000000000000000000000000000000000) >> 51;
			int nnnnnnnnn = (data & 0b0000000000000011111111100000000000000000000000000000000000000000) >> 41;
			int mmmmmmmmm = (data & 0b0000000000000000000000011111111100000000000000000000000000000000) >> 32;
			int ttt = (data & 0b0000000000000000000000000000000000000111000000000000000000000000) >> 24;
			int pppp = (data & 0b0000000000000000000000000000000000000000111100000000000000000000) >> 20;
			int cc = (data & 0b0000000000000000000000000000000000000000000011000000000000000000) >> 18;
			int aaaa = (data & 0b0000000000000000000000000000000000000000000000111100000000000000) >> 14;
			int ssss = (data & 0b0000000000000000000000000000000000000000000000000011110000000000) >> 10;
			int dd = (data & 0b0000000000000000000000000000000000000000000000000000001100000000) >> 8;
			int bbbb = (data & 0b0000000000000000000000000000000000000000000000000000000011110000) >> 4;
			int uuuu = (data & 0b0000000000000000000000000000000000000000000000000000000000001111);

			lastMat->cmtH = (HLMaterialCmt)cc;
			lastMat->cmtV = (HLMaterialCmt)dd;

			matCnt++;

			if (matCnt > 1)
			{
				model->blocks.push_back(lastMat);
				limb->commands.push_back(new HLLimbCommand(mesh->name, lastMat->name));
				lastMat = new HLMaterialIntermediette();
				lastMat->name = StringHelper::Sprintf("Material_%i", matCnt);

				lastMat->clrR = lastClrR;
				lastMat->clrG = lastClrG;
				lastMat->clrB = lastClrB;
				lastMat->clrA = lastClrA;
				lastMat->clrL = lastClrL;
				lastMat->clrM = lastClrM;
				
				// Bit of a hack here...
				int32_t lastData = (int32_t)(zDisplayList->instructions[i - 1]);
				string texName = zDisplayList->textures[lastData & 0x00FFFFFF]->GetName();
				lastMat->textureName = texName;

				// --------------------------
				model->blocks.push_back(mesh);

				meshCnt++;

				mesh = new HLMeshIntermediette();
				mesh->name = StringHelper::Sprintf("%s_%i", zDisplayList->GetName().c_str(), meshCnt);
			}
		}
		else if (opcode == F3DZEXOpcode::G_SETTIMG)
		{
			int32_t texAddress = data & 0x00FFFFFF;

			string texName = zDisplayList->textures[texAddress]->GetName();
			lastMat->textureName = texName;
		}
		else if (opcode == F3DZEXOpcode::G_VTX)
		{
			int nn = (data & 0x000FF00000000000ULL) >> 44;
			int aa = (data & 0x000000FF00000000ULL) >> 32;
			int startIndex = ((aa >> 1) - nn);
			uint32_t vtxAddr = data & 0x00FFFFFF;
			uint32_t diff = vtxAddr - vStart;

			startIndex += diff / 16;

			mesh->commands.push_back(new HLMeshCmdLoadVertices(nn, startIndex));
		}
		else if (opcode == F3DZEXOpcode::G_TRI1)
		{
			int aa = ((data & 0x00FF000000000000ULL) >> 48) / 2;
			int bb = ((data & 0x0000FF0000000000ULL) >> 40) / 2;
			int cc = ((data & 0x000000FF00000000ULL) >> 32) / 2;

			mesh->commands.push_back(new HLMeshCmdTriangle1(aa, bb, cc, 0));
		}
		else if (opcode == F3DZEXOpcode::G_TRI2)
		{
			int aa = ((data & 0x00FF000000000000ULL) >> 48) / 2;
			int bb = ((data & 0x0000FF0000000000ULL) >> 40) / 2;
			int cc = ((data & 0x000000FF00000000ULL) >> 32) / 2;
			int dd = ((data & 0x00000000FF0000ULL) >> 16) / 2;
			int ee = ((data & 0x0000000000FF00ULL) >> 8) / 2;
			int ff = ((data & 0x000000000000FFULL) >> 0) / 2;

			mesh->commands.push_back(new HLMeshCmdTriangle2(aa, bb, cc, 0, dd, ee, ff, 0));
		}

		int bp = 0;
	}

	limb->commands.push_back(new HLLimbCommand(mesh->name, lastMat->name));
	model->blocks.push_back(lastMat);
	model->blocks.push_back(mesh);
	model->blocks.push_back(limb);

	//return model;
}

void HLModelIntermediette::FromZSkeleton(HLModelIntermediette* model, ZSkeleton* zSkeleton)
{
	model->hasSkeleton = true;

	for (int i = 0; i < zSkeleton->limbs.size(); i++)
	{
		ZLimb* limb = zSkeleton->limbs[i];

		for (int j = 0; j < model->blocks.size(); j++)
		{
		}
	}
}

string HLModelIntermediette::ToOBJFile()
{
	string output = "";

	for (HLIntermediette* block : blocks)
	{
		block->parent = this;
		string code = block->OutputOBJ();

		output += code;

		if (code != "")
			output += "\n";
	}

	return output;
}

string HLModelIntermediette::ToFBXFile()
{
#ifdef USE_ASSIMP
	Assimp::Exporter exporter;
	aiScene* newScene = new aiScene();
	newScene->mMeshes = new aiMesh*[128];
	newScene->mRootNode = new aiNode();
	newScene->mRootNode->mName = "RootNode";

	std::vector<aiVector3D> vertices;

	for (HLIntermediette* block : blocks)
	{
		block->parent = this;
		block->OutputAssimp(newScene, &vertices);
	}

	newScene->mRootNode->mNumChildren += newScene->mNumMeshes;
	newScene->mRootNode->mChildren = new aiNode*[newScene->mRootNode->mNumChildren];

	for (int i = 0; i < newScene->mNumMeshes; i++)
	{
		aiNode* child = new aiNode();
		child->mName = StringHelper::Sprintf("OBJ_%i", i);
		child->mNumMeshes = 1;
		child->mMeshes = new unsigned int[1];
		child->mMeshes[0] = i;
		newScene->mRootNode->mChildren[i] = child;
	}

	newScene->mNumMaterials = 1;
	newScene->mMaterials = new aiMaterial*[1];
	newScene->mMaterials[0] = new aiMaterial();

	exporter.Export(newScene, "fbx", "__export.fbx");
#endif

	return "";
}

string HLModelIntermediette::OutputCode()
{
	string output = "";

	for (HLIntermediette* block : blocks)
	{
		string code = block->OutputCode();
		
		output += code;

		if (code != "")
			output += "\n";
	}

	return output;
}

std::string HLModelIntermediette::OutputXML()
{
	string output = "";
	XMLDocument doc;

	XMLElement* root = doc.NewElement("HLModelIntermediette");

	for (HLIntermediette* block : blocks)
		block->OutputXML(&doc, root);

	doc.InsertEndChild(root);

	XMLPrinter printer;

	doc.Accept(&printer);
	return printer.CStr();
}


template<typename T>
inline T* HLModelIntermediette::FindByName(string name)
{
	for (HLIntermediette* block : blocks)
	{
		if (typeid(*block) == typeid(T))
		{
			if (block->name == name)
				return (T*)block;
		}
	}

	return nullptr;
}

template<typename T>
inline T* HLModelIntermediette::FindByType()
{
	for (HLIntermediette* block : blocks)
	{
		if (typeid(*block) == typeid(T))
			return (T*)block;
	}

	return nullptr;
}

HLIntermediette::HLIntermediette()
{
	name = "";
	parent = nullptr;
}

HLIntermediette::~HLIntermediette()
{
}

void HLIntermediette::InitFromXML(XMLElement* xmlElement)
{
	name = xmlElement->Attribute("Name");
}

string HLIntermediette::OutputCode()
{
	return "";
}

string HLIntermediette::OutputOBJ()
{
	return "";
}

void HLIntermediette::OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts)
{

}

void HLIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root)
{
	
}

void HLMeshCommand::InitFromXML(XMLElement* xmlElement)
{

}

string HLMeshCommand::OutputCode(HLModelIntermediette* parent)
{
	return "";
}

std::string HLMeshCommand::OutputOBJ(HLModelIntermediette* parent)
{
	return "";
}

void HLMeshCommand::OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh)
{
}

void HLMeshCommand::OutputXML(tinyxml2::XMLElement* parent)
{
}


HLVerticesIntermediette::HLVerticesIntermediette() : HLIntermediette()
{
	vertices = vector<Vertex>();
}

void HLVerticesIntermediette::InitFromXML(XMLElement* verticesElement)
{
	name = verticesElement->Attribute("Name");

	for (XMLElement* child = verticesElement->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
		vertices.push_back(Vertex(child->IntAttribute("X"), child->IntAttribute("Y"), child->IntAttribute("Z"), child->IntAttribute("Flags"), 
			child->IntAttribute("S"), child->IntAttribute("T"), 
			child->IntAttribute("R"), child->IntAttribute("G"), child->IntAttribute("B"), child->IntAttribute("A")));
}

void HLVerticesIntermediette::InitFromVertices(vector<Vertex> dispListVertices)
{
	for (Vertex v : dispListVertices)
		vertices.push_back(v);
}

string HLVerticesIntermediette::OutputCode(HLModelIntermediette* parent)
{
	string output = "";

	output += StringHelper::Sprintf("Vtx %s_verts[] = \n{\n", name.c_str());

	for (Vertex v : vertices)
	{
		output += StringHelper::Sprintf("\t{ %i, %i, %i, %i, %i, %i, %i, %i, %i, %i },\n", 
			v.x, v.y, v.z, v.flag, v.s, v.t, v.r, v.g, v.b, v.a);
	}

	output += StringHelper::Sprintf("};\n");

	return output;
}

std::string HLVerticesIntermediette::OutputOBJ()
{
	string output = "";

	for (Vertex v : vertices)
	{
		output += StringHelper::Sprintf("v %f %f %f %i %i %i %i\n", (float)v.x * 0.1f, (float)v.y * 0.1f, (float)v.z * 0.1f, v.r, v.g, v.b, v.a);
		//output += StringHelper::Sprintf("v %f %f %f\n", (float)v.x * 0.1f, (float)v.y * 0.1f, (float)v.z * 0.1f);
	}

	//for (Vertex v : vertices)
		//output += StringHelper::Sprintf("vt %i %i\n", v.s, v.t);

	return output;
}

void HLVerticesIntermediette::OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts)
{
	//aiVector3D* verts = new aiVector3D[vertices.size()];
	//aiVector3D* normals = new aiVector3D[vertices.size()];

	verts->clear();

	for (int i = 0; i < vertices.size(); i++)
	{
		verts->push_back(aiVector3D(vertices[i].x, vertices[i].y, vertices[i].z));
		//normals[i] = aiVector3D(vertices[i].x, vertices[i].y, vertices[i].z);
	}

	//mesh->mVertices = verts;
	//mesh->mNormals = normals;
	//mesh->mNumVertices += vertices.size();
}

void HLVerticesIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root)
{
	XMLElement* element = doc->NewElement("Vertices");

	element->SetAttribute("Name", name.c_str());

	for (Vertex v : vertices)
	{
		XMLElement* vElem = doc->NewElement("Vertex");
		vElem->SetAttribute("X", v.x);
		vElem->SetAttribute("Y", v.y);
		vElem->SetAttribute("Z", v.z);
		vElem->SetAttribute("Flag", v.flag);
		vElem->SetAttribute("S", v.s);
		vElem->SetAttribute("T", v.t);
		vElem->SetAttribute("R", v.r);
		vElem->SetAttribute("G", v.g);
		vElem->SetAttribute("B", v.b);
		vElem->SetAttribute("A", v.a);

		element->InsertEndChild(vElem);
	}

	root->InsertEndChild(element);
}

HLMeshCmdGeoSettings::HLMeshCmdGeoSettings()
{
	on = "";
	off = "";
}

void HLMeshCmdGeoSettings::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	on = xmlElement->Attribute("On");
	off = xmlElement->Attribute("Off");
}

string HLMeshCmdGeoSettings::OutputCode(HLModelIntermediette* parent)
{
	string output = "";

	if (off != "")
		output += StringHelper::Sprintf("gsSPClearGeometryMode(G_TEXTURE_ENABLE | %s),\n", off.c_str());
	
	if (on != "")
		output += StringHelper::Sprintf("gsSPSetGeometryMode(G_TEXTURE_ENABLE | %s),", on.c_str());

	return output;
}

HLMeshCmdTriangle1::HLMeshCmdTriangle1()
{
	v0 = 0;
	v1 = 0;
	v2 = 0;
	flag = 0;
}

HLMeshCmdTriangle1::HLMeshCmdTriangle1(int32_t nV0, int32_t nV1, int32_t nV2, int32_t nFlag)
{
	v0 = nV0;
	v1 = nV1;
	v2 = nV2;
	flag = nFlag;
}

void HLMeshCmdTriangle1::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	v0 = xmlElement->IntAttribute("v0");
	v1 = xmlElement->IntAttribute("v1");
	v2 = xmlElement->IntAttribute("v2");
	flag = xmlElement->IntAttribute("flag");
}

string HLMeshCmdTriangle1::OutputCode(HLModelIntermediette* parent)
{
	return StringHelper::Sprintf("gsSP1Triangle(%i, %i, %i, %i),", v0, v1, v2, flag);
}

void HLMeshCmdTriangle1::OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh)
{
	aiFace* face = new aiFace();
	face->mNumIndices = 3;
	face->mIndices = new unsigned int[3];
	face->mIndices[0] = parent->startIndex + v0;
	face->mIndices[1] = parent->startIndex + v1;
	face->mIndices[2] = parent->startIndex + v2;

	mesh->mFaces[mesh->mNumFaces++] = face[0];
}

void HLMeshCmdTriangle1::OutputXML(tinyxml2::XMLElement* parent)
{
	XMLElement* elem = parent->GetDocument()->NewElement("Triangle1");

	elem->SetAttribute("V0", v0);
	elem->SetAttribute("V1", v1);
	elem->SetAttribute("V2", v2);
	elem->SetAttribute("Flag", flag);

	parent->InsertEndChild(elem);
}

HLMeshCmdTriangle2::HLMeshCmdTriangle2()
{
	v0 = 0;
	v1 = 0;
	v2 = 0;
	flag0 = 0;
	v10 = 0;
	v11 = 0;
	v12 = 0;
	flag1 = 0;
}

HLMeshCmdTriangle2::HLMeshCmdTriangle2(int32_t nV0, int32_t nV1, int32_t nV2, int32_t nFlag0, int32_t nV10, int32_t nV11, int32_t nV12, int32_t nFlag1)
{
	v0 = nV0;
	v1 = nV1;
	v2 = nV2;
	flag0 = nFlag0;
	v10 = nV10;
	v11 = nV11;
	v12 = nV12;
	flag1 = nFlag1;
}

void HLMeshCmdTriangle2::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	v0 = xmlElement->IntAttribute("V0");
	v1 = xmlElement->IntAttribute("V1");
	v2 = xmlElement->IntAttribute("V2");
	flag0 = xmlElement->IntAttribute("Flag0");
	v10 = xmlElement->IntAttribute("V10");
 	v11 = xmlElement->IntAttribute("V11");
	v12 = xmlElement->IntAttribute("V12");
	flag1 = xmlElement->IntAttribute("Flag1");
}

string HLMeshCmdTriangle2::OutputCode(HLModelIntermediette* parent)
{
	return StringHelper::Sprintf("gsSP2Triangles(%i, %i, %i, %i, %i, %i, %i, %i),", v0, v1, v2, flag0, v10, v11, v12, flag1);
}

std::string HLMeshCmdTriangle2::OutputOBJ(HLModelIntermediette* parent)
{
	HLVerticesIntermediette* verts = parent->FindByName<HLVerticesIntermediette>("");
	string output = "";

	int startIndex = parent->startIndex;

	output += StringHelper::Sprintf("f %i %i %i\n", startIndex+v0+1, startIndex + v1+1, startIndex + v2+1);
	output += StringHelper::Sprintf("f %i %i %i\n", startIndex + v10+1, startIndex + v11+1, startIndex + v12+1);

	return output;
}

void HLMeshCmdTriangle2::OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh)
{
	{
		aiFace* face = new aiFace();
		face->mNumIndices = 3;
		face->mIndices = new unsigned int[3];
		face->mIndices[0] = parent->startIndex + v0;
		face->mIndices[1] = parent->startIndex + v1;
		face->mIndices[2] = parent->startIndex + v2;

		mesh->mFaces[mesh->mNumFaces++] = face[0];
	}

	{
		aiFace* face = new aiFace();
		face->mNumIndices = 3;
		face->mIndices = new unsigned int[3];
		face->mIndices[0] = parent->startIndex + v10;
		face->mIndices[1] = parent->startIndex + v11;
		face->mIndices[2] = parent->startIndex + v12;

		mesh->mFaces[mesh->mNumFaces++] = face[0];
	}
}

void HLMeshCmdTriangle2::OutputXML(tinyxml2::XMLElement* parent)
{
	XMLElement* elem = parent->GetDocument()->NewElement("Triangle2");

	elem->SetAttribute("V0", v0);
	elem->SetAttribute("V1", v1);
	elem->SetAttribute("V2", v2);
	elem->SetAttribute("Flag0", flag0);
	elem->SetAttribute("V10", v10);
	elem->SetAttribute("V11", v11);
	elem->SetAttribute("V12", v12);
	elem->SetAttribute("Flag1", flag1);
	
	parent->InsertEndChild(elem);
}

HLMeshCmdLoadVertices::HLMeshCmdLoadVertices() : HLMeshCommand()
{
	numVerts = 0;
	startIndex = 0;
}

HLMeshCmdLoadVertices::HLMeshCmdLoadVertices(uint8_t nNumVerts, uint8_t nStartIndex)
{
	numVerts = nNumVerts;
	startIndex = nStartIndex;
}

void HLMeshCmdLoadVertices::OutputXML(tinyxml2::XMLElement* parent)
{
	XMLElement* elem = parent->GetDocument()->NewElement("LoadVertices");

	elem->SetAttribute("StartIndex", startIndex);
	elem->SetAttribute("NumVerts", numVerts);
	
	parent->InsertEndChild(elem);
}

void HLMeshCmdLoadVertices::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	numVerts = xmlElement->IntAttribute("NumVerts", 0);
	startIndex = xmlElement->IntAttribute("StartIndex", 0);
}

std::string HLMeshCmdLoadVertices::OutputOBJ(HLModelIntermediette* parent)
{
	parent->startIndex = startIndex;
	return "";
}

void HLMeshCmdLoadVertices::OutputAssimp(HLModelIntermediette* parent, aiScene* scene, aiMesh* mesh)
{
	parent->startIndex = startIndex;
}

string HLMeshCmdLoadVertices::OutputCode(HLModelIntermediette* parent)
{
	HLVerticesIntermediette* verts = parent->FindByType<HLVerticesIntermediette>();
	return StringHelper::Sprintf("gsSPVertex(&%s[%i], %i, %i),", verts->name.c_str(), startIndex, numVerts, 0);
}

HLMaterialIntermediette::HLMaterialIntermediette()
{
	textureName = "";
	//repeatH = false;
	//repeatV = false;
	clrR = 0;
	clrG = 0;
	clrB = 0;
	clrA = 0;
	clrM = 0;
	clrL = 0;
	//clampH = false;
	//clampV = false;
	//mirrorH = false;
	//mirrorV = false;
	cmtH = HLMaterialCmt::Wrap;
	cmtV = HLMaterialCmt::Wrap;
}

void HLMaterialIntermediette::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	name = xmlElement->Attribute("Name");
	textureName = xmlElement->Attribute("TextureName");
	//repeatH = xmlElement->BoolAttribute("RepeatH");
	//repeatV = xmlElement->BoolAttribute("RepeatV");
	//clampH = xmlElement->BoolAttribute("ClampH");
	//clampV = xmlElement->BoolAttribute("ClampV");
	//mirrorH  = xmlElement->BoolAttribute("MirrorH");
	//mirrorV = xmlElement->BoolAttribute("MirrorV");
	clrR = xmlElement->IntAttribute("ClrR");
	clrG = xmlElement->IntAttribute("ClrG");
	clrB = xmlElement->IntAttribute("ClrB");
	clrA = xmlElement->IntAttribute("ClrA");
	clrM = xmlElement->IntAttribute("ClrM");
	clrL = xmlElement->IntAttribute("ClrL");
}

string HLMaterialIntermediette::OutputCode()
{
	return "";
}

void HLMaterialIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* parent)
{
	XMLElement* elem = parent->GetDocument()->NewElement("Material");

	elem->SetAttribute("Name", name.c_str());
	elem->SetAttribute("TextureName", textureName.c_str());
	elem->SetAttribute("ClrR", clrR);
	elem->SetAttribute("ClrG", clrG);
	elem->SetAttribute("ClrB", clrB);
	elem->SetAttribute("ClrA", clrA);
	elem->SetAttribute("ClrL", clrL);
	elem->SetAttribute("ClrM", clrM);
	elem->SetAttribute("CmtH", (int)cmtH);
	elem->SetAttribute("CmtV", (int)cmtV);

	parent->InsertEndChild(elem);
}

HLDisplayListIntermediette::HLDisplayListIntermediette()
{
	commands = vector<HLDisplayListCommand*>();
}

string HLDisplayListIntermediette::OutputCode()
{
	return std::string();
}

void HLDisplayListIntermediette::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	for (XMLElement* child = xmlElement->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		string name = child->Name();

		HLDisplayListCommand* cmd = nullptr;

		if (name == "DrawMesh")
			cmd = new HLDisplayListCmdDrawMesh();
		else if (name == "PipeSync")
			cmd = new HLDisplayListCmdPipeSync();

		if (cmd != nullptr)
		{
			cmd->InitFromXML(child);
			commands.push_back(cmd);
		}
	}
}

void HLDisplayListCommand::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
}

std::string HLDisplayListCommand::OutputCode()
{
	return "";
}

void HLDisplayListCmdDrawMesh::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	meshName = xmlElement->Attribute("Mesh");
	materialName = xmlElement->Attribute("Material");

}

std::string HLDisplayListCmdDrawMesh::OutputCode()
{
	return "";
}

HLTextureIntermediette::HLTextureIntermediette()
{
	tex = nullptr;
}

void HLTextureIntermediette::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	name = xmlElement->Attribute("Name");

	fileName = xmlElement->Attribute("TextureName");
	//string format = xmlElement->Attribute("Format");
	string format = "rgb5a1"; // TEST

	//tex = HLTexture::FromPNG(fileName, (HLTextureType)ZTexture::GetTextureTypeFromString(format));
	tex = ZTexture::FromPNG(Path::GetDirectoryName(Globals::Instance->inputPath) + "/" + fileName, ZTexture::GetTextureTypeFromString(format));
}

std::string HLTextureIntermediette::OutputCode()
{
	return StringHelper::Sprintf("#include <../%s/%s.inc.c>", Globals::Instance->outputPath.c_str(), name.c_str());
}

void HLTextureIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root)
{
	XMLElement* element = doc->NewElement("Texture");

	element->SetAttribute("Name", name.c_str());
	element->SetAttribute("TextureName", (name + "." + tex->GetExternalExtension() + ".png").c_str());
	tex->Save(Globals::Instance->outputPath);

	root->InsertEndChild(element);
}

void HLDisplayListCmdPipeSync::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
}

std::string HLDisplayListCmdPipeSync::OutputCode()
{
	return "gsDPPipeSync(),";
}

HLMeshCmdCull::HLMeshCmdCull() : HLMeshCommand()
{
	indexStart = 0;
	indexEnd = 0;
}

void HLMeshCmdCull::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	indexStart = xmlElement->IntAttribute("IndexStart", 0);
	indexEnd = xmlElement->IntAttribute("IndexEnd", 0);
}

std::string HLMeshCmdCull::OutputCode(HLModelIntermediette* parent)
{
	return StringHelper::Sprintf("gsSPCullDisplayList(%i, %i),", indexStart, indexEnd);
}

HLMeshIntermediette::HLMeshIntermediette() : HLIntermediette()
{
	commands = vector<HLMeshCommand*>();
}

void HLMeshIntermediette::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	name = xmlElement->Attribute("Name");

	for (XMLElement* child = xmlElement->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		string name = child->Name();

		HLMeshCommand* cmd = nullptr;

		if (name == "Triangle1")
			cmd = new HLMeshCmdTriangle1();
		else if (name == "Triangle2")
			cmd = new HLMeshCmdTriangle2();
		else if (name == "LoadVertices")
			cmd = new HLMeshCmdLoadVertices();
		else if (name == "GeoSettings")
			cmd = new HLMeshCmdGeoSettings();
		else if (name == "Cull")
			cmd = new HLMeshCmdCull();

		if (cmd != nullptr)
		{
			cmd->InitFromXML(child);
			commands.push_back(cmd);
		}
	}
}

string HLMeshIntermediette::OutputCode(string materialName)
{
	string output = "";

	HLMaterialIntermediette* mat = parent->FindByName<HLMaterialIntermediette>(materialName);
	HLTextureIntermediette* tex = parent->FindByName<HLTextureIntermediette>(mat->textureName);

	output += StringHelper::Sprintf("\tgsDPPipeSync(),\n");
	output += StringHelper::Sprintf("\tgsDPSetPrimColor(%i, %i, %i, %i, %i, %i),\n", mat->clrL, mat->clrM, mat->clrR, mat->clrG, mat->clrB, mat->clrA);
	output += StringHelper::Sprintf("\tgsDPPipeSync(),\n");
	output += StringHelper::Sprintf("\tgsSPTexture(65535, 65535, 0, 0, G_ON),\n");

	output += StringHelper::Sprintf("\tgsDPLoadMultiBlock(%s, 0, 0, %s, %s, %i, %i, 0, 0, 0, 5, 5, 0, 0),\n", mat->textureName.c_str(), 
		tex->tex->GetIMFmtFromType().c_str(), tex->tex->GetIMSizFromType().c_str(), tex->tex->GetWidth(), tex->tex->GetHeight());


	for (HLMeshCommand* cmd : commands)
		output += "\t" + cmd->OutputCode(parent) + "\n";

	return output;
}

string HLMeshIntermediette::OutputOBJ()
{
	string output = "";

	output += StringHelper::Sprintf("o %s\n", name.c_str());

	for (HLMeshCommand* cmd : commands)
		output += cmd->OutputOBJ(parent);

	return output;
}

void HLMeshIntermediette::OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts)
{
	aiMesh* mesh = new aiMesh();
	mesh->mVertices = new aiVector3D[8192]; // TODO: Replace these hardcoded counts with the actual count
	mesh->mNormals = new aiVector3D[8192];
	mesh->mFaces = new aiFace[8192];
	mesh->mPrimitiveTypes = 8;
	mesh->mName = name;

	for (HLMeshCommand* cmd : commands)
	{
		cmd->OutputAssimp(parent, scene, mesh);
	}

	scene->mMeshes[scene->mNumMeshes++] = mesh;
}

void HLMeshIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root)
{
	XMLElement* element = doc->NewElement("Mesh");

	element->SetAttribute("Name", name.c_str());
	
	for (HLMeshCommand* cmd : commands)
	{
		cmd->OutputXML(element);
	}
	
	root->InsertEndChild(element);
}

HLLimbIntermediette::HLLimbIntermediette()
{
	commands = vector<HLLimbCommand*>();
}

void HLLimbIntermediette::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	name = xmlElement->Attribute("Name");

	for (XMLElement* child = xmlElement->FirstChildElement(); child != NULL; child = child->NextSiblingElement())
	{
		string name = child->Name();

		HLLimbCommand* cmd = nullptr;

		if (name == "DrawMesh")
			cmd = new HLLimbCommand();

		if (cmd != nullptr)
		{
			cmd->InitFromXML(child);
			commands.push_back(cmd);
		}
	}
}

std::string HLLimbIntermediette::OutputCode()
{
	string output = "";

	output += StringHelper::Sprintf("Gfx %s[] = \n{\n", name.c_str());

	for (HLLimbCommand* cmd : commands)
		output += cmd->OutputCode(parent);

	output += StringHelper::Sprintf("\tgsSPEndDisplayList(),\n");
	output += StringHelper::Sprintf("};\n");

	return output;
}

void HLLimbIntermediette::OutputXML(tinyxml2::XMLDocument* doc, tinyxml2::XMLElement* root)
{
	XMLElement* element = doc->NewElement("Limb");

	element->SetAttribute("Name", name.c_str());

	for (HLLimbCommand* cmd : commands)
		cmd->OutputXML(element);

	root->InsertEndChild(element);
}

HLLimbCommand::HLLimbCommand()
{
	meshName = "";
	materialName = "";
}

HLLimbCommand::HLLimbCommand(std::string nMeshName, std::string nMaterialName)
{
	meshName = nMeshName;
	materialName = nMaterialName;
}

void HLLimbCommand::InitFromXML(tinyxml2::XMLElement* xmlElement)
{
	meshName = xmlElement->Attribute("Mesh");
	materialName = xmlElement->Attribute("Material");
}

void HLLimbCommand::OutputXML(tinyxml2::XMLElement* parent)
{
	XMLElement* elem = parent->GetDocument()->NewElement("DrawMesh");

	elem->SetAttribute("Mesh", meshName.c_str());
	elem->SetAttribute("Material", materialName.c_str());

	parent->InsertEndChild(elem);
}

std::string HLLimbCommand::OutputCode(HLModelIntermediette* parent)
{
	string output = "";

	// Time to generate the display list...
	HLMeshIntermediette* mesh = parent->FindByName<HLMeshIntermediette>(meshName);
	HLMaterialIntermediette* mat = parent->FindByName<HLMaterialIntermediette>(materialName);
	HLTextureIntermediette* tex = parent->FindByName<HLTextureIntermediette>(mat->textureName);

	output += mesh->OutputCode(materialName);

	return output;
}

HLTerminator::HLTerminator()
{
}

HLTerminator::~HLTerminator()
{
}

void HLTerminator::OutputAssimp(aiScene* scene, std::vector<aiVector3D>* verts)
{
	for (int i = parent->meshStartIndex; i < scene->mNumMeshes; i++)
	{
		scene->mMeshes[i]->mNumVertices = verts->size();

		for (int j = 0; j < verts->size(); j++)
			scene->mMeshes[i]->mVertices[j] = verts[0][j];

		parent->meshStartIndex++;
	}

	verts->clear();
}
