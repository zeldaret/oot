# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from pathlib import Path
import abc
from dataclasses import dataclass
import enum
import reprlib

import io
from typing import TYPE_CHECKING, Sequence, Optional, Union, Any, Iterable

from pprint import pprint

if TYPE_CHECKING:
    from .memorymap import MemoryContext


# 0: nothing, 1: in progress & waiting, 2: all
VERBOSE_FILE_TRY_PARSE_DATA = 0
VERBOSE_REPORT_RESBUF = False

DUMP_REPORTERS_IN_SOURCE = False
DUMP_XML_IN_SOURCE = False

DONT_MERGE_RESOURCE_BUFFERS_FROM_DIFFERENT_USERS = False

#
# file
#

# sentinel value
RESOURCE_PARSE_SUCCESS = object()


class ResourceParseException(Exception):
    pass


class ResourceParseWaiting(ResourceParseException):
    """Resource has nothing to do and can't be parsed yet, try again later.

    For example, another resource may need to be parsed first.

    If all resources fail to parse in this way, it means parsing has come to a deadlock.
    """

    def __init__(self, *args, waiting_for: list[Any]):
        """
        waiting_for should be a non-empty list of things the resource is currently waiting for.
        (one item per meaningful thing that is waited for)
        It is only meant for informational purpose (such as debugging).
        It may contain more than the strict minimum the resource needs to make some progress,
        and less than everything the resource needs to be fully parsed.
        """
        assert waiting_for
        super().__init__(*args, waiting_for)
        self.waiting_for = waiting_for


class ResourceParseInProgress(ResourceParseException):
    """Resource can't be parsed yet, try again later.
    But there was progress (as opposed to ResourceParseWaiting indicating no progress).

    "Progress" includes:
    - other resources were reported
    - information was passed to or made available to other resources
    - data was partially parsed
    """

    def __init__(self, *args, new_progress_done: list[Any], waiting_for: list[Any]):
        """
        new_progress_done, waiting_for: see ResourceParseWaiting.__init__
        """
        assert new_progress_done and waiting_for
        super().__init__(*args, new_progress_done, waiting_for)
        self.new_progress_done = new_progress_done
        self.waiting_for = waiting_for


class ResourceParseImpossible(ResourceParseException):
    """Resource cannot be parsed, neither now nor later.

    For example, there is unexpected data or values that cannot be handled properly.
    """

    pass


class GetResourceAtResult(enum.Enum):
    DEFINITIVE = enum.auto()
    PERHAPS = enum.auto()
    NONE_YET = enum.auto()


@dataclass
class ResourceBufferMarker:
    name: str
    file_start: int
    file_end: int
    users: set["Resource"]


@dataclass
class ResourcesOverlapError(Exception):
    overlaps: list[tuple["Resource", "Resource"]]


class File:
    """A file is a collection of resources

    It typically corresponds to a rom file (segment) but doesn't have to
    It doesn't even need to correspond to the entirety of one or more .c files,
    it can be only a fraction

    It can also correspond to how some memory is laid out,
    for example what a segment "contains" in the context of a file or resource.
    """

    def __init__(
        self,
        name: str,
        *,
        data: Optional[memoryview] = None,
        size: Optional[int] = None,
        alignment: int = 8,
    ):
        self.name = name
        if data is None != size is None:
            raise Exception(
                "Exactly one of either data or size must be provided", data, size
            )
        if data is not None:
            self.data = data
            self.size = len(data)
        else:
            assert size is not None
            self.data = None
            self.size = size
        self.alignment = alignment
        self._resources: list[Resource] = []
        self._is_resources_sorted = True
        self.referenced_files: set[File] = set()
        self.resource_buffer_markers_by_resource_type: dict[
            type[Resource], list[ResourceBufferMarker]
        ] = dict()

    def add_resource(self, resource: "Resource"):
        assert resource is not None
        assert resource not in self._resources
        self._resources.append(resource)
        self._is_resources_sorted = False

    def extend_resources(self, resources: Sequence["Resource"]):
        self._resources.extend(resources)
        self._is_resources_sorted = False

    def sort_resources(self):
        self._resources.sort(key=lambda resource: resource.range_start)
        self._is_resources_sorted = True

    def get_resource_at(self, offset: int):
        if __debug__:
            # FIXME when resources overlap during parse, nothing catches that
            # (and nothing can really catch it because of the unk-size resources)
            # probably implement this check properly by finding all resources at the offset below,
            # hopefully there is at most one and do normal operation,
            # or if there are >=2 then error (or best_effort: pick the furthest resource?)
            self.sort_resources()
            self.check_overlapping_resources()
        assert offset < self.size

        # Resources may use a defined range with both start and end defined,
        # or a range that only has its start defined.

        # While looking for a resource with a defined range the request offset
        # belongs to, also keep track of the last resource that starts at or before
        # offset (note: that resource may or may not have an end range defined).
        last_resource_before_offset: Union[Resource, None] = None

        for resource in self._resources:

            if resource.range_start <= offset:
                if (
                    last_resource_before_offset is None
                    or last_resource_before_offset.range_start < resource.range_start
                ):
                    last_resource_before_offset = resource

            if resource.range_end is not None:
                # If the requested offset falls within a defined range, return that
                # resource with GetResourceAtResult.DEFINITIVE .
                if resource.range_start <= offset < resource.range_end:
                    return GetResourceAtResult.DEFINITIVE, resource

        # If the loop exits normally, without returning a defined range resource,
        # check if the last resource starting at or before the requested offset
        # (if any) has an undefined range.
        if (
            last_resource_before_offset is not None
            and last_resource_before_offset.range_end is None
        ):
            if last_resource_before_offset.range_start == offset:
                # Resources are always more than 0 bytes in size, so if the resource
                # starts exactly at the requested offset, then it is guaranteed to
                # cover (at least) that offset.
                return GetResourceAtResult.DEFINITIVE, last_resource_before_offset
            else:
                # Return it with GetResourceAtResult.PERHAPS , as it may extend up to
                # and beyond the requested offset (or not).
                return GetResourceAtResult.PERHAPS, last_resource_before_offset
        else:
            # No (potential) resource at that offset (currently).
            return GetResourceAtResult.NONE_YET, None

    def get_overlapping_resources(self):
        if not self._is_resources_sorted:
            raise Exception("sort resources first")

        overlaps: list[tuple[Resource, Resource]] = []

        for i in range(1, len(self._resources)):
            resource_a = self._resources[i - 1]

            if resource_a.range_end is not None:
                for j in range(i, len(self._resources)):
                    resource_b = self._resources[j]

                    # This should hold true, as resources are sorted
                    assert resource_a.range_start <= resource_b.range_start

                    if resource_a.range_end > resource_b.range_start:
                        overlaps.append((resource_a, resource_b))
                    else:
                        break
            else:
                for j in range(i, len(self._resources)):
                    resource_b = self._resources[j]

                    assert resource_a.range_start <= resource_b.range_start

                    if resource_a.range_start == resource_b.range_start:
                        overlaps.append((resource_a, resource_b))
                    else:
                        break

        return overlaps

    def check_overlapping_resources(self):
        try:
            overlaps = self.get_overlapping_resources()
            if overlaps:
                raise ResourcesOverlapError(overlaps)
        except:
            print(self.str_report())
            raise

    def get_non_parsed_resources(self):
        return [resource for resource in self._resources if not resource.is_data_parsed]

    def check_non_parsed_resources(self):
        try:
            resources_data_not_parsed = self.get_non_parsed_resources()
            if resources_data_not_parsed:
                print(len(resources_data_not_parsed), "resource(s) not parsed:")
                for resource in resources_data_not_parsed:
                    print(resource)
                    if hasattr(resource, "last_parse_waiting_e"):
                        print(
                            "  last_parse_waiting_e =",
                            repr(resource.last_parse_waiting_e),
                        )
                    else:
                        print("??? no last_parse_waiting_e ???")
                        print("then why has", resource.name, "not been parsed?")
                BEST_EFFORT = False  # TODO move
                if BEST_EFFORT:
                    print("BEST_EFFORT: removing non-parsed resources")
                    for resource in resources_data_not_parsed:
                        self._resources.remove(resource)
                        self.add_resource(
                            BinaryBlobResource(
                                self,
                                resource.range_start,
                                (
                                    resource.range_end
                                    if resource.range_end is not None
                                    else (
                                        resource.range_start
                                        + 4  # TODO 4 if I_D_OMEGALUL else 1
                                    )
                                ),
                                f"{resource.name}_bin_placeholder",
                            )
                        )
                    return
                raise Exception(
                    "resources not parsed",
                    len(resources_data_not_parsed),
                    [(r.name, r.__class__) for r in resources_data_not_parsed],
                    resources_data_not_parsed,
                )
        except:
            print(self.str_report())
            raise

    def try_parse_resources_data(self, file_memory_context: "MemoryContext"):
        """Returns true if any progress was made between the method being called and the method returning."""
        any_progress = False

        while True:
            any_data_parsed = False

            # Parsing resources may add more, copy the list
            # to avoid concurrent modification while iterating
            resources_copy = self._resources.copy()

            for resource in resources_copy:
                if resource.is_data_parsed:
                    pass
                else:
                    resource.last_parse_waiting_e = None
                    resource_memory_context = file_memory_context  # TODO
                    try:
                        ret_try_parse_data = resource.try_parse_data(
                            resource_memory_context
                        )
                    except ResourceParseInProgress as e:
                        any_progress = True
                        if VERBOSE_FILE_TRY_PARSE_DATA >= 1:
                            pprint(
                                (
                                    "(in progress) Defering parsing",
                                    resource,
                                    "progress:",
                                    e.new_progress_done,
                                    "waiting:",
                                    e.waiting_for,
                                )
                            )
                    except ResourceParseWaiting as e:
                        if VERBOSE_FILE_TRY_PARSE_DATA >= 1:
                            pprint(
                                (
                                    "(waiting) Defering parsing",
                                    resource,
                                    "waiting:",
                                    e.waiting_for,
                                )
                            )
                        resource.last_parse_waiting_e = e
                    except (
                        ResourceParseException
                    ) as e:  # TODO ResourceParseImpossible ?
                        # TODO replace resource with binblob or something idk
                        print("Error while attempting to parse data", resource)
                        raise
                    except:
                        # TODO replace resource with binblob or something idk
                        print("Error while attempting to parse data", resource)
                        raise
                    else:
                        # Catch try_parse_data mistakenly returning successfully
                        # (instead of raising) by enforcing having it return a sentinel value
                        assert ret_try_parse_data is RESOURCE_PARSE_SUCCESS, (
                            "Resources should return RESOURCE_PARSE_SUCCESS when parsing is successful, "
                            "or raise ResourceParseInProgress/ResourceParseWaiting if parsing is unsuccessful",
                            resource,
                            resource.try_parse_data,
                        )

                        # resource parsed successfully
                        if VERBOSE_FILE_TRY_PARSE_DATA >= 2:
                            pprint(("(success) Done parsing", resource))
                        any_progress = True
                        assert resource.range_end is not None, (
                            resource,
                            resource.__class__,
                        )
                        resource.is_data_parsed = True
                        any_data_parsed = True

            any_resource_added = len(self._resources) != len(resources_copy)
            keep_looping = any_data_parsed or any_resource_added
            if not keep_looping:
                break

        return any_progress

    def mark_resource_buffer(
        self,
        reporter: "Resource",
        resource_type: type["Resource"],
        name: str,
        file_start: int,
        file_end: int,
    ):
        # Ignore markers falling within existing resources
        result, resource = self.get_resource_at(file_start)
        if result == GetResourceAtResult.DEFINITIVE:
            if resource.range_start <= file_start < file_end <= resource.range_end:
                assert isinstance(resource, resource_type)
                resource.reporters.add(reporter)
                return

        # Check for intersection with existing resources
        for resource in self._resources:
            # TODO and when resource.range_end is None ?
            if resource.range_end is not None and (
                resource.range_start <= file_start < resource.range_end
                or resource.range_start < file_end <= resource.range_end
            ):
                raise Exception(
                    f"Resource buffer {name=} of {resource_type=}"
                    f" to be marked at {file_start:#X}-{file_end:#X}"
                    f" intersects with existing {resource=}"
                )

        resource_buffer_markers = (
            self.resource_buffer_markers_by_resource_type.setdefault(resource_type, [])
        )
        resource_buffer_markers.append(
            ResourceBufferMarker(name, file_start, file_end, {reporter})
        )

        resource_buffer_markers.sort(key=lambda rbm: rbm.file_start)

        def do_fuse(i_start, i_end):
            assert i_start < i_end
            if i_start + 1 == i_end:
                return False
            fused = resource_buffer_markers[i_start:i_end]
            users = set()
            for rbm in fused:
                users.update(rbm.users)
            resource_buffer_markers[i_start:i_end] = [
                ResourceBufferMarker(
                    fused[0].name.removesuffix("_fused_") + "_fused_",  # TODO
                    min(map(lambda _f: _f.file_start, fused)),
                    max(map(lambda _f: _f.file_end, fused)),
                    users,
                )
            ]
            return True

        def fuse_more():
            stride_first_i = None
            for i, rbm in enumerate(resource_buffer_markers):
                if stride_first_i is None:
                    stride_first_i = i
                else:
                    assert i > 0
                    prev = resource_buffer_markers[i - 1]
                    if prev.file_end < rbm.file_start or (
                        DONT_MERGE_RESOURCE_BUFFERS_FROM_DIFFERENT_USERS
                        and prev.file_end == rbm.file_start
                        and prev.users != rbm.users
                    ):
                        # disjointed
                        if do_fuse(stride_first_i, i):
                            return True
                        stride_first_i = i
            if stride_first_i is not None:
                return do_fuse(stride_first_i, len(resource_buffer_markers))
            else:
                return False

        while fuse_more():
            pass

    def commit_resource_buffers(self):
        # TODO rework resource buffers handling
        # this won't play well with manually defined vtx arrays
        # probably can't merge the vbuf refs so quick
        for (
            resource_type,
            resource_buffer_markers,
        ) in self.resource_buffer_markers_by_resource_type.items():
            if VERBOSE_REPORT_RESBUF:
                print(resource_type, resource_buffer_markers)
            for rbm in resource_buffer_markers:
                result, resource = self.get_resource_at(rbm.file_start)
                assert (
                    result != GetResourceAtResult.PERHAPS
                ), "commit_resource_buffers should be called at a point where all resources have a definitive range"
                if result == GetResourceAtResult.NONE_YET:
                    resource = resource_type(
                        self, rbm.file_start, rbm.file_end, rbm.name
                    )
                    resource.reporters.update(rbm.users)
                    self.add_resource(resource)
                else:
                    assert result == GetResourceAtResult.DEFINITIVE
                    assert (
                        resource.range_start
                        <= rbm.file_start
                        < rbm.file_end
                        <= resource.range_end
                    ), (
                        "marked resource buffer overlaps with existing resource but also extends out of that resource",
                        hex(rbm.file_start),
                        hex(rbm.file_end),
                        rbm,
                        resource,
                    )

                    # TODO ? not really reporters but at least users, figure out reporters/users
                    resource.reporters.update(rbm.users)
        self.resource_buffer_markers_by_resource_type = dict()

    def add_unaccounted_resources(self, *, I_D_OMEGALUL: bool):
        assert self._is_resources_sorted
        assert self.data is not None

        unaccounted_resources: list[Resource] = []

        def add_unaccounted(range_start, range_end):
            if I_D_OMEGALUL:
                # IDO aligns every declaration to 4, so declaring zeros
                # that is actually padding for that purpose throws off matching.
                # This block strips such zeros from the unaccounted range.

                # Compute the amount of bytes from range_start to the
                # next multiple of 4.
                pad_bytes = (4 - range_start % 4) % 4
                if pad_bytes != 0:
                    pad_range_end = range_start + pad_bytes
                    assert pad_range_end <= range_end
                    pad_data = self.data[range_start:pad_range_end]
                    if set(pad_data) != {0}:
                        raise Exception(
                            "Expected pad bytes to be 0",
                            hex(range_start),
                            hex(pad_range_end),
                            set(pad_data),
                            bytes(pad_data),
                        )
                    pad_resource = ZeroPaddingResource(
                        self,
                        range_start,
                        pad_range_end,
                        f"{self.name}_zero_padding_{range_start:06X}",
                        include_in_source=False,
                    )
                    unaccounted_resources.append(pad_resource)
                    range_start += pad_bytes
                    if range_start == range_end:
                        # It turns out the whole unaccounted range is
                        # zero padding, so do nothing else
                        return
            assert range_start < range_end
            unaccounted_data = self.data[range_start:range_end]
            if set(unaccounted_data) == {0}:
                unaccounted_resource = ZeroPaddingResource(
                    self,
                    range_start,
                    range_end,
                    f"{self.name}_zeros_{range_start:06X}",
                )
            else:
                unaccounted_resource = BinaryBlobResource(
                    self,
                    range_start,
                    range_end,
                    f"{self.name}_unaccounted_{range_start:06X}",
                )
            unaccounted_resources.append(unaccounted_resource)

        if self._resources:
            # Add unaccounted if needed at the start of the file
            resource_first = self._resources[0]
            if resource_first.range_start > 0:
                add_unaccounted(
                    0,
                    resource_first.range_start,
                )

            # Add unaccounted if needed at the end of the file
            resource_last = self._resources[-1]
            if resource_last.range_end < len(self.data):
                add_unaccounted(
                    resource_last.range_end,
                    len(self.data),
                )
        else:
            # Add unaccounted for the whole file
            add_unaccounted(0, len(self.data))

        for i in range(1, len(self._resources)):
            resource_a = self._resources[i - 1]
            resource_b = self._resources[i]
            assert resource_a.range_end <= resource_b.range_start

            # Add unaccounted if needed between two successive resources
            if resource_a.range_end < resource_b.range_start:
                try:
                    add_unaccounted(
                        resource_a.range_end,
                        resource_b.range_start,
                    )
                except:
                    print(
                        "Could not add an unaccounted resource between the two resources:"
                    )
                    print(resource_a)
                    print(resource_b)
                    raise

        self.extend_resources(unaccounted_resources)

    def set_resources_paths(self, extracted_path, build_path, out_path):
        for resource in self._resources:
            resource.set_paths(extracted_path, build_path, out_path)

    def write_resources_extracted(self, file_memory_context: "MemoryContext"):
        for resource in self._resources:
            assert resource.is_data_parsed, resource
            resource_memory_context = file_memory_context  # TODO
            try:
                resource.extract_to_path.parent.mkdir(parents=True, exist_ok=True)
                resource.write_extracted(resource_memory_context)
            except:
                print("Couldn't write extracted resource", resource)
                raise

    # These two are set by calling set_source_path
    source_c_path: Path
    source_h_path: Path

    def set_source_path(self, source_path: Path):
        file_name = self.name

        # May catch random problems but not a hard requirement otherwise
        assert file_name and all(
            (c in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789")
            for c in file_name
        ), file_name

        self.source_file_name = file_name
        self.source_c_path = source_path / f"{file_name}.c"
        self.source_h_path = source_path / f"{file_name}.h"

    def write_source(self):
        assert hasattr(
            self, "source_c_path"
        ), "set_source_path must be called before write_source"
        assert hasattr(self, "source_h_path")
        self.source_c_path.parent.mkdir(parents=True, exist_ok=True)
        self.source_h_path.parent.mkdir(parents=True, exist_ok=True)
        with self.source_c_path.open("w") as c:
            with self.source_h_path.open("w") as h:

                # Paths to files to be included
                file_include_paths_complete: list[Path] = []
                file_include_paths_complete.append(self.source_h_path)
                for referenced_file in self.referenced_files:
                    assert isinstance(referenced_file, File), referenced_file
                    assert hasattr(referenced_file, "source_c_path"), (
                        "set_source_path must be called on all files before any write_source call",
                        referenced_file,
                    )
                    assert hasattr(referenced_file, "source_h_path")
                    file_include_paths_complete.append(referenced_file.source_h_path)

                # Same as file_include_paths_complete,
                # but paths that can be are made relative to the source C.
                file_include_paths: list[Path] = []
                for path_complete in file_include_paths_complete:
                    try:
                        path = path_complete.relative_to(self.source_c_path.parent)
                    except ValueError:
                        # Included path is not relative to this file's source C folder.
                        # Just use the complete path.
                        path = path_complete
                    file_include_paths.append(path)

                included_headers_in_c = set()
                included_headers_in_h = set()

                for resource in self._resources:
                    incls = resource.get_c_includes()
                    assert not isinstance(incls, str)
                    included_headers_in_c.update(incls)

                    incls = resource.get_h_includes()
                    assert not isinstance(incls, str)
                    included_headers_in_h.update(incls)

                for file_include_path in file_include_paths:
                    c.write(f'#include "{file_include_path}"\n')
                c.write("\n")
                c.writelines(
                    f'#include "{_h}"\n' for _h in sorted(included_headers_in_c)
                )
                c.write("\n")

                INCLUDE_GUARD = self.source_file_name.upper() + "_H"

                h.writelines(
                    (
                        f"#ifndef {INCLUDE_GUARD}\n",
                        f"#define {INCLUDE_GUARD}\n",
                        "\n",
                    )
                )
                h.writelines(
                    f'#include "{_h}"\n' for _h in sorted(included_headers_in_h)
                )
                h.write("\n")

                if not self._is_resources_sorted:
                    self.sort_resources()
                for resource in self._resources:

                    if resource.write_c_definition(c):
                        c.write("\n")

                    resource.write_c_declaration(h)

                h.writelines(
                    (
                        "\n",
                        "#endif\n",
                    )
                )

    def str_report(self):
        return "\n".join(
            f"0x{resource.range_start:06X}-"
            + (
                f"0x{resource.range_end:06X}"
                if resource.range_end is not None
                else "..."
            )
            + f" {resource.name}"
            for resource in self._resources
        )

    @reprlib.recursive_repr()
    def __repr__(self):
        return (
            self.__class__.__qualname__
            + f"({self.name!r}, data is None={self.data is None}, size={self.size}, {self._resources!r})"
        )

    def __rich_repr__(self):
        yield "name", self.name
        yield "data is None", self.data is None
        yield "size", self.size
        yield "resources", self._resources

    __rich_repr__.angular = True


#
# resources
#


class Resource(abc.ABC):
    """A resource is a blob of data inside a file.

    (at least for now,) one resource = one symbol

    Examples:
    - a struct-defined piece of data, such as a SkeletonHeader
    - an array of data, such as a display list Gfx[], or a texture u64[]
    """

    braces_in_source = True

    def __init_subclass__(cls, /, can_size_be_unknown=False, **kwargs):
        super().__init_subclass__(**kwargs)
        cls.can_size_be_unknown = can_size_be_unknown

    def __init__(
        self,
        file: File,
        range_start: int,
        range_end: Optional[int],
        name: str,
    ):
        assert (
            0 <= range_start < file.size
        ), f"{range_start=:#08X} out of range [0,{file.size=:#08X})"
        if range_end is None:
            assert self.can_size_be_unknown
        else:
            assert (
                range_start < range_end <= file.size
            ), f"{range_end=:#08X} out of range [{range_start=:#08X},{file.size=:#08X})"

        self.file = file

        self.range_start = range_start
        """Offset in the file data this resource starts at (inclusive)

        Example:
        range_start = 1 and range_end = 3
        means the resource is two bytes, the second and third bytes in the file
        """

        self.range_end = range_end
        """Offset in the file data this resource end at (exclusive)

        May be None if the resource size isn't known yet
        (only if can_size_be_unknown is True, see __init_subclass__)
        Must be set at the latest before try_parse_data returns normally (without raising)

        See range_start
        """

        self.name = name
        """Name of this resource, for logging/reporting.

        This member is NOT to be used as a C identifier, symbol name or file name.

        See also:
        - symbol_name
        - get_filename_stem
        """

        self.symbol_name = name
        """Name of the symbol to use to reference this resource"""

        self.is_data_parsed = False
        """Will be set to true when the resource is successfully parsed
        (after a successful try_parse_data call)
        """

        self.reporters: set[Resource] = set()
        """Collection of all the resources having reported this resource
        TODO figure out what to do with this, for now thinking debugging"""

    @abc.abstractmethod
    def try_parse_data(self, memory_context: "MemoryContext"):
        """Parse this resource's data bytes

        This can typically result in finding more resources,
        for example from pointer types.

        If data can't be parsed yet, ResourceParseInProgress or ResourceParseWaiting should be raised.
        Then this will be called again later.

        Raising other ResourceParseException s abandons parsing this resource.
        Other exceptions raised are not caught.

        Note this can both add found resources to the file,
        and wait before further parsing its own data (by raising ResourceParseInProgress).

        If data is successfully parsed, the method should return normally
        and RESOURCE_PARSE_SUCCESS should be returned.
        Then this will not be called again.
        """
        ...

    @abc.abstractmethod
    def get_c_reference(self, resource_offset: int) -> str:
        """Get a C expression for referencing data in this resource (as a pointer)

        The offset `resource_offset` is relative to the resource:
        0 means the start of the resource data,
        and NOT the start of the file the resource is in.

        Should raise `ValueError` if the `resource_offset` isn't meaningful.

        Examples:
        - `StructData data`, `get_c_reference(0)` -> `&data`
        - `u8 array[]`, `get_c_reference(0)` -> `&array[0]`
        - `u8 array[]`, `get_c_reference(6)` -> `&array[6]`
        - `u16 array[]`, `get_c_reference(6)` -> `&array[3]`
        - `u16 array[]`, `get_c_reference(1)` -> raises `ValueError`
        - `u64 texture[]`, `get_c_reference(0)` -> `texture`
        """
        ...

    def get_c_expression_length(self, resource_offset: int):
        """Get a C expression for referencing the length of data in this resource

        The offset `resource_offset` is relative to the resource, as in get_c_reference.

        Should raise `ValueError` if the `resource_offset` isn't meaningful.

        Examples:
        - `StructData data`, `get_c_expression_length(0)` -> raises `ValueError`
        - `u8 array[]`, `get_c_reference(0)` -> `ARRAY_COUNT(array)`
        - `u8 array[]`, `get_c_reference(1)` -> raises `ValueError`
        """
        # Override in children classes if needed
        raise ValueError(
            "This resource has no data with a length that can be referenced",
            self.__class__,
            self,
        )

    needs_build = False
    """Whether this resource needs processing by the build system.

    If False, it is extracted directly as .inc.c and included as is.

    See set_paths
    """

    extracted_path_suffix = ".inc.c"
    """The file extension for constructing the path to extract this resource to.

    See set_paths
    """

    def get_filename_stem(self):
        """Stem (name without suffix) for the file to write this resource to

        See set_paths
        """
        return self.name

    # These two are set by calling set_paths
    extract_to_path: Path
    inc_c_path: Path

    def set_paths(self, extracted_path: Path, build_path: Path, out_path: Path):
        """Compute and set `self.extract_to_path` and `self.inc_c_path`

        Examples with
        extracted_path: `extracted/VERSION/`
        build_path: `build/VERSION/`
        out_path: `assets/.../`

        Binary: extracted_path_suffix = ".bin"
        with get_filename_stem() = "blob"
            extract_to_path: `extracted/VERSION/assets/.../blob.bin`
            inc_c_path: `assets/.../blob.inc.c`

        C: extracted_path_suffix = ".inc.c"
        with get_filename_stem() = "data"
            extract_to_path: `extracted/VERSION/assets/.../data.inc.c`
            inc_c_path: `assets/.../data.inc.c`

        rgba16 image: extracted_path_suffix = ".png"
        with get_filename_stem() = "img.rgba16"
            extract_to_path: `extracted/VERSION/assets/.../img.rgba16.png`
            inc_c_path: `assets/.../img.rgba16.inc.c`
        """

        filename_stem = self.get_filename_stem()

        extract_to_path = (
            extracted_path / out_path / (filename_stem + self.extracted_path_suffix)
        )

        if not self.needs_build:
            assert self.extracted_path_suffix == ".inc.c"
        inc_c_path = out_path / (filename_stem + ".inc.c")

        self.extract_to_path = extract_to_path
        self.inc_c_path = inc_c_path

    def get_c_includes(self) -> Iterable[str]:
        return ()

    def get_h_includes(self) -> Iterable[str]:
        return ()

    @abc.abstractmethod
    def write_extracted(self, memory_context: "MemoryContext") -> None:
        """Write the extracted resource data to self.extract_to_path"""
        ...

    @abc.abstractmethod
    def get_c_declaration_base(self) -> str:
        """Get the base source for declaring this resource's symbol in C.

        For example:
        - "u8 blob[]", `return f"u8 {self.symbol_name}[]"`
        - "DataStruct data", `return f"DataStruct {self.symbol_name}"`
        """
        ...

    def get_as_xml(self) -> str:
        raise NotImplementedError()

    def write_c_definition(self, c: io.TextIOBase) -> bool:
        """
        Returns True if something was written
        """

        if DUMP_REPORTERS_IN_SOURCE:
            c.write(f"//R: {' '.join(_r.name for _r in self.reporters)}\n")
        if DUMP_XML_IN_SOURCE:
            try:
                xml = self.get_as_xml()
            except NotImplementedError:
                pass
            else:
                c.write("/*\n")
                c.write(xml)
                c.write("\n")
                c.write("*/\n")

        if hasattr(self, "HACK_IS_STATIC_ON"):
            c.write("static ")
        c.write(self.get_c_declaration_base())
        if self.braces_in_source:
            c.write(" = {\n")
        else:
            c.write(" =\n")

        c.write(f'#include "{self.inc_c_path}"\n')
        if self.braces_in_source:
            c.write("};\n")
        else:
            c.write(";\n")

        return True

    def write_c_declaration(self, h: io.TextIOBase) -> None:

        if hasattr(self, "HACK_IS_STATIC_ON"):
            h.write("static ")
        else:
            h.write("extern ")
        h.write(self.get_c_declaration_base())
        h.write(";\n")

    @reprlib.recursive_repr()
    def __repr__(self):
        return (
            self.__class__.__qualname__
            + "("
            + ", ".join(
                (
                    repr(self.name),
                    (
                        f"0x{self.range_start:08X}-"
                        + (
                            f"0x{self.range_end:08X}"
                            if self.range_end is not None
                            else "..."
                        )
                    ),
                    f"file.name={self.file.name!r}",
                )
            )
            + ")"
        )

    def __rich_repr__(self):
        yield self.name
        yield (
            f"0x{self.range_start:08X}-"
            + (f"0x{self.range_end:08X}" if self.range_end is not None else "...")
        )
        yield "file.name", self.file.name

    __rich_repr__.angular = True


class ZeroPaddingResource(Resource):
    def __init__(
        self,
        file: File,
        range_start: int,
        range_end: int,
        name: str,
        *,
        include_in_source=True,
    ):
        # TODO move to try_parse_data ?
        assert set(file.data[range_start:range_end]) == {0}
        super().__init__(file, range_start, range_end, name)
        self.include_in_source = include_in_source

    def try_parse_data(self, memory_context):
        # Nothing specific to do
        return RESOURCE_PARSE_SUCCESS

    def get_c_reference(self, resource_offset):
        raise ValueError("Referencing zero padding should not happen")

    def get_c_includes(self):
        return ("ultra64.h",)

    def write_extracted(self, memory_context):
        # No need to extract zeros
        pass

    def get_c_declaration_base(self):
        length_bytes = self.range_end - self.range_start
        assert length_bytes > 0
        return f"u8 {self.symbol_name}[{length_bytes}]"

    def write_c_definition(self, c: io.TextIOBase):
        if self.include_in_source:
            c.write(self.get_c_declaration_base())
            c.write(" = { 0 };\n")
            return True
        else:
            return False

    def write_c_declaration(self, h: io.TextIOBase):
        # No need to declare zeros
        pass


class BinaryBlobResource(Resource):
    needs_build = True
    extracted_path_suffix = ""

    def try_parse_data(self, memory_context):
        # Nothing specific to do
        return RESOURCE_PARSE_SUCCESS

    def get_as_xml(self):
        return f"""\
        <Blob Name="{self.symbol_name}" Size="0x{self.range_end - self.range_start:X}" Offset="0x{self.range_start:X}"/>"""

    def get_c_reference(self, resource_offset):
        return f"&{self.symbol_name}[{resource_offset}]"

    def get_filename_stem(self):
        return super().get_filename_stem() + ".bin"

    def get_h_includes(self):
        return ("ultra64.h",)

    def write_extracted(self, memory_context):
        data = self.file.data[self.range_start : self.range_end]
        assert len(data) == self.range_end - self.range_start
        self.extract_to_path.write_bytes(data)

    def get_c_declaration_base(self):
        return f"u8 {self.symbol_name}[]"

    def get_c_expression_length(self, resource_offset: int):
        raise Exception(
            "A binary blob resource could support returning a C expression for its length, "
            "but it would be error-prone due to the 'anything goes' nature of binary blobs. "
            "Make a dedicated resource instead"
        )
