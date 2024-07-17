import unittest
import diff
import json


class TestSh2(unittest.TestCase):
    def get_config(self) -> diff.Config:
        arch = diff.get_arch("sh2")
        formatter = diff.JsonFormatter(arch_str="sh2")
        config = diff.Config(
            arch=arch,
            diff_obj=True,
            file="",
            make=False,
            source_old_binutils=True,
            diff_section=".text",
            inlines=False,
            max_function_size_lines=25000,
            max_function_size_bytes=100000,
            formatter=formatter,
            diff_mode=diff.DiffMode.NORMAL,
            base_shift=0,
            skip_lines=0,
            compress=None,
            show_rodata_refs=True,
            show_branches=True,
            show_line_numbers=False,
            show_source=False,
            stop_at_ret=None,
            ignore_large_imms=False,
            ignore_addr_diffs=True,
            algorithm="levenshtein",
            reg_categories={},
        )
        return config

    # check that comment <> regex has ? to avoid "<func_060E8780+0x44>,r1      ! 60e87d0"
    # all being a comment for:
    # mov.l   44 <func_060E8780+0x44>,r1      ! 60e87d0
    def test_sh2_comment(self) -> None:
        # parser specifically looks for tabs so make sure they are represented

        # 16:   d1 0b           mov.l   44 <func_060E8780+0x44>,r1      ! 60e87d0
        sh2_theirs = (
            "  16:\td1 0b       \tmov.l\t44 <func_060E8780+0x44>,r1\t! 60e87d0\n"
        )

        # 16:   d1 0b           mov.l   44 <_func_060E8780+0x44>,r1     ! 0 <_func_060E8780>
        sh2_ours = "  16:\td1 0b       \tmov.l\t44 <_func_060E8780+0x44>,r1\t! 0 <_func_060E8780>\n"

        config = self.get_config()
        display = diff.Display(sh2_theirs, sh2_ours, config)
        loaded = json.loads(display.run_diff()[0])

        curr = loaded["rows"][0]["current"]["src_comment"]

        assert curr != "<_func_060E8780+0x44>,r1     ! 0 <_func_060E8780>"
        assert curr == "<_func_060E8780+0x44>"

    def test_sh2_immediates(self) -> None:
        # test parsing these immediates
        # func_0606B760():
        # 0:   ec 01           mov     #1,r12
        # 2:   71 01           add     #1,r1
        # 4:   ec ff           mov     #-1,r12
        # 6:   71 ff           add     #-1,r1
        # 8:   ec 7f           mov     #127,r12
        # a:   71 7f           add     #127,r1
        # c:   ec 80           mov     #-128,r12
        # e:   71 80           add     #-128,r1
        sh2_theirs = "func_0606B760():\n   0:\tec 01       \tmov\t#1,r12\n   2:\t71 01       \tadd\t#1,r1\n   4:\tec ff       \tmov\t#-1,r12\n   6:\t71 ff       \tadd\t#-1,r1\n   8:\tec 7f       \tmov\t#127,r12\n   a:\t71 7f       \tadd\t#127,r1\n   c:\tec 80       \tmov\t#-128,r12\n   e:\t71 80       \tadd\t#-128,r1"

        # just diff with self
        sh2_ours = sh2_theirs

        config = self.get_config()
        display = diff.Display(sh2_theirs, sh2_ours, config)
        loaded = json.loads(display.run_diff()[0])

        expected = [
            "0:    mov     #0x1,r12",
            "2:    add     #0x1,r1",
            "4:    mov     #0xff,r12",
            "6:    add     #0xff,r1",
            "8:    mov     #0x7f,r12",
            "a:    add     #0x7f,r1",
            "c:    mov     #0x80,r12",
            "e:    add     #0x80,r1",
        ]

        i = 0
        for text in loaded["rows"]:
            assert text["base"]["text"][0]["text"] == expected[i]
            i += 1

    def test_more_sh2_immediates(self) -> None:
        # test that the re_int regex is able to catch all these "boundary" numbers
        # since we have to match 0-9 one digit at a time
        #    0:   71 00           add     #0,r1
        #    2:   71 01           add     #1,r1
        #    4:   71 09           add     #9,r1
        #    6:   71 0a           add     #10,r1
        #    8:   71 0b           add     #11,r1
        #    a:   71 13           add     #19,r1
        #    c:   71 64           add     #100,r1
        #    e:   71 65           add     #101,r1
        #   10:   71 6d           add     #109,r1
        #   12:   71 6f           add     #111,r1
        #   14:   71 77           add     #119,r1
        #   16:   71 f7           add     #-9,r1
        #   18:   71 f6           add     #-10,r1
        #   1a:   71 f5           add     #-11,r1
        #   1c:   71 ed           add     #-19,r1
        #   1e:   71 9c           add     #-100,r1
        #   20:   71 9b           add     #-101,r1
        #   22:   71 93           add     #-109,r1
        #   24:   71 91           add     #-111,r1
        #   26:   71 89           add     #-119,r1
        sh2_theirs = "func_0606B760():\n   0:\t71 00       \tadd\t#0,r1\n   2:\t71 01       \tadd\t#1,r1\n   4:\t71 09       \tadd\t#9,r1\n   6:\t71 0a       \tadd\t#10,r1\n   8:\t71 0b       \tadd\t#11,r1\n   a:\t71 13       \tadd\t#19,r1\n   c:\t71 64       \tadd\t#100,r1\n   e:\t71 65       \tadd\t#101,r1\n  10:\t71 6d       \tadd\t#109,r1\n  12:\t71 6f       \tadd\t#111,r1\n  14:\t71 77       \tadd\t#119,r1\n  16:\t71 f7       \tadd\t#-9,r1\n  18:\t71 f6       \tadd\t#-10,r1\n  1a:\t71 f5       \tadd\t#-11,r1\n  1c:\t71 ed       \tadd\t#-19,r1\n  1e:\t71 9c       \tadd\t#-100,r1\n  20:\t71 9b       \tadd\t#-101,r1\n  22:\t71 93       \tadd\t#-109,r1\n  24:\t71 91       \tadd\t#-111,r1\n  26:\t71 89       \tadd\t#-119,r1"

        # just diff with self
        sh2_ours = sh2_theirs

        config = self.get_config()
        display = diff.Display(sh2_theirs, sh2_ours, config)
        loaded = json.loads(display.run_diff()[0])

        expected = [
            "0:    add     #0x0,r1",
            "2:    add     #0x1,r1",
            "4:    add     #0x9,r1",
            "6:    add     #0xa,r1",
            "8:    add     #0xb,r1",
            "a:    add     #0x13,r1",
            "c:    add     #0x64,r1",
            "e:    add     #0x65,r1",
            "10:    add     #0x6d,r1",
            "12:    add     #0x6f,r1",
            "14:    add     #0x77,r1",
            "16:    add     #0xf7,r1",
            "18:    add     #0xf6,r1",
            "1a:    add     #0xf5,r1",
            "1c:    add     #0xed,r1",
            "1e:    add     #0x9c,r1",
            "20:    add     #0x9b,r1",
            "22:    add     #0x93,r1",
            "24:    add     #0x91,r1",
            "26:    add     #0x89,r1",
        ]

        i = 0
        for text in loaded["rows"]:
            assert text["base"]["text"][0]["text"] == expected[i]
            i += 1

    def test_branch(self) -> None:
        # test that bt.s and bra get ~>
        # func():
        #    0:   8d 02           bt.s    8 <lab_0606B780>
        #    2:   6e f3           mov     r15,r14
        #    4:   a0 01           bra     a <lab_0606B8E0>
        #    6:   00 09           nop

        # 00000008 <lab_0606B780>:
        # lab_0606B780():
        #    8:   db 32           mov.l   d4 <lab_0606B8E0+0xca>,r11

        # 0000000a <lab_0606B8E0>:
        # lab_0606B8E0():
        #    a:   00 0b           rts
        #    c:   00 09           nop
        sh2_theirs = "func():\n   0:\t8d 02       \tbt.s\t8 <lab_0606B780>\n   2:\t6e f3       \tmov\tr15,r14\n   4:\ta0 01       \tbra\ta <lab_0606B8E0>\n   6:\t00 09       \tnop\t\n\n00000008 <lab_0606B780>:\nlab_0606B780():\n   8:\tdb 32       \tmov.l\td4 <lab_0606B8E0+0xca>,r11\n\n0000000a <lab_0606B8E0>:\nlab_0606B8E0():\n   a:\t00 0b       \trts\t\n   c:\t00 09       \tnop\t"
        sh2_ours = sh2_theirs

        config = self.get_config()
        display = diff.Display(sh2_theirs, sh2_ours, config)
        loaded = json.loads(display.run_diff()[0])

        # bt.s    8
        print(loaded["rows"][0]["base"]["text"][1]["text"] == "~>")
        print(loaded["rows"][0]["base"]["text"][1]["key"] == "8")

        # bra     a
        print(loaded["rows"][2]["base"]["text"][1]["text"] == "~>")
        print(loaded["rows"][2]["base"]["text"][1]["key"] == "10")


if __name__ == "__main__":
    unittest.main()
