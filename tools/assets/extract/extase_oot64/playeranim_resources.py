from __future__ import annotations
from ..extase.cdata_resources import (
    CDataResource,
    CDataExt_Struct,
    CDataExt_Value,
)


class PlayerAnimationResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            (
                "common",
                CDataExt_Struct((("frameCount", CDataExt_Value.s16),)),
            ),
            ("pad2", CDataExt_Value.pad16),
            ("segment", CDataExt_Value.pointer),
        )
    )

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"LinkAnimationHeader {self.symbol_name}"
