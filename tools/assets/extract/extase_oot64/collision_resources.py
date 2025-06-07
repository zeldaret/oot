# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import TYPE_CHECKING, Optional

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    File,
    RESOURCE_PARSE_SUCCESS,
    ResourceParseInProgress,
    ResourceParseWaiting,
)
from ..extase.cdata_resources import (
    CDataResource,
    CDataExt_Struct,
    CDataExt_Array,
    CDataExt_Value,
    CDataExtWriteContext,
    cdata_ext_Vec3s,
    cdata_ext_Vec3s_aligned,
    INDENT,
    fmt_hex_u,
)

from .. import oot64_data

# TODO would be better for array resources to be of unknown size at instanciation
# and have their size set later, like LimbsArrayResource,
# which allows declaring them with offsets in xmls and have the data parsing
# fill in the length for both cases of it instantiating the array,
# and it being instantiated much earlier from the xml


class CollisionVtxListResource(CDataResource):
    cdata_ext_elem = cdata_ext_Vec3s_aligned

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.cdata_ext_elem, length)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"Vec3s {self.symbol_name}[{self.cdata_ext.length}]"
        return f"Vec3s {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z_math.h",)


class CollisionPolyListResource(CDataResource):
    def write_vtxData(
        resource: "CollisionPolyListResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, list)
        assert len(v) == 3
        vtxData = v
        f = wctx.f
        f.write(wctx.line_prefix)
        f.write("{\n")
        for i in range(3):
            vI = vtxData[i]
            vtxId = vI & 0x1FFF
            flags = (vI & 0xE000) >> 13
            flags_str_list = []
            if i == 0:
                if flags & 1:
                    flags &= ~1
                    flags_str_list.append("COLPOLY_IGNORE_CAMERA")
                if flags & 2:
                    flags &= ~2
                    flags_str_list.append("COLPOLY_IGNORE_ENTITY")
                if flags & 4:
                    flags &= ~4
                    flags_str_list.append("COLPOLY_IGNORE_PROJECTILES")
            elif i == 1:
                if flags & 1:
                    flags &= ~1
                    flags_str_list.append("COLPOLY_IS_FLOOR_CONVEYOR")
            if flags != 0:
                flags_str_list.append(f"0x{flags:X}")
            if flags_str_list:
                flags_str = " | ".join(flags_str_list)
            else:
                flags_str = "0"
            f.write(wctx.line_prefix)
            f.write(INDENT)
            f.write(f"COLPOLY_VTX({vtxId}, {flags_str}), // {i}\n")
        f.write(wctx.line_prefix)
        f.write("}")
        return True

    def write_normal_component(
        resource: "CollisionPolyListResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        nf = v / 0x7FFF

        if int(round(nf, 5) * 0x7FFF) != v:
            if v < 0:
                nf -= 0.000_01
            elif v > 0:
                nf += 0.000_01

        ns = f"{nf:.5f}"
        while ns[-1] == "0" and ns[-2] != ".":
            ns = ns[:-1]

        wctx.f.write(wctx.line_prefix)
        wctx.f.write(f"COLPOLY_SNORMAL({ns})")

        return True

    normal_component = CDataExt_Value("h").set_write(write_normal_component)
    cdata_ext_elem = CDataExt_Struct(
        (
            ("type", CDataExt_Value.u16),
            ("vtxData", CDataExt_Array(CDataExt_Value.u16, 3).set_write(write_vtxData)),
            (
                "normal",
                CDataExt_Struct(
                    (
                        ("x", normal_component),
                        ("y", normal_component),
                        ("z", normal_component),
                    )
                ),
            ),
            ("dist", CDataExt_Value.s16),
        )
    )

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.cdata_ext_elem, length)
        super().__init__(file, range_start, name)

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)
        self.max_surface_type_index = max(elem["type"] for elem in self.cdata_unpacked)
        assert isinstance(self.max_surface_type_index, int)
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"CollisionPoly {self.symbol_name}[{self.cdata_ext.length}]"
        return f"CollisionPoly {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("bgcheck.h",)


class CollisionSurfaceTypeListResource(CDataResource):
    def write_data(
        resource: "CollisionSurfaceTypeListResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, list)
        assert len(v) == 2
        f = wctx.f

        f.write(wctx.line_prefix)
        f.write("{\n")

        for i_data, bitfield_info in (
            (
                0,
                (
                    (0x000000FF, 0, "bgCamIndex", int),
                    (0x00001F00, 8, "exitIndex", int),
                    (0x0003E000, 13, "floorType", oot64_data.misc_ids.FLOOR_TYPES),
                    (0x001C0000, 18, "unk18", int),
                    (0x03E00000, 21, "wallType", oot64_data.misc_ids.WALL_TYPES),
                    (
                        0x3C000000,
                        26,
                        "floorProperty",
                        oot64_data.misc_ids.FLOOR_PROPERTIES,
                    ),
                    (0x40000000, 30, "isSoft", bool),
                    (0x80000000, 31, "isHorseBlocked", bool),
                ),
            ),
            (
                1,
                (
                    (0x0000000F, 0, "material", oot64_data.misc_ids.SURFACE_MATERIALS),
                    (0x00000030, 4, "floorEffect", oot64_data.misc_ids.FLOOR_EFFECTS),
                    (0x000007C0, 6, "lightSetting", int),
                    (0x0001F800, 11, "echo", int),
                    (0x00020000, 17, "canHookshot", bool),
                    (
                        0x001C0000,
                        18,
                        "conveyorSpeed",
                        oot64_data.misc_ids.CONVEYOR_SPEEDS,
                    ),
                    (
                        0x07E00000,
                        21,
                        "conveyorDirection",
                        lambda val: f"CONVEYOR_DIRECTION_FROM_BINANG({fmt_hex_u(val * (0x10000 // 64))})",
                    ),
                    (0x08000000, 27, "unk27", bool),
                ),
            ),
        ):

            data_val = v[i_data]

            f.write(wctx.line_prefix)
            f.write(INDENT)
            f.write(f"SURFACETYPE{i_data}(\n")

            lines = []
            for mask, shift, name, fmt_info in bitfield_info:
                val = (data_val & mask) >> shift

                if fmt_info == int:
                    lines.append(f"/* {name} */ {val}")
                elif fmt_info == bool:
                    assert val in {0, 1}
                    lines.append(f"/* {name} */ {'true' if val else 'false'}")
                elif isinstance(fmt_info, dict):
                    lines.append(fmt_info[val])
                elif callable(fmt_info):
                    lines.append(fmt_info(val))
                else:
                    lines.append(f"/* {name} */ {val}")

            f.write(",\n".join(f"{wctx.line_prefix}{INDENT * 2}{_l}" for _l in lines))

            f.write("\n")
            f.write(wctx.line_prefix)
            f.write(INDENT)
            f.write("),\n")

        f.write(wctx.line_prefix)
        f.write("}")

        return True

    cdata_ext_elem = CDataExt_Struct(
        (("data", CDataExt_Array(CDataExt_Value.u32, 2).set_write(write_data)),)
    )

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.cdata_ext_elem, length)
        super().__init__(file, range_start, name)

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)
        self.max_bgCamIndex = max(
            elem["data"][0] & 0xFF for elem in self.cdata_unpacked
        )
        self.max_exitIndex = max(
            (elem["data"][0] & 0x00001F00) >> 8 for elem in self.cdata_unpacked
        )
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"SurfaceType {self.symbol_name}[{self.cdata_ext.length}]"
        return f"SurfaceType {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_includes(self):
        return ("stdbool.h",)

    def get_h_includes(self):
        return ("bgcheck.h",)


class BgCamFuncDataResource(CDataResource):
    element_cdata_ext = cdata_ext_Vec3s

    def __init__(self, file: File, range_start: int, range_end: int, name: str):
        count = (range_end - range_start) // self.element_cdata_ext.size
        self.cdata_ext = CDataExt_Array(self.element_cdata_ext, count)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"Vec3s {self.symbol_name}[{self.cdata_ext.length}]"
        return f"Vec3s {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset % self.element_cdata_ext.size != 0:
            raise ValueError(
                "unaligned offset into Vec3s array (BgCamFuncData)",
                hex(resource_offset),
                self.element_cdata_ext.size,
            )
        index = resource_offset // self.element_cdata_ext.size
        return f"&{self.symbol_name}[{index}]"

    def get_h_includes(self):
        return ("z_math.h",)


class CollisionBgCamListResource(CDataResource):
    def write_bgCamFuncData(
        resource: "CollisionSurfaceTypeListResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        if address != 0:
            wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        else:
            wctx.f.write("NULL")
        return True

    cdata_ext_elem = CDataExt_Struct(
        (
            (
                "setting",
                CDataExt_Value("H").set_write_str_v(
                    lambda v: oot64_data.get_camera_setting_type_name(v)
                ),
            ),
            ("count", CDataExt_Value.s16),
            (
                "bgCamFuncData",
                CDataExt_Value("I").set_write(write_bgCamFuncData),
            ),  # Vec3s*
        )
    )

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.cdata_ext_elem, length)
        super().__init__(file, range_start, name)

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)
        # Note: operating directly on the segmented addresses here,
        # so assuming from the start all bgCamFuncData use the same segment
        bgCamFuncData_buffer_start = None
        bgCamFuncData_buffer_end = None
        for bgCamInfo in self.cdata_unpacked:
            count = bgCamInfo["count"]
            assert isinstance(count, int)
            bgCamFuncData = bgCamInfo["bgCamFuncData"]
            assert isinstance(bgCamFuncData, int)

            if bgCamFuncData == 0:
                continue

            if bgCamFuncData_buffer_start is None:
                bgCamFuncData_buffer_start = bgCamFuncData
                bgCamFuncData_buffer_end = (
                    bgCamFuncData + count * BgCamFuncDataResource.element_cdata_ext.size
                )
                continue

            assert bgCamFuncData_buffer_start is not None
            assert bgCamFuncData_buffer_end is not None
            if bgCamFuncData != bgCamFuncData_buffer_end:
                raise NotImplementedError(
                    "bgCamFuncData buffer not used in the same order as its elements"
                )
            bgCamFuncData_buffer_end += (
                count * BgCamFuncDataResource.element_cdata_ext.size
            )
        if bgCamFuncData_buffer_start is not None:
            assert bgCamFuncData_buffer_end is not None
            memory_context.report_resource_at_segmented(
                self,
                bgCamFuncData_buffer_start,
                BgCamFuncDataResource,
                lambda file, offset: BgCamFuncDataResource(
                    file,
                    offset,
                    offset + bgCamFuncData_buffer_end - bgCamFuncData_buffer_start,
                    f"{self.name}_{bgCamFuncData_buffer_start:08X}_BgCamFuncData",
                ),
            )
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"BgCamInfo {self.symbol_name}[{self.cdata_ext.length}]"
        return f"BgCamInfo {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_includes(self):
        return ("camera.h",)

    def get_h_includes(self):
        return ("bgcheck.h",)


class CollisionWaterBoxesResource(CDataResource):

    def write_properties(v):
        bgCamIndex = (v >> 0) & 0xFF
        lightIndex = (v >> 8) & 0x1F
        room = (v >> 13) & 0x3F
        setFlag19 = (v >> 19) & 1
        return f"WATERBOX_PROPERTIES(/* bgCamIndex */ {bgCamIndex}, /* lightIndex */ {lightIndex}, /* room */ {room}, /* setFlag19 */ {'true' if setFlag19 else 'false'})"

    elem_cdata_ext = CDataExt_Struct(
        (
            ("xMin", CDataExt_Value.s16),
            ("ySurface", CDataExt_Value.s16),
            ("zMin", CDataExt_Value.s16),
            ("xLength", CDataExt_Value.s16),
            ("zLength", CDataExt_Value.s16),
            ("pad12", CDataExt_Value.pad16),
            ("properties", CDataExt_Value("I").set_write_str_v(write_properties)),
        )
    )

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, length)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        return f"WaterBox {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError

    def get_c_includes(self):
        return ("stdbool.h",)

    def get_h_includes(self):
        return ("bgcheck.h",)


def transfer_HACK_IS_STATIC_ON(source, dest):
    if hasattr(source, "HACK_IS_STATIC_ON"):
        dest.HACK_IS_STATIC_ON = source.HACK_IS_STATIC_ON
    return dest


class CollisionResource(CDataResource):
    def write_numVertices(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(
            memory_context.get_c_expression_length_at_segmented(
                resource.cdata_unpacked["vtxList"]
            )
        )
        return True

    def report_vtxList(
        resource: "CollisionResource", memory_context: "MemoryContext", v
    ):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            CollisionVtxListResource,
            lambda file, offset: transfer_HACK_IS_STATIC_ON(
                resource,
                CollisionVtxListResource(
                    file,
                    offset,
                    (
                        f"{resource.name.removesuffix('Col')}VtxList"
                        if resource.name.endswith("Col")
                        else f"{resource.name}_{address:08X}_VtxList"
                    ),
                    resource.cdata_unpacked["numVertices"],
                ),
            ),
        )

    def write_vtxList(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(v))
        return True

    def write_numPolygons(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(
            memory_context.get_c_expression_length_at_segmented(
                resource.cdata_unpacked["polyList"]
            )
        )
        return True

    def report_polyList(
        resource: "CollisionResource", memory_context: "MemoryContext", v
    ):
        assert isinstance(v, int)
        address = v
        resource.resource_polyList = memory_context.report_resource_at_segmented(
            resource,
            address,
            CollisionPolyListResource,
            lambda file, offset: transfer_HACK_IS_STATIC_ON(
                resource,
                CollisionPolyListResource(
                    file,
                    offset,
                    (
                        f"{resource.name.removesuffix('Col')}PolyList"
                        if resource.name.endswith("Col")
                        else f"{resource.name}_{address:08X}_PolyList"
                    ),
                    resource.cdata_unpacked["numPolygons"],
                ),
            ),
        )

    def write_polyList(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_numWaterBoxes(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        wctx.f.write(wctx.line_prefix)
        length = resource.cdata_unpacked["numWaterBoxes"]
        if length != 0:
            wctx.f.write(
                memory_context.get_c_expression_length_at_segmented(
                    resource.cdata_unpacked["waterBoxes"]
                )
            )
        else:
            wctx.f.write("0")
        return True

    def report_waterBoxes(
        resource: "CollisionResource", memory_context: "MemoryContext", v
    ):
        assert isinstance(v, int)
        address = v
        length = resource.cdata_unpacked["numWaterBoxes"]
        if length != 0:
            assert address != 0, address  # should not be NULL
            memory_context.report_resource_at_segmented(
                resource,
                address,
                CollisionWaterBoxesResource,
                lambda file, offset: transfer_HACK_IS_STATIC_ON(
                    resource,
                    CollisionWaterBoxesResource(
                        file,
                        offset,
                        (
                            f"{resource.name.removesuffix('Col')}WaterBoxes"
                            if resource.name.endswith("Col")
                            else f"{resource.name}_{address:08X}_WaterBoxes"
                        ),
                        length,
                    ),
                ),
            )

    def write_surfaceTypeList(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(v))
        return True

    def write_bgCamList(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(v))
        return True

    def write_waterBoxes(
        resource: "CollisionResource",
        memory_context: "MemoryContext",
        v,
        wctx: CDataExtWriteContext,
    ):
        assert isinstance(v, int)
        length = resource.cdata_unpacked["numWaterBoxes"]
        f = wctx.f
        f.write(wctx.line_prefix)
        if length != 0:
            f.write(memory_context.get_c_reference_at_segmented(v))
        else:
            if v == 0:
                f.write("NULL")
            else:
                f.write(f"0x{v:08X}")
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("minBounds", cdata_ext_Vec3s),
            ("maxBounds", cdata_ext_Vec3s),
            ("numVertices", CDataExt_Value("H").set_write(write_numVertices)),
            ("pad14", CDataExt_Value.pad16),
            (
                "vtxList",
                CDataExt_Value("I").set_report(report_vtxList).set_write(write_vtxList),
            ),  # Vec3s*
            ("numPolygons", CDataExt_Value("H").set_write(write_numPolygons)),
            ("pad22", CDataExt_Value.pad16),
            (
                "polyList",
                CDataExt_Value("I")
                .set_report(report_polyList)
                .set_write(write_polyList),
            ),  # CollisionPoly*
            (
                "surfaceTypeList",
                CDataExt_Value("I").set_write(write_surfaceTypeList),
            ),  # SurfaceType*
            ("bgCamList", CDataExt_Value("I").set_write(write_bgCamList)),  # BgCamInfo*
            ("numWaterBoxes", CDataExt_Value("H").set_write(write_numWaterBoxes)),
            ("pad38", CDataExt_Value.pad16),
            (
                "waterBoxes",
                CDataExt_Value("I")
                .set_report(report_waterBoxes)
                .set_write(write_waterBoxes),
            ),  # WaterBox*
        )
    )

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)

        self.length_exitList: Optional[int] = None

        self.resource_polyList: Optional[CollisionPolyListResource] = None
        self.resource_surfaceTypeList: Optional[CollisionSurfaceTypeListResource] = None
        self.resource_bgCamList: Optional[CollisionBgCamListResource] = None

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)

        assert self.resource_polyList is not None

        new_progress_done = []
        waiting_for = []

        # If the CollisionPolyListResource is parsed
        if self.resource_polyList.is_data_parsed:
            # report surfaceTypeList based on its length guessed from polyList data
            length_surfaceTypeList = self.resource_polyList.max_surface_type_index + 1
            surfaceTypeList_address = self.cdata_unpacked["surfaceTypeList"]
            assert isinstance(surfaceTypeList_address, int)
            self.resource_surfaceTypeList = memory_context.report_resource_at_segmented(
                self,
                surfaceTypeList_address,
                CollisionSurfaceTypeListResource,
                lambda file, offset: transfer_HACK_IS_STATIC_ON(
                    self,
                    CollisionSurfaceTypeListResource(
                        file,
                        offset,
                        (
                            f"{self.name.removesuffix('Col')}SurfaceTypes"
                            if self.name.endswith("Col")
                            else f"{self.name}_{surfaceTypeList_address:08X}_SurfaceTypes"
                        ),
                        length_surfaceTypeList,  # TODO change CollisionSurfaceTypeListResource to a CDataArrayResource (same with more resources)
                    ),
                ),
            )

            new_progress_done.append("reported CollisionSurfaceTypeListResource")
        else:
            waiting_for.append(
                (
                    "waiting for CollisionPolyListResource"
                    " to be parsed to report CollisionSurfaceTypeListResource",
                    self.resource_polyList,
                )
            )

        if self.resource_surfaceTypeList is not None:
            # If the CollisionSurfaceTypeListResource is parsed
            if self.resource_surfaceTypeList.is_data_parsed:
                # report bgCamList based on its length guessed from surfaceTypeList data
                length_bgCamList = self.resource_surfaceTypeList.max_bgCamIndex + 1
                bgCamList_address = self.cdata_unpacked["bgCamList"]
                assert isinstance(bgCamList_address, int)
                self.resource_bgCamList = memory_context.report_resource_at_segmented(
                    self,
                    bgCamList_address,
                    CollisionBgCamListResource,
                    lambda file, offset: transfer_HACK_IS_STATIC_ON(
                        self,
                        CollisionBgCamListResource(
                            file,
                            offset,
                            (
                                f"{self.name.removesuffix('Col')}BgCamList"
                                if self.name.endswith("Col")
                                else f"{self.name}_{bgCamList_address:08X}_BgCamList"
                            ),
                            length_bgCamList,
                        ),
                    ),
                )

                # exitIndex is 1-indexed, so e.g. if the max is 1 the list is of length 1.
                self.length_exitList = self.resource_surfaceTypeList.max_exitIndex

                new_progress_done.append("reported CollisionBgCamListResource")
            else:
                waiting_for.append(
                    (
                        "waiting for CollisionSurfaceTypeListResource"
                        " to be parsed to report CollisionBgCamListResource",
                        self.resource_surfaceTypeList,
                    )
                )
        else:
            waiting_for.append("self.resource_surfaceTypeList")

        if waiting_for:
            if new_progress_done:
                raise ResourceParseInProgress(
                    new_progress_done=new_progress_done, waiting_for=waiting_for
                )
            else:
                raise ResourceParseWaiting(waiting_for=waiting_for)

        assert (
            self.resource_surfaceTypeList is not None
            and self.resource_bgCamList is not None
            and self.length_exitList is not None
        )
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        return f"CollisionHeader {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_includes(self):
        return ("array_count.h",)

    def get_h_includes(self):
        return ("bgcheck.h",)
