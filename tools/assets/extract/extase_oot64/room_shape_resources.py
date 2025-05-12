# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import enum
from typing import TYPE_CHECKING

from .. import oot64_data

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext


from ..extase import (
    Resource,
    File,
    RESOURCE_PARSE_SUCCESS,
)
from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayNamedLengthResource,
    CDataExt_Struct,
    CDataExt_Value,
    CDataExtWriteContext,
    cdata_ext_Vec3s,
)

from . import dlist_resources


class RoomShapeType(enum.Enum):
    ROOM_SHAPE_TYPE_NORMAL = 0
    ROOM_SHAPE_TYPE_IMAGE = enum.auto()
    ROOM_SHAPE_TYPE_CULLABLE = enum.auto()


class RoomShapeImageAmountType(enum.Enum):
    ROOM_SHAPE_IMAGE_AMOUNT_SINGLE = 1
    ROOM_SHAPE_IMAGE_AMOUNT_MULTI = enum.auto()


def report_room_shape_at_segmented(
    reporter: Resource, memory_context: "MemoryContext", address: int, name_base: str
):
    def new_resource_pointed_to(file: File, offset: int):
        resource_type = get_room_shape_resource_type(file, offset)
        name_suffix = resource_type.__name__.removesuffix("Resource")
        return resource_type(
            file,
            offset,
            f"{name_base}_{address:08X}_{name_suffix}",
        )

    memory_context.report_resource_at_segmented(
        reporter, address, Resource, new_resource_pointed_to
    )


def get_room_shape_resource_type(file: File, offset: int):
    room_shape_type_int = file.data[offset]
    room_shape_type = RoomShapeType(room_shape_type_int)

    resource_type = None

    if room_shape_type == RoomShapeType.ROOM_SHAPE_TYPE_NORMAL:
        resource_type = RoomShapeNormalResource

    if room_shape_type == RoomShapeType.ROOM_SHAPE_TYPE_IMAGE:
        room_shape_image_amount_type_int = file.data[offset + 1]
        room_shape_image_amount_type = RoomShapeImageAmountType(
            room_shape_image_amount_type_int
        )
        if (
            room_shape_image_amount_type
            == RoomShapeImageAmountType.ROOM_SHAPE_IMAGE_AMOUNT_SINGLE
        ):
            resource_type = RoomShapeImageSingleResource
        if (
            room_shape_image_amount_type
            == RoomShapeImageAmountType.ROOM_SHAPE_IMAGE_AMOUNT_MULTI
        ):
            resource_type = RoomShapeImageMultiResource

    if room_shape_type == RoomShapeType.ROOM_SHAPE_TYPE_CULLABLE:
        resource_type = RoomShapeCullableResource

    assert resource_type is not None

    return resource_type


cdata_ext_RoomShapeBase = CDataExt_Struct(
    (
        (
            "type",
            CDataExt_Value("B").set_write_str_v(oot64_data.get_room_shape_type_name),
        ),
    )
)

cdata_ext_RoomShapeDListsEntry = CDataExt_Struct(
    (
        ("opa", dlist_resources.cdata_ext_gfx_segmented),
        ("xlu", dlist_resources.cdata_ext_gfx_segmented),
    )
)


# TODO check if this even needs a named length
class RoomShapeNormalEntryArrayResource(CDataArrayNamedLengthResource):
    elem_cdata_ext = cdata_ext_RoomShapeDListsEntry

    def get_c_declaration_base(self):
        return f"RoomShapeDListsEntry {self.symbol_name}[{self.length_name}]"

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeNormalResource(CDataResource):
    def write_numEntries(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["entries"]
        assert isinstance(address, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_expression_length_at_segmented(address))
        return True

    def report_entries(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        entries_resource = memory_context.report_resource_at_segmented(
            resource,
            address,
            RoomShapeNormalEntryArrayResource,
            lambda file, offset: RoomShapeNormalEntryArrayResource(
                file, offset, f"{resource.name}_{address:08X}_DListsEntries"
            ),
        )
        assert isinstance(entries_resource, RoomShapeNormalEntryArrayResource)
        numEntries = resource.cdata_unpacked["numEntries"]
        assert isinstance(numEntries, int)
        entries_resource.set_length(numEntries)

    def write_entries(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_entriesEnd(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["entries"]
        assert isinstance(address, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        wctx.f.write(" + ")
        wctx.f.write(memory_context.get_c_expression_length_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("base", cdata_ext_RoomShapeBase),
            ("numEntries", CDataExt_Value("B").set_write(write_numEntries)),
            ("pad2", CDataExt_Value.pad16),
            (
                "entries",
                CDataExt_Value("I").set_report(report_entries).set_write(write_entries),
            ),
            (
                "entriesEnd",
                CDataExt_Value("I").set_write(write_entriesEnd),
            ),
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeNormal {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_c_includes(self):
        return ("array_count.h",)

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeDListsEntryResource(CDataResource):
    cdata_ext = cdata_ext_RoomShapeDListsEntry

    def get_c_declaration_base(self):
        return f"RoomShapeDListsEntry {self.symbol_name}"

    def get_c_reference(self, resource_offset):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return ("z64room.h",)


def report_RoomShapeImageBase_entry(resource, memory_context: "MemoryContext", v):
    assert isinstance(v, int)
    address = v
    memory_context.report_resource_at_segmented(
        resource,
        address,
        RoomShapeDListsEntryResource,
        lambda file, offset: RoomShapeDListsEntryResource(
            file, offset, f"{resource.name}_{address:08X}_RoomShapeDListsEntry"
        ),
    )


def write_RoomShapeImageBase_entry(
    resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
):
    assert isinstance(v, int)
    address = v
    wctx.f.write(wctx.line_prefix)
    wctx.f.write(memory_context.get_c_reference_at_segmented(address))
    return True


cdata_ext_RoomShapeImageBase = CDataExt_Struct(
    (
        ("base", cdata_ext_RoomShapeBase),
        (
            "amountType",
            CDataExt_Value("B").set_write_str_v(
                oot64_data.get_room_shape_image_amount_type_name
            ),
        ),
        ("pad2", CDataExt_Value.pad16),
        (
            "entry",
            (
                CDataExt_Value("I")
                .set_report(report_RoomShapeImageBase_entry)
                .set_write(write_RoomShapeImageBase_entry)
            ),
        ),  # RoomShapeDListsEntry*
    )
)


class JFIFResource(Resource):
    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, range_start + 320 * 240 * 2, name)

    def try_parse_data(self, memory_context):
        return RESOURCE_PARSE_SUCCESS

    needs_build = True
    extracted_path_suffix = ""

    def get_filename_stem(self):
        return f"{self.name}.jpg"

    def write_extracted(self, memory_context):
        # TODO trim zeros at the end of the data
        self.extract_to_path.write_bytes(
            self.file.data[self.range_start : self.range_end]
        )

    def get_c_declaration_base(self):
        return f"u64 {self.symbol_name}[SCREEN_WIDTH * SCREEN_HEIGHT * G_IM_SIZ_16b_BYTES / sizeof(u64)]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return (
            "ultra64.h",
            "gfx.h",  # for SCREEN_WIDTH, SCREEN_HEIGHT
        )


class RoomShapeImageSingleResource(CDataResource):
    def report_source(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            JFIFResource,
            lambda file, offset: JFIFResource(
                file,
                offset,
                f"{resource.name}_{address:08X}_JFIF",
            ),
        )

    def write_source(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("base", cdata_ext_RoomShapeImageBase),
            (
                "source",
                CDataExt_Value("I").set_report(report_source).set_write(write_source),
            ),
            ("unk_0C", CDataExt_Value.u32),
            ("tlut", CDataExt_Value.pointer),  # TODO
            ("width", CDataExt_Value.u16),
            ("height", CDataExt_Value.u16),
            ("fmt", CDataExt_Value.u8),  # TODO
            ("siz", CDataExt_Value.u8),  # TODO
            ("tlutMode", CDataExt_Value.u16),
            ("tlutCount", CDataExt_Value.u16),
            ("pad1E", CDataExt_Value.pad16),
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeImageSingle {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeImageMultiBgEntryArrayResource(CDataArrayNamedLengthResource):
    def report_source(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            JFIFResource,
            lambda file, offset: JFIFResource(
                file,
                offset,
                f"{resource.name}_{address:08X}_JFIF",
            ),
        )

    def write_source(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    elem_cdata_ext = CDataExt_Struct(
        (
            ("unk_00", CDataExt_Value.u16),
            ("bgCamIndex", CDataExt_Value.u8),
            ("pad3", CDataExt_Value.pad8),
            (
                "source",
                CDataExt_Value("I").set_report(report_source).set_write(write_source),
            ),
            ("unk_0C", CDataExt_Value.u32),
            ("tlut", CDataExt_Value.pointer),  # TODO
            ("width", CDataExt_Value.u16),
            ("height", CDataExt_Value.u16),
            ("fmt", CDataExt_Value.u8),  # TODO
            ("siz", CDataExt_Value.u8),  # TODO
            ("tlutMode", CDataExt_Value.u16),
            ("tlutCount", CDataExt_Value.u16),
            ("pad1A", CDataExt_Value.pad16),
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeImageMultiBgEntry {self.name}[{self.length_name}]"

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeImageMultiResource(CDataResource):
    def write_numBackgrounds(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["backgrounds"]
        assert isinstance(address, int)
        backgrounds_resource = memory_context.resolve_segmented(address).get_resource(
            RoomShapeImageMultiBgEntryArrayResource
        )
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(backgrounds_resource.length_name)
        return True

    def report_backgrounds(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        backgrounds_resource = memory_context.report_resource_at_segmented(
            resource,
            address,
            RoomShapeImageMultiBgEntryArrayResource,
            lambda file, offset: RoomShapeImageMultiBgEntryArrayResource(
                file,
                offset,
                f"{resource.name}_{address:08X}_RoomShapeImageMultiBgEntries",
            ),
        )
        backgrounds_resource.set_length(resource.cdata_unpacked["numBackgrounds"])

    def write_backgrounds(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("base", cdata_ext_RoomShapeImageBase),
            ("numBackgrounds", CDataExt_Value("B").set_write(write_numBackgrounds)),
            ("pad9", CDataExt_Value.pad8),
            ("padA", CDataExt_Value.pad16),
            (
                "backgrounds",
                (
                    CDataExt_Value("I")
                    .set_report(report_backgrounds)
                    .set_write(write_backgrounds)
                ),
            ),  # RoomShapeImageMultiBgEntry*
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeImageMulti {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeCullableEntryArrayResource(CDataArrayNamedLengthResource):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("boundsSphereCenter", cdata_ext_Vec3s),
            ("boundsSphereRadius", CDataExt_Value.s16),
            ("opa", dlist_resources.cdata_ext_gfx_segmented),
            ("xlu", dlist_resources.cdata_ext_gfx_segmented),
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeCullableEntry {self.symbol_name}[{self.length_name}]"

    def get_h_includes(self):
        return ("z64room.h",)


class RoomShapeCullableResource(CDataResource):
    def write_numEntries(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["entries"]
        assert isinstance(address, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_expression_length_at_segmented(address))
        return True

    def report_entries(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        entries_resource = memory_context.report_resource_at_segmented(
            resource,
            address,
            RoomShapeCullableEntryArrayResource,
            lambda file, offset: RoomShapeCullableEntryArrayResource(
                file, offset, f"{resource.name}_{address:08X}_CullableEntries"
            ),
        )
        assert isinstance(entries_resource, RoomShapeCullableEntryArrayResource)
        numEntries = resource.cdata_unpacked["numEntries"]
        assert isinstance(numEntries, int)
        entries_resource.set_length(numEntries)

    def write_entries(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_entriesEnd(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["entries"]
        assert isinstance(address, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        wctx.f.write(" + ")
        wctx.f.write(memory_context.get_c_expression_length_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("base", cdata_ext_RoomShapeBase),
            ("numEntries", CDataExt_Value("B").set_write(write_numEntries)),
            ("pad2", CDataExt_Value.pad16),
            (
                "entries",
                CDataExt_Value("I").set_report(report_entries).set_write(write_entries),
            ),
            (
                "entriesEnd",
                CDataExt_Value("I").set_write(write_entriesEnd),
            ),
        )
    )

    def get_c_declaration_base(self):
        return f"RoomShapeCullable {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return ("z64room.h",)
