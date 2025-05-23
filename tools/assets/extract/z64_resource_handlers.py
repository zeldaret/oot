# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import Callable

from ..descriptor.base import ResourceDesc
from ..descriptor import n64resources
from ..descriptor import z64resources

from .extase import (
    File,
    Resource,
    BinaryBlobResource,
)
from .extase.cdata_resources import Vec3sArrayResource, S16ArrayResource

from .extase_oot64 import (
    skeleton_resources,
    skeleton_skin_resources,
    animation_resources,
    collision_resources,
    dlist_resources,
    playeranim_resources,
    skelcurve_resources,
    misc_resources,
    scene_rooms_resources,
    scene_commands_resource,
    skelanime_legacy_resources,
    room_shape_resources,
)


#
# resource handlers
#


class ResourceHandlerException(Exception): ...


class ResourceNeedsPostProcessWithPoolResourcesException(ResourceHandlerException):
    def __init__(
        self,
        *args,
        resource: Resource,
        callback: Callable[[dict[ResourceDesc, Resource]], None],
    ):
        super().__init__(*args)
        self.resource = resource
        self.callback = callback

    def __repr__(self) -> str:
        return (
            super().__repr__().removesuffix(")")
            + f", resource={self.resource!r}"
            + f", callback={self.callback!r})"
        )


ResourceHandler = Callable[[File, ResourceDesc], Resource]


def register_resource_handlers():

    def skeleton_resource_handler(
        file: File,
        resource_desc: z64resources.SkeletonResourceDesc,
    ):
        offset = resource_desc.offset
        if resource_desc.limb_type == z64resources.LimbType.STANDARD:
            if resource_desc.type == z64resources.SkeletonType.NORMAL:
                res = skeleton_resources.SkeletonNormalResource(
                    file,
                    offset,
                    resource_desc.symbol_name,
                )
            elif resource_desc.type == z64resources.SkeletonType.FLEX:
                res = skeleton_resources.SkeletonFlexResource(
                    file,
                    offset,
                    resource_desc.symbol_name,
                )
            else:
                raise NotImplementedError(
                    "unimplemented SkeletonType",
                    resource_desc.type,
                )
        elif resource_desc.limb_type == z64resources.LimbType.LOD:
            if resource_desc.type == z64resources.SkeletonType.NORMAL:
                res = skeleton_resources.SkeletonNormalLODResource(
                    file, offset, resource_desc.symbol_name
                )
            elif resource_desc.type == z64resources.SkeletonType.FLEX:
                res = skeleton_resources.SkeletonFlexLODResource(
                    file, offset, resource_desc.symbol_name
                )
            else:
                raise NotImplementedError(
                    "LimbType=LOD",
                    "unimplemented SkeletonType",
                    resource_desc.type,
                )
        elif resource_desc.limb_type == z64resources.LimbType.SKIN:
            assert resource_desc.type == z64resources.SkeletonType.NORMAL
            res = skeleton_skin_resources.SkeletonSkinResource(
                file, offset, resource_desc.symbol_name
            )
        elif resource_desc.limb_type == z64resources.LimbType.CURVE:
            assert resource_desc.type == z64resources.SkeletonType.CURVE
            res = skelcurve_resources.CurveSkeletonHeaderResource(
                file, offset, resource_desc.symbol_name
            )
        else:
            raise NotImplementedError(
                "unimplemented Skeleton LimbType",
                resource_desc.limb_type,
            )
        # TODO check is this works for SkeletonSkinResource
        # TODO implement for CurveSkeletonHeaderResource
        if resource_desc.limb_enum_name is not None:
            res.set_enum_name(resource_desc.limb_enum_name)
        if resource_desc.limb_enum_none_member_name is not None:
            res.set_enum_member_name_none(resource_desc.limb_enum_none_member_name)
        if resource_desc.limb_enum_max_member_name is not None:
            res.set_enum_member_name_max(resource_desc.limb_enum_max_member_name)
        return res

    def limb_resource_handler(
        file: File,
        resource_desc: z64resources.LimbResourceDesc,
    ):
        offset = resource_desc.offset
        if resource_desc.limb_type == z64resources.LimbType.STANDARD:
            res = skeleton_resources.StandardLimbResource(
                file,
                offset,
                resource_desc.symbol_name,
            )
        elif resource_desc.limb_type == z64resources.LimbType.SKIN:
            res = skeleton_skin_resources.SkinLimbResource(
                file, offset, resource_desc.symbol_name
            )
        elif resource_desc.limb_type == z64resources.LimbType.LOD:
            res = skeleton_resources.LODLimbResource(
                file, offset, resource_desc.symbol_name
            )
        elif resource_desc.limb_type == z64resources.LimbType.LEGACY:
            return skelanime_legacy_resources.LegacyLimbResource(
                file, offset, resource_desc.symbol_name
            )
        elif resource_desc.limb_type == z64resources.LimbType.CURVE:
            res = skelcurve_resources.SkelCurveLimbResource(
                file, offset, resource_desc.symbol_name
            )
        else:
            raise NotImplementedError(
                "unimplemented LimbType",
                resource_desc.limb_type,
            )
        # TODO check this works for SkinLimbResource
        # TODO implement for SkelCurveLimbResource
        if resource_desc.limb_enum_member_name is not None:
            res.set_enum_member_name(resource_desc.limb_enum_member_name)
        return res

    def limb_table_handler(
        file: File,
        resource_desc: z64resources.LimbTableResourceDesc,
    ):
        if resource_desc.limb_type == z64resources.LimbType.STANDARD:
            resource = skeleton_resources.StandardLimbsArrayResource(
                file, resource_desc.offset, resource_desc.symbol_name
            )
            resource.set_length(resource_desc.count)
            return resource
        elif resource_desc.limb_type == z64resources.LimbType.SKIN:
            resource = skeleton_skin_resources.SkinLimbsArrayResource(
                file, resource_desc.offset, resource_desc.symbol_name
            )
            resource.set_length(resource_desc.count)
            return resource
        elif resource_desc.limb_type == z64resources.LimbType.LOD:
            resource = skeleton_resources.LODLimbsArrayResource(
                file, resource_desc.offset, resource_desc.symbol_name
            )
            resource.set_length(resource_desc.count)
            return resource
        elif resource_desc.limb_type == z64resources.LimbType.LEGACY:
            resource = skelanime_legacy_resources.LegacyLimbsArrayResource(
                file,
                resource_desc.offset,
                resource_desc.symbol_name,
            )
            resource.set_length(resource_desc.count)
            return resource
        else:
            raise NotImplementedError("LimbTable of limb type", resource_desc.limb_type)

    def animation_resource_handler(
        file: File,
        resource_desc: z64resources.AnimationResourceDesc,
    ):
        return animation_resources.AnimationResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
        )

    def collision_resource_handler(
        file: File,
        resource_desc: z64resources.CollisionResourceDesc,
    ):
        return collision_resources.CollisionResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
        )

    def dlist_resource_handler(
        file: File,
        resource_desc: n64resources.DListResourceDesc,
    ):
        res = dlist_resources.DListResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
            target_ucode={
                n64resources.GfxMicroCode.F3DEX: dlist_resources.Ucode.f3dex,
                n64resources.GfxMicroCode.F3DEX2: dlist_resources.Ucode.f3dex2,
            }[resource_desc.ucode],
        )
        res.ignored_raw_pointers |= resource_desc.raw_pointers
        return res

    def texture_resource_handler(
        file: File, resource_desc: n64resources.TextureResourceDesc
    ):
        res = dlist_resources.TextureResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
            resource_desc.format.fmt,
            resource_desc.format.siz,
            resource_desc.width,
            resource_desc.height,
        )
        if "hackmode_ignore_orphaned_tlut" in resource_desc.hack_modes:
            res.HACK_ignore_orphaned_tlut = True
        return res

    def ci_texture_resource_handler(
        file: File, resource_desc: n64resources.CITextureResourceDesc
    ):
        if (
            "hackmode_split_tlut_true" in resource_desc.hack_modes
            or "hackmode_split_tlut_false" in resource_desc.hack_modes
        ):
            resource = dlist_resources.TextureSplitTlutResource(
                file,
                resource_desc.offset,
                resource_desc.symbol_name,
                resource_desc.format.fmt,
                resource_desc.format.siz,
                resource_desc.width,
                resource_desc.height,
                "hackmode_split_tlut_false" in resource_desc.hack_modes,
            )
        else:
            resource = dlist_resources.TextureResource(
                file,
                resource_desc.offset,
                resource_desc.symbol_name,
                resource_desc.format.fmt,
                resource_desc.format.siz,
                resource_desc.width,
                resource_desc.height,
            )

        def callback_set_tlut(pool_resources_by_desc):
            resource_tlut_desc = resource_desc.tlut
            resource_tlut = pool_resources_by_desc[resource_tlut_desc]
            resource.set_tlut(resource_tlut)

        raise ResourceNeedsPostProcessWithPoolResourcesException(
            resource=resource, callback=callback_set_tlut
        )

    def PlayerAnimationData_handler(
        file: File,
        resource_desc: z64resources.PlayerAnimationDataResourceDesc,
    ):
        res = playeranim_resources.PlayerAnimationDataResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
        )
        res.set_frame_count(resource_desc.frame_count)
        return res

    def PlayerAnimation_handler(
        file: File,
        resource_desc: z64resources.PlayerAnimationResourceDesc,
    ):
        return playeranim_resources.PlayerAnimationResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
        )

    def vec3s_array_resource_handler(
        file: File,
        resource_desc: n64resources.Vec3sArrayResourceDesc,
    ):
        return Vec3sArrayResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
            resource_desc.count,
        )

    def s16_array_resource_handler(
        file: File,
        resource_desc: n64resources.S16ArrayResourceDesc,
    ):
        return S16ArrayResource(
            file,
            resource_desc.offset,
            resource_desc.symbol_name,
            resource_desc.count,
        )

    def vtx_array_resource_handler(
        file: File,
        resource_desc: n64resources.VtxArrayResourceDesc,
    ):
        return dlist_resources.VtxArrayResource(
            file,
            resource_desc.offset,
            (
                resource_desc.offset
                + (
                    resource_desc.count
                    * dlist_resources.VtxArrayResource.element_cdata_ext.size
                )
            ),
            resource_desc.symbol_name,
        )

    def binary_blob_resource_handler(
        file: File,
        resource_desc: n64resources.BlobResourceDesc,
    ):
        return BinaryBlobResource(
            file,
            resource_desc.offset,
            resource_desc.offset + resource_desc.size,
            resource_desc.symbol_name,
        )

    def CurveAnimation_handler(
        file: File,
        resource_desc: z64resources.CurveAnimationResourceDesc,
    ):
        # TODO use resource_desc.skeleton
        return skelcurve_resources.CurveAnimationHeaderResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    def Mtx_handler(
        file: File,
        resource_desc: n64resources.MtxResourceDesc,
    ):
        return dlist_resources.MtxResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    def cutscene_resource_handler(
        file: File,
        resource_desc: z64resources.CutsceneResourceDesc,
    ):
        return misc_resources.CutsceneResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    def scene_resource_handler(
        file: File,
        resource_desc: z64resources.SceneResourceDesc,
    ):
        return scene_commands_resource.SceneCommandsResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    def room_resource_handler(
        file: File,
        resource_desc: z64resources.RoomResourceDesc,
    ):
        if "hackmode_syotes_room" in resource_desc.hack_modes:
            return room_shape_resources.RoomShapeNormalResource(
                file,
                resource_desc.offset,
                resource_desc.symbol_name,
            )
        return scene_commands_resource.SceneCommandsResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    def path_list_resource_handler(
        file: File,
        resource_desc: z64resources.PathListResourceDesc,
    ):
        resource = scene_rooms_resources.PathListResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )
        resource.set_length(resource_desc.num_paths)
        return resource

    def legacy_animation_handler(
        file: File,
        resource_desc: z64resources.LegacyAnimationResourceDesc,
    ):
        return skelanime_legacy_resources.LegacyAnimationResource(
            file, resource_desc.offset, resource_desc.symbol_name
        )

    RESOURCE_HANDLERS.update(
        {
            z64resources.SkeletonResourceDesc: skeleton_resource_handler,
            z64resources.LimbResourceDesc: limb_resource_handler,
            z64resources.AnimationResourceDesc: animation_resource_handler,
            z64resources.CollisionResourceDesc: collision_resource_handler,
            n64resources.DListResourceDesc: dlist_resource_handler,
            n64resources.TextureResourceDesc: texture_resource_handler,
            n64resources.CITextureResourceDesc: ci_texture_resource_handler,
            z64resources.PlayerAnimationDataResourceDesc: PlayerAnimationData_handler,
            n64resources.Vec3sArrayResourceDesc: vec3s_array_resource_handler,
            n64resources.S16ArrayResourceDesc: s16_array_resource_handler,
            n64resources.VtxArrayResourceDesc: vtx_array_resource_handler,
            z64resources.PlayerAnimationResourceDesc: PlayerAnimation_handler,
            n64resources.BlobResourceDesc: binary_blob_resource_handler,
            n64resources.MtxResourceDesc: Mtx_handler,
            z64resources.LegacyAnimationResourceDesc: legacy_animation_handler,
            z64resources.LimbTableResourceDesc: limb_table_handler,
            z64resources.CurveAnimationResourceDesc: CurveAnimation_handler,
            z64resources.SceneResourceDesc: scene_resource_handler,
            z64resources.RoomResourceDesc: room_resource_handler,
            z64resources.PathListResourceDesc: path_list_resource_handler,
            z64resources.CutsceneResourceDesc: cutscene_resource_handler,
        }
    )


RESOURCE_HANDLERS: dict[str, ResourceHandler] = {}


def get_resource_from_desc(
    file: File,
    resource_desc: ResourceDesc,
) -> Resource:
    resource_handler = RESOURCE_HANDLERS.get(type(resource_desc))

    if resource_handler is None:
        raise Exception("Unknown resource descriptor type", resource_desc)

    try:
        resource = resource_handler(file, resource_desc)
    except ResourceHandlerException:
        raise

    return resource
