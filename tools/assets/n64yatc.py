# n64 yet another texture converter
# TODO replace with a C implementation


# FIXME use all tools as packages or idk
try:
    from .n64 import G_IM_FMT, G_IM_SIZ
except ImportError:
    from n64 import G_IM_FMT, G_IM_SIZ


def convert(
    data: bytes,
    from_fmt: G_IM_FMT,
    from_siz: G_IM_SIZ,
    to_fmt: G_IM_FMT,
    to_siz: G_IM_SIZ,
):
    if from_fmt == to_fmt == G_IM_FMT.CI:
        if from_siz == to_siz:
            return bytes(data)
        elif from_siz == G_IM_SIZ._4b and to_siz == G_IM_SIZ._8b:
            data_ci4 = data
            data_ci8 = bytearray(len(data_ci4) * 2)
            i = 0
            for d in data_ci4:
                data_ci8[i] = d >> 4
                i += 1
                data_ci8[i] = d & 0xF
                i += 1
            return data_ci8
        elif from_siz == G_IM_SIZ._8b and to_siz == G_IM_SIZ._4b:
            data_ci8 = data
            assert len(data_ci8) % 2 == 0
            data_ci4 = bytearray(len(data_ci8) // 2)
            i = 0
            while i < len(data_ci8):
                d1, d2 = data_ci8[i : i + 2]
                assert d1 < 16
                assert d2 < 16
                data_ci4[i // 2] = (d1 << 4) | d2
                i += 2
            return data_ci4
        else:
            raise NotImplementedError("ci", from_siz, to_siz)
    else:
        assert G_IM_FMT.CI not in (
            from_fmt,
            to_fmt,
        ), "Can't convert between a CI format and a non-CI format"
        assert (
            len(data) * 8 % from_siz.bpp == 0
        ), "data size is not a multiple of pixel size"
        n_pixels = len(data) * 8 // from_siz.bpp
        data_rgba32 = bytearray(4 * n_pixels)
        _i = [0]

        def push():
            i = _i[0]
            data_rgba32[4 * i : 4 * i + 4] = (r, g, b, a)
            i += 1
            _i[0] = i

        f = (from_fmt, from_siz)
        if f == (G_IM_FMT.RGBA, G_IM_SIZ._32b):
            data_rgba32[:] = data
        elif f == (G_IM_FMT.RGBA, G_IM_SIZ._16b):
            while (i := _i[0]) < n_pixels:
                d1, d2 = data[i * 2 : i * 2 + 2]

                r = (d1 & 0b1111_1000) >> 3
                g = ((d1 & 0b0000_0111) << 2) | ((d2 & 0b1100_0000) >> 6)
                b = (d2 & 0b0011_1110) >> 1
                a = d2 & 1

                r = (r << 3) | (r >> 2)
                g = (g << 3) | (g >> 2)
                b = (b << 3) | (b >> 2)
                a = a * 255
                push()
        elif f == (G_IM_FMT.IA, G_IM_SIZ._16b):
            while (i := _i[0]) < n_pixels:
                d1, d2 = data[i * 2 : i * 2 + 2]

                i = d1
                a = d2

                r = i
                g = i
                b = i
                a = a
                push()
        elif f == (G_IM_FMT.IA, G_IM_SIZ._8b):
            while (i := _i[0]) < n_pixels:
                d = data[i]

                i = d >> 4
                a = d & 0x0F

                i = (i << 4) | i
                a = (a << 4) | a

                r = i
                g = i
                b = i
                a = a
                push()
        elif f == (G_IM_FMT.IA, G_IM_SIZ._4b):
            while (i := _i[0]) < n_pixels:
                assert i % 2 == 0
                d = data[i // 2]
                for dh in (d >> 4, d & 0xF):
                    i = dh >> 1
                    a = dh & 1

                    i = (i << 5) | (i << 2) | (i >> 1)
                    a = a * 255

                    r = i
                    g = i
                    b = i
                    a = a
                    push()
        elif f == (G_IM_FMT.I, G_IM_SIZ._8b):
            while (i := _i[0]) < n_pixels:
                d = data[i]
                i = d

                r = i
                g = i
                b = i
                a = i
                push()
        elif f == (G_IM_FMT.I, G_IM_SIZ._4b):
            while (i := _i[0]) < n_pixels:
                assert i % 2 == 0
                d = data[i // 2]
                for dh in (d >> 4, d & 0xF):
                    i = dh

                    i = (i << 4) | i

                    r = i
                    g = i
                    b = i
                    a = i
                    push()
        else:
            raise NotImplementedError("from", from_fmt, from_siz)

        assert n_pixels * to_siz.bpp % 8 == 0
        data_to = bytearray(n_pixels * to_siz.bpp // 8)

        for i in range(n_pixels):
            r, g, b, a = data_rgba32[i * 4 : i * 4 + 4]
            y = round(sum((r, g, b)) / 3)  # bad but w/e
            t = (to_fmt, to_siz)
            if t == (G_IM_FMT.RGBA, G_IM_SIZ._32b):
                data_to[4 * i : 4 * i + 4] = r, g, b, a
            elif t == (G_IM_FMT.RGBA, G_IM_SIZ._16b):
                r = r >> 3
                g = g >> 3
                b = b >> 3
                a = round(a / 255)

                d1 = (r << 3) | (g >> 2)
                d2 = ((g & 0b11) << 6) | (b << 1) | a
                data_to[2 * i : 2 * i + 2] = d1, d2
            elif t == (G_IM_FMT.IA, G_IM_SIZ._16b):
                a = a

                d1 = y
                d2 = a

                data_to[i * 2 : i * 2 + 2] = d1, d2
            elif t == (G_IM_FMT.IA, G_IM_SIZ._8b):
                y = y >> 4
                a = a >> 4

                d = (y << 4) | a

                data_to[i] = d
            elif t == (G_IM_FMT.IA, G_IM_SIZ._4b):
                y = y >> 5
                a = round(a / 255)

                d = (y << 1) | a

                data_to[i // 2] |= (d << 4) if i % 2 == 0 else d
            elif t == (G_IM_FMT.I, G_IM_SIZ._8b):
                d = y

                data_to[i] = d
            elif t == (G_IM_FMT.I, G_IM_SIZ._4b):
                y = y >> 4

                d = y

                data_to[i // 2] |= (d << 4) if i % 2 == 0 else d
            else:
                raise NotImplementedError("to", to_fmt, to_siz)

        return data_to
