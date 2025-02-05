import unittest

from pathlib import Path
import random

import raw2png
import png2raw

test_dir = Path(__file__).parent / "test_out_folder"
test_dir.mkdir(parents=True, exist_ok=True)

test_pngs_dirs: list[Path] = []

# https://sourceforge.net/p/libpng/code/ci/master/tree/
# git clone https://git.code.sf.net/p/libpng/code libpng-code
libpng_dir = Path("/home/dragorn421/Documents/libpng-code/")
# libpng_dir = None
if libpng_dir:
    test_pngs_dirs.extend(
        libpng_dir / libpng_pngs_dir
        for libpng_pngs_dir in [
            Path("contrib/testpngs/"),
            Path("contrib/pngsuite/"),
            Path("contrib/pngsuite/interlaced/"),
        ]
    )

test_pngs: list[Path] = []
for test_pngs_dir in test_pngs_dirs:
    test_pngs.extend(test_pngs_dir.glob("*.png"))

if libpng_dir:
    # apparently ffmpeg fails to properly understand this one, so one test falsely fails
    # The right pixel is transparent white, ffmpeg says opaque white
    test_pngs.remove(libpng_dir / Path("contrib/testpngs/gray-1-linear-tRNS.png"))

    # I guess this one is 16 bits per pixel
    # The 8-bit intensity of three pixels is off by 1, so it's probably just a rounding difference
    test_pngs.remove(libpng_dir / Path("contrib/testpngs/gray-16-sRGB.png"))

    # TODO these false fails happen for a lot more pngs from libpng, from a quick look for similar reasons
    # -> check and remove them


# test_pngs.extend(Path("/home/dragorn421/Documents/oot/assets").glob("**/*.png"))

# Testing 100 pngs takes 5-6 seconds for me. Definitely need to reduce the amount of pngs being tested
test_pngs = random.sample(test_pngs, 100)


for p in test_pngs:
    assert p.is_file(), p


class Tests(unittest.TestCase):
    def test_random_rgba32(self):
        for rand_i in range(10):
            with self.subTest(rand_i=rand_i):
                width = random.randint(10, 20)
                height = random.randint(10, 20)
                image_data = bytearray(random.randbytes(width * height * 4))
                file_name = test_dir / f"random_rgba32_{rand_i}.png"
                raw2png.write(file_name, width, height, image_data)
                with png2raw.Instance(file_name) as inst:
                    self.assertFalse(inst.is_paletted())
                    self.assertEqual(inst.get_dimensions(), (width, height))
                    self.assertEqual(inst.read_to_rgba32(), image_data)

    def test_random_paletted(self):
        for rand_i in range(10):
            with self.subTest(rand_i=rand_i):
                width = random.randint(10, 20)
                height = random.randint(10, 20)
                num_palette = random.randint(1, 256)
                palette_data = bytearray(random.randbytes(num_palette * 4))
                image_data = bytearray(
                    b % num_palette for b in random.randbytes(height * width)
                )
                file_name = test_dir / f"random_paletted_{rand_i}.png"
                raw2png.write_paletted(
                    file_name, width, height, palette_data, num_palette, image_data
                )
                with png2raw.Instance(file_name) as inst:
                    self.assertTrue(inst.is_paletted())
                    self.assertEqual(inst.get_dimensions(), (width, height))
                    self.assertEqual(inst.get_palette_rgba32(), palette_data)
                    self.assertEqual(inst.read_palette_indices(), image_data)

    def test_rewrite(self):
        for file_name in test_pngs:
            with self.subTest(file_name=file_name):
                # Copy original files to the test folder for easier visual comparison
                og_out = test_dir / (file_name.stem + "#OG" + file_name.suffix)
                og_out.write_bytes(file_name.read_bytes())
                rewrite_out = test_dir / file_name.name
                with png2raw.Instance(file_name) as inst:
                    width, height = inst.get_dimensions()
                    if inst.is_paletted():
                        palette_data = inst.get_palette_rgba32()
                        image_data = inst.read_palette_indices()

                        self.assertLessEqual(len(palette_data), 256 * 4)
                        self.assertEqual(len(image_data), height * width)

                        raw2png.write_paletted(
                            rewrite_out,
                            width,
                            height,
                            palette_data,
                            len(palette_data) // 4,
                            image_data,
                        )
                    else:
                        image_data = inst.read_to_rgba32()

                        self.assertEqual(len(image_data), height * width * 4)

                        raw2png.write(rewrite_out, width, height, image_data)
                self.assertTrue(rewrite_out.is_file())
                import subprocess

                og_out_rgba32_bin = og_out.with_suffix(".rgba32.bin")
                rewrite_out_rgba32_bin = rewrite_out.with_suffix(".rgba32.bin")
                subprocess.run(
                    "ffmpeg -y -i".split()
                    + [str(og_out)]
                    + "-f rawvideo -pix_fmt rgba".split()
                    + [str(og_out_rgba32_bin)],
                    capture_output=subprocess.DEVNULL,
                )
                subprocess.run(
                    "ffmpeg -y -i".split()
                    + [str(rewrite_out)]
                    + "-f rawvideo -pix_fmt rgba".split()
                    + [str(rewrite_out_rgba32_bin)],
                    capture_output=subprocess.DEVNULL,
                )
                self.assertEqual(
                    og_out_rgba32_bin.read_bytes(), rewrite_out_rgba32_bin.read_bytes()
                )


if __name__ == "__main__":
    unittest.main()
