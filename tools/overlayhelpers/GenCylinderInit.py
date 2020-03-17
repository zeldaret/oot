import struct

ovlName = input("Overlay Name: ")

ovlFile = open("../../baserom/" + ovlName, "rb")
ovlData = bytearray(ovlFile.read())
ovlFile.close()

address = int(input("Address: 0x"), 16)

v0 = str(hex(struct.unpack_from(">B", ovlData, address + 0)[0]))
v1 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 1)[0]))
v2 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 2)[0]))
v3 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 3)[0]))

v4 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 4)[0]))
v5 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 5)[0]))
v6 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 6)[0]))
v7 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 7)[0]))

v8 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 8)[0]))
v9 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 9)[0]))
v10 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 10)[0]))
v11 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 11)[0]))

v12 = str(hex(struct.unpack_from(">I", ovlData, offset = address + 12)[0]))

v13 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 16)[0]))
v14 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 17)[0]))
v15 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 18)[0]))
v16 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 19)[0]))

v17 = str(hex(struct.unpack_from(">I", ovlData, offset = address + 20)[0]))

v18 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 24)[0]))
v19 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 25)[0]))
v20 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 26)[0]))
v21 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 27)[0]))

v22 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 28)[0]))
v23 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 29)[0]))
v24 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 30)[0]))
v25 = str(hex(struct.unpack_from(">B", ovlData, offset = address + 31)[0]))

v26 = str(hex(struct.unpack_from(">H", ovlData, offset = address + 32)[0]))
v27 = str(hex(struct.unpack_from(">H", ovlData, offset = address + 34)[0]))

v28 = str(hex(struct.unpack_from(">L", ovlData, offset = address + 36)[0]))


print(
'''
static ColliderCylinderInit cylinderInitData = 
{
        %s, %s, %s, %s,
        %s, %s, %s, %s,
        %s, %s, %s, %s,
        %s,
        %s, %s, %s, %s,
        %s,
        %s, %s, %s, %s,
        %s, %s, %s, %s,
        %s,
        %s,
        %s,
};
    '''
    % (v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28)
)
