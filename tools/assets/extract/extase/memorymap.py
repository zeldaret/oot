from __future__ import annotations
from dataclasses import dataclass

from typing import Callable, TypeVar, Generic

from . import Resource, File, GetResourceAtResult


# when failing to resolve an address,
# (try to) keep going by creating "fake" files/resources
# or defaulting to poor choices (e.g. raw addresses)
BEST_EFFORT = True
if BEST_EFFORT:
    VERBOSE_BEST_EFFORT = False


# RangeMap

RangeMapValueT = TypeVar("RangeMapValueT")


class RangeMap(Generic[RangeMapValueT]):
    def __init__(self):
        self.values_by_range: dict[tuple[int, int], RangeMapValueT] = dict()

    def set(self, range_start: int, range_end: int, value: RangeMapValueT):
        assert range_start < range_end
        current_values_in_range = self.get_all_in_range(range_start, range_end)
        if current_values_in_range:
            raise Exception(
                "Range already used (at least partially)",
                hex(range_start),
                hex(range_end),
                current_values_in_range,
            )
        self.values_by_range[(range_start, range_end)] = value

    def get_all_by_predicate(self, predicate: Callable[[int, int], bool]):
        """Return all values associated to a range for which the predicate returns True"""
        values: dict[tuple[int, int], RangeMapValueT] = dict()
        for ((range_start, range_end), value) in self.values_by_range.items():
            if predicate(range_start, range_end):
                values[(range_start, range_end)] = value
        return values

    def get_all_in_range(self, range_start: int, range_end: int):
        """Return all values associated to a range intersecting with the given range"""
        assert range_start < range_end

        def check_intersect(value_range_start, value_range_end):
            assert value_range_start < value_range_end
            if range_end <= value_range_start:
                return False
            if value_range_end <= range_start:
                return False
            return True

        return self.get_all_by_predicate(check_intersect)

    def get(self, offset) -> RangeMapValueT:
        """Return the value associated to the range the given offset is in,
        if any, or raise IndexError"""

        def check_belong(value_range_start, value_range_end):
            assert value_range_start < value_range_end
            return value_range_start <= offset < value_range_end

        values = self.get_all_by_predicate(check_belong)
        assert len(values) <= 1, values
        if values:
            return next(iter(values.values()))
        else:
            raise IndexError(offset)

    def copy(self):
        """Returns a shallow copy"""
        other = RangeMap()
        other.values_by_range = self.values_by_range.copy()
        return other


class NoResourceError(Exception):
    """There is no resource at the requested address"""

    pass


class UnexpectedResourceTypeError(Exception):
    """There is a resource at the requested address, but of the wrong type"""

    pass


class UnmappedAddressError(Exception):
    """Indicates an address could not be resolved because nothing was found for the address."""

    pass


AttributeValueT = TypeVar("AttributeValueT")


@dataclass(frozen=True)
class Attribute(Generic[AttributeValueT]):
    name: str  # Uniquely identifies the attribute
    value_type: type[AttributeValueT]

    def __eq__(self, other):
        if isinstance(other, Attribute):
            return self.name == other.name
        else:
            return False

    def __hash__(self):
        return hash(self.name)


class Attributes:
    c_reference = Attribute("c_reference", str)
    c_expression_length = Attribute("c_expression_length", str)


ResourceT = TypeVar("ResourceT", bound="Resource")


class AddressResolveResult:
    def __init__(self, original_address: int, file: File, file_offset: int):
        self.original_address = original_address
        """Original address that was resolved to this result (for debugging purposes)"""

        self.file = file
        self.file_offset = file_offset

    def get_resource(self, resource_type: type[ResourceT]) -> ResourceT:
        result, resource = self.file.get_resource_at(self.file_offset)
        if result != GetResourceAtResult.DEFINITIVE:
            raise NoResourceError("No definitive resource", result)
        assert resource is not None
        if resource.range_start != self.file_offset:
            raise NoResourceError(
                "No resource at (exactly) the requested address", resource
            )
        if not isinstance(resource, resource_type):
            raise UnexpectedResourceTypeError(resource, resource_type)
        return resource

    def get_attribute(self, attribute: Attribute[AttributeValueT]) -> AttributeValueT:
        result, resource = self.file.get_resource_at(self.file_offset)

        if result != GetResourceAtResult.DEFINITIVE:
            raise Exception("No definitive resource", result)
        assert resource is not None

        resource_offset = self.file_offset - resource.range_start

        if attribute == Attributes.c_reference:
            value = resource.get_c_reference(resource_offset)
        elif attribute == Attributes.c_expression_length:
            value = resource.get_c_expression_length(resource_offset)
        else:
            raise NotImplementedError(attribute)

        if not isinstance(value, attribute.value_type):
            raise Exception(
                "Resource gave an attribute value of unexpected type",
                resource,
                attribute,
                value,
                type(value),
            )

        return value

    def __repr__(self):
        return (
            "AddressResolveResult("
            f"original_address=0x{self.original_address:08X}, "
            f"file_name={self.file.name!r}, "
            f"file_offset=0x{self.file_offset:X})"
        )


def address_resolver(original_address, address_offset):
    return AddressResolveResult(original_address)


AddressResolver = Callable[[int, int], AddressResolveResult]


class MemoryMap:
    def __init__(self):
        self.direct = RangeMap[AddressResolver]()
        self.segments: dict[int, RangeMap[AddressResolver]] = {
            segment_num: RangeMap[AddressResolver]() for segment_num in range(1, 16)
        }

    def copy(self):
        """Returns a copy that is independently mutable

        (only the mappings are copied, the underlying AddressResolver s are the same)
        """
        other = MemoryMap()
        other.direct = self.direct.copy()
        other.segments = {
            segment_num: segment_range_map.copy()
            for segment_num, segment_range_map in self.segments.items()
        }
        return other


def get_segment_num(address: int):
    return (address & 0x0F00_0000) >> 24


class MemoryContext:
    """
    handles segmented addresses, pointers, external symbols (eg gMtxClear)

    maps offsets to data
    """

    def __init__(self):
        self.memory_map = MemoryMap()

        # FIXME HACK
        # TODO config for this
        from ..extase_oot64.dlist_resources import MtxResource

        file_gMtxClear = File("sys_matrix__gMtxClear", size=0x40)
        resource_gMtxClear = MtxResource(file_gMtxClear, 0, "gMtxClear")
        file_gMtxClear.add_resource(resource_gMtxClear)
        self.set_direct_file(0x12DB20, file_gMtxClear)

    def copy(self):
        other = MemoryContext()
        other.memory_map = self.memory_map.copy()
        return other

    def _direct_address_to_offset(self, address: int):
        segment_num = get_segment_num(address)
        if segment_num != 0:
            raise ValueError("Address is segmented, not direct", hex(address))
        # The 0xF000_0000 bits are ignored. Not 100% correct but simplest
        offset = address & 0x00FF_FFFF
        return offset

    def set_direct_file(self, address: int, target_file: File):
        direct_file_offset_start = self._direct_address_to_offset(address)
        direct_file_offset_end = direct_file_offset_start + target_file.size

        def file_direct_address_resolver(original_address, address_offset):
            file_offset = address_offset - direct_file_offset_start
            return AddressResolveResult(original_address, target_file, file_offset)

        # TODO should memory_map members be directly accessed,
        # or should MemoryMap have functions (applies elsewhere in MemoryContext)
        self.memory_map.direct.set(
            direct_file_offset_start,
            direct_file_offset_end,
            file_direct_address_resolver,
        )

    def set_segment_file(self, segment_num: int, target_file: File):
        if not (1 <= segment_num < 16):
            raise ValueError(
                "Segment number must be between 1 and 15 (inclusive)", segment_num
            )

        def file_segment_address_resolver(original_address, address_offset):
            file_offset = address_offset
            return AddressResolveResult(original_address, target_file, file_offset)

        self.memory_map.segments[segment_num].set(
            0, 0x0100_0000, file_segment_address_resolver
        )

    def resolve_direct(self, address: int):
        offset = self._direct_address_to_offset(address)
        try:
            address_resolver = self.memory_map.direct.get(offset)
        except IndexError as e:
            raise UnmappedAddressError(
                "direct address is not mapped", hex(address)
            ) from e
        return address_resolver(address, offset)

    def resolve_segmented(self, address: int):
        segment_num = get_segment_num(address)
        if segment_num == 0:
            return self.resolve_direct(address)
        else:
            assert address & 0xF000_0000 == 0
            offset = address & 0x00FF_FFFF
            try:
                address_resolver = self.memory_map.segments[segment_num].get(offset)
            except IndexError as e:
                raise UnmappedAddressError(
                    "segment address is not mapped", hex(address)
                ) from e
            return address_resolver(address, offset)

    def report_resource_at_segmented(
        self,
        reporter: Resource,
        address: int,
        resource_type: type[ResourceT],
        new_resource_pointed_to: Callable[[File, int], ResourceT],
    ) -> ResourceT:
        try:
            resolve_result = self.resolve_segmented(address)
        except UnmappedAddressError as e:
            if BEST_EFFORT:
                fake_file = File(f"besteffort_fakefile_{address:08X}", size=0x0100_0000)
                fake_resource = new_resource_pointed_to(fake_file, 0)
                fake_resource.reporters.add(reporter)
                fake_file.add_resource(fake_resource)
                if VERBOSE_BEST_EFFORT:
                    print(
                        "BEST_EFFORT: ignored error e=",
                        repr(e),
                        "on resource report by reporter=",
                        reporter,
                        "at address=",
                        hex(address),
                        "and created fake_file=",
                        fake_file,
                        "and fake_resource=",
                        fake_resource,
                    )
                fake_file.FAKE_FOR_BEST_EFFORT = True
                fake_resource.FAKE_FOR_BEST_EFFORT = True
                return fake_resource
            raise
        try:
            resource = resolve_result.get_resource(resource_type)
        except NoResourceError:
            resource = None
        except UnexpectedResourceTypeError:
            print("Could not resolve segment address for reporting", resolve_result)
            raise
        else:
            assert resource is not None
        if resource is None:
            resource = new_resource_pointed_to(
                resolve_result.file,
                resolve_result.file_offset,
            )
            resolve_result.file.add_resource(resource)
        resource.reporters.add(reporter)
        return resource

    def mark_resource_buffer_at_segmented(
        self,
        reporter: Resource,
        resource_type: type[Resource],
        name: str,
        address_start: int,
        address_end: int,
    ):
        # Note: this function assumes the whole address_start-address_end range resolves the same way.
        # It not being the case would be very weird, but it's not checked here
        try:
            resolve_result = self.resolve_segmented(address_start)
        except UnmappedAddressError as e:
            if BEST_EFFORT:
                if VERBOSE_BEST_EFFORT:
                    print(
                        "BEST_EFFORT: ignored error e=",
                        repr(e),
                        "and skipping marking resource buffer for reporter=",
                        reporter,
                        "resource_type=",
                        resource_type,
                        "address_start=",
                        hex(address_start),
                        "address_end=",
                        hex(address_end),
                    )
                return
            raise
        file_start = resolve_result.file_offset
        file_end = file_start + address_end - address_start
        resolve_result.file.mark_resource_buffer(
            reporter, resource_type, name, file_start, file_end
        )

    def get_attribute_at_segmented(
        self, address: int, attribute: Attribute[AttributeValueT]
    ):
        return self.resolve_segmented(address).get_attribute(attribute)

    def get_c_reference_at_segmented(self, address: int):
        try:
            return self.get_attribute_at_segmented(address, Attributes.c_reference)
        except UnmappedAddressError as e:
            if BEST_EFFORT:
                if VERBOSE_BEST_EFFORT:
                    print(
                        "BEST_EFFORT: ignored error e=",
                        repr(e),
                        "and returning raw address =",
                        f"0x{address:08X}",
                    )
                return f"0x{address:08X}"
            raise

    def get_c_expression_length_at_segmented(self, address: int):
        return self.get_attribute_at_segmented(address, Attributes.c_expression_length)
