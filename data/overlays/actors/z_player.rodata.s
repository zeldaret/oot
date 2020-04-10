.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80855240
    .asciz "../z_player.c"
    .balign 4

glabel D_80855250
    .asciz "size = %x\n"
    .balign 4

glabel D_8085525C
    .asciz "size <= 1024 * 8"
    .balign 4

glabel D_80855270
    .asciz "../z_player.c"
    .balign 4

glabel D_80855280
    .asciz "../z_player.c"
    .balign 4

glabel D_80855290
    .asciz "../z_player.c"
    .balign 4

glabel D_808552A0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552B0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552C0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552D0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552E0
    .asciz "../z_player.c"
    .balign 4

glabel D_808552F0
    .asciz "../z_player.c"
    .balign 4

glabel D_80855300
    .asciz "../z_player.c"
    .balign 4

glabel D_80855310
    .asciz "../z_player.c"
    .balign 4

glabel D_80855320
    .asciz "DEBUG MODE"
    .balign 4

glabel D_8085532C
    .asciz "TOOL MODE=%d\n"
    .balign 4

glabel D_8085533C
    .asciz "DEMO MODE=%d\n"
    .balign 4

glabel D_8085534C
 .word 0x362A9004
glabel D_80855350
 .word 0x3F23D70A
glabel D_80855354
 .word 0x3F2AAAAB
glabel D_80855358
 .word 0x3F2AAAAB
glabel D_8085535C
    .float 1.2
    .balign 4

glabel D_80855360
    .float -1.2
    .balign 4

glabel D_80855364
    .float 0.8
    .balign 4

glabel D_80855368
    .float 0.6
    .balign 4

glabel D_8085536C
    .float 0.008
    .balign 4

glabel D_80855370
 .word 0x3E0F5C29
glabel D_80855374
 .word 0x38000100
glabel D_80855378
    .float 0.08
    .balign 4

glabel D_8085537C
    .float 0.1
    .balign 4

glabel D_80855380
    .float 0.1
    .balign 4

glabel D_80855384
 .word 0x38000100
glabel D_80855388
 .word 0x38000100
glabel D_8085538C
 .word 0x40B9999A
glabel D_80855390
    .float 1300.0
    .balign 4

glabel D_80855394
    .float 0.1
    .balign 4

glabel D_80855398
    .float 1300.0
    .balign 4

glabel D_8085539C
    .float 0.3
    .balign 4

glabel D_808553A0
 .word 0x469C4000
glabel D_808553A4
    .float 0.02
    .balign 4

glabel D_808553A8
 .word 0x3B83126F
glabel D_808553AC
    .float 0.2
    .balign 4

glabel D_808553B0
 .word 0x3E051EB8
glabel D_808553B4
    .float 0.1
    .balign 4

glabel D_808553B8
 .word 0x38000100
glabel D_808553BC
    .float 1.2
    .balign 4

glabel D_808553C0
 .word 0x3C75C28F
glabel D_808553C4
 .word 0x41EB7972
glabel D_808553C8
 .word 0x41EB7972
glabel D_808553CC
    .float 1.1
    .balign 4

glabel D_808553D0
 .word 0x38000100
glabel D_808553D4
 .word 0x38000100
glabel D_808553D8
 .word 0x402E0000, 0x07800000
glabel D_808553E0
 .word 0x402E0000, 0x07800000
glabel D_808553E8
 .word 0x38000100
glabel D_808553EC
 .word 0x38000100
glabel D_808553F0
 .word 0x38000100
glabel D_808553F4
 .word 0xBECCCCCD
glabel D_808553F8
 .word 0x40D9999A
glabel D_808553FC
    .float 0.3
    .balign 4

glabel D_80855400
    .float 0.3
    .balign 4

glabel D_80855404
    .float 0.1
    .balign 4

glabel D_80855408
 .word 0x409CCCCD
glabel D_8085540C
 .word 0x3F2AAAAB
glabel D_80855410
 .word 0x409CCCCD
glabel D_80855414
    .float 0.4
    .balign 4

glabel D_80855418
    .float 0.1
    .balign 4

glabel D_8085541C
    .float 1.2
    .balign 4

glabel D_80855420
 .word 0x3F0D3DCB
glabel D_80855424
 .word 0x409CCCCD
glabel D_80855428
    .float 0.1
    .balign 4

glabel D_8085542C
 .word 0x3F0D3DCB
glabel D_80855430
 .word 0x40666666
glabel D_80855434
    .float 0.9
    .balign 4

glabel D_80855438
    .float 0.1
    .balign 4

glabel D_8085543C
 .word 0x462AA800
glabel D_80855440
 .word 0x3A1D4952
glabel D_80855444
    .float 1.2
    .balign 4

glabel D_80855448
 .word 0x3F308D3E
glabel D_8085544C
    .float 0.1
    .balign 4

glabel D_80855450
    .float -1.2
    .balign 4

glabel D_80855454
    .float -1.2
    .balign 4

glabel D_80855458
    .float 0.85
    .balign 4

glabel D_8085545C
    .float 0.1
    .balign 4

glabel D_80855460
 .word 0x3F39611A
glabel D_80855464
    .float 0.2
    .balign 4

glabel D_80855468
    .float 0.1
    .balign 4

glabel D_8085546C
    .float 0.0015
    .balign 4

glabel D_80855470
 .word 0x3F39611A
glabel D_80855474
    .float 0.2
    .balign 4

glabel D_80855478
    .float 0.1
    .balign 4

glabel D_8085547C
 .word 0x3DAE147B
glabel D_80855480
 .word 0x3D9374BC
glabel D_80855484
    .float 0.1
    .balign 4

glabel D_80855488
 .word 0x38A7C5AC
glabel D_8085548C
    .float 0.1
    .balign 4

glabel D_80855490
 .word 0x38000100
glabel D_80855494
 .word 0x43C7FAE2
glabel D_80855498
 .word 0x43C7FAE2
glabel D_8085549C
 .word 0x38000100
glabel D_808554A0
 .word 0x38000100
glabel D_808554A4
 .word 0x38000100
glabel D_808554A8
 .word 0x418F3333
glabel D_808554AC
    .float 0.4
    .balign 4

glabel D_808554B0
    .float 0.2
    .balign 4

glabel D_808554B4
 .word 0x3E4CCCCC
glabel D_808554B8
    .float 0.01
    .balign 4

glabel D_808554BC
    .float 0.02
    .balign 4

glabel D_808554C0
    .float 0.01
    .balign 4

glabel D_808554C4
 .word 0x48435000
glabel D_808554C8
 .word 0x4A742400
glabel D_808554CC
    .float 0.1
    .balign 4

glabel D_808554D0
 .word 0x7F7FFFFF
glabel D_808554D4
 .word 0x7F7FFFFF
glabel D_808554D8
    .float 0.8
    .balign 4

glabel D_808554DC
 .word 0xC4966000
glabel D_808554E0
 .word 0xC4966000
glabel D_808554E4
 .word 0x3DE38E39
glabel D_808554E8
    .float 3.14159274101
    .balign 4

glabel D_808554EC
    .float 1.1
    .balign 4

glabel D_808554F0
 .word 0x3F733333
glabel D_808554F4
    .float 1500.0
    .balign 4

glabel D_808554F8
 .word 0xC4BB8000
glabel D_808554FC
    .float 0.8
    .balign 4

glabel D_80855500
    .float 0.02
    .balign 4

glabel D_80855504
    .float 0.05
    .balign 4

glabel D_80855508
 .word 0xBDCCCCCD
glabel D_8085550C
 .word 0xBE4CCCCD
glabel D_80855510
 .word 0xBE99999A
glabel D_80855514
    .float 0.1
    .balign 4

glabel D_80855518
    .float -0.8
    .balign 4

glabel D_8085551C
    .float 0.8
    .balign 4

glabel D_80855520
 .word 0x3D051EB8
glabel D_80855524
    .float 0.05
    .balign 4

glabel D_80855528
 .word 0x40566666
glabel D_8085552C
    .float 0.03
    .balign 4

glabel D_80855530
    .float 0.1
    .balign 4

glabel D_80855534
    .float 0.2
    .balign 4

glabel D_80855538
 .word 0x3C9374BC
glabel D_8085553C
 .word 0x3C75C28F
glabel D_80855540
    .float 0.01
    .balign 4

glabel D_80855544
    .float 0.3
    .balign 4

glabel D_80855548
    .float 9.99999974738e-06
    .balign 4

glabel D_8085554C
    .float 0.1
    .balign 4


