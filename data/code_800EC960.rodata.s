.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80149C60
    .asciz "AUDIO : Ocarina Control Assign Normal\n"
    .balign 4

glabel D_80149C88
    .asciz "AUDIO : Ocarina Control Assign Custom\n"
    .balign 4

glabel D_80149CB0
    .asciz "Presss NA_KEY_D4 %08x\n"
    .balign 4

glabel D_80149CC8
    .asciz "Presss NA_KEY_F4 %08x\n"
    .balign 4

glabel D_80149CE0
    .asciz "Presss NA_KEY_A4 %08x\n"
    .balign 4

glabel D_80149CF8
    .asciz "Presss NA_KEY_B4 %08x\n"
    .balign 4

glabel D_80149D10
    .asciz "Presss NA_KEY_D5 %08x\n"
    .balign 4

glabel D_80149D28
    .asciz "1"
    .balign 4

glabel D_80149D2C
    .asciz "Audio Debug Mode"
    .balign 4

glabel D_80149D40
    .asciz "- %s -"
    .balign 4

glabel D_80149D48
    .asciz "Audio ScrPrt"
    .balign 4

glabel D_80149D58
    .asciz "%s"
    .balign 4

glabel D_80149D5C
    .asciz "%04X"
    .balign 4

glabel D_80149D64
    .asciz "BGM CANCEL:%s"
    .balign 4

glabel D_80149D74
    .asciz "SE MUTE:%s"
    .balign 4

glabel D_80149D80
    .asciz "PUSH CONT-4 A-BTN"
    .balign 4

glabel D_80149D94
    .asciz "SE HANDLE:%s"
    .balign 4

glabel D_80149DA4
    .asciz "%02x %04x %02x %08x"
    .balign 4

glabel D_80149DB8
    .asciz "*"
    .balign 4

glabel D_80149DBC
    .asciz "Seq 0  : %2x"
    .balign 4

glabel D_80149DCC
    .asciz "Seq 1  : %2x"
    .balign 4

glabel D_80149DDC
    .asciz "SE HD  : %2x %s"
    .balign 4

glabel D_80149DEC
    .asciz "SE No. :%3x"
    .balign 4

glabel D_80149DF8
    .asciz "S-Out  : %2x %s"
    .balign 4

glabel D_80149E08
    .asciz "BGM Ent: %2x"
    .balign 4

glabel D_80149E18
    .asciz "Spec   : %2x" 
    .balign 4

glabel D_80149E28
    .asciz "Na Snd : %2x"
    .balign 4

glabel D_80149E38
    .asciz "Cam Wt : %s"
    .balign 4

glabel D_80149E44
    .asciz "Lnk Wt : %s"
    .balign 4

glabel D_80149E50
    .asciz "SE Ent : %2x"
    .balign 4

glabel D_80149E60
    .asciz "%s <%d>"
    .balign 4

glabel D_80149E68
    .asciz "%2X %5d %5d %5d %02X %04X %04X"
    .balign 4

glabel D_80149E88
    .asciz "FF ----- ----- ----- -- ---- ----"
    .balign 4

glabel D_80149EAC
    .asciz "%2X %5d %5d %5d %3d %3d %04X"
    .balign 4

glabel D_80149ECC
    .asciz "FF ----- ----- ----- --- --- ----"
    .balign 4

glabel D_80149EF0
    .asciz "%2X %5d %5d %5d %3d %3d %04X"
    .balign 4

glabel D_80149F10
    .asciz "FF ----- ----- ----- --- --- ----"
    .balign 4

glabel D_80149F34
    .asciz "%2X %04X"
    .balign 4

glabel D_80149F40
    .asciz "FF ----"
    .balign 4

glabel D_80149F48
    .asciz "*"
    .balign 4

glabel D_80149F4C
    .asciz "Swicth  : %d"
    .balign 4

glabel D_80149F5C
    .asciz "Lines   : %d"
    .balign 4

glabel D_80149F6C
    .asciz "Color   : %d"
    .balign 4

glabel D_80149F7C
    .asciz "%s  : %d"
    .balign 4

glabel D_80149F88
    .asciz "%s    : %d"
    .balign 4

glabel D_80149F94
    .asciz "ENVRONM : %d"
    .balign 4

glabel D_80149FA4
    .asciz "%s   : %d"
    .balign 4

glabel D_80149FB0
    .asciz "%s  : %d"
    .balign 4

glabel D_80149FBC
    .asciz "%s : %d"
    .balign 4

glabel D_80149FC4
    .asciz "%s    : %d"
    .balign 4

glabel D_80149FD0
    .asciz "SEQ ENT : %d"
    .balign 4

glabel D_80149FE0
    .asciz "SWAP OFF"
    .balign 4

glabel D_80149FEC
    .asciz "*"
    .balign 4

glabel D_80149FF0
    .asciz "V"
    .balign 4

glabel D_80149FF4
    .asciz "%04x %04x %s"
    .balign 4

glabel D_8014A004
    .asciz "Group Track:%d"
    .balign 4

glabel D_8014A014
    .asciz "Sub Track  :%d"
    .balign 4

glabel D_8014A024
    .asciz "TRK NO. "
    .balign 4

glabel D_8014A030
    .asciz "ENTRY   "
    .balign 4

glabel D_8014A03C
    .asciz "MUTE    "
    .balign 4

glabel D_8014A048
    .asciz "OPENNOTE"
    .balign 4

glabel D_8014A054
    .asciz "%1X"
    .balign 4

glabel D_8014A058
    .asciz "O"
    .balign 4

glabel D_8014A05C
    .asciz "X"
    .balign 4

glabel D_8014A060
    .asciz "O"
    .balign 4

glabel D_8014A064
    .asciz "X"
    .balign 4

glabel D_8014A068
    .asciz "%1X"
    .balign 4

glabel D_8014A06C
    .asciz "%2d,%2d"
    .balign 4

glabel D_8014A074
    .asciz "VOL     "
    .balign 4

glabel D_8014A080
    .asciz "E VOL   "
    .balign 4

glabel D_8014A08C
    .asciz "BANK ID "
    .balign 4

glabel D_8014A098
    .asciz "PROG    "
    .balign 4

glabel D_8014A0A4
    .asciz "PAN    "
    .balign 4

glabel D_8014A0AC
    .asciz "PANPOW  "
    .balign 4

glabel D_8014A0B8
    .asciz "FXMIX   "
    .balign 4

glabel D_8014A0C4
    .asciz "PRIO    "
    .balign 4

glabel D_8014A0D0
    .asciz "VIB PIT "
    .balign 4

glabel D_8014A0DC
    .asciz "VIB DEP "
    .balign 4

glabel D_8014A0E8
    .asciz "TUNE    "
    .balign 4

glabel D_8014A0F4
    .asciz "TUNE    "
    .balign 4

glabel D_8014A100
    .asciz "%02X "
    .balign 4

glabel D_8014A108
    .asciz "%d"
    .balign 4

glabel D_8014A10C
    .asciz "%d"
    .balign 4

glabel D_8014A110
    .asciz "%X"
    .balign 4

glabel D_8014A114
    .asciz "%d"
    .balign 4

glabel D_8014A118
    .asciz "%d"
    .balign 4

glabel D_8014A11C
    .asciz "%d"
    .balign 4

glabel D_8014A120
    .asciz "%d"
    .balign 4

glabel D_8014A124
    .asciz "%d"
    .balign 4

glabel D_8014A128
    .asciz "%d"
    .balign 4

glabel D_8014A12C
    .asciz "%d"
    .balign 4
 
glabel D_8014A130
    .asciz "%d"
    .balign 4
 
glabel D_8014A134
    .asciz "TOTAL  %d"
    .balign 4

glabel D_8014A140
    .asciz "DRIVER %05X / %05X"
    .balign 4

glabel D_8014A154
    .asciz "AT-SEQ %02X-%02X (%05X-%05X / %05X)"
    .balign 4

glabel D_8014A178
    .asciz "AT-BNK %02X-%02X (%05X-%05X / %05X)"
    .balign 4

glabel D_8014A19C
    .asciz "ST-SEQ %02Xseqs  (%05X / %06X)"
    .balign 4

glabel D_8014A1BC
    .asciz "%02x"
    .balign 4

glabel D_8014A1C4
    .asciz "ST-BNK %02Xbanks (%05X / %06X)"
    .balign 4

glabel D_8014A1E4
    .asciz "%02x"
    .balign 4

glabel D_8014A1EC
    .asciz "E-MEM  %05X / %05X"
    .balign 4

glabel D_8014A200
    .asciz "BGM No.    %02X"
    .balign 4

glabel D_8014A210
    .asciz "SCENE SET  %02X %s"
    .balign 4

glabel D_8014A224
    .asciz "*"
    .balign 4

glabel D_8014A228
    .asciz "NEXT SCENE %02X %s"
    .balign 4

glabel D_8014A23C
    .asciz "NOW SCENE  %02X %s"
    .balign 4

glabel D_8014A250
    .asciz "NOW BLOCK  %02X"
    .balign 4

glabel D_8014A260
    .asciz "PORT"
    .balign 4

glabel D_8014A268
    .asciz "%02X %02X %02X %02X"
    .balign 4

glabel D_8014A27C
    .asciz "%02X %02X %02X %02X"
    .balign 4

glabel D_8014A290
    .asciz "SEQ INFO  : %2d %02x %d"
    .balign 4

glabel D_8014A2A8
    .asciz "PLAY INFO : %2d %02x %d"
    .balign 4

glabel D_8014A2C0
    .asciz "8note REC POINTER : %08x"
    .balign 4

glabel D_8014A2DC
    .asciz "%02x"
    .balign 4

glabel D_8014A2E4
    .asciz "OCA:%02x SEQ:%04x PLAY:%02x REC:%02x"
    .balign 4

glabel D_8014A30C
    .asciz "*"
    .balign 4

glabel D_8014A310
    .asciz "SE HD  : %02x %s"
    .balign 4

glabel D_8014A324
    .asciz "SE No. : %02x"
    .balign 4

glabel D_8014A334
    .asciz "       : %04x"
    .balign 4

glabel D_8014A344
    .asciz "SE SW    %s"
    .balign 4

glabel D_8014A350
    .asciz "%s"
    .balign 4

glabel D_8014A354
    .asciz "SE PR  : %02x"
    .balign 4

glabel D_8014A364
    .asciz "env_fx %d code_fx %d SPEC %d"
    .balign 4

glabel D_8014A384
    .asciz "SOUND GAME FRAME NOW %f"
    .balign 4

glabel D_8014A39C
    .asciz "SOUND GAME FRAME MAX %f"
    .balign 4

glabel D_8014A3B4
    .asciz "SWITCH BGM MODE %d %d %d (FLAG %d)"
    .balign 4

glabel D_8014A3D8
    .asciz "ENEMY DIST %f VOL %3d"
    .balign 4

glabel D_8014A3F0
    .asciz "GANON DIST VOL %3d"
    .balign 4

glabel D_8014A404
    .asciz "DEMO FLAG %d"
    .balign 4

glabel D_8014A414
    .asciz "MARON BGM DIST %f"
    .balign 4

glabel D_8014A428
    .asciz "NATURE FAILED %01x"
    .balign 4

glabel D_8014A43C
    .asciz "SARIA BGM PTR %08x"
    .balign 4

glabel D_8014A450
    .asciz "POLI %d(%d)"
    .balign 4

glabel D_8014A45C
    .asciz "%d"
    .balign 4

glabel D_8014A460
    .asciz "Middle Boss BGM Start not stack \n"
    .balign 4

glabel jtbl_8014A484
    .word L800EEEB4
    .word L800EF124
    .word L800F1BA4
    .word L800F0CFC
    .word L800F1BA4
    .word L800F008C
    .word L800F1BA4
    .word L800EF3F0
    .word L800EFC20
    .word L800F1014
    .word L800F1BA4
    .word L800F12F0
    .word L800F14B8
    .word L800EF978
    .word L800F17F8

glabel D_8014A4C0
    .float 127.1

    .balign 8
glabel D_8014A4C8
    .double 127.1

glabel D_8014A4D0
    .float 50000000

glabel jtbl_8014A4D4
    .word L800F1E70
    .word L800F1E70
    .word L800F1EA4
    .word L800F1EA4
    .word L800F1F00
    .word L800F1F2C
    .word L800F1F64
    .word L800F1FE4
    .word L800F2048
    .word L800F2048
    .word L800F2010

glabel jtbl_8014A500
    .word L800F2078
    .word L800F2078
    .word L800F20C0
    .word L800F20C0
    .word L800F20D8
    .word L800F20D8
    .word L800F20D8
    .word L800F20A0

glabel jtbl_8014A520
    .word L800F2F08
    .word L800F2FAC
    .word L800F3034
    .word L800F2FFC
    .word L800F3034
    .word L800F2FEC
    .word L800F3034
    .word L800F2FBC
    .word L800F2FDC
    .word L800F300C
    .word L800F3034
    .word L800F301C
    .word L800F302C
    .word L800F2FCC
    .word L800F3034

glabel D_8014A55C
    .float 10000

glabel D_8014A560
    .float 666.6667

glabel D_8014A564
    .float 952.381

glabel D_8014A568
    .float 3846.154

glabel D_8014A56C
    .float 0.19

glabel D_8014A570
    .float 0.81

glabel D_8014A574
    .float 0.81

glabel D_8014A578
    .float 2500

glabel D_8014A57C
    .float 3.3

glabel D_8014A580
    .float 5.0769234

glabel jtbl_8014A584
    .word L800F3694
    .word L800F3694
    .word L800F36AC
    .word L800F36AC
    .word L800F36C0
    .word L800F36C0
    .word L800F3694

    .balign 8
glabel D_8014A5A0
    .double 1.0293

glabel D_8014A5A8
    .float 10000

glabel D_8014A5AC
    .float 0.2

glabel D_8014A5B0
    .float 0.2

glabel D_8014A5B4
    .float 1923.077

glabel D_8014A5B8
    .float 625

glabel jtbl_8014A5BC
    .word L800F3A94
    .word L800F3A94
    .word L800F3A94
    .word L800F3A94
    .word L800F3C74
    .word L800F3AC4
    .word L800F3A94

glabel D_8014A5D8
    .float 1.1

glabel D_8014A5DC
    .float 0.22500002

glabel D_8014A5E0
    .float 0.77499997

glabel D_8014A5E4
    .float 0.2

glabel D_8014A5E8
    .float 0.89999997

glabel D_8014A5EC
    .float 0.3

glabel D_8014A5F0
    .float 1.1

    .balign 8
glabel D_8014A5F8
    .double 0.7

glabel D_8014A600
    .double 0.3

glabel D_8014A608
    .float 0.15

glabel D_8014A60C
    .float 1.39999997

glabel D_8014A610
    .float 0.1

glabel D_8014A614
    .float 0.89999997

glabel D_8014A618
    .float 0.1
