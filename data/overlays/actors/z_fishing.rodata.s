.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B7B000
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B010
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B020
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B030
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B040
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B050
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B060
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B070
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B080
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B090
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0A0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0B0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0C0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0D0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0E0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B0F0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B100
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B110
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B120
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B130
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B140
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B150
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B160
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B170
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B180
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B190
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1A0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1B0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1C0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1D0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1E0
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B1F0
    .asciz "HIT FISH %dcm\n"
    .balign 4

glabel D_80B7B200
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B210
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B220
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B230
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B240
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B250
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B260
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B270
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B280
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B290
    .asciz "\x1b[32m"
    .balign 4

glabel D_80B7B298
    .asciz "\x1b[33m"
    .balign 4

glabel D_80B7B2A0
    .asciz "plays %x\n"
    .balign 4

glabel D_80B7B2AC
    .asciz "ys %x\n"
    .balign 4

glabel D_80B7B2B4
    .asciz "\x1b[m"
    .balign 4

glabel D_80B7B2B8
    .asciz "\x1b[32m"
    .balign 4

glabel D_80B7B2C0
    .asciz "zelda_time %x\n"
    .balign 4

glabel D_80B7B2D0
    .asciz "\x1b[m"
    .balign 4

glabel D_80B7B2D4
    .asciz "HI_SCORE = %x\n"
    .balign 4

glabel D_80B7B2E4
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B2F4
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B304
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B314
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B324
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B334
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B344
    .float 1.6
    .balign 4

glabel D_80B7B348
    .float 30269.0
    .balign 4

glabel D_80B7B34C
    .float 30307.0
    .balign 4

glabel D_80B7B350
    .float 30323.0
    .balign 4

glabel D_80B7B354
    .float 0.0025
    .balign 4

glabel D_80B7B358
    .float 0.05
    .balign 4

glabel D_80B7B35C
    .float 0.1
    .balign 4

glabel D_80B7B360
    .float 0.3
    .balign 4

glabel D_80B7B364
    .float 0.6
    .balign 4

glabel D_80B7B368
    .float 6.28318548203
    .balign 4

glabel D_80B7B36C
    .float 0.08
    .balign 4

glabel D_80B7B370
    .float 0.1
    .balign 4

glabel D_80B7B374
    .float 0.7
    .balign 4

glabel D_80B7B378
    .float 2.3
    .balign 4

glabel D_80B7B37C
    .float 4.6
    .balign 4

glabel D_80B7B380
    .float 982.0
    .balign 4

glabel D_80B7B384
    .float 4.99998998642
    .balign 4

glabel D_80B7B388
    .float 0.05
    .balign 4

glabel D_80B7B38C
    .float 7.99998998642
    .balign 4

glabel D_80B7B390
    .float 0.73
    .balign 4

glabel D_80B7B394
    .float 0.001
    .balign 4

glabel D_80B7B398
    .float 0.1
    .balign 4

glabel D_80B7B39C
    .float 0.3
    .balign 4

glabel D_80B7B3A0
    .float 846400.0
    .balign 4

glabel D_80B7B3A4
    .float 0.11
    .balign 4

glabel D_80B7B3A8
    .float 0.0100000007078
    .balign 4

glabel D_80B7B3AC
    .float 0.147
    .balign 4

glabel D_80B7B3B0
    .float 0.002
    .balign 4

glabel D_80B7B3B4
    .float 3.14159274101
    .balign 4

glabel D_80B7B3B8
    .float 3.14159274101
    .balign 4

glabel D_80B7B3BC
    .float 3.14159274101
    .balign 4

glabel D_80B7B3C0
    .float 3.14159274101
    .balign 4

glabel D_80B7B3C4
    .float -1250.0
    .balign 4

glabel D_80B7B3C8
    .float 1.57079637051
    .balign 4

glabel D_80B7B3CC
    .float 670.0
    .balign 4

glabel D_80B7B3D0
    .float 0.02
    .balign 4

glabel D_80B7B3D4
    .float 0.97
    .balign 4

glabel D_80B7B3D8
    .float 0.001
    .balign 4

glabel D_80B7B3DC
    .float 0.299999982119
    .balign 4

glabel D_80B7B3E0
    .float 846400.0
    .balign 4

glabel D_80B7B3E4
    .float 0.11
    .balign 4

glabel D_80B7B3E8
    .float 0.147
    .balign 4

glabel D_80B7B3EC
    .float 0.05
    .balign 4

glabel D_80B7B3F0
    .float 0.02
    .balign 4

glabel D_80B7B3F4
    .float 0.2
    .balign 4

glabel D_80B7B3F8
    .float 0.00399999972433
    .balign 4

glabel D_80B7B3FC
    .float 3.14159274101
    .balign 4

glabel D_80B7B400
    .float 1.57079637051
    .balign 4

glabel D_80B7B404
    .float -1250.0
    .balign 4

glabel D_80B7B408
    .float 1.57079637051
    .balign 4

glabel D_80B7B40C
    .float 0.85
    .balign 4

glabel D_80B7B410
    .float 9.58738019108e-05
    .balign 4

glabel D_80B7B414
    .float 0.1
    .balign 4

glabel D_80B7B418
    .float 0.04
    .balign 4

glabel D_80B7B41C
    .float 0.04
    .balign 4

glabel D_80B7B420
    .float 9.58738019108e-05
    .balign 4

glabel D_80B7B424
    .float 3.14159274101
    .balign 4

glabel D_80B7B428
    .float 0.00399999972433
    .balign 4

glabel D_80B7B42C
    .float 1.57079637051
    .balign 4

glabel D_80B7B430
    .float 1.57079637051
    .balign 4

glabel D_80B7B434
    .float -850.0
    .balign 4

glabel D_80B7B438
    .float 2100.0
    .balign 4

glabel D_80B7B43C
    .float 0.001
    .balign 4

glabel D_80B7B440
    .float 0.001
    .balign 4

glabel D_80B7B444
    .float 1500.0
    .balign 4

glabel D_80B7B448
    .float 0.02
    .balign 4

glabel D_80B7B44C
    .float 0.02
    .balign 4

glabel D_80B7B450
    .float -0.01
    .balign 4

glabel D_80B7B454
    .float 0.01
    .balign 4

glabel D_80B7B458
    .float 0.025
    .balign 4

glabel D_80B7B45C
    .float -0.03
    .balign 4

glabel D_80B7B460
    .float 1.75929188728
    .balign 4

glabel D_80B7B464
    .float 1.28805303574
    .balign 4

glabel D_80B7B468
    .float -0.628318488598
    .balign 4

glabel D_80B7B46C
    .float 0.471238911152
    .balign 4

glabel D_80B7B470
    .float 0.01
    .balign 4

glabel D_80B7B474
    .float 3.14159274101
    .balign 4

glabel D_80B7B478
    .float 0.700000047684
    .balign 4

glabel D_80B7B47C
    .float 3.99900007248
    .balign 4

glabel jtbl_80B7B480
.word L80B6EE24
.word L80B6F0C4
.word L80B6F94C
.word L80B6FA3C
.word L80B70890
.word L80B709D0
glabel D_80B7B498
    .float 3.14159274101
    .balign 4

glabel D_80B7B49C
    .float 1.9
    .balign 4

glabel D_80B7B4A0
    .float 0.9
    .balign 4

glabel D_80B7B4A4
    .float 3.14159274101
    .balign 4

glabel D_80B7B4A8
    .float 3.14159274101
    .balign 4

glabel D_80B7B4AC
    .float 0.001
    .balign 4

glabel D_80B7B4B0
    .float 846400.0
    .balign 4

glabel D_80B7B4B4
    .float 1350.0
    .balign 4

glabel D_80B7B4B8
    .float 1100.0
    .balign 4

glabel D_80B7B4BC
    .float 0.11
    .balign 4

glabel D_80B7B4C0
    .float 0.2
    .balign 4

glabel D_80B7B4C4
    .float 6.28
    .balign 4

glabel D_80B7B4C8
    .float 0.02
    .balign 4

glabel D_80B7B4CC
    .float 0.025
    .balign 4

glabel D_80B7B4D0
    .float 250000.0
    .balign 4

glabel D_80B7B4D4
    .float -0.523598790169
    .balign 4

glabel D_80B7B4D8
    .float 846400.0
    .balign 4

glabel D_80B7B4DC
    .float 0.0166666675359
    .balign 4

glabel D_80B7B4E0
    .float 0.0166666675359
    .balign 4

glabel D_80B7B4E4
    .float 0.3
    .balign 4

glabel D_80B7B4E8
    .float 0.3
    .balign 4

glabel D_80B7B4EC
    .float 0.2
    .balign 4

glabel D_80B7B4F0
    .float 0.8
    .balign 4

glabel D_80B7B4F4
    .float 0.1
    .balign 4

glabel D_80B7B4F8
    .float 1.99899995327
    .balign 4

glabel D_80B7B4FC
    .float 3.14159274101
    .balign 4

glabel D_80B7B500
    .float 0.2
    .balign 4

glabel D_80B7B504
    .float 3.14159274101
    .balign 4

glabel D_80B7B508
    .float 3.14159274101
    .balign 4

glabel D_80B7B50C
    .float 0.11
    .balign 4

glabel D_80B7B510
    .float 3.14159274101
    .balign 4

glabel D_80B7B514
    .float 3.14159274101
    .balign 4

glabel D_80B7B518
    .float 3.14159274101
    .balign 4

glabel D_80B7B51C
    .float 3.14159274101
    .balign 4

glabel D_80B7B520
    .float 3.14159274101
    .balign 4

glabel D_80B7B524
    .float 0.2
    .balign 4

glabel D_80B7B528
    .float 846400.0
    .balign 4

glabel D_80B7B52C
    .float 0.1
    .balign 4

glabel D_80B7B530
    .float 0.000500000081956
    .balign 4

glabel D_80B7B534
    .float 1.2
    .balign 4

glabel D_80B7B538
    .float 6.28
    .balign 4

glabel D_80B7B53C
    .float 0.02
    .balign 4

glabel D_80B7B540
    .float 0.025
    .balign 4

glabel D_80B7B544
    .float 0.3
    .balign 4

glabel D_80B7B548
    .float 6.28
    .balign 4

glabel D_80B7B54C
    .float 0.02
    .balign 4

glabel D_80B7B550
    .float 0.025
    .balign 4

glabel D_80B7B554
    .float 3.14159274101
    .balign 4

glabel D_80B7B558
    .float 40000.0
    .balign 4

glabel D_80B7B55C
    .float 4900.0
    .balign 4

glabel D_80B7B560
    .float 10000.0
    .balign 4

glabel D_80B7B564
    .float 0.15
    .balign 4

glabel D_80B7B568
    .float 0.3
    .balign 4

glabel D_80B7B56C
    .float 1150.0
    .balign 4

glabel D_80B7B570
    .float 0.1
    .balign 4

glabel D_80B7B574
    .float 9.99999974738e-06
    .balign 4

glabel D_80B7B578
    .float -1.2
    .balign 4

glabel D_80B7B57C
    .float 1.6
    .balign 4

glabel D_80B7B580
    .float 9.99999997475e-07
    .balign 4

glabel D_80B7B584
    .float 1.1
    .balign 4

glabel D_80B7B588
    .float 0.8
    .balign 4

glabel D_80B7B58C
    .float 2.1
    .balign 4

glabel D_80B7B590
    .float 0.4
    .balign 4

glabel D_80B7B594
    .float 0.6
    .balign 4

glabel jtbl_80B7B598
.word L80B72860
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B75278
.word L80B73684
.word L80B7260C
.word L80B723E8
.word L80B72144
.word L80B72260
.word L80B72928
.word L80B73004
.word L80B7320C
.word L80B738A0
.word L80B748A0
.word L80B74FF0
.word L80B75278
.word L80B75278
.word L80B71ED8
.word L80B71FA8
glabel D_80B7B62C
    .float 1300.0
    .balign 4

glabel D_80B7B630
    .float 0.02
    .balign 4

glabel D_80B7B634
    .float 0.03
    .balign 4

glabel D_80B7B638
    .float 2500.0
    .balign 4

glabel D_80B7B63C
    .float 1500.0
    .balign 4

glabel D_80B7B640
    .float 0.3
    .balign 4

glabel D_80B7B644
    .float 333.333343506
    .balign 4

glabel D_80B7B648
    .float 0.4
    .balign 4

glabel D_80B7B64C
    .float 1.2
    .balign 4

glabel D_80B7B650
    .float 0.8
    .balign 4

glabel D_80B7B654
    .float 1500.0
    .balign 4

glabel D_80B7B658
    .float 0.4
    .balign 4

glabel D_80B7B65C
    .float 0.6
    .balign 4

glabel D_80B7B660
    .float 0.7
    .balign 4

glabel D_80B7B664
    .float 0.1
    .balign 4

glabel D_80B7B668
    .float 0.005
    .balign 4

glabel D_80B7B66C
    .float 0.01
    .balign 4

glabel D_80B7B670
    .float 0.05
    .balign 4

glabel D_80B7B674
    .float 0.008
    .balign 4

glabel D_80B7B678
    .float 3000.0
    .balign 4

glabel D_80B7B67C
    .float 0.3
    .balign 4

glabel D_80B7B680
    .float 0.6
    .balign 4

glabel D_80B7B684
    .float 0.03
    .balign 4

glabel D_80B7B688
    .float 1.2
    .balign 4

glabel D_80B7B68C
    .float 5000.0
    .balign 4

glabel D_80B7B690
    .float 3000.0
    .balign 4

glabel D_80B7B694
    .float 0.8
    .balign 4

glabel D_80B7B698
    .float 1.2
    .balign 4

glabel D_80B7B69C
    .float 5000.0
    .balign 4

glabel D_80B7B6A0
    .float 1.2
    .balign 4

glabel D_80B7B6A4
    .float 5000.0
    .balign 4

glabel D_80B7B6A8
    .float 1.2
    .balign 4

glabel D_80B7B6AC
    .float 5000.0
    .balign 4

glabel D_80B7B6B0
    .float 1.33333301544
    .balign 4

glabel D_80B7B6B4
    .float 1.7
    .balign 4

glabel D_80B7B6B8
    .float 7000.0
    .balign 4

glabel D_80B7B6BC
    .float 2.35619449615
    .balign 4

glabel D_80B7B6C0
    .float 3.14159274101
    .balign 4

glabel D_80B7B6C4
    .float 562500.0
    .balign 4

glabel D_80B7B6C8
    .float 0.1
    .balign 4

glabel D_80B7B6CC
    .float 1.6
    .balign 4

glabel D_80B7B6D0
    .float 6000.0
    .balign 4

glabel D_80B7B6D4
    .float 1.4
    .balign 4

glabel D_80B7B6D8
    .float 5000.0
    .balign 4

glabel D_80B7B6DC
    .float 0.00899
    .balign 4

glabel D_80B7B6E0
    .float 0.00899
    .balign 4

glabel D_80B7B6E4
    .float 1.4
    .balign 4

glabel D_80B7B6E8
    .float 4500.0
    .balign 4

glabel D_80B7B6EC
    .float 0.00899
    .balign 4

glabel D_80B7B6F0
    .float 1.3
    .balign 4

glabel D_80B7B6F4
    .float 0.00899
    .balign 4

glabel D_80B7B6F8
    .float 1.4
    .balign 4

glabel D_80B7B6FC
    .float 1.3
    .balign 4

glabel D_80B7B700
    .float -0.8
    .balign 4

glabel D_80B7B704
    .float -0.9
    .balign 4

glabel D_80B7B708
    .float -0.85
    .balign 4

glabel D_80B7B70C
    .float 0.1
    .balign 4

glabel D_80B7B710
    .float 0.05
    .balign 4

glabel D_80B7B714
    .float 3000.0
    .balign 4

glabel D_80B7B718
    .float 5000.0
    .balign 4

glabel D_80B7B71C
    .float 3.14159274101
    .balign 4

glabel D_80B7B720
    .float 1.99000000954
    .balign 4

glabel D_80B7B724
    .float 5000.0
    .balign 4

glabel D_80B7B728
    .float 5000.0
    .balign 4

glabel D_80B7B72C
    .float 5000.0
    .balign 4

glabel D_80B7B730
    .float 3.2
    .balign 4

glabel D_80B7B734
    .float 0.1
    .balign 4

glabel D_80B7B738
    .float -0.003
    .balign 4

glabel D_80B7B73C
    .float 5000.0
    .balign 4

glabel D_80B7B740
    .float 5000.0
    .balign 4

glabel D_80B7B744
    .float 0.005
    .balign 4

glabel D_80B7B748
    .float 0.15
    .balign 4

glabel D_80B7B74C
    .float 0.075
    .balign 4

glabel D_80B7B750
    .float 0.035
    .balign 4

glabel D_80B7B754
    .float 0.04
    .balign 4

glabel D_80B7B758
    .float 3.14159274101
    .balign 4

glabel D_80B7B75C
    .float 3.14159274101
    .balign 4

glabel D_80B7B760
    .float 3.14159274101
    .balign 4

glabel D_80B7B764
    .float 9.58738019108e-05
    .balign 4

glabel D_80B7B768
    .float 1.57079637051
    .balign 4

glabel D_80B7B76C
    .float 0.01
    .balign 4

glabel D_80B7B770
    .float 9.58738019108e-05
    .balign 4

glabel D_80B7B774
    .float -1.57079637051
    .balign 4

glabel D_80B7B778
    .float 0.2
    .balign 4

glabel D_80B7B77C
    .float 0.03
    .balign 4

glabel D_80B7B780
    .float 0.05
    .balign 4

glabel D_80B7B784
    .float 9.58738019108e-05
    .balign 4

glabel D_80B7B788
    .float 2500.0
    .balign 4

glabel D_80B7B78C
    .float 0.3
    .balign 4

glabel D_80B7B790
    .float 0.05
    .balign 4

glabel D_80B7B794
    .float 2500.0
    .balign 4

glabel D_80B7B798
    .float 0.3
    .balign 4

glabel D_80B7B79C
    .float 0.05
    .balign 4

glabel D_80B7B7A0
    .float 2500.0
    .balign 4

glabel D_80B7B7A4
    .float 0.3
    .balign 4

glabel D_80B7B7A8
    .float 0.05
    .balign 4

glabel D_80B7B7AC
    .float 0.8
    .balign 4

glabel D_80B7B7B0
    .float -9.99999974738e-05
    .balign 4

glabel D_80B7B7B4
    .float 0.003325
    .balign 4

glabel D_80B7B7B8
    .float 0.00475
    .balign 4

glabel D_80B7B7BC
    .float 3.14159274101
    .balign 4

glabel jtbl_80B7B7C0
.word L80B7743C
.word L80B77558
.word L80B77644
.word L80B7768C
.word L80B776E0
.word L80B777F0
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B77890
.word L80B77C74
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78248
.word L80B78068
.word L80B780A0
.word L80B7814C
.word L80B7819C
.word L80B781EC
glabel D_80B7B824
    .float 3.99900007248
    .balign 4

glabel D_80B7B828
    .float 3.99900007248
    .balign 4

glabel D_80B7B82C
    .float 846400.0
    .balign 4

glabel D_80B7B830
    .float 0.3
    .balign 4

glabel D_80B7B834
    .float 0.0015
    .balign 4

glabel jtbl_80B7B838
.word L80B7955C
.word L80B78890
.word L80B78930
.word L80B78DE8
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B78EBC
.word L80B78F8C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B7955C
.word L80B79084
.word L80B79158
.word L80B791B0
glabel D_80B7B894
    .float 0.2
    .balign 4

glabel D_80B7B898
    .float 0.1
    .balign 4

glabel D_80B7B89C
    .float 0.001
    .balign 4

glabel D_80B7B8A0
    .float 0.3
    .balign 4

glabel D_80B7B8A4
    .float 0.1
    .balign 4

glabel D_80B7B8A8
    .float 0.4
    .balign 4

glabel D_80B7B8AC
    .float 0.4
    .balign 4

glabel D_80B7B8B0
    .float 0.000500000081956
    .balign 4

glabel D_80B7B8B4
    .float 3.14159274101
    .balign 4

glabel D_80B7B8B8
    .float 6.28
    .balign 4

glabel D_80B7B8BC
    .float 0.01
    .balign 4

glabel D_80B7B8C0
    .float 0.0200000014156
    .balign 4

glabel D_80B7B8C4
    .float 1.2
    .balign 4

glabel D_80B7B8C8
    .float 0.03
    .balign 4

glabel D_80B7B8CC
    .float 0.8
    .balign 4

glabel D_80B7B8D0
    .float 150.1
    .balign 4

glabel D_80B7B8D4
    .float 1500.0
    .balign 4

glabel D_80B7B8D8
    .float 1.67079639435
    .balign 4

glabel D_80B7B8DC
    .float -9.58738019108e-05
    .balign 4

glabel D_80B7B8E0
    .float 0.0036
    .balign 4

glabel D_80B7B8E4
    .float 1500.0
    .balign 4

glabel D_80B7B8E8
    .float 0.08
    .balign 4

glabel D_80B7B8EC
    .float 0.12
    .balign 4


