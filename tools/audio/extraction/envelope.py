# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Implements envelopes and envelope point structures
#

import collections

from .util import XMLWriter

class EnvDelay(int):
    def __str__(self):
        return {
             0 : "ADSR_DISABLE",
            -1 : "ADSR_HANG",
            -2 : "ADSR_GOTO",
            -3 : "ADSR_RESTART",
        }.get(self, super().__str__())

class Envelope:
    """
    Array of envelope points
    """

    class EnvelopePoint:
        """
        typedef struct {
            /* 0x0 */ s16 delay;
            /* 0x2 */ s16 arg;
        } EnvelopePoint; // size = 0x4
        """

        def __init__(self, delay, arg):
            self.delay = EnvDelay(delay)
            self.arg = arg

        def __repr__(self):
            return str(self)

        def __str__(self):
            return f"{{ {self.delay}, {self.arg} }}"

        def is_disable(self):
            return self.delay == 0 and self.arg == 0

        def is_hang(self):
            return self.delay == -1 and self.arg == 0

        def to_xml(self, xml : XMLWriter):
            if self.delay == 0: # Disable
                assert self.arg == 0
                xml.write_element("Disable")
            elif self.delay == -1: # Hang
                assert self.arg == 0
                xml.write_element("Hang")
            elif self.delay == -2: # Goto
                xml.write_element("Goto",
                    { "Arg" : self.arg }
                )
            elif self.delay == -3: # Restart
                assert self.arg == 0
                xml.write_element("Restart")
            else:
                assert self.delay >= 0
                xml.write_element("Point",
                    {
                        "Delay" : self.delay,
                        "Arg"   : self.arg,
                    }
                )

    def __init__(self, points, is_zero=False):
        self.name = None # Assigned when bank is finalized

        self.is_zero = is_zero
        self.release_rates = []
        self._release_rate = None # cached

        assert len(points) != 0
        assert type(points[0]) == Envelope.EnvelopePoint
        self.points = points

        if not self.is_zero:
            while self.points[-1].is_disable():
                self.points.pop()

            assert self.points[-1].is_hang()

    def __str__(self):
        out = "{\n"
        out += "    " + ", ".join([str(point) for point in self.points]) + "\n"
        out += "}\n"
        return out

    def release_rate(self):
        if self._release_rate is not None:
            return self._release_rate

        rates = collections.Counter(self.release_rates).most_common()
        assert len(rates) in [0, 1], rates # TODO handle ties?

        self._release_rate = 0 if len(rates) == 0 else rates[0][0]
        return self._release_rate

    def to_xml(self, xml : XMLWriter, name : str):
        if self.is_zero:
            return xml.write_element("Envelope")

        xml.write_start_tag("Envelope",
            {
                "Name" : name,
                "Release" : self.release_rate(),
            }
        )

        for point in self.points[:-1]: # exclude final hang command, will be added by the soundfont compiler on build
            point.to_xml(xml)

        xml.write_end_tag()
