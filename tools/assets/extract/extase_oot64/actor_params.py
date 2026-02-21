def bits(p: int, s: int, n: int):
    return (p >> s) & ((1 << n) - 1)


def cbool(b: bool):
    return "true" if b else "false"


def params_en_door(params: int):
    unused_mask = 0b1111_1100_0011_1111
    type = bits(params, 7, 3)
    type_name = [
        "DOOR_ROOMLOAD",
        "DOOR_LOCKED",
        "DOOR_ROOMLOAD2",
        "DOOR_SCENEEXIT",
        "DOOR_AJAR",
        "DOOR_CHECKABLE",
        "DOOR_EVENING",
        "DOOR_ROOMLOAD7",
    ][type]
    isDoubleDoor = bits(params, 6, 1) != 0
    if type_name == "DOOR_LOCKED":
        unused_mask &= ~0b0011_1111
        switchFlag = bits(params, 0, 6)
        params_str = f"ENDOOR_PARAMS_LOCKED({cbool(isDoubleDoor)}, {switchFlag})"
    elif type_name == "DOOR_CHECKABLE":
        unused_mask &= ~0b0011_1111
        textIdMinux0x0200 = bits(params, 0, 6)
        params_str = f"ENDOOR_PARAMS_CHECKABLE({cbool(isDoubleDoor)}, {textIdMinux0x0200})"
    elif type_name == "DOOR_EVENING":
        unused_mask &= ~0b0011_1111
        textIdMinux0x0200 = bits(params, 0, 6)
        params_str = f"ENDOOR_PARAMS_EVENING({cbool(isDoubleDoor)}, {textIdMinux0x0200})"
    else:
        unused_mask &= ~0b0011_1111
        data = bits(params, 0, 6)
        assert data == 0x3F
        params_str = f"ENDOOR_PARAMS_NODATA({type_name}, {cbool(isDoubleDoor)})"
    assert (params & unused_mask) == 0, (f"{params:#06X}", params_str)
    return params_str


PARAMS_FMT = {
    "ACTOR_EN_DOOR": params_en_door,
}

INCLUDES = {
    "ACTOR_EN_DOOR": ["src/overlays/actors/ovl_En_Door/z_en_door.h"],
}
