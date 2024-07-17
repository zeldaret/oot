#!/usr/bin/env python3

# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
from pathlib import Path
import dataclasses
import time
import multiprocessing
import multiprocessing.pool

import crunch64

import dmadata


def align(v: int):
    v += 0xF
    return v // 0x10 * 0x10


@dataclasses.dataclass
class RomSegment:
    vrom_start: int
    vrom_end: int
    is_compressed: bool
    is_syms: bool
    data: memoryview | None
    data_async: multiprocessing.pool.AsyncResult | None

    @property
    def uncompressed_size(self):
        return self.vrom_end - self.vrom_start


# Make interrupting the compression with ^C less jank
# https://stackoverflow.com/questions/72967793/keyboardinterrupt-with-python-multiprocessing-pool
def set_sigint_ignored():
    import signal

    signal.signal(signal.SIGINT, signal.SIG_IGN)


def compress_rom(
    rom_data: memoryview,
    dmadata_start: int,
    compress_entries_indices: set[int],
    n_threads: int = None,
):
    """
    rom_data: the uncompressed rom data
    dmadata_start: the offset in the rom where the dmadata starts
    compress_entries_indices: the indices in the dmadata of the segments that should be compressed
    n_threads: how many cores to use for compression
    """

    # Segments of the compressed rom (not all are compressed)
    compressed_rom_segments: list[RomSegment] = []

    dma_entries = dmadata.read_dmadata(rom_data, dmadata_start)
    # We sort the DMA entries by ROM start because `compress_entries_indices`
    # refers to indices in ROM order, but the uncompressed dmadata might not be
    # in ROM order.
    dma_entries.sort(key=lambda dma_entry: dma_entry.vrom_start)

    with multiprocessing.Pool(n_threads, initializer=set_sigint_ignored) as p:
        # Extract each segment from the input rom
        for entry_index, dma_entry in enumerate(dma_entries):
            segment_rom_start = dma_entry.rom_start
            segment_rom_end = dma_entry.rom_start + (
                dma_entry.vrom_end - dma_entry.vrom_start
            )
            segment_data_uncompressed = rom_data[segment_rom_start:segment_rom_end]

            is_compressed = entry_index in compress_entries_indices

            if is_compressed:
                segment_data = None
                segment_data_async = p.apply_async(
                    crunch64.yaz0.compress,
                    (bytes(segment_data_uncompressed),),
                )
            else:
                segment_data = segment_data_uncompressed
                segment_data_async = None

            compressed_rom_segments.append(
                RomSegment(
                    dma_entry.vrom_start,
                    dma_entry.vrom_end,
                    is_compressed,
                    dma_entry.is_syms(),
                    segment_data,
                    segment_data_async,
                )
            )

        # Wait on compression of all compressed segments
        waiting_on_segments = [
            segment for segment in compressed_rom_segments if segment.is_compressed
        ]
        total_uncompressed_size_of_data_to_compress = sum(
            segment.uncompressed_size for segment in waiting_on_segments
        )
        uncompressed_size_of_data_compressed_so_far = 0
        while waiting_on_segments:
            # Show progress
            progress = (
                uncompressed_size_of_data_compressed_so_far
                / total_uncompressed_size_of_data_to_compress
            )
            print(f"Compressing... {progress * 100:.1f}%", end="\r")

            # The segments for which the compression is not finished yet are
            # added to this list
            still_waiting_on_segments = []
            got_some_results = False
            for segment in waiting_on_segments:
                assert segment.data is None
                assert segment.data_async is not None

                try:
                    compressed_data = segment.data_async.get(0)
                except multiprocessing.TimeoutError:
                    # Compression not finished yet
                    still_waiting_on_segments.append(segment)
                else:
                    # Compression finished!
                    assert isinstance(compressed_data, bytes)
                    segment.data = memoryview(compressed_data)
                    uncompressed_size_of_data_compressed_so_far += (
                        segment.uncompressed_size
                    )
                    got_some_results = True
                    segment.data_async = None

            if not got_some_results and still_waiting_on_segments:
                # Nothing happened this wait iteration, idle a bit
                time.sleep(0.010)

            waiting_on_segments = still_waiting_on_segments

    print("Putting together the compressed rom...")

    # Put together the compressed rom
    compressed_rom_size = sum(
        align(len(segment.data)) for segment in compressed_rom_segments
    )
    pad_to_multiple_of = 8 * 2**20  # 8 MiB
    compressed_rom_size_padded = (
        (compressed_rom_size + pad_to_multiple_of - 1)
        // pad_to_multiple_of
        * pad_to_multiple_of
    )
    compressed_rom_data = memoryview(bytearray(compressed_rom_size_padded))
    compressed_rom_dma_entries: list[dmadata.DmaEntry] = []
    rom_offset = 0
    for segment in compressed_rom_segments:
        assert segment.data is not None

        segment_rom_start = rom_offset
        segment_rom_end = align(segment_rom_start + len(segment.data))

        i = segment_rom_start + len(segment.data)
        assert i <= len(compressed_rom_data)
        compressed_rom_data[segment_rom_start:i] = segment.data

        rom_offset = segment_rom_end

        if segment.is_syms:
            segment_rom_start = 0xFFFFFFFF
            segment_rom_end = 0xFFFFFFFF
        elif not segment.is_compressed:
            segment_rom_end = 0

        compressed_rom_dma_entries.append(
            dmadata.DmaEntry(
                segment.vrom_start,
                segment.vrom_end,
                segment_rom_start,
                segment_rom_end,
            )
        )

    assert rom_offset == compressed_rom_size
    # Pad the compressed rom with the pattern matching the baseroms
    for i in range(compressed_rom_size, compressed_rom_size_padded):
        compressed_rom_data[i] = i % 256

    # Write the new dmadata
    offset = dmadata_start
    for dma_entry in compressed_rom_dma_entries:
        dma_entry.to_bin(compressed_rom_data[offset:])
        offset += dmadata.DmaEntry.SIZE_BYTES

    return compressed_rom_data


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--in",
        dest="in_rom",
        required=True,
        help="path to an uncompressed rom to be compressed",
    )
    parser.add_argument(
        "--out",
        dest="out_rom",
        required=True,
        help="path of the compressed rom to write out",
    )
    parser.add_argument(
        "--dmadata-start",
        dest="dmadata_start",
        type=lambda s: int(s, 16),
        required=True,
        help=(
            "The dmadata location in the rom, as a hexadecimal offset (e.g. 0x12f70)."
        ),
    )
    parser.add_argument(
        "--compress",
        dest="compress_ranges",
        required=True,
        help=(
            "The indices in the dmadata of the entries to be compressed,"
            " where 0 is the first entry."
            " It is a comma-separated list of individual indices and inclusive ranges."
            " e.g. '0-1,3,5,6-9' is all indices from 0 to 9 (included) except 2 and 4."
        ),
    )
    parser.add_argument(
        "--threads",
        dest="n_threads",
        type=int,
        default=1,
        help="how many cores to use for parallel compression",
    )
    args = parser.parse_args()

    in_rom_p = Path(args.in_rom)
    if not in_rom_p.exists():
        parser.error(f"Input rom file {in_rom_p} doesn't exist.")

    out_rom_p = Path(args.out_rom)

    dmadata_start = args.dmadata_start

    compress_ranges_str: str = args.compress_ranges
    compress_entries_indices = set()
    for compress_range_str in compress_ranges_str.split(","):
        compress_range_ends_str = compress_range_str.split("-")
        assert len(compress_range_ends_str) <= 2, (
            compress_range_ends_str,
            compress_range_str,
            compress_ranges_str,
        )
        compress_range_ends = [int(v_str) for v_str in compress_range_ends_str]
        if len(compress_range_ends) == 1:
            compress_entries_indices.add(compress_range_ends[0])
        else:
            assert len(compress_range_ends) == 2
            compress_range_first, compress_range_last = compress_range_ends
            compress_entries_indices.update(
                range(compress_range_first, compress_range_last + 1)
            )

    n_threads = args.n_threads

    in_rom_data = in_rom_p.read_bytes()
    out_rom_data = compress_rom(
        memoryview(in_rom_data),
        dmadata_start,
        compress_entries_indices,
        n_threads,
    )
    out_rom_p.write_bytes(out_rom_data)


if __name__ == "__main__":
    main()
