# Needs splitting

.rdata
glabel D_80139140
    .asciz "\x1B[43;30mcamera: climb: no floor \n\x1B[m"
    .balign 4
    
glabel D_80139168
    .asciz "\x1B[43;30mcamera: warning: battle: target is not valid, change parallel\n\x1B[m"
    .balign 4
    
glabel D_801391B4
    .asciz "camera: battle: target actor name \x1B[34m%d\x1B[m\n"
    .balign 4
    
glabel D_801391E4
    .asciz "camera: battle: target actor name \x1B[41;37m%d\x1B[m\n"
    .balign 4
    
glabel D_80139218
    .asciz "camera: battle: change target %d -> \x1B[34m%d\x1B[m\n"
    .balign 4
    
glabel D_80139248
    .asciz "\x1B[43;30mcamera: warning: keepon: target is not valid, change parallel\n\x1B[m"
    .balign 4

glabel D_80139294
    .asciz "\x1B[43;30mcamera: warning: talk: target is not valid, change parallel\n\x1B[m"
    .balign 4
    
glabel D_801392DC
    .asciz "camera: talk: BG&collision check %d time(s)\n"
    .balign 4
    
glabel D_8013930C
    .asciz "\x1B[43;30mcamera: item: item type changed %d -> %d\n\x1B[m"
    .balign 4

glabel D_80139344
    .asciz "camera: item: type %d\n"
    .balign 4

glabel D_8013935C
    .asciz "camera: item: BG&collision check %d time(s)\n"
    .balign 4

glabel D_8013938C
    .asciz "\x1B[43;30mcamera: warning: talk: target is not valid, change normal camera\n\x1B[m"
    .balign 4

glabel D_801393DC
    .asciz "camera: position change %d \n"
    .balign 4

glabel D_801393FC
    .asciz "chau!chau!\n"
    .balign 4

.late_rodata
glabel D_80139E8C
    .float 0.01
# todo: sort these out
glabel D_80139E90
    .float 182.041672 # 32768 / PI
    .float 0.01
    .float 0.01

glabel D_80139E9C
    .float 0.001

glabel D_80139EA0
    .float 0.01

glabel D_80139EA4
    .incbin "baserom.z64", 0xBB1044, 0x4 # 1/3

glabel D_80139EA8
    .float 0.01

glabel D_80139EAC
    .float 0.01

glabel D_80139EB0
    .incbin "baserom.z64", 0xBB1050, 0x4

glabel D_80139EB4
    .incbin "baserom.z64", 0xBB1054, 0x4

glabel D_80139EB8
    .incbin "baserom.z64", 0xBB1058, 0x4

glabel D_80139EBC
    .incbin "baserom.z64", 0xBB105C, 0x4

glabel D_80139EC0
    .incbin "baserom.z64", 0xBB1060, 0x4

glabel D_80139EC4
    .incbin "baserom.z64", 0xBB1064, 0x4

glabel D_80139EC8
    .incbin "baserom.z64", 0xBB1068, 0x4

glabel D_80139ECC
    .incbin "baserom.z64", 0xBB106C, 0x8

glabel D_80139ED4
    .incbin "baserom.z64", 0xBB1074, 0x8

glabel D_80139EDC
    .incbin "baserom.z64", 0xBB107C, 0x4

glabel D_80139EE0
    .incbin "baserom.z64", 0xBB1080, 0x4

glabel D_80139EE4
    .incbin "baserom.z64", 0xBB1084, 0x4

glabel D_80139EE8
    .incbin "baserom.z64", 0xBB1088, 0x4

glabel D_80139EEC
    .incbin "baserom.z64", 0xBB108C, 0x4

glabel D_80139EF0
    .incbin "baserom.z64", 0xBB1090, 0x4

glabel D_80139EF4
    .incbin "baserom.z64", 0xBB1094, 0x4

glabel D_80139EF8
    .incbin "baserom.z64", 0xBB1098, 0x4

glabel D_80139EFC
    .incbin "baserom.z64", 0xBB109C, 0x4

glabel D_80139F00
    .incbin "baserom.z64", 0xBB10A0, 0x4

glabel D_80139F04
    .incbin "baserom.z64", 0xBB10A4, 0x4

glabel D_80139F08
    .incbin "baserom.z64", 0xBB10A8, 0x4

glabel D_80139F0C
    .incbin "baserom.z64", 0xBB10AC, 0x4

glabel D_80139F10
    .incbin "baserom.z64", 0xBB10B0, 0x4

glabel D_80139F14
    .incbin "baserom.z64", 0xBB10B4, 0x4

glabel D_80139F18
    .incbin "baserom.z64", 0xBB10B8, 0xC

glabel D_80139F24
    .incbin "baserom.z64", 0xBB10C4, 0x4

glabel D_80139F28
    .incbin "baserom.z64", 0xBB10C8, 0x4

glabel D_80139F2C
    .incbin "baserom.z64", 0xBB10CC, 0x4

glabel D_80139F30
    .incbin "baserom.z64", 0xBB10D0, 0x4

glabel D_80139F34
    .incbin "baserom.z64", 0xBB10D4, 0x4

glabel D_80139F38
    .incbin "baserom.z64", 0xBB10D8, 0x4

glabel D_80139F3C
    .incbin "baserom.z64", 0xBB10DC, 0x4

glabel D_80139F40
    .incbin "baserom.z64", 0xBB10E0, 0x4

glabel D_80139F44
    .incbin "baserom.z64", 0xBB10E4, 0xC

glabel D_80139F50
    .incbin "baserom.z64", 0xBB10F0, 0x4

glabel D_80139F54
    .incbin "baserom.z64", 0xBB10F4, 0x4

glabel D_80139F58
    .incbin "baserom.z64", 0xBB10F8, 0x4

glabel D_80139F5C
    .incbin "baserom.z64", 0xBB10FC, 0x4

glabel D_80139F60
    .incbin "baserom.z64", 0xBB1100, 0x4

glabel D_80139F64
    .incbin "baserom.z64", 0xBB1104, 0x4

glabel D_80139F68
    .incbin "baserom.z64", 0xBB1108, 0x4

glabel D_80139F6C
    .incbin "baserom.z64", 0xBB110C, 0x4

glabel D_80139F70
    .incbin "baserom.z64", 0xBB1110, 0x4

glabel D_80139F74
    .incbin "baserom.z64", 0xBB1114, 0x4

glabel D_80139F78
    .incbin "baserom.z64", 0xBB1118, 0x4

glabel D_80139F7C
    .incbin "baserom.z64", 0xBB111C, 0x4

glabel D_80139F80
    .incbin "baserom.z64", 0xBB1120, 0xC

glabel D_80139F8C
    .incbin "baserom.z64", 0xBB112C, 0x4

glabel D_80139F90
    .incbin "baserom.z64", 0xBB1130, 0x4

glabel D_80139F94
    .incbin "baserom.z64", 0xBB1134, 0x4

glabel D_80139F98
    .incbin "baserom.z64", 0xBB1138, 0x4

glabel D_80139F9C
    .incbin "baserom.z64", 0xBB113C, 0x4

glabel D_80139FA0
    .incbin "baserom.z64", 0xBB1140, 0x4

glabel D_80139FA4
    .incbin "baserom.z64", 0xBB1144, 0x4

glabel D_80139FA8
    .incbin "baserom.z64", 0xBB1148, 0x4

glabel D_80139FAC
    .incbin "baserom.z64", 0xBB114C, 0x4

glabel D_80139FB0
    .incbin "baserom.z64", 0xBB1150, 0x4

glabel D_80139FB4
    .incbin "baserom.z64", 0xBB1154, 0x4

glabel D_80139FB8
    .incbin "baserom.z64", 0xBB1158, 0x4

glabel D_80139FBC
    .incbin "baserom.z64", 0xBB115C, 0x4

glabel D_80139FC0
    .incbin "baserom.z64", 0xBB1160, 0x4

glabel D_80139FC4
    .incbin "baserom.z64", 0xBB1164, 0x4

glabel D_80139FC8
    .incbin "baserom.z64", 0xBB1168, 0x4

glabel D_80139FCC
    .incbin "baserom.z64", 0xBB116C, 0x4

glabel D_80139FD0
    .incbin "baserom.z64", 0xBB1170, 0x4

glabel D_80139FD4
    .incbin "baserom.z64", 0xBB1174, 0x4

glabel D_80139FD8
    .incbin "baserom.z64", 0xBB1178, 0x4

glabel D_80139FDC
    .incbin "baserom.z64", 0xBB117C, 0x4

glabel D_80139FE0
    .incbin "baserom.z64", 0xBB1180, 0x4

glabel D_80139FE4
    .incbin "baserom.z64", 0xBB1184, 0x4

glabel D_80139FE8
    .incbin "baserom.z64", 0xBB1188, 0x4

glabel D_80139FEC
    .incbin "baserom.z64", 0xBB118C, 0x4

glabel D_80139FF0
    .incbin "baserom.z64", 0xBB1190, 0x4

glabel D_80139FF4
    .incbin "baserom.z64", 0xBB1194, 0x4

glabel D_80139FF8
    .incbin "baserom.z64", 0xBB1198, 0x4

glabel D_80139FFC
    .incbin "baserom.z64", 0xBB119C, 0x4

glabel D_8013A000
    .incbin "baserom.z64", 0xBB11A0, 0x4

glabel D_8013A004
    .incbin "baserom.z64", 0xBB11A4, 0x4

glabel D_8013A008
    .incbin "baserom.z64", 0xBB11A8, 0x4

glabel D_8013A00C
    .incbin "baserom.z64", 0xBB11AC, 0x4

glabel D_8013A010
    .incbin "baserom.z64", 0xBB11B0, 0x4

glabel D_8013A014
    .incbin "baserom.z64", 0xBB11B4, 0x4

glabel D_8013A018
    .incbin "baserom.z64", 0xBB11B8, 0x4

glabel D_8013A01C
    .incbin "baserom.z64", 0xBB11BC, 0x4

glabel D_8013A020
    .incbin "baserom.z64", 0xBB11C0, 0x4

glabel D_8013A024
    .incbin "baserom.z64", 0xBB11C4, 0x4

glabel D_8013A028
    .incbin "baserom.z64", 0xBB11C8, 0x4

glabel D_8013A02C
    .incbin "baserom.z64", 0xBB11CC, 0x4

glabel D_8013A030
    .incbin "baserom.z64", 0xBB11D0, 0x4

glabel D_8013A034
    .incbin "baserom.z64", 0xBB11D4, 0x4

glabel D_8013A038
    .incbin "baserom.z64", 0xBB11D8, 0x4

glabel D_8013A03C
    .incbin "baserom.z64", 0xBB11DC, 0x4

glabel D_8013A040
    .incbin "baserom.z64", 0xBB11E0, 0x4

glabel D_8013A044
    .incbin "baserom.z64", 0xBB11E4, 0x4

glabel D_8013A048
    .incbin "baserom.z64", 0xBB11E8, 0x4

glabel D_8013A04C
    .incbin "baserom.z64", 0xBB11EC, 0x4

glabel D_8013A050
    .incbin "baserom.z64", 0xBB11F0, 0x4

glabel D_8013A054
    .incbin "baserom.z64", 0xBB11F4, 0xC

glabel D_8013A060
    .incbin "baserom.z64", 0xBB1200, 0x4

glabel D_8013A064
    .incbin "baserom.z64", 0xBB1204, 0x4

glabel D_8013A068
    .incbin "baserom.z64", 0xBB1208, 0x4

glabel D_8013A06C
    .incbin "baserom.z64", 0xBB120C, 0x4

glabel D_8013A070
    .incbin "baserom.z64", 0xBB1210, 0x4

glabel D_8013A074
    .incbin "baserom.z64", 0xBB1214, 0x4

glabel D_8013A078
    .incbin "baserom.z64", 0xBB1218, 0xC

glabel D_8013A084
    .incbin "baserom.z64", 0xBB1224, 0x4

glabel D_8013A088
    .incbin "baserom.z64", 0xBB1228, 0x4

glabel D_8013A08C
    .incbin "baserom.z64", 0xBB122C, 0x4

glabel D_8013A090
    .incbin "baserom.z64", 0xBB1230, 0x4

glabel D_8013A094
    .incbin "baserom.z64", 0xBB1234, 0x4

glabel D_8013A098
    .incbin "baserom.z64", 0xBB1238, 0x4

glabel D_8013A09C
    .incbin "baserom.z64", 0xBB123C, 0x4

glabel D_8013A0A0
    .incbin "baserom.z64", 0xBB1240, 0x4

glabel D_8013A0A4
    .incbin "baserom.z64", 0xBB1244, 0x4

glabel D_8013A0A8
    .incbin "baserom.z64", 0xBB1248, 0x4

glabel D_8013A0AC
    .incbin "baserom.z64", 0xBB124C, 0x4

glabel D_8013A0B0
    .incbin "baserom.z64", 0xBB1250, 0x4

glabel D_8013A0B4
    .incbin "baserom.z64", 0xBB1254, 0x4

glabel D_8013A0B8
    .incbin "baserom.z64", 0xBB1258, 0x4

glabel D_8013A0BC
    .incbin "baserom.z64", 0xBB125C, 0x4

glabel D_8013A0C0
    .incbin "baserom.z64", 0xBB1260, 0x4

glabel D_8013A0C4
    .incbin "baserom.z64", 0xBB1264, 0x4

glabel D_8013A0C8
    .incbin "baserom.z64", 0xBB1268, 0x4

glabel D_8013A0CC
    .incbin "baserom.z64", 0xBB126C, 0x4

glabel D_8013A0D0
    .incbin "baserom.z64", 0xBB1270, 0x4

glabel D_8013A0D4
    .incbin "baserom.z64", 0xBB1274, 0x4

glabel D_8013A0D8
    .incbin "baserom.z64", 0xBB1278, 0x4

glabel D_8013A0DC
    .incbin "baserom.z64", 0xBB127C, 0x4

glabel jtbl_8013A0E0
    .incbin "baserom.z64", 0xBB1280, 0x30

glabel D_8013A110
    .incbin "baserom.z64", 0xBB12B0, 0x4

glabel D_8013A114
    .incbin "baserom.z64", 0xBB12B4, 0x4

glabel D_8013A118
    .incbin "baserom.z64", 0xBB12B8, 0x4

glabel D_8013A11C
    .incbin "baserom.z64", 0xBB12BC, 0x4

glabel D_8013A120
    .incbin "baserom.z64", 0xBB12C0, 0x4

glabel D_8013A124
    .incbin "baserom.z64", 0xBB12C4, 0x4

glabel D_8013A128
    .incbin "baserom.z64", 0xBB12C8, 0x4

glabel D_8013A12C
    .incbin "baserom.z64", 0xBB12CC, 0x4

glabel D_8013A130
    .incbin "baserom.z64", 0xBB12D0, 0x4

glabel D_8013A134
    .incbin "baserom.z64", 0xBB12D4, 0x4

glabel D_8013A138
    .incbin "baserom.z64", 0xBB12D8, 0x4

glabel D_8013A13C
    .incbin "baserom.z64", 0xBB12DC, 0x4

glabel D_8013A140
    .incbin "baserom.z64", 0xBB12E0, 0x4

glabel D_8013A144
    .incbin "baserom.z64", 0xBB12E4, 0x4

glabel D_8013A148
    .incbin "baserom.z64", 0xBB12E8, 0x4

glabel D_8013A14C
    .incbin "baserom.z64", 0xBB12EC, 0x4

glabel D_8013A150
    .incbin "baserom.z64", 0xBB12F0, 0x4

glabel D_8013A154
    .incbin "baserom.z64", 0xBB12F4, 0x4

glabel D_8013A158
    .incbin "baserom.z64", 0xBB12F8, 0x4

glabel D_8013A15C
    .incbin "baserom.z64", 0xBB12FC, 0x4

glabel D_8013A160
    .incbin "baserom.z64", 0xBB1300, 0x4

glabel D_8013A164
    .incbin "baserom.z64", 0xBB1304, 0x4

glabel D_8013A168
    .incbin "baserom.z64", 0xBB1308, 0x4

glabel D_8013A16C
    .incbin "baserom.z64", 0xBB130C, 0x4

glabel D_8013A170
    .incbin "baserom.z64", 0xBB1310, 0x4

glabel D_8013A174
    .incbin "baserom.z64", 0xBB1314, 0x4

glabel D_8013A178
    .incbin "baserom.z64", 0xBB1318, 0x4

glabel D_8013A17C
    .incbin "baserom.z64", 0xBB131C, 0x4

glabel D_8013A180
    .incbin "baserom.z64", 0xBB1320, 0x4

glabel D_8013A184
    .incbin "baserom.z64", 0xBB1324, 0x4

glabel D_8013A188
    .incbin "baserom.z64", 0xBB1328, 0x4

glabel D_8013A18C
    .incbin "baserom.z64", 0xBB132C, 0x4

glabel D_8013A190
    .incbin "baserom.z64", 0xBB1330, 0x4

glabel D_8013A194
    .incbin "baserom.z64", 0xBB1334, 0x4

glabel D_8013A198
    .incbin "baserom.z64", 0xBB1338, 0x4

glabel D_8013A19C
    .incbin "baserom.z64", 0xBB133C, 0x4

glabel D_8013A1A0
    .incbin "baserom.z64", 0xBB1340, 0x4

glabel D_8013A1A4
    .incbin "baserom.z64", 0xBB1344, 0x4

glabel D_8013A1A8
    .incbin "baserom.z64", 0xBB1348, 0x4

glabel D_8013A1AC
    .incbin "baserom.z64", 0xBB134C, 0x4

glabel D_8013A1B0
    .incbin "baserom.z64", 0xBB1350, 0x4

glabel D_8013A1B4
    .incbin "baserom.z64", 0xBB1354, 0x4

glabel D_8013A1B8
    .incbin "baserom.z64", 0xBB1358, 0x4

glabel D_8013A1BC
    .incbin "baserom.z64", 0xBB135C, 0x4

glabel D_8013A1C0
    .incbin "baserom.z64", 0xBB1360, 0x4

glabel D_8013A1C4
    .incbin "baserom.z64", 0xBB1364, 0x4

glabel D_8013A1C8
    .incbin "baserom.z64", 0xBB1368, 0xC

glabel D_8013A1D4
    .incbin "baserom.z64", 0xBB1374, 0x4

glabel D_8013A1D8
    .incbin "baserom.z64", 0xBB1378, 0x4

glabel D_8013A1DC
    .incbin "baserom.z64", 0xBB137C, 0x4

glabel D_8013A1E0
    .incbin "baserom.z64", 0xBB1380, 0x4

glabel D_8013A1E4
    .incbin "baserom.z64", 0xBB1384, 0x4

glabel D_8013A1E8
    .incbin "baserom.z64", 0xBB1388, 0x4
    
.text
glabel func_800473A0
/* ABE540 800473A0 27BDFF50 */  addiu $sp, $sp, -0xb0
/* ABE544 800473A4 AFB0001C */  sw    $s0, 0x1c($sp)
/* ABE548 800473A8 00808025 */  move  $s0, $a0
/* ABE54C 800473AC AFBF0024 */  sw    $ra, 0x24($sp)
/* ABE550 800473B0 AFB10020 */  sw    $s1, 0x20($sp)
/* ABE554 800473B4 0C00B721 */  jal   func_8002DC84
/* ABE558 800473B8 8C840090 */   lw    $a0, 0x90($a0)
/* ABE55C 800473BC 8602015E */  lh    $v0, 0x15e($s0)
/* ABE560 800473C0 2401000A */  li    $at, 10
/* ABE564 800473C4 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* ABE568 800473C8 10400009 */  beqz  $v0, .L800473F0
/* ABE56C 800473CC 00000000 */   nop   
/* ABE570 800473D0 10410007 */  beq   $v0, $at, .L800473F0
/* ABE574 800473D4 24010014 */   li    $at, 20
/* ABE578 800473D8 10410005 */  beq   $v0, $at, .L800473F0
/* ABE57C 800473DC 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABE580 800473E0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABE584 800473E4 85C30314 */  lh    $v1, 0x314($t6)
/* ABE588 800473E8 1060005B */  beqz  $v1, .L80047558
/* ABE58C 800473EC 00000000 */   nop   
.L800473F0:
/* ABE590 800473F0 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* ABE594 800473F4 3C018014 */  lui   $at, %hi(D_80139E8C)
/* ABE598 800473F8 C4309E8C */  lwc1  $f16, %lo(D_80139E8C)($at)
/* ABE59C 800473FC 856C01F0 */  lh    $t4, 0x1f0($t3)
/* ABE5A0 80047400 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABE5A4 80047404 44814000 */  mtc1  $at, $f8
/* ABE5A8 80047408 448C2000 */  mtc1  $t4, $f4
/* ABE5AC 8004740C 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ABE5B0 80047410 860F0142 */  lh    $t7, 0x142($s0)
/* ABE5B4 80047414 468021A0 */  cvt.s.w $f6, $f4
/* ABE5B8 80047418 44812000 */  mtc1  $at, $f4
/* ABE5BC 8004741C 3C198012 */  lui   $t9, %hi(D_8011D068)
/* ABE5C0 80047420 000FC0C0 */  sll   $t8, $t7, 3
/* ABE5C4 80047424 86080144 */  lh    $t0, 0x144($s0)
/* ABE5C8 80047428 0338C821 */  addu  $t9, $t9, $t8
/* ABE5CC 8004742C 46103302 */  mul.s $f12, $f6, $f16
/* ABE5D0 80047430 46002183 */  div.s $f6, $f4, $f0
/* ABE5D4 80047434 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* ABE5D8 80047438 000848C0 */  sll   $t1, $t0, 3
/* ABE5DC 8004743C 3C018014 */  lui   $at, %hi(D_80139E90)
/* ABE5E0 80047440 03295021 */  addu  $t2, $t9, $t1
/* ABE5E4 80047444 8D420004 */  lw    $v0, 4($t2)
/* ABE5E8 80047448 460C4280 */  add.s $f10, $f8, $f12
/* ABE5EC 8004744C 844D0000 */  lh    $t5, ($v0)
/* ABE5F0 80047450 24420024 */  addiu $v0, $v0, 0x24
/* ABE5F4 80047454 46066202 */  mul.s $f8, $f12, $f6
/* ABE5F8 80047458 448D3000 */  mtc1  $t5, $f6
/* ABE5FC 8004745C 46100102 */  mul.s $f4, $f0, $f16
/* ABE600 80047460 46085381 */  sub.s $f14, $f10, $f8
/* ABE604 80047464 468032A0 */  cvt.s.w $f10, $f6
/* ABE608 80047468 460E2082 */  mul.s $f2, $f4, $f14
/* ABE60C 8004746C 00000000 */  nop   
/* ABE610 80047470 46025202 */  mul.s $f8, $f10, $f2
/* ABE614 80047474 E6080000 */  swc1  $f8, ($s0)
/* ABE618 80047478 844EFFE0 */  lh    $t6, -0x20($v0)
/* ABE61C 8004747C 448E2000 */  mtc1  $t6, $f4
/* ABE620 80047480 00000000 */  nop   
/* ABE624 80047484 468021A0 */  cvt.s.w $f6, $f4
/* ABE628 80047488 46023282 */  mul.s $f10, $f6, $f2
/* ABE62C 8004748C E60A0004 */  swc1  $f10, 4($s0)
/* ABE630 80047490 844FFFE4 */  lh    $t7, -0x1c($v0)
/* ABE634 80047494 448F4000 */  mtc1  $t7, $f8
/* ABE638 80047498 3C0F8016 */  lui   $t7, %hi(gGameInfo)
/* ABE63C 8004749C 46804120 */  cvt.s.w $f4, $f8
/* ABE640 800474A0 46022182 */  mul.s $f6, $f4, $f2
/* ABE644 800474A4 E6060008 */  swc1  $f6, 8($s0)
/* ABE648 800474A8 8458FFE8 */  lh    $t8, -0x18($v0)
/* ABE64C 800474AC C4249E90 */  lwc1  $f4, %lo(D_80139E90)($at)
/* ABE650 800474B0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABE654 800474B4 44985000 */  mtc1  $t8, $f10
/* ABE658 800474B8 00000000 */  nop   
/* ABE65C 800474BC 46805220 */  cvt.s.w $f8, $f10
/* ABE660 800474C0 44815000 */  mtc1  $at, $f10
/* ABE664 800474C4 46044182 */  mul.s $f6, $f8, $f4
/* ABE668 800474C8 460A3200 */  add.s $f8, $f6, $f10
/* ABE66C 800474CC 4600410D */  trunc.w.s $f4, $f8
/* ABE670 800474D0 44192000 */  mfc1  $t9, $f4
/* ABE674 800474D4 00000000 */  nop   
/* ABE678 800474D8 A6190020 */  sh    $t9, 0x20($s0)
/* ABE67C 800474DC 8449FFEC */  lh    $t1, -0x14($v0)
/* ABE680 800474E0 44893000 */  mtc1  $t1, $f6
/* ABE684 800474E4 00000000 */  nop   
/* ABE688 800474E8 468032A0 */  cvt.s.w $f10, $f6
/* ABE68C 800474EC E60A000C */  swc1  $f10, 0xc($s0)
/* ABE690 800474F0 844AFFF0 */  lh    $t2, -0x10($v0)
/* ABE694 800474F4 448A4000 */  mtc1  $t2, $f8
/* ABE698 800474F8 00000000 */  nop   
/* ABE69C 800474FC 46804120 */  cvt.s.w $f4, $f8
/* ABE6A0 80047500 E6040010 */  swc1  $f4, 0x10($s0)
/* ABE6A4 80047504 844BFFF4 */  lh    $t3, -0xc($v0)
/* ABE6A8 80047508 448B3000 */  mtc1  $t3, $f6
/* ABE6AC 8004750C 00000000 */  nop   
/* ABE6B0 80047510 468032A0 */  cvt.s.w $f10, $f6
/* ABE6B4 80047514 46105202 */  mul.s $f8, $f10, $f16
/* ABE6B8 80047518 E6080014 */  swc1  $f8, 0x14($s0)
/* ABE6BC 8004751C 844CFFF8 */  lh    $t4, -8($v0)
/* ABE6C0 80047520 448C2000 */  mtc1  $t4, $f4
/* ABE6C4 80047524 00000000 */  nop   
/* ABE6C8 80047528 468021A0 */  cvt.s.w $f6, $f4
/* ABE6CC 8004752C E6060018 */  swc1  $f6, 0x18($s0)
/* ABE6D0 80047530 844DFFFC */  lh    $t5, -4($v0)
/* ABE6D4 80047534 448D5000 */  mtc1  $t5, $f10
/* ABE6D8 80047538 00000000 */  nop   
/* ABE6DC 8004753C 46805220 */  cvt.s.w $f8, $f10
/* ABE6E0 80047540 46104102 */  mul.s $f4, $f8, $f16
/* ABE6E4 80047544 E604001C */  swc1  $f4, 0x1c($s0)
/* ABE6E8 80047548 844E0000 */  lh    $t6, ($v0)
/* ABE6EC 8004754C A60E0022 */  sh    $t6, 0x22($s0)
/* ABE6F0 80047550 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ABE6F4 80047554 85E30314 */  lh    $v1, 0x314($t7)
.L80047558:
/* ABE6F8 80047558 50600004 */  beql  $v1, $zero, .L8004756C
/* ABE6FC 8004755C 86180022 */   lh    $t8, 0x22($s0)
/* ABE700 80047560 0C011495 */  jal   func_80045254
/* ABE704 80047564 02002025 */   move  $a0, $s0
/* ABE708 80047568 86180022 */  lh    $t8, 0x22($s0)
.L8004756C:
/* ABE70C 8004756C 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ABE710 80047570 26050050 */  addiu $a1, $s0, 0x50
/* ABE714 80047574 2606005C */  addiu $a2, $s0, 0x5c
/* ABE718 80047578 AFA60040 */  sw    $a2, 0x40($sp)
/* ABE71C 8004757C AFA5003C */  sw    $a1, 0x3c($sp)
/* ABE720 80047580 27A40074 */  addiu $a0, $sp, 0x74
/* ABE724 80047584 0C01F124 */  jal   func_8007C490
/* ABE728 80047588 AC38D3A0 */   sw    $t8, %lo(D_8011D3A0)($at)
/* ABE72C 8004758C 26060074 */  addiu $a2, $s0, 0x74
/* ABE730 80047590 AFA60038 */  sw    $a2, 0x38($sp)
/* ABE734 80047594 27A4006C */  addiu $a0, $sp, 0x6c
/* ABE738 80047598 0C01F124 */  jal   func_8007C490
/* ABE73C 8004759C 8FA5003C */   lw    $a1, 0x3c($sp)
/* ABE740 800475A0 8603015E */  lh    $v1, 0x15e($s0)
/* ABE744 800475A4 2401000A */  li    $at, 10
/* ABE748 800475A8 26110024 */  addiu $s1, $s0, 0x24
/* ABE74C 800475AC 10600017 */  beqz  $v1, .L8004760C
/* ABE750 800475B0 240B000A */   li    $t3, 10
/* ABE754 800475B4 10610015 */  beq   $v1, $at, .L8004760C
/* ABE758 800475B8 24010014 */   li    $at, 20
/* ABE75C 800475BC 10610006 */  beq   $v1, $at, .L800475D8
/* ABE760 800475C0 3C088016 */   lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* ABE764 800475C4 24010019 */  li    $at, 25
/* ABE768 800475C8 50610011 */  beql  $v1, $at, .L80047610
/* ABE76C 800475CC A6200018 */   sh    $zero, 0x18($s1)
/* ABE770 800475D0 10000026 */  b     .L8004766C
/* ABE774 800475D4 26110024 */   addiu $s1, $s0, 0x24
.L800475D8:
/* ABE778 800475D8 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* ABE77C 800475DC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* ABE780 800475E0 851901CA */  lh    $t9, 0x1ca($t0)
/* ABE784 800475E4 44993000 */  mtc1  $t9, $f6
/* ABE788 800475E8 00000000 */  nop   
/* ABE78C 800475EC 468032A0 */  cvt.s.w $f10, $f6
/* ABE790 800475F0 E60A00C8 */  swc1  $f10, 0xc8($s0)
/* ABE794 800475F4 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* ABE798 800475F8 852A01CA */  lh    $t2, 0x1ca($t1)
/* ABE79C 800475FC 448A4000 */  mtc1  $t2, $f8
/* ABE7A0 80047600 00000000 */  nop   
/* ABE7A4 80047604 46804120 */  cvt.s.w $f4, $f8
/* ABE7A8 80047608 E60400C4 */  swc1  $f4, 0xc4($s0)
.L8004760C:
/* ABE7AC 8004760C A6200018 */  sh    $zero, 0x18($s1)
.L80047610:
/* ABE7B0 80047610 86230018 */  lh    $v1, 0x18($s1)
/* ABE7B4 80047614 AE20000C */  sw    $zero, 0xc($s1)
/* ABE7B8 80047618 A6200024 */  sh    $zero, 0x24($s1)
/* ABE7BC 8004761C A62B0028 */  sh    $t3, 0x28($s1)
/* ABE7C0 80047620 A6230014 */  sh    $v1, 0x14($s1)
/* ABE7C4 80047624 A6230016 */  sh    $v1, 0x16($s1)
/* ABE7C8 80047628 C606000C */  lwc1  $f6, 0xc($s0)
/* ABE7CC 8004762C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABE7D0 80047630 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* ABE7D4 80047634 E6260010 */  swc1  $f6, 0x10($s1)
/* ABE7D8 80047638 C60A0098 */  lwc1  $f10, 0x98($s0)
/* ABE7DC 8004763C E62A001C */  swc1  $f10, 0x1c($s1)
/* ABE7E0 80047640 C60800D8 */  lwc1  $f8, 0xd8($s0)
/* ABE7E4 80047644 A620001A */  sh    $zero, 0x1a($s1)
/* ABE7E8 80047648 E6280020 */  swc1  $f8, 0x20($s1)
/* ABE7EC 8004764C 87AC007A */  lh    $t4, 0x7a($sp)
/* ABE7F0 80047650 A62C0026 */  sh    $t4, 0x26($s1)
/* ABE7F4 80047654 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABE7F8 80047658 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* ABE7FC 8004765C 844E01F8 */  lh    $t6, 0x1f8($v0)
/* ABE800 80047660 844D01FA */  lh    $t5, 0x1fa($v0)
/* ABE804 80047664 01AE7821 */  addu  $t7, $t5, $t6
/* ABE808 80047668 A62F002A */  sh    $t7, 0x2a($s1)
.L8004766C:
/* ABE80C 8004766C 24030001 */  li    $v1, 1
/* ABE810 80047670 A603015E */  sh    $v1, 0x15e($s0)
/* ABE814 80047674 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* ABE818 80047678 AC23D3E8 */  sw    $v1, %lo(D_8011D3E8)($at)
/* ABE81C 8004767C 86220028 */  lh    $v0, 0x28($s1)
/* ABE820 80047680 3C018014 */  lui   $at, %hi(D_80139E9C)
/* ABE824 80047684 10400002 */  beqz  $v0, .L80047690
/* ABE828 80047688 2458FFFF */   addiu $t8, $v0, -1
/* ABE82C 8004768C A6380028 */  sh    $t8, 0x28($s1)
.L80047690:
/* ABE830 80047690 C4249E9C */  lwc1  $f4, %lo(D_80139E9C)($at)
/* ABE834 80047694 C60600D8 */  lwc1  $f6, 0xd8($s0)
/* ABE838 80047698 4606203C */  c.lt.s $f4, $f6
/* ABE83C 8004769C 00000000 */  nop   
/* ABE840 800476A0 4502000A */  bc1fl .L800476CC
/* ABE844 800476A4 8622002A */   lh    $v0, 0x2a($s1)
/* ABE848 800476A8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABE84C 800476AC 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* ABE850 800476B0 8C620000 */  lw    $v0, ($v1)
/* ABE854 800476B4 844801FA */  lh    $t0, 0x1fa($v0)
/* ABE858 800476B8 845901F8 */  lh    $t9, 0x1f8($v0)
/* ABE85C 800476BC 01194821 */  addu  $t1, $t0, $t9
/* ABE860 800476C0 10000020 */  b     .L80047744
/* ABE864 800476C4 A629002A */   sh    $t1, 0x2a($s1)
/* ABE868 800476C8 8622002A */  lh    $v0, 0x2a($s1)
.L800476CC:
/* ABE86C 800476CC 1840001D */  blez  $v0, .L80047744
/* ABE870 800476D0 3C0A8016 */   lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* ABE874 800476D4 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* ABE878 800476D8 854B01F8 */  lh    $t3, 0x1f8($t2)
/* ABE87C 800476DC 0162082A */  slt   $at, $t3, $v0
/* ABE880 800476E0 50200017 */  beql  $at, $zero, .L80047740
/* ABE884 800476E4 244CFFFF */   addiu $t4, $v0, -1
/* ABE888 800476E8 860C00A2 */  lh    $t4, 0xa2($s0)
/* ABE88C 800476EC 87B8007A */  lh    $t8, 0x7a($sp)
/* ABE890 800476F0 258D8001 */  addiu $t5, $t4, -0x7fff
/* ABE894 800476F4 000D7400 */  sll   $t6, $t5, 0x10
/* ABE898 800476F8 000E7C03 */  sra   $t7, $t6, 0x10
/* ABE89C 800476FC 01F84023 */  subu  $t0, $t7, $t8
/* ABE8A0 80047700 0008CC00 */  sll   $t9, $t0, 0x10
/* ABE8A4 80047704 00194C03 */  sra   $t1, $t9, 0x10
/* ABE8A8 80047708 0122001A */  div   $zero, $t1, $v0
/* ABE8AC 8004770C 00005012 */  mflo  $t2
/* ABE8B0 80047710 030A5821 */  addu  $t3, $t8, $t2
/* ABE8B4 80047714 A62B0026 */  sh    $t3, 0x26($s1)
/* ABE8B8 80047718 14400002 */  bnez  $v0, .L80047724
/* ABE8BC 8004771C 00000000 */   nop   
/* ABE8C0 80047720 0007000D */  break 7
.L80047724:
/* ABE8C4 80047724 2401FFFF */  li    $at, -1
/* ABE8C8 80047728 14410004 */  bne   $v0, $at, .L8004773C
/* ABE8CC 8004772C 3C018000 */   lui   $at, 0x8000
/* ABE8D0 80047730 15210002 */  bne   $t1, $at, .L8004773C
/* ABE8D4 80047734 00000000 */   nop   
/* ABE8D8 80047738 0006000D */  break 6
.L8004773C:
/* ABE8DC 8004773C 244CFFFF */  addiu $t4, $v0, -1
.L80047740:
/* ABE8E0 80047740 A62C002A */  sh    $t4, 0x2a($s1)
.L80047744:
/* ABE8E4 80047744 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABE8E8 80047748 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* ABE8EC 8004774C 8C620000 */  lw    $v0, ($v1)
/* ABE8F0 80047750 3C018014 */  lui   $at, %hi(D_80139EA0)
/* ABE8F4 80047754 C4329EA0 */  lwc1  $f18, %lo(D_80139EA0)($at)
/* ABE8F8 80047758 844D01C6 */  lh    $t5, 0x1c6($v0)
/* ABE8FC 8004775C 844E01C8 */  lh    $t6, 0x1c8($v0)
/* ABE900 80047760 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* ABE904 80047764 448D5000 */  mtc1  $t5, $f10
/* ABE908 80047768 448E2000 */  mtc1  $t6, $f4
/* ABE90C 8004776C 46805220 */  cvt.s.w $f8, $f10
/* ABE910 80047770 468021A0 */  cvt.s.w $f6, $f4
/* ABE914 80047774 46124082 */  mul.s $f2, $f8, $f18
/* ABE918 80047778 00000000 */  nop   
/* ABE91C 8004777C 46001402 */  mul.s $f16, $f2, $f0
/* ABE920 80047780 00000000 */  nop   
/* ABE924 80047784 46123282 */  mul.s $f10, $f6, $f18
/* ABE928 80047788 00000000 */  nop   
/* ABE92C 8004778C 46005202 */  mul.s $f8, $f10, $f0
/* ABE930 80047790 E7A8009C */  swc1  $f8, 0x9c($sp)
/* ABE934 80047794 862F0018 */  lh    $t7, 0x18($s1)
/* ABE938 80047798 11E00003 */  beqz  $t7, .L800477A8
/* ABE93C 8004779C 00000000 */   nop   
/* ABE940 800477A0 10000002 */  b     .L800477AC
/* ABE944 800477A4 E7A20098 */   swc1  $f2, 0x98($sp)
.L800477A8:
/* ABE948 800477A8 E7B00098 */  swc1  $f16, 0x98($sp)
.L800477AC:
/* ABE94C 800477AC C60000D8 */  lwc1  $f0, 0xd8($s0)
/* ABE950 800477B0 C6240020 */  lwc1  $f4, 0x20($s1)
/* ABE954 800477B4 3C018014 */  lui   $at, %hi(D_80139EA4)
/* ABE958 800477B8 C42A9EA4 */  lwc1  $f10, %lo(D_80139EA4)($at)
/* ABE95C 800477BC 46040181 */  sub.s $f6, $f0, $f4
/* ABE960 800477C0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABE964 800477C4 44814000 */  mtc1  $at, $f8
/* ABE968 800477C8 460A3082 */  mul.s $f2, $f6, $f10
/* ABE96C 800477CC 4602403C */  c.lt.s $f8, $f2
/* ABE970 800477D0 00000000 */  nop   
/* ABE974 800477D4 45000003 */  bc1f  .L800477E4
/* ABE978 800477D8 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* ABE97C 800477DC 44811000 */  mtc1  $at, $f2
/* ABE980 800477E0 00000000 */  nop   
.L800477E4:
/* ABE984 800477E4 3C01BF80 */  li    $at, 0xBF800000 # 0.000000
/* ABE988 800477E8 44816000 */  mtc1  $at, $f12
/* ABE98C 800477EC 00000000 */  nop   
/* ABE990 800477F0 4602603C */  c.lt.s $f12, $f2
/* ABE994 800477F4 00000000 */  nop   
/* ABE998 800477F8 45020003 */  bc1fl .L80047808
/* ABE99C 800477FC 8622001A */   lh    $v0, 0x1a($s1)
/* ABE9A0 80047800 46006086 */  mov.s $f2, $f12
/* ABE9A4 80047804 8622001A */  lh    $v0, 0x1a($s1)
.L80047808:
/* ABE9A8 80047808 E6200020 */  swc1  $f0, 0x20($s1)
/* ABE9AC 8004780C 10400022 */  beqz  $v0, .L80047898
/* ABE9B0 80047810 00024040 */   sll   $t0, $v0, 1
/* ABE9B4 80047814 44883000 */  mtc1  $t0, $f6
/* ABE9B8 80047818 C6240010 */  lwc1  $f4, 0x10($s1)
/* ABE9BC 8004781C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABE9C0 80047820 468032A0 */  cvt.s.w $f10, $f6
/* ABE9C4 80047824 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABE9C8 80047828 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABE9CC 8004782C E7B000A0 */  swc1  $f16, 0xa0($sp)
/* ABE9D0 80047830 E7A20094 */  swc1  $f2, 0x94($sp)
/* ABE9D4 80047834 8FA60098 */  lw    $a2, 0x98($sp)
/* ABE9D8 80047838 0C010E27 */  jal   func_8004389C
/* ABE9DC 8004783C 460A2300 */   add.s $f12, $f4, $f10
/* ABE9E0 80047840 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABE9E4 80047844 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ABE9E8 80047848 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ABE9EC 8004784C 8638001A */  lh    $t8, 0x1a($s1)
/* ABE9F0 80047850 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABE9F4 80047854 872901A2 */  lh    $t1, 0x1a2($t9)
/* ABE9F8 80047858 00185040 */  sll   $t2, $t8, 1
/* ABE9FC 8004785C 448A2000 */  mtc1  $t2, $f4
/* ABEA00 80047860 44894000 */  mtc1  $t1, $f8
/* ABEA04 80047864 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEA08 80047868 468022A0 */  cvt.s.w $f10, $f4
/* ABEA0C 8004786C 8FA6009C */  lw    $a2, 0x9c($sp)
/* ABEA10 80047870 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABEA14 80047874 468041A0 */  cvt.s.w $f6, $f8
/* ABEA18 80047878 0C010E27 */  jal   func_8004389C
/* ABEA1C 8004787C 460A3300 */   add.s $f12, $f6, $f10
/* ABEA20 80047880 C7B000A0 */  lwc1  $f16, 0xa0($sp)
/* ABEA24 80047884 E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABEA28 80047888 862B001A */  lh    $t3, 0x1a($s1)
/* ABEA2C 8004788C 256CFFFF */  addiu $t4, $t3, -1
/* ABEA30 80047890 10000020 */  b     .L80047914
/* ABEA34 80047894 A62C001A */   sh    $t4, 0x1a($s1)
.L80047898:
/* ABEA38 80047898 8C6D0000 */  lw    $t5, ($v1)
/* ABEA3C 8004789C C6200010 */  lwc1  $f0, 0x10($s1)
/* ABEA40 800478A0 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABEA44 800478A4 85AE01F6 */  lh    $t6, 0x1f6($t5)
/* ABEA48 800478A8 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABEA4C 800478AC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEA50 800478B0 448E4000 */  mtc1  $t6, $f8
/* ABEA54 800478B4 E7B000A0 */  swc1  $f16, 0xa0($sp)
/* ABEA58 800478B8 E7A20094 */  swc1  $f2, 0x94($sp)
/* ABEA5C 800478BC 46804120 */  cvt.s.w $f4, $f8
/* ABEA60 800478C0 8FA60098 */  lw    $a2, 0x98($sp)
/* ABEA64 800478C4 46122182 */  mul.s $f6, $f4, $f18
/* ABEA68 800478C8 00000000 */  nop   
/* ABEA6C 800478CC 46003282 */  mul.s $f10, $f6, $f0
/* ABEA70 800478D0 00000000 */  nop   
/* ABEA74 800478D4 46025202 */  mul.s $f8, $f10, $f2
/* ABEA78 800478D8 0C010E27 */  jal   func_8004389C
/* ABEA7C 800478DC 46080301 */   sub.s $f12, $f0, $f8
/* ABEA80 800478E0 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABEA84 800478E4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ABEA88 800478E8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ABEA8C 800478EC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABEA90 800478F0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEA94 800478F4 85E801A2 */  lh    $t0, 0x1a2($t7)
/* ABEA98 800478F8 8FA6009C */  lw    $a2, 0x9c($sp)
/* ABEA9C 800478FC C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABEAA0 80047900 44882000 */  mtc1  $t0, $f4
/* ABEAA4 80047904 0C010E27 */  jal   func_8004389C
/* ABEAA8 80047908 46802320 */   cvt.s.w $f12, $f4
/* ABEAAC 8004790C C7B000A0 */  lwc1  $f16, 0xa0($sp)
/* ABEAB0 80047910 E60000C4 */  swc1  $f0, 0xc4($s0)
.L80047914:
/* ABEAB4 80047914 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ABEAB8 80047918 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ABEABC 8004791C C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABEAC0 80047920 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABEAC4 80047924 872901A2 */  lh    $t1, 0x1a2($t9)
/* ABEAC8 80047928 E7B000A0 */  swc1  $f16, 0xa0($sp)
/* ABEACC 8004792C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEAD0 80047930 44893000 */  mtc1  $t1, $f6
/* ABEAD4 80047934 8FA6009C */  lw    $a2, 0x9c($sp)
/* ABEAD8 80047938 0C010E27 */  jal   func_8004389C
/* ABEADC 8004793C 46803320 */   cvt.s.w $f12, $f6
/* ABEAE0 80047940 C7B000A0 */  lwc1  $f16, 0xa0($sp)
/* ABEAE4 80047944 E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABEAE8 80047948 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABEAEC 8004794C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABEAF0 80047950 3C018014 */  lui   $at, %hi(D_80139EA8)
/* ABEAF4 80047954 C4249EA8 */  lwc1  $f4, %lo(D_80139EA8)($at)
/* ABEAF8 80047958 870A0198 */  lh    $t2, 0x198($t8)
/* ABEAFC 8004795C 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABEB00 80047960 44068000 */  mfc1  $a2, $f16
/* ABEB04 80047964 448A5000 */  mtc1  $t2, $f10
/* ABEB08 80047968 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEB0C 8004796C C60E00CC */  lwc1  $f14, 0xcc($s0)
/* ABEB10 80047970 46805220 */  cvt.s.w $f8, $f10
/* ABEB14 80047974 46044302 */  mul.s $f12, $f8, $f4
/* ABEB18 80047978 0C010E27 */  jal   func_8004389C
/* ABEB1C 8004797C 00000000 */   nop   
/* ABEB20 80047980 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABEB24 80047984 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* ABEB28 80047988 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* ABEB2C 8004798C 3C018014 */  lui   $at, %hi(D_80139EAC)
/* ABEB30 80047990 C4289EAC */  lwc1  $f8, %lo(D_80139EAC)($at)
/* ABEB34 80047994 856C019A */  lh    $t4, 0x19a($t3)
/* ABEB38 80047998 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABEB3C 8004799C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEB40 800479A0 448C3000 */  mtc1  $t4, $f6
/* ABEB44 800479A4 8FA6009C */  lw    $a2, 0x9c($sp)
/* ABEB48 800479A8 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* ABEB4C 800479AC 468032A0 */  cvt.s.w $f10, $f6
/* ABEB50 800479B0 46085302 */  mul.s $f12, $f10, $f8
/* ABEB54 800479B4 0C010E27 */  jal   func_8004389C
/* ABEB58 800479B8 00000000 */   nop   
/* ABEB5C 800479BC E60000D0 */  swc1  $f0, 0xd0($s0)
/* ABEB60 800479C0 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* ABEB64 800479C4 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* ABEB68 800479C8 3C018014 */  lui   $at, %hi(D_80139EB0)
/* ABEB6C 800479CC C42A9EB0 */  lwc1  $f10, %lo(D_80139EB0)($at)
/* ABEB70 800479D0 85AE019C */  lh    $t6, 0x19c($t5)
/* ABEB74 800479D4 3C018014 */  lui   $at, %hi(D_80139EB4)
/* ABEB78 800479D8 C60800E0 */  lwc1  $f8, 0xe0($s0)
/* ABEB7C 800479DC 448E2000 */  mtc1  $t6, $f4
/* ABEB80 800479E0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABEB84 800479E4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABEB88 800479E8 468021A0 */  cvt.s.w $f6, $f4
/* ABEB8C 800479EC C4249EB4 */  lwc1  $f4, %lo(D_80139EB4)($at)
/* ABEB90 800479F0 46000386 */  mov.s $f14, $f0
/* ABEB94 800479F4 460A3302 */  mul.s $f12, $f6, $f10
/* ABEB98 800479F8 00000000 */  nop   
/* ABEB9C 800479FC 46044182 */  mul.s $f6, $f8, $f4
/* ABEBA0 80047A00 44063000 */  mfc1  $a2, $f6
/* ABEBA4 80047A04 0C010E27 */  jal   func_8004389C
/* ABEBA8 80047A08 00000000 */   nop   
/* ABEBAC 80047A0C 860F0022 */  lh    $t7, 0x22($s0)
/* ABEBB0 80047A10 E60000D4 */  swc1  $f0, 0xd4($s0)
/* ABEBB4 80047A14 31E80001 */  andi  $t0, $t7, 1
/* ABEBB8 80047A18 5100001E */  beql  $t0, $zero, .L80047A94
/* ABEBBC 80047A1C A6200024 */   sh    $zero, 0x24($s1)
/* ABEBC0 80047A20 87A5007A */  lh    $a1, 0x7a($sp)
/* ABEBC4 80047A24 02002025 */  move  $a0, $s0
/* ABEBC8 80047A28 00003025 */  move  $a2, $zero
/* ABEBCC 80047A2C 24A58001 */  addiu $a1, $a1, -0x7fff
/* ABEBD0 80047A30 00052C00 */  sll   $a1, $a1, 0x10
/* ABEBD4 80047A34 0C0112B7 */  jal   func_80044ADC
/* ABEBD8 80047A38 00052C03 */   sra   $a1, $a1, 0x10
/* ABEBDC 80047A3C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABEBE0 80047A40 44816000 */  mtc1  $at, $f12
/* ABEBE4 80047A44 C60A0010 */  lwc1  $f10, 0x10($s0)
/* ABEBE8 80047A48 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABEBEC 80047A4C 44812000 */  mtc1  $at, $f4
/* ABEBF0 80047A50 460A6203 */  div.s $f8, $f12, $f10
/* ABEBF4 80047A54 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* ABEBF8 80047A58 00022400 */  sll   $a0, $v0, 0x10
/* ABEBFC 80047A5C 00042403 */  sra   $a0, $a0, 0x10
/* ABEC00 80047A60 46066281 */  sub.s $f10, $f12, $f6
/* ABEC04 80047A64 86250024 */  lh    $a1, 0x24($s1)
/* ABEC08 80047A68 2407000F */  li    $a3, 15
/* ABEC0C 80047A6C 46044002 */  mul.s $f0, $f8, $f4
/* ABEC10 80047A70 00000000 */  nop   
/* ABEC14 80047A74 460A0082 */  mul.s $f2, $f0, $f10
/* ABEC18 80047A78 46020200 */  add.s $f8, $f0, $f2
/* ABEC1C 80047A7C 44064000 */  mfc1  $a2, $f8
/* ABEC20 80047A80 0C010E47 */  jal   func_8004391C
/* ABEC24 80047A84 00000000 */   nop   
/* ABEC28 80047A88 10000009 */  b     .L80047AB0
/* ABEC2C 80047A8C A6220024 */   sh    $v0, 0x24($s1)
/* ABEC30 80047A90 A6200024 */  sh    $zero, 0x24($s1)
.L80047A94:
/* ABEC34 80047A94 C6040104 */  lwc1  $f4, 0x104($s0)
/* ABEC38 80047A98 C6000098 */  lwc1  $f0, 0x98($s0)
/* ABEC3C 80047A9C 46040032 */  c.eq.s $f0, $f4
/* ABEC40 80047AA0 00000000 */  nop   
/* ABEC44 80047AA4 45020003 */  bc1fl .L80047AB4
/* ABEC48 80047AA8 86390018 */   lh    $t9, 0x18($s1)
/* ABEC4C 80047AAC E620001C */  swc1  $f0, 0x1c($s1)
.L80047AB0:
/* ABEC50 80047AB0 86390018 */  lh    $t9, 0x18($s1)
.L80047AB4:
/* ABEC54 80047AB4 13200014 */  beqz  $t9, .L80047B08
/* ABEC58 80047AB8 3C01C220 */   li    $at, 0xC2200000 # 0.000000
/* ABEC5C 80047ABC 44813000 */  mtc1  $at, $f6
/* ABEC60 80047AC0 C60A0000 */  lwc1  $f10, ($s0)
/* ABEC64 80047AC4 460A303C */  c.lt.s $f6, $f10
/* ABEC68 80047AC8 00000000 */  nop   
/* ABEC6C 80047ACC 4502000F */  bc1fl .L80047B0C
/* ABEC70 80047AD0 C6100000 */   lwc1  $f16, ($s0)
/* ABEC74 80047AD4 0C01DE1C */  jal   Math_Sins
/* ABEC78 80047AD8 86240014 */   lh    $a0, 0x14($s1)
/* ABEC7C 80047ADC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABEC80 80047AE0 44812000 */  mtc1  $at, $f4
/* ABEC84 80047AE4 C6080000 */  lwc1  $f8, ($s0)
/* ABEC88 80047AE8 3C01C220 */  li    $at, 0xC2200000 # 0.000000
/* ABEC8C 80047AEC 46002181 */  sub.s $f6, $f4, $f0
/* ABEC90 80047AF0 44812000 */  mtc1  $at, $f4
/* ABEC94 80047AF4 46064282 */  mul.s $f10, $f8, $f6
/* ABEC98 80047AF8 00000000 */  nop   
/* ABEC9C 80047AFC 46002202 */  mul.s $f8, $f4, $f0
/* ABECA0 80047B00 10000002 */  b     .L80047B0C
/* ABECA4 80047B04 460A4400 */   add.s $f16, $f8, $f10
.L80047B08:
/* ABECA8 80047B08 C6100000 */  lwc1  $f16, ($s0)
.L80047B0C:
/* ABECAC 80047B0C 86020022 */  lh    $v0, 0x22($s0)
/* ABECB0 80047B10 30490080 */  andi  $t1, $v0, 0x80
/* ABECB4 80047B14 5120000B */  beql  $t1, $zero, .L80047B44
/* ABECB8 80047B18 304A0020 */   andi  $t2, $v0, 0x20
/* ABECBC 80047B1C 44068000 */  mfc1  $a2, $f16
/* ABECC0 80047B20 30580001 */  andi  $t8, $v0, 1
/* ABECC4 80047B24 AFB80010 */  sw    $t8, 0x10($sp)
/* ABECC8 80047B28 02002025 */  move  $a0, $s0
/* ABECCC 80047B2C 27A5006C */  addiu $a1, $sp, 0x6c
/* ABECD0 80047B30 0C011635 */  jal   func_800458D4
/* ABECD4 80047B34 2627001C */   addiu $a3, $s1, 0x1c
/* ABECD8 80047B38 10000012 */  b     .L80047B84
/* ABECDC 80047B3C 27A4007C */   addiu $a0, $sp, 0x7c
/* ABECE0 80047B40 304A0020 */  andi  $t2, $v0, 0x20
.L80047B44:
/* ABECE4 80047B44 11400008 */  beqz  $t2, .L80047B68
/* ABECE8 80047B48 02002025 */   move  $a0, $s0
/* ABECEC 80047B4C 44068000 */  mfc1  $a2, $f16
/* ABECF0 80047B50 02002025 */  move  $a0, $s0
/* ABECF4 80047B54 27A5006C */  addiu $a1, $sp, 0x6c
/* ABECF8 80047B58 0C0116C2 */  jal   func_80045B08
/* ABECFC 80047B5C 86270024 */   lh    $a3, 0x24($s1)
/* ABED00 80047B60 10000008 */  b     .L80047B84
/* ABED04 80047B64 27A4007C */   addiu $a0, $sp, 0x7c
.L80047B68:
/* ABED08 80047B68 30470001 */  andi  $a3, $v0, 1
/* ABED0C 80047B6C 00073C00 */  sll   $a3, $a3, 0x10
/* ABED10 80047B70 44068000 */  mfc1  $a2, $f16
/* ABED14 80047B74 00073C03 */  sra   $a3, $a3, 0x10
/* ABED18 80047B78 0C0115EA */  jal   func_800457A8
/* ABED1C 80047B7C 27A5006C */   addiu $a1, $sp, 0x6c
/* ABED20 80047B80 27A4007C */  addiu $a0, $sp, 0x7c
.L80047B84:
/* ABED24 80047B84 8FA5003C */  lw    $a1, 0x3c($sp)
/* ABED28 80047B88 0C01F124 */  jal   func_8007C490
/* ABED2C 80047B8C 8FA60038 */   lw    $a2, 0x38($sp)
/* ABED30 80047B90 862B0028 */  lh    $t3, 0x28($s1)
/* ABED34 80047B94 8E060004 */  lw    $a2, 4($s0)
/* ABED38 80047B98 8E070008 */  lw    $a3, 8($s0)
/* ABED3C 80047B9C 02002025 */  move  $a0, $s0
/* ABED40 80047BA0 8FA5007C */  lw    $a1, 0x7c($sp)
/* ABED44 80047BA4 0C011A70 */  jal   func_800469C0
/* ABED48 80047BA8 AFAB0010 */   sw    $t3, 0x10($sp)
/* ABED4C 80047BAC E7A0007C */  swc1  $f0, 0x7c($sp)
/* ABED50 80047BB0 E60000DC */  swc1  $f0, 0xdc($s0)
/* ABED54 80047BB4 862C002A */  lh    $t4, 0x2a($s1)
/* ABED58 80047BB8 5D800011 */  bgtzl $t4, .L80047C00
/* ABED5C 80047BBC 862E0018 */   lh    $t6, 0x18($s1)
/* ABED60 80047BC0 87AD0070 */  lh    $t5, 0x70($sp)
/* ABED64 80047BC4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABED68 80047BC8 44813000 */  mtc1  $at, $f6
/* ABED6C 80047BCC A7AD0080 */  sh    $t5, 0x80($sp)
/* ABED70 80047BD0 C60400C8 */  lwc1  $f4, 0xc8($s0)
/* ABED74 80047BD4 86240026 */  lh    $a0, 0x26($s1)
/* ABED78 80047BD8 87A50072 */  lh    $a1, 0x72($sp)
/* ABED7C 80047BDC 46043203 */  div.s $f8, $f6, $f4
/* ABED80 80047BE0 2407000A */  li    $a3, 10
/* ABED84 80047BE4 44064000 */  mfc1  $a2, $f8
/* ABED88 80047BE8 0C010E47 */  jal   func_8004391C
/* ABED8C 80047BEC 00000000 */   nop   
/* ABED90 80047BF0 A7A20082 */  sh    $v0, 0x82($sp)
/* ABED94 80047BF4 1000002A */  b     .L80047CA0
/* ABED98 80047BF8 87A30080 */   lh    $v1, 0x80($sp)
/* ABED9C 80047BFC 862E0018 */  lh    $t6, 0x18($s1)
.L80047C00:
/* ABEDA0 80047C00 02002025 */  move  $a0, $s0
/* ABEDA4 80047C04 87A50072 */  lh    $a1, 0x72($sp)
/* ABEDA8 80047C08 11C00019 */  beqz  $t6, .L80047C70
/* ABEDAC 80047C0C C7A40094 */   lwc1  $f4, 0x94($sp)
/* ABEDB0 80047C10 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABEDB4 80047C14 44815000 */  mtc1  $at, $f10
/* ABEDB8 80047C18 C60600C8 */  lwc1  $f6, 0xc8($s0)
/* ABEDBC 80047C1C 86240016 */  lh    $a0, 0x16($s1)
/* ABEDC0 80047C20 87A50072 */  lh    $a1, 0x72($sp)
/* ABEDC4 80047C24 46065103 */  div.s $f4, $f10, $f6
/* ABEDC8 80047C28 2407000A */  li    $a3, 10
/* ABEDCC 80047C2C 44062000 */  mfc1  $a2, $f4
/* ABEDD0 80047C30 0C010E47 */  jal   func_8004391C
/* ABEDD4 80047C34 00000000 */   nop   
/* ABEDD8 80047C38 A7A20082 */  sh    $v0, 0x82($sp)
/* ABEDDC 80047C3C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABEDE0 80047C40 44814000 */  mtc1  $at, $f8
/* ABEDE4 80047C44 C60A00C8 */  lwc1  $f10, 0xc8($s0)
/* ABEDE8 80047C48 86240014 */  lh    $a0, 0x14($s1)
/* ABEDEC 80047C4C 87A50070 */  lh    $a1, 0x70($sp)
/* ABEDF0 80047C50 460A4183 */  div.s $f6, $f8, $f10
/* ABEDF4 80047C54 2407000A */  li    $a3, 10
/* ABEDF8 80047C58 44063000 */  mfc1  $a2, $f6
/* ABEDFC 80047C5C 0C010E47 */  jal   func_8004391C
/* ABEE00 80047C60 00000000 */   nop   
/* ABEE04 80047C64 00021C00 */  sll   $v1, $v0, 0x10
/* ABEE08 80047C68 1000000D */  b     .L80047CA0
/* ABEE0C 80047C6C 00031C03 */   sra   $v1, $v1, 0x10
.L80047C70:
/* ABEE10 80047C70 860600A2 */  lh    $a2, 0xa2($s0)
/* ABEE14 80047C74 8E070014 */  lw    $a3, 0x14($s0)
/* ABEE18 80047C78 0C011B2D */  jal   func_80046CB4
/* ABEE1C 80047C7C E7A40010 */   swc1  $f4, 0x10($sp)
/* ABEE20 80047C80 A7A20082 */  sh    $v0, 0x82($sp)
/* ABEE24 80047C84 86270024 */  lh    $a3, 0x24($s1)
/* ABEE28 80047C88 86060020 */  lh    $a2, 0x20($s0)
/* ABEE2C 80047C8C 02002025 */  move  $a0, $s0
/* ABEE30 80047C90 0C011AD1 */  jal   func_80046B44
/* ABEE34 80047C94 87A50070 */   lh    $a1, 0x70($sp)
/* ABEE38 80047C98 00021C00 */  sll   $v1, $v0, 0x10
/* ABEE3C 80047C9C 00031C03 */  sra   $v1, $v1, 0x10
.L80047CA0:
/* ABEE40 80047CA0 286138A5 */  slti  $at, $v1, 0x38a5
/* ABEE44 80047CA4 14200002 */  bnez  $at, .L80047CB0
/* ABEE48 80047CA8 27A6007C */   addiu $a2, $sp, 0x7c
/* ABEE4C 80047CAC 240338A4 */  li    $v1, 14500
.L80047CB0:
/* ABEE50 80047CB0 2861C374 */  slti  $at, $v1, -0x3c8c
/* ABEE54 80047CB4 10200003 */  beqz  $at, .L80047CC4
/* ABEE58 80047CB8 A7A30080 */   sh    $v1, 0x80($sp)
/* ABEE5C 80047CBC 2403C374 */  li    $v1, -15500
/* ABEE60 80047CC0 A7A30080 */  sh    $v1, 0x80($sp)
.L80047CC4:
/* ABEE64 80047CC4 8FA40038 */  lw    $a0, 0x38($sp)
/* ABEE68 80047CC8 0C010F0A */  jal   func_80043C28
/* ABEE6C 80047CCC 8FA5003C */   lw    $a1, 0x3c($sp)
/* ABEE70 80047CD0 860F0140 */  lh    $t7, 0x140($s0)
/* ABEE74 80047CD4 24010007 */  li    $at, 7
/* ABEE78 80047CD8 55E10075 */  bnel  $t7, $at, .L80047EB0
/* ABEE7C 80047CDC C608000C */   lwc1  $f8, 0xc($s0)
/* ABEE80 80047CE0 86080022 */  lh    $t0, 0x22($s0)
/* ABEE84 80047CE4 31190010 */  andi  $t9, $t0, 0x10
/* ABEE88 80047CE8 57200071 */  bnezl $t9, .L80047EB0
/* ABEE8C 80047CEC C608000C */   lwc1  $f8, 0xc($s0)
/* ABEE90 80047CF0 860900A2 */  lh    $t1, 0xa2($s0)
/* ABEE94 80047CF4 862A002A */  lh    $t2, 0x2a($s1)
/* ABEE98 80047CF8 02002025 */  move  $a0, $s0
/* ABEE9C 80047CFC 25388001 */  addiu $t8, $t1, -0x7fff
/* ABEEA0 80047D00 1940000A */  blez  $t2, .L80047D2C
/* ABEEA4 80047D04 A6380026 */   sh    $t8, 0x26($s1)
/* ABEEA8 80047D08 8E060004 */  lw    $a2, 4($s0)
/* ABEEAC 80047D0C 8E07000C */  lw    $a3, 0xc($s0)
/* ABEEB0 80047D10 27AB0098 */  addiu $t3, $sp, 0x98
/* ABEEB4 80047D14 AFAB0010 */  sw    $t3, 0x10($sp)
/* ABEEB8 80047D18 AFB10014 */  sw    $s1, 0x14($sp)
/* ABEEBC 80047D1C 0C011B88 */  jal   func_80046E20
/* ABEEC0 80047D20 27A5007C */   addiu $a1, $sp, 0x7c
/* ABEEC4 80047D24 10000020 */  b     .L80047DA8
/* ABEEC8 80047D28 862B0018 */   lh    $t3, 0x18($s1)
.L80047D2C:
/* ABEECC 80047D2C 8FAC0038 */  lw    $t4, 0x38($sp)
/* ABEED0 80047D30 27A60088 */  addiu $a2, $sp, 0x88
/* ABEED4 80047D34 02002025 */  move  $a0, $s0
/* ABEED8 80047D38 8D8E0000 */  lw    $t6, ($t4)
/* ABEEDC 80047D3C ACCE0000 */  sw    $t6, ($a2)
/* ABEEE0 80047D40 8D8D0004 */  lw    $t5, 4($t4)
/* ABEEE4 80047D44 ACCD0004 */  sw    $t5, 4($a2)
/* ABEEE8 80047D48 8D8E0008 */  lw    $t6, 8($t4)
/* ABEEEC 80047D4C ACCE0008 */  sw    $t6, 8($a2)
/* ABEEF0 80047D50 C602000C */  lwc1  $f2, 0xc($s0)
/* ABEEF4 80047D54 46021000 */  add.s $f0, $f2, $f2
/* ABEEF8 80047D58 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABEEFC 80047D5C E6200010 */  swc1  $f0, 0x10($s1)
/* ABEF00 80047D60 0C010FCD */  jal   func_80043F34
/* ABEF04 80047D64 8FA5003C */   lw    $a1, 0x3c($sp)
/* ABEF08 80047D68 10400006 */  beqz  $v0, .L80047D84
/* ABEF0C 80047D6C 8FA90038 */   lw    $t1, 0x38($sp)
/* ABEF10 80047D70 87AF0072 */  lh    $t7, 0x72($sp)
/* ABEF14 80047D74 2408FFFF */  li    $t0, -1
/* ABEF18 80047D78 A628002A */  sh    $t0, 0x2a($s1)
/* ABEF1C 80047D7C 10000008 */  b     .L80047DA0
/* ABEF20 80047D80 A62F0026 */   sh    $t7, 0x26($s1)
.L80047D84:
/* ABEF24 80047D84 8FB90040 */  lw    $t9, 0x40($sp)
/* ABEF28 80047D88 8D2A0000 */  lw    $t2, ($t1)
/* ABEF2C 80047D8C AF2A0000 */  sw    $t2, ($t9)
/* ABEF30 80047D90 8D380004 */  lw    $t8, 4($t1)
/* ABEF34 80047D94 AF380004 */  sw    $t8, 4($t9)
/* ABEF38 80047D98 8D2A0008 */  lw    $t2, 8($t1)
/* ABEF3C 80047D9C AF2A0008 */  sw    $t2, 8($t9)
.L80047DA0:
/* ABEF40 80047DA0 A6200018 */  sh    $zero, 0x18($s1)
/* ABEF44 80047DA4 862B0018 */  lh    $t3, 0x18($s1)
.L80047DA8:
/* ABEF48 80047DA8 3C018014 */  lui   $at, %hi(D_80139EB8)
/* ABEF4C 80047DAC C7AA0098 */  lwc1  $f10, 0x98($sp)
/* ABEF50 80047DB0 51600013 */  beql  $t3, $zero, .L80047E00
/* ABEF54 80047DB4 86180022 */   lh    $t8, 0x22($s0)
/* ABEF58 80047DB8 C4289EB8 */  lwc1  $f8, %lo(D_80139EB8)($at)
/* ABEF5C 80047DBC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABEF60 80047DC0 44812000 */  mtc1  $at, $f4
/* ABEF64 80047DC4 460A4182 */  mul.s $f6, $f8, $f10
/* ABEF68 80047DC8 862C0016 */  lh    $t4, 0x16($s1)
/* ABEF6C 80047DCC 86050136 */  lh    $a1, 0x136($s0)
/* ABEF70 80047DD0 2407000A */  li    $a3, 10
/* ABEF74 80047DD4 258F8001 */  addiu $t7, $t4, -0x7fff
/* ABEF78 80047DD8 01E54823 */  subu  $t1, $t7, $a1
/* ABEF7C 80047DDC 00A92021 */  addu  $a0, $a1, $t1
/* ABEF80 80047DE0 46062201 */  sub.s $f8, $f4, $f6
/* ABEF84 80047DE4 00042400 */  sll   $a0, $a0, 0x10
/* ABEF88 80047DE8 00042403 */  sra   $a0, $a0, 0x10
/* ABEF8C 80047DEC 44064000 */  mfc1  $a2, $f8
/* ABEF90 80047DF0 0C010E47 */  jal   func_8004391C
/* ABEF94 80047DF4 00000000 */   nop   
/* ABEF98 80047DF8 A6020136 */  sh    $v0, 0x136($s0)
/* ABEF9C 80047DFC 86180022 */  lh    $t8, 0x22($s0)
.L80047E00:
/* ABEFA0 80047E00 87AB0078 */  lh    $t3, 0x78($sp)
/* ABEFA4 80047E04 27A4007C */  addiu $a0, $sp, 0x7c
/* ABEFA8 80047E08 330A0004 */  andi  $t2, $t8, 4
/* ABEFAC 80047E0C 11400008 */  beqz  $t2, .L80047E30
/* ABEFB0 80047E10 8FA50040 */   lw    $a1, 0x40($sp)
/* ABEFB4 80047E14 000B6023 */  negu  $t4, $t3
/* ABEFB8 80047E18 A60C0134 */  sh    $t4, 0x134($s0)
/* ABEFBC 80047E1C 87AD007A */  lh    $t5, 0x7a($sp)
/* ABEFC0 80047E20 A6000138 */  sh    $zero, 0x138($s0)
/* ABEFC4 80047E24 25AE8001 */  addiu $t6, $t5, -0x7fff
/* ABEFC8 80047E28 10000008 */  b     .L80047E4C
/* ABEFCC 80047E2C A60E0136 */   sh    $t6, 0x136($s0)
.L80047E30:
/* ABEFD0 80047E30 0C01F124 */  jal   func_8007C490
/* ABEFD4 80047E34 8FA6003C */   lw    $a2, 0x3c($sp)
/* ABEFD8 80047E38 87AF0080 */  lh    $t7, 0x80($sp)
/* ABEFDC 80047E3C A60F0134 */  sh    $t7, 0x134($s0)
/* ABEFE0 80047E40 87A80082 */  lh    $t0, 0x82($sp)
/* ABEFE4 80047E44 A6000138 */  sh    $zero, 0x138($s0)
/* ABEFE8 80047E48 A6080136 */  sh    $t0, 0x136($s0)
.L80047E4C:
/* ABEFEC 80047E4C 3C028016 */  lui   $v0, %hi(gSaveContext+0x30) # $v0, 0x8016
/* ABEFF0 80047E50 8442E690 */  lh    $v0, %lo(gSaveContext+0x30)($v0)
/* ABEFF4 80047E54 28410011 */  slti  $at, $v0, 0x11
/* ABEFF8 80047E58 50200024 */  beql  $at, $zero, .L80047EEC
/* ABEFFC 80047E5C 28410011 */   slti  $at, $v0, 0x11
/* ABF000 80047E60 8E19008C */  lw    $t9, 0x8c($s0)
/* ABF004 80047E64 8F29009C */  lw    $t1, 0x9c($t9)
/* ABF008 80047E68 313800FF */  andi  $t8, $t1, 0xff
/* ABF00C 80047E6C 5700001F */  bnezl $t8, .L80047EEC
/* ABF010 80047E70 28410011 */   slti  $at, $v0, 0x11
/* ABF014 80047E74 0C03F66B */  jal   Math_Rand_ZeroOne
/* ABF018 80047E78 00000000 */   nop   
/* ABF01C 80047E7C 3C018014 */  lui   $at, %hi(D_80139EBC)
/* ABF020 80047E80 C42A9EBC */  lwc1  $f10, %lo(D_80139EBC)($at)
/* ABF024 80047E84 860E0136 */  lh    $t6, 0x136($s0)
/* ABF028 80047E88 3C028016 */  lui   $v0, %hi(gSaveContext+0x30) # $v0, 0x8016
/* ABF02C 80047E8C 460A0102 */  mul.s $f4, $f0, $f10
/* ABF030 80047E90 4600218D */  trunc.w.s $f6, $f4
/* ABF034 80047E94 440D3000 */  mfc1  $t5, $f6
/* ABF038 80047E98 00000000 */  nop   
/* ABF03C 80047E9C 01AE7821 */  addu  $t7, $t5, $t6
/* ABF040 80047EA0 A60F0136 */  sh    $t7, 0x136($s0)
/* ABF044 80047EA4 10000010 */  b     .L80047EE8
/* ABF048 80047EA8 8442E690 */   lh    $v0, %lo(gSaveContext+0x30)($v0)
/* ABF04C 80047EAC C608000C */  lwc1  $f8, 0xc($s0)
.L80047EB0:
/* ABF050 80047EB0 A6200018 */  sh    $zero, 0x18($s1)
/* ABF054 80047EB4 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* ABF058 80047EB8 E6280010 */  swc1  $f8, 0x10($s1)
/* ABF05C 80047EBC 8FB90038 */  lw    $t9, 0x38($sp)
/* ABF060 80047EC0 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* ABF064 80047EC4 8FA80040 */  lw    $t0, 0x40($sp)
/* ABF068 80047EC8 8F380000 */  lw    $t8, ($t9)
/* ABF06C 80047ECC 3C028016 */  lui   $v0, %hi(gSaveContext+0x30) # $v0, 0x8016
/* ABF070 80047ED0 AD180000 */  sw    $t8, ($t0)
/* ABF074 80047ED4 8F290004 */  lw    $t1, 4($t9)
/* ABF078 80047ED8 AD090004 */  sw    $t1, 4($t0)
/* ABF07C 80047EDC 8F380008 */  lw    $t8, 8($t9)
/* ABF080 80047EE0 AD180008 */  sw    $t8, 8($t0)
/* ABF084 80047EE4 8442E690 */  lh    $v0, %lo(gSaveContext+0x30)($v0)
.L80047EE8:
/* ABF088 80047EE8 28410011 */  slti  $at, $v0, 0x11
.L80047EEC:
/* ABF08C 80047EEC 10200003 */  beqz  $at, .L80047EFC
/* ABF090 80047EF0 3C018014 */   lui   $at, %hi(D_80139EC0)
/* ABF094 80047EF4 10000004 */  b     .L80047F08
/* ABF098 80047EF8 C4309EC0 */   lwc1  $f16, %lo(D_80139EC0)($at)
.L80047EFC:
/* ABF09C 80047EFC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABF0A0 80047F00 44818000 */  mtc1  $at, $f16
/* ABF0A4 80047F04 00000000 */  nop   
.L80047F08:
/* ABF0A8 80047F08 C60A0018 */  lwc1  $f10, 0x18($s0)
/* ABF0AC 80047F0C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ABF0B0 80047F10 8E0600D4 */  lw    $a2, 0xd4($s0)
/* ABF0B4 80047F14 46105302 */  mul.s $f12, $f10, $f16
/* ABF0B8 80047F18 0C010E27 */  jal   func_8004389C
/* ABF0BC 80047F1C 3C073F80 */   lui   $a3, 0x3f80
/* ABF0C0 80047F20 E60000FC */  swc1  $f0, 0xfc($s0)
/* ABF0C4 80047F24 00002025 */  move  $a0, $zero
/* ABF0C8 80047F28 8605015A */  lh    $a1, 0x15a($s0)
/* ABF0CC 80047F2C 3C063F00 */  lui   $a2, 0x3f00
/* ABF0D0 80047F30 0C010E47 */  jal   func_8004391C
/* ABF0D4 80047F34 2407000A */   li    $a3, 10
/* ABF0D8 80047F38 A602015A */  sh    $v0, 0x15a($s0)
/* ABF0DC 80047F3C 02002025 */  move  $a0, $s0
/* ABF0E0 80047F40 0C011429 */  jal   func_800450A4
/* ABF0E4 80047F44 8E05001C */   lw    $a1, 0x1c($s0)
/* ABF0E8 80047F48 E6000100 */  swc1  $f0, 0x100($s0)
/* ABF0EC 80047F4C 8FBF0024 */  lw    $ra, 0x24($sp)
/* ABF0F0 80047F50 8FB10020 */  lw    $s1, 0x20($sp)
/* ABF0F4 80047F54 8FB0001C */  lw    $s0, 0x1c($sp)
/* ABF0F8 80047F58 27BD00B0 */  addiu $sp, $sp, 0xb0
/* ABF0FC 80047F5C 03E00008 */  jr    $ra
/* ABF100 80047F60 24020001 */   li    $v0, 1
# SPLIT
/* ABF104 80047F64 27BDFF20 */  addiu $sp, $sp, -0xe0
/* ABF108 80047F68 AFB0001C */  sw    $s0, 0x1c($sp)
/* ABF10C 80047F6C 00808025 */  move  $s0, $a0
/* ABF110 80047F70 AFBF0024 */  sw    $ra, 0x24($sp)
/* ABF114 80047F74 AFB10020 */  sw    $s1, 0x20($sp)
/* ABF118 80047F78 0C00B721 */  jal   func_8002DC84
/* ABF11C 80047F7C 8C840090 */   lw    $a0, 0x90($a0)
/* ABF120 80047F80 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABF124 80047F84 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABF128 80047F88 3C018014 */  lui   $at, %hi(D_80139EC4)
/* ABF12C 80047F8C C4309EC4 */  lwc1  $f16, %lo(D_80139EC4)($at)
/* ABF130 80047F90 846E01F0 */  lh    $t6, 0x1f0($v1)
/* ABF134 80047F94 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABF138 80047F98 44814000 */  mtc1  $at, $f8
/* ABF13C 80047F9C 448E2000 */  mtc1  $t6, $f4
/* ABF140 80047FA0 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ABF144 80047FA4 44819000 */  mtc1  $at, $f18
/* ABF148 80047FA8 468021A0 */  cvt.s.w $f6, $f4
/* ABF14C 80047FAC 846F0314 */  lh    $t7, 0x314($v1)
/* ABF150 80047FB0 46000306 */  mov.s $f12, $f0
/* ABF154 80047FB4 46009103 */  div.s $f4, $f18, $f0
/* ABF158 80047FB8 46103082 */  mul.s $f2, $f6, $f16
/* ABF15C 80047FBC 46024280 */  add.s $f10, $f8, $f2
/* ABF160 80047FC0 46041182 */  mul.s $f6, $f2, $f4
/* ABF164 80047FC4 11E00009 */  beqz  $t7, .L80047FEC
/* ABF168 80047FC8 46065381 */   sub.s $f14, $f10, $f6
/* ABF16C 80047FCC 02002025 */  move  $a0, $s0
/* ABF170 80047FD0 E7AC0060 */  swc1  $f12, 0x60($sp)
/* ABF174 80047FD4 0C011495 */  jal   func_80045254
/* ABF178 80047FD8 E7AE005C */   swc1  $f14, 0x5c($sp)
/* ABF17C 80047FDC 3C018014 */  lui   $at, %hi(D_80139EC8)
/* ABF180 80047FE0 C4309EC8 */  lwc1  $f16, %lo(D_80139EC8)($at)
/* ABF184 80047FE4 C7AC0060 */  lwc1  $f12, 0x60($sp)
/* ABF188 80047FE8 C7AE005C */  lwc1  $f14, 0x5c($sp)
.L80047FEC:
/* ABF18C 80047FEC 8602015E */  lh    $v0, 0x15e($s0)
/* ABF190 80047FF0 10400009 */  beqz  $v0, .L80048018
/* ABF194 80047FF4 2401000A */   li    $at, 10
/* ABF198 80047FF8 10410007 */  beq   $v0, $at, .L80048018
/* ABF19C 80047FFC 24010014 */   li    $at, 20
/* ABF1A0 80048000 10410005 */  beq   $v0, $at, .L80048018
/* ABF1A4 80048004 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABF1A8 80048008 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABF1AC 8004800C 87030314 */  lh    $v1, 0x314($t8)
/* ABF1B0 80048010 10600050 */  beqz  $v1, .L80048154
/* ABF1B4 80048014 00000000 */   nop   
.L80048018:
/* ABF1B8 80048018 86190142 */  lh    $t9, 0x142($s0)
/* ABF1BC 8004801C 3C098012 */  lui   $t1, %hi(D_8011D068)
/* ABF1C0 80048020 860A0144 */  lh    $t2, 0x144($s0)
/* ABF1C4 80048024 001940C0 */  sll   $t0, $t9, 3
/* ABF1C8 80048028 01284821 */  addu  $t1, $t1, $t0
/* ABF1CC 8004802C 8D29D068 */  lw    $t1, %lo(D_8011D068)($t1)
/* ABF1D0 80048030 000A58C0 */  sll   $t3, $t2, 3
/* ABF1D4 80048034 3C018014 */  lui   $at, %hi(D_80139ECC)
/* ABF1D8 80048038 012B6021 */  addu  $t4, $t1, $t3
/* ABF1DC 8004803C 8D820004 */  lw    $v0, 4($t4)
/* ABF1E0 80048040 844D0000 */  lh    $t5, ($v0)
/* ABF1E4 80048044 24420020 */  addiu $v0, $v0, 0x20
/* ABF1E8 80048048 448D4000 */  mtc1  $t5, $f8
/* ABF1EC 8004804C 00000000 */  nop   
/* ABF1F0 80048050 468044A0 */  cvt.s.w $f18, $f8
/* ABF1F4 80048054 46109102 */  mul.s $f4, $f18, $f16
/* ABF1F8 80048058 00000000 */  nop   
/* ABF1FC 8004805C 460C2282 */  mul.s $f10, $f4, $f12
/* ABF200 80048060 00000000 */  nop   
/* ABF204 80048064 460E5182 */  mul.s $f6, $f10, $f14
/* ABF208 80048068 E6060000 */  swc1  $f6, ($s0)
/* ABF20C 8004806C 844EFFE4 */  lh    $t6, -0x1c($v0)
/* ABF210 80048070 448E4000 */  mtc1  $t6, $f8
/* ABF214 80048074 3C0E8016 */  lui   $t6, %hi(gGameInfo)
/* ABF218 80048078 468044A0 */  cvt.s.w $f18, $f8
/* ABF21C 8004807C 46109102 */  mul.s $f4, $f18, $f16
/* ABF220 80048080 00000000 */  nop   
/* ABF224 80048084 460C2282 */  mul.s $f10, $f4, $f12
/* ABF228 80048088 00000000 */  nop   
/* ABF22C 8004808C 460E5182 */  mul.s $f6, $f10, $f14
/* ABF230 80048090 E6060004 */  swc1  $f6, 4($s0)
/* ABF234 80048094 844FFFE8 */  lh    $t7, -0x18($v0)
/* ABF238 80048098 448F4000 */  mtc1  $t7, $f8
/* ABF23C 8004809C 00000000 */  nop   
/* ABF240 800480A0 468044A0 */  cvt.s.w $f18, $f8
/* ABF244 800480A4 46109102 */  mul.s $f4, $f18, $f16
/* ABF248 800480A8 00000000 */  nop   
/* ABF24C 800480AC 460C2282 */  mul.s $f10, $f4, $f12
/* ABF250 800480B0 00000000 */  nop   
/* ABF254 800480B4 460E5182 */  mul.s $f6, $f10, $f14
/* ABF258 800480B8 E6060008 */  swc1  $f6, 8($s0)
/* ABF25C 800480BC 8458FFEC */  lh    $t8, -0x14($v0)
/* ABF260 800480C0 C4249ECC */  lwc1  $f4, %lo(D_80139ECC)($at)
/* ABF264 800480C4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABF268 800480C8 44984000 */  mtc1  $t8, $f8
/* ABF26C 800480CC 44813000 */  mtc1  $at, $f6
/* ABF270 800480D0 468044A0 */  cvt.s.w $f18, $f8
/* ABF274 800480D4 46049282 */  mul.s $f10, $f18, $f4
/* ABF278 800480D8 46065200 */  add.s $f8, $f10, $f6
/* ABF27C 800480DC 4600448D */  trunc.w.s $f18, $f8
/* ABF280 800480E0 44089000 */  mfc1  $t0, $f18
/* ABF284 800480E4 00000000 */  nop   
/* ABF288 800480E8 A608001C */  sh    $t0, 0x1c($s0)
/* ABF28C 800480EC 844AFFF0 */  lh    $t2, -0x10($v0)
/* ABF290 800480F0 448A2000 */  mtc1  $t2, $f4
/* ABF294 800480F4 00000000 */  nop   
/* ABF298 800480F8 468022A0 */  cvt.s.w $f10, $f4
/* ABF29C 800480FC E60A000C */  swc1  $f10, 0xc($s0)
/* ABF2A0 80048100 8449FFF4 */  lh    $t1, -0xc($v0)
/* ABF2A4 80048104 44893000 */  mtc1  $t1, $f6
/* ABF2A8 80048108 00000000 */  nop   
/* ABF2AC 8004810C 46803220 */  cvt.s.w $f8, $f6
/* ABF2B0 80048110 46104482 */  mul.s $f18, $f8, $f16
/* ABF2B4 80048114 E6120010 */  swc1  $f18, 0x10($s0)
/* ABF2B8 80048118 844BFFF8 */  lh    $t3, -8($v0)
/* ABF2BC 8004811C 448B2000 */  mtc1  $t3, $f4
/* ABF2C0 80048120 00000000 */  nop   
/* ABF2C4 80048124 468022A0 */  cvt.s.w $f10, $f4
/* ABF2C8 80048128 E60A0014 */  swc1  $f10, 0x14($s0)
/* ABF2CC 8004812C 844CFFFC */  lh    $t4, -4($v0)
/* ABF2D0 80048130 448C3000 */  mtc1  $t4, $f6
/* ABF2D4 80048134 00000000 */  nop   
/* ABF2D8 80048138 46803220 */  cvt.s.w $f8, $f6
/* ABF2DC 8004813C 46104482 */  mul.s $f18, $f8, $f16
/* ABF2E0 80048140 E6120018 */  swc1  $f18, 0x18($s0)
/* ABF2E4 80048144 844D0000 */  lh    $t5, ($v0)
/* ABF2E8 80048148 A60D001E */  sh    $t5, 0x1e($s0)
/* ABF2EC 8004814C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF2F0 80048150 85C30314 */  lh    $v1, 0x314($t6)
.L80048154:
/* ABF2F4 80048154 50600004 */  beql  $v1, $zero, .L80048168
/* ABF2F8 80048158 860F001E */   lh    $t7, 0x1e($s0)
/* ABF2FC 8004815C 0C011495 */  jal   func_80045254
/* ABF300 80048160 02002025 */   move  $a0, $s0
/* ABF304 80048164 860F001E */  lh    $t7, 0x1e($s0)
.L80048168:
/* ABF308 80048168 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* ABF30C 8004816C AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ABF310 80048170 8602015E */  lh    $v0, 0x15e($s0)
/* ABF314 80048174 10400007 */  beqz  $v0, .L80048194
/* ABF318 80048178 2401000A */   li    $at, 10
/* ABF31C 8004817C 10410005 */  beq   $v0, $at, .L80048194
/* ABF320 80048180 24010014 */   li    $at, 20
/* ABF324 80048184 10410003 */  beq   $v0, $at, .L80048194
/* ABF328 80048188 24010019 */   li    $at, 25
/* ABF32C 8004818C 14410042 */  bne   $v0, $at, .L80048298
/* ABF330 80048190 26180094 */   addiu $t8, $s0, 0x94
.L80048194:
/* ABF334 80048194 0C0111DB */  jal   func_8004476C
/* ABF338 80048198 02002025 */   move  $a0, $s0
/* ABF33C 8004819C 26110020 */  addiu $s1, $s0, 0x20
/* ABF340 800481A0 02202025 */  move  $a0, $s1
/* ABF344 800481A4 00402825 */  move  $a1, $v0
/* ABF348 800481A8 0C010EF1 */  jal   func_80043BC4
/* ABF34C 800481AC AFA20064 */   sw    $v0, 0x64($sp)
/* ABF350 800481B0 8FA60064 */  lw    $a2, 0x64($sp)
/* ABF354 800481B4 26080094 */  addiu $t0, $s0, 0x94
/* ABF358 800481B8 2404FFFF */  li    $a0, -1
/* ABF35C 800481BC 84D80006 */  lh    $t8, 6($a2)
/* ABF360 800481C0 27A50088 */  addiu $a1, $sp, 0x88
/* ABF364 800481C4 A6380020 */  sh    $t8, 0x20($s1)
/* ABF368 800481C8 84D90008 */  lh    $t9, 8($a2)
/* ABF36C 800481CC A6390022 */  sh    $t9, 0x22($s1)
/* ABF370 800481D0 AFA8003C */  sw    $t0, 0x3c($sp)
/* ABF374 800481D4 C5040004 */  lwc1  $f4, 4($t0)
/* ABF378 800481D8 E6240024 */  swc1  $f4, 0x24($s1)
/* ABF37C 800481DC 84C3000C */  lh    $v1, 0xc($a2)
/* ABF380 800481E0 14830004 */  bne   $a0, $v1, .L800481F4
/* ABF384 800481E4 28610169 */   slti  $at, $v1, 0x169
/* ABF388 800481E8 C60A0014 */  lwc1  $f10, 0x14($s0)
/* ABF38C 800481EC 1000000E */  b     .L80048228
/* ABF390 800481F0 E62A001C */   swc1  $f10, 0x1c($s1)
.L800481F4:
/* ABF394 800481F4 54200009 */  bnezl $at, .L8004821C
/* ABF398 800481F8 44832000 */   mtc1  $v1, $f4
/* ABF39C 800481FC 44833000 */  mtc1  $v1, $f6
/* ABF3A0 80048200 3C018014 */  lui   $at, %hi(D_80139ED4)
/* ABF3A4 80048204 C4329ED4 */  lwc1  $f18, %lo(D_80139ED4)($at)
/* ABF3A8 80048208 46803220 */  cvt.s.w $f8, $f6
/* ABF3AC 8004820C 46124002 */  mul.s $f0, $f8, $f18
/* ABF3B0 80048210 10000005 */  b     .L80048228
/* ABF3B4 80048214 E620001C */   swc1  $f0, 0x1c($s1)
/* ABF3B8 80048218 44832000 */  mtc1  $v1, $f4
.L8004821C:
/* ABF3BC 8004821C 00000000 */  nop   
/* ABF3C0 80048220 46802020 */  cvt.s.w $f0, $f4
/* ABF3C4 80048224 E620001C */  swc1  $f0, 0x1c($s1)
.L80048228:
/* ABF3C8 80048228 84C2000E */  lh    $v0, 0xe($a2)
/* ABF3CC 8004822C 44805000 */  mtc1  $zero, $f10
/* ABF3D0 80048230 54820004 */  bnel  $a0, $v0, .L80048244
/* ABF3D4 80048234 A6220028 */   sh    $v0, 0x28($s1)
/* ABF3D8 80048238 10000002 */  b     .L80048244
/* ABF3DC 8004823C A6200028 */   sh    $zero, 0x28($s1)
/* ABF3E0 80048240 A6220028 */  sh    $v0, 0x28($s1)
.L80048244:
/* ABF3E4 80048244 E62A0018 */  swc1  $f10, 0x18($s1)
/* ABF3E8 80048248 8609001E */  lh    $t1, 0x1e($s0)
/* ABF3EC 8004824C 312B0004 */  andi  $t3, $t1, 4
/* ABF3F0 80048250 5160000C */  beql  $t3, $zero, .L80048284
/* ABF3F4 80048254 3C014248 */   lui   $at, 0x4248
/* ABF3F8 80048258 862C0020 */  lh    $t4, 0x20($s1)
/* ABF3FC 8004825C 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* ABF400 80048260 44813000 */  mtc1  $at, $f6
/* ABF404 80048264 A7AC008C */  sh    $t4, 0x8c($sp)
/* ABF408 80048268 862D0022 */  lh    $t5, 0x22($s1)
/* ABF40C 8004826C 2624000C */  addiu $a0, $s1, 0xc
/* ABF410 80048270 E7A60088 */  swc1  $f6, 0x88($sp)
/* ABF414 80048274 25AE3FFF */  addiu $t6, $t5, 0x3fff
/* ABF418 80048278 0C01F097 */  jal   func_8007C25C
/* ABF41C 8004827C A7AE008E */   sh    $t6, 0x8e($sp)
/* ABF420 80048280 3C014248 */  li    $at, 0x42480000 # 0.000000
.L80048284:
/* ABF424 80048284 44814000 */  mtc1  $at, $f8
/* ABF428 80048288 240F0001 */  li    $t7, 1
/* ABF42C 8004828C A60F015E */  sh    $t7, 0x15e($s0)
/* ABF430 80048290 1000000A */  b     .L800482BC
/* ABF434 80048294 E60800C8 */   swc1  $f8, 0xc8($s0)
.L80048298:
/* ABF438 80048298 AFB8003C */  sw    $t8, 0x3c($sp)
/* ABF43C 8004829C C6120104 */  lwc1  $f18, 0x104($s0)
/* ABF440 800482A0 C7000004 */  lwc1  $f0, 4($t8)
/* ABF444 800482A4 26110020 */  addiu $s1, $s0, 0x20
/* ABF448 800482A8 46120032 */  c.eq.s $f0, $f18
/* ABF44C 800482AC 00000000 */  nop   
/* ABF450 800482B0 45000002 */  bc1f  .L800482BC
/* ABF454 800482B4 00000000 */   nop   
/* ABF458 800482B8 E6000044 */  swc1  $f0, 0x44($s0)
.L800482BC:
/* ABF45C 800482BC 26050050 */  addiu $a1, $s0, 0x50
/* ABF460 800482C0 2606005C */  addiu $a2, $s0, 0x5c
/* ABF464 800482C4 AFA60048 */  sw    $a2, 0x48($sp)
/* ABF468 800482C8 AFA50044 */  sw    $a1, 0x44($sp)
/* ABF46C 800482CC 0C01F124 */  jal   func_8007C490
/* ABF470 800482D0 27A40080 */   addiu $a0, $sp, 0x80
/* ABF474 800482D4 26060074 */  addiu $a2, $s0, 0x74
/* ABF478 800482D8 AFA60040 */  sw    $a2, 0x40($sp)
/* ABF47C 800482DC 27A40078 */  addiu $a0, $sp, 0x78
/* ABF480 800482E0 0C01F124 */  jal   func_8007C490
/* ABF484 800482E4 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF488 800482E8 3C018014 */  lui   $at, %hi(D_80139EDC)
/* ABF48C 800482EC C4309EDC */  lwc1  $f16, %lo(D_80139EDC)($at)
/* ABF490 800482F0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABF494 800482F4 44815000 */  mtc1  $at, $f10
/* ABF498 800482F8 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* ABF49C 800482FC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABF4A0 80048300 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF4A4 80048304 460A2182 */  mul.s $f6, $f4, $f10
/* ABF4A8 80048308 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF4AC 8004830C E60600E0 */  swc1  $f6, 0xe0($s0)
/* ABF4B0 80048310 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABF4B4 80048314 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* ABF4B8 80048318 846801C6 */  lh    $t0, 0x1c6($v1)
/* ABF4BC 8004831C 44884000 */  mtc1  $t0, $f8
/* ABF4C0 80048320 00000000 */  nop   
/* ABF4C4 80048324 468044A0 */  cvt.s.w $f18, $f8
/* ABF4C8 80048328 46109082 */  mul.s $f2, $f18, $f16
/* ABF4CC 8004832C 00000000 */  nop   
/* ABF4D0 80048330 46001102 */  mul.s $f4, $f2, $f0
/* ABF4D4 80048334 44061000 */  mfc1  $a2, $f2
/* ABF4D8 80048338 E7A400A4 */  swc1  $f4, 0xa4($sp)
/* ABF4DC 8004833C 846A01C8 */  lh    $t2, 0x1c8($v1)
/* ABF4E0 80048340 448A5000 */  mtc1  $t2, $f10
/* ABF4E4 80048344 00000000 */  nop   
/* ABF4E8 80048348 468051A0 */  cvt.s.w $f6, $f10
/* ABF4EC 8004834C 46103202 */  mul.s $f8, $f6, $f16
/* ABF4F0 80048350 00000000 */  nop   
/* ABF4F4 80048354 46004482 */  mul.s $f18, $f8, $f0
/* ABF4F8 80048358 E7B200A0 */  swc1  $f18, 0xa0($sp)
/* ABF4FC 8004835C C60400C8 */  lwc1  $f4, 0xc8($s0)
/* ABF500 80048360 C60C000C */  lwc1  $f12, 0xc($s0)
/* ABF504 80048364 46002382 */  mul.s $f14, $f4, $f0
/* ABF508 80048368 0C010E27 */  jal   func_8004389C
/* ABF50C 8004836C 00000000 */   nop   
/* ABF510 80048370 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABF514 80048374 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* ABF518 80048378 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* ABF51C 8004837C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF520 80048380 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF524 80048384 852B01A2 */  lh    $t3, 0x1a2($t1)
/* ABF528 80048388 8FA600A0 */  lw    $a2, 0xa0($sp)
/* ABF52C 8004838C C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABF530 80048390 448B5000 */  mtc1  $t3, $f10
/* ABF534 80048394 0C010E27 */  jal   func_8004389C
/* ABF538 80048398 46805320 */   cvt.s.w $f12, $f10
/* ABF53C 8004839C E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABF540 800483A0 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* ABF544 800483A4 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABF548 800483A8 3C018014 */  lui   $at, %hi(D_80139EE0)
/* ABF54C 800483AC C4329EE0 */  lwc1  $f18, %lo(D_80139EE0)($at)
/* ABF550 800483B0 858D0198 */  lh    $t5, 0x198($t4)
/* ABF554 800483B4 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABF558 800483B8 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF55C 800483BC 448D3000 */  mtc1  $t5, $f6
/* ABF560 800483C0 8FA600A4 */  lw    $a2, 0xa4($sp)
/* ABF564 800483C4 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* ABF568 800483C8 46803220 */  cvt.s.w $f8, $f6
/* ABF56C 800483CC 46124302 */  mul.s $f12, $f8, $f18
/* ABF570 800483D0 0C010E27 */  jal   func_8004389C
/* ABF574 800483D4 00000000 */   nop   
/* ABF578 800483D8 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABF57C 800483DC 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABF580 800483E0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF584 800483E4 3C018014 */  lui   $at, %hi(D_80139EE4)
/* ABF588 800483E8 C4269EE4 */  lwc1  $f6, %lo(D_80139EE4)($at)
/* ABF58C 800483EC 85CF019A */  lh    $t7, 0x19a($t6)
/* ABF590 800483F0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABF594 800483F4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF598 800483F8 448F2000 */  mtc1  $t7, $f4
/* ABF59C 800483FC 8FA600A0 */  lw    $a2, 0xa0($sp)
/* ABF5A0 80048400 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* ABF5A4 80048404 468022A0 */  cvt.s.w $f10, $f4
/* ABF5A8 80048408 46065302 */  mul.s $f12, $f10, $f6
/* ABF5AC 8004840C 0C010E27 */  jal   func_8004389C
/* ABF5B0 80048410 00000000 */   nop   
/* ABF5B4 80048414 E60000D0 */  swc1  $f0, 0xd0($s0)
/* ABF5B8 80048418 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABF5BC 8004841C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABF5C0 80048420 3C018014 */  lui   $at, %hi(D_80139EE8)
/* ABF5C4 80048424 C4249EE8 */  lwc1  $f4, %lo(D_80139EE8)($at)
/* ABF5C8 80048428 8719019C */  lh    $t9, 0x19c($t8)
/* ABF5CC 8004842C 3C018014 */  lui   $at, %hi(D_80139EEC)
/* ABF5D0 80048430 C4269EEC */  lwc1  $f6, %lo(D_80139EEC)($at)
/* ABF5D4 80048434 44994000 */  mtc1  $t9, $f8
/* ABF5D8 80048438 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* ABF5DC 8004843C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABF5E0 80048440 468044A0 */  cvt.s.w $f18, $f8
/* ABF5E4 80048444 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABF5E8 80048448 46000386 */  mov.s $f14, $f0
/* ABF5EC 8004844C 46049302 */  mul.s $f12, $f18, $f4
/* ABF5F0 80048450 00000000 */  nop   
/* ABF5F4 80048454 46065202 */  mul.s $f8, $f10, $f6
/* ABF5F8 80048458 44064000 */  mfc1  $a2, $f8
/* ABF5FC 8004845C 0C010E27 */  jal   func_8004389C
/* ABF600 80048460 00000000 */   nop   
/* ABF604 80048464 8602001E */  lh    $v0, 0x1e($s0)
/* ABF608 80048468 E60000D4 */  swc1  $f0, 0xd4($s0)
/* ABF60C 8004846C 30480080 */  andi  $t0, $v0, 0x80
/* ABF610 80048470 15000009 */  bnez  $t0, .L80048498
/* ABF614 80048474 30470001 */   andi  $a3, $v0, 1
/* ABF618 80048478 00073C00 */  sll   $a3, $a3, 0x10
/* ABF61C 8004847C 00073C03 */  sra   $a3, $a3, 0x10
/* ABF620 80048480 02002025 */  move  $a0, $s0
/* ABF624 80048484 27A50078 */  addiu $a1, $sp, 0x78
/* ABF628 80048488 0C0115EA */  jal   func_800457A8
/* ABF62C 8004848C 8E060000 */   lw    $a2, ($s0)
/* ABF630 80048490 10000009 */  b     .L800484B8
/* ABF634 80048494 8609001E */   lh    $t1, 0x1e($s0)
.L80048498:
/* ABF638 80048498 8E060000 */  lw    $a2, ($s0)
/* ABF63C 8004849C 304A0001 */  andi  $t2, $v0, 1
/* ABF640 800484A0 AFAA0010 */  sw    $t2, 0x10($sp)
/* ABF644 800484A4 02002025 */  move  $a0, $s0
/* ABF648 800484A8 27A50078 */  addiu $a1, $sp, 0x78
/* ABF64C 800484AC 0C011635 */  jal   func_800458D4
/* ABF650 800484B0 26270024 */   addiu $a3, $s1, 0x24
/* ABF654 800484B4 8609001E */  lh    $t1, 0x1e($s0)
.L800484B8:
/* ABF658 800484B8 312B0004 */  andi  $t3, $t1, 4
/* ABF65C 800484BC 5160000B */  beql  $t3, $zero, .L800484EC
/* ABF660 800484C0 8FA2003C */   lw    $v0, 0x3c($sp)
/* ABF664 800484C4 8FA2003C */  lw    $v0, 0x3c($sp)
/* ABF668 800484C8 C624000C */  lwc1  $f4, 0xc($s1)
/* ABF66C 800484CC C6280014 */  lwc1  $f8, 0x14($s1)
/* ABF670 800484D0 C4520000 */  lwc1  $f18, ($v0)
/* ABF674 800484D4 46049280 */  add.s $f10, $f18, $f4
/* ABF678 800484D8 E62A0000 */  swc1  $f10, ($s1)
/* ABF67C 800484DC C4460008 */  lwc1  $f6, 8($v0)
/* ABF680 800484E0 46083480 */  add.s $f18, $f6, $f8
/* ABF684 800484E4 E6320008 */  swc1  $f18, 8($s1)
/* ABF688 800484E8 8FA2003C */  lw    $v0, 0x3c($sp)
.L800484EC:
/* ABF68C 800484EC 27A40088 */  addiu $a0, $sp, 0x88
/* ABF690 800484F0 02202825 */  move  $a1, $s1
/* ABF694 800484F4 C4440004 */  lwc1  $f4, 4($v0)
/* ABF698 800484F8 E6240004 */  swc1  $f4, 4($s1)
/* ABF69C 800484FC 0C01F124 */  jal   func_8007C490
/* ABF6A0 80048500 8FA60044 */   lw    $a2, 0x44($sp)
/* ABF6A4 80048504 27A40090 */  addiu $a0, $sp, 0x90
/* ABF6A8 80048508 8FA50044 */  lw    $a1, 0x44($sp)
/* ABF6AC 8004850C 0C01F124 */  jal   func_8007C490
/* ABF6B0 80048510 8FA60040 */   lw    $a2, 0x40($sp)
/* ABF6B4 80048514 862C0028 */  lh    $t4, 0x28($s1)
/* ABF6B8 80048518 318D0002 */  andi  $t5, $t4, 2
/* ABF6BC 8004851C 51A00004 */  beql  $t5, $zero, .L80048530
/* ABF6C0 80048520 8605001C */   lh    $a1, 0x1c($s0)
/* ABF6C4 80048524 10000002 */  b     .L80048530
/* ABF6C8 80048528 86250022 */   lh    $a1, 0x22($s1)
/* ABF6CC 8004852C 8605001C */  lh    $a1, 0x1c($s0)
.L80048530:
/* ABF6D0 80048530 28A14000 */  slti  $at, $a1, 0x4000
/* ABF6D4 80048534 1020000B */  beqz  $at, .L80048564
/* ABF6D8 80048538 87AE0096 */   lh    $t6, 0x96($sp)
/* ABF6DC 8004853C 87AF008E */  lh    $t7, 0x8e($sp)
/* ABF6E0 80048540 01CF1823 */  subu  $v1, $t6, $t7
/* ABF6E4 80048544 00031C00 */  sll   $v1, $v1, 0x10
/* ABF6E8 80048548 00031C03 */  sra   $v1, $v1, 0x10
/* ABF6EC 8004854C 04600003 */  bltz  $v1, .L8004855C
/* ABF6F0 80048550 00031023 */   negu  $v0, $v1
/* ABF6F4 80048554 10000001 */  b     .L8004855C
/* ABF6F8 80048558 00601025 */   move  $v0, $v1
.L8004855C:
/* ABF6FC 8004855C 00A2082A */  slt   $at, $a1, $v0
/* ABF700 80048560 1420000E */  bnez  $at, .L8004859C
.L80048564:
/* ABF704 80048564 28A14000 */   slti  $at, $a1, 0x4000
/* ABF708 80048568 14200030 */  bnez  $at, .L8004862C
/* ABF70C 8004856C 87B80096 */   lh    $t8, 0x96($sp)
/* ABF710 80048570 87B9008E */  lh    $t9, 0x8e($sp)
/* ABF714 80048574 03191823 */  subu  $v1, $t8, $t9
/* ABF718 80048578 00031C00 */  sll   $v1, $v1, 0x10
/* ABF71C 8004857C 00031C03 */  sra   $v1, $v1, 0x10
/* ABF720 80048580 04600003 */  bltz  $v1, .L80048590
/* ABF724 80048584 00031023 */   negu  $v0, $v1
/* ABF728 80048588 10000001 */  b     .L80048590
/* ABF72C 8004858C 00601025 */   move  $v0, $v1
.L80048590:
/* ABF730 80048590 0045082A */  slt   $at, $v0, $a1
/* ABF734 80048594 50200026 */  beql  $at, $zero, .L80048630
/* ABF738 80048598 27AC0090 */   addiu $t4, $sp, 0x90
.L8004859C:
/* ABF73C 8004859C 04610005 */  bgez  $v1, .L800485B4
/* ABF740 800485A0 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* ABF744 800485A4 00052023 */  negu  $a0, $a1
/* ABF748 800485A8 00042400 */  sll   $a0, $a0, 0x10
/* ABF74C 800485AC 10000003 */  b     .L800485BC
/* ABF750 800485B0 00042403 */   sra   $a0, $a0, 0x10
.L800485B4:
/* ABF754 800485B4 00052400 */  sll   $a0, $a1, 0x10
/* ABF758 800485B8 00042403 */  sra   $a0, $a0, 0x10
.L800485BC:
/* ABF75C 800485BC 44815000 */  mtc1  $at, $f10
/* ABF760 800485C0 C60600C8 */  lwc1  $f6, 0xc8($s0)
/* ABF764 800485C4 C61200E0 */  lwc1  $f18, 0xe0($s0)
/* ABF768 800485C8 87A8008E */  lh    $t0, 0x8e($sp)
/* ABF76C 800485CC 46065203 */  div.s $f8, $f10, $f6
/* ABF770 800485D0 87A50086 */  lh    $a1, 0x86($sp)
/* ABF774 800485D4 00882021 */  addu  $a0, $a0, $t0
/* ABF778 800485D8 00042400 */  sll   $a0, $a0, 0x10
/* ABF77C 800485DC 00042403 */  sra   $a0, $a0, 0x10
/* ABF780 800485E0 2407000A */  li    $a3, 10
/* ABF784 800485E4 46124102 */  mul.s $f4, $f8, $f18
/* ABF788 800485E8 44062000 */  mfc1  $a2, $f4
/* ABF78C 800485EC 0C010E47 */  jal   func_8004391C
/* ABF790 800485F0 00000000 */   nop   
/* ABF794 800485F4 A7A2009E */  sh    $v0, 0x9e($sp)
/* ABF798 800485F8 862A0028 */  lh    $t2, 0x28($s1)
/* ABF79C 800485FC 02002025 */  move  $a0, $s0
/* ABF7A0 80048600 87A5007C */  lh    $a1, 0x7c($sp)
/* ABF7A4 80048604 31490001 */  andi  $t1, $t2, 1
/* ABF7A8 80048608 11200006 */  beqz  $t1, .L80048624
/* ABF7AC 8004860C 87A30084 */   lh    $v1, 0x84($sp)
/* ABF7B0 80048610 86260020 */  lh    $a2, 0x20($s1)
/* ABF7B4 80048614 0C011AD1 */  jal   func_80046B44
/* ABF7B8 80048618 00003825 */   move  $a3, $zero
/* ABF7BC 8004861C 10000009 */  b     .L80048644
/* ABF7C0 80048620 A7A2009C */   sh    $v0, 0x9c($sp)
.L80048624:
/* ABF7C4 80048624 10000007 */  b     .L80048644
/* ABF7C8 80048628 A7A3009C */   sh    $v1, 0x9c($sp)
.L8004862C:
/* ABF7CC 8004862C 27AC0090 */  addiu $t4, $sp, 0x90
.L80048630:
/* ABF7D0 80048630 8D8E0000 */  lw    $t6, ($t4)
/* ABF7D4 80048634 27AB0098 */  addiu $t3, $sp, 0x98
/* ABF7D8 80048638 AD6E0000 */  sw    $t6, ($t3)
/* ABF7DC 8004863C 8D8D0004 */  lw    $t5, 4($t4)
/* ABF7E0 80048640 AD6D0004 */  sw    $t5, 4($t3)
.L80048644:
/* ABF7E4 80048644 8E060004 */  lw    $a2, 4($s0)
/* ABF7E8 80048648 8E070008 */  lw    $a3, 8($s0)
/* ABF7EC 8004864C AFA00010 */  sw    $zero, 0x10($sp)
/* ABF7F0 80048650 02002025 */  move  $a0, $s0
/* ABF7F4 80048654 0C011A70 */  jal   func_800469C0
/* ABF7F8 80048658 8FA50090 */   lw    $a1, 0x90($sp)
/* ABF7FC 8004865C E7A00098 */  swc1  $f0, 0x98($sp)
/* ABF800 80048660 E60000DC */  swc1  $f0, 0xdc($s0)
/* ABF804 80048664 862F0028 */  lh    $t7, 0x28($s1)
/* ABF808 80048668 87A3009C */  lh    $v1, 0x9c($sp)
/* ABF80C 8004866C 27A60098 */  addiu $a2, $sp, 0x98
/* ABF810 80048670 31F80001 */  andi  $t8, $t7, 1
/* ABF814 80048674 17000015 */  bnez  $t8, .L800486CC
/* ABF818 80048678 28610E39 */   slti  $at, $v1, 0xe39
/* ABF81C 8004867C 14200008 */  bnez  $at, .L800486A0
/* ABF820 80048680 24190E38 */   li    $t9, 3640
/* ABF824 80048684 03234023 */  subu  $t0, $t9, $v1
/* ABF828 80048688 00085400 */  sll   $t2, $t0, 0x10
/* ABF82C 8004868C 000A4C03 */  sra   $t1, $t2, 0x10
/* ABF830 80048690 00095883 */  sra   $t3, $t1, 2
/* ABF834 80048694 006B1821 */  addu  $v1, $v1, $t3
/* ABF838 80048698 00031C00 */  sll   $v1, $v1, 0x10
/* ABF83C 8004869C 00031C03 */  sra   $v1, $v1, 0x10
.L800486A0:
/* ABF840 800486A0 0461000A */  bgez  $v1, .L800486CC
/* ABF844 800486A4 A7A3009C */   sh    $v1, 0x9c($sp)
/* ABF848 800486A8 240CFC72 */  li    $t4, -910
/* ABF84C 800486AC 01836823 */  subu  $t5, $t4, $v1
/* ABF850 800486B0 000D7400 */  sll   $t6, $t5, 0x10
/* ABF854 800486B4 000E7C03 */  sra   $t7, $t6, 0x10
/* ABF858 800486B8 000FC083 */  sra   $t8, $t7, 2
/* ABF85C 800486BC 00781821 */  addu  $v1, $v1, $t8
/* ABF860 800486C0 00031C00 */  sll   $v1, $v1, 0x10
/* ABF864 800486C4 00031C03 */  sra   $v1, $v1, 0x10
/* ABF868 800486C8 A7A3009C */  sh    $v1, 0x9c($sp)
.L800486CC:
/* ABF86C 800486CC 8FA40040 */  lw    $a0, 0x40($sp)
/* ABF870 800486D0 0C010F0A */  jal   func_80043C28
/* ABF874 800486D4 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF878 800486D8 86190140 */  lh    $t9, 0x140($s0)
/* ABF87C 800486DC 24010007 */  li    $at, 7
/* ABF880 800486E0 8FA80040 */  lw    $t0, 0x40($sp)
/* ABF884 800486E4 57210032 */  bnel  $t9, $at, .L800487B0
/* ABF888 800486E8 C62C001C */   lwc1  $f12, 0x1c($s1)
/* ABF88C 800486EC 8D090000 */  lw    $t1, ($t0)
/* ABF890 800486F0 27A600AC */  addiu $a2, $sp, 0xac
/* ABF894 800486F4 3C0C0001 */  lui   $t4, 1
/* ABF898 800486F8 ACC90000 */  sw    $t1, ($a2)
/* ABF89C 800486FC 8D0A0004 */  lw    $t2, 4($t0)
/* ABF8A0 80048700 02002025 */  move  $a0, $s0
/* ABF8A4 80048704 ACCA0004 */  sw    $t2, 4($a2)
/* ABF8A8 80048708 8D090008 */  lw    $t1, 8($t0)
/* ABF8AC 8004870C ACC90008 */  sw    $t1, 8($a2)
/* ABF8B0 80048710 8E0B008C */  lw    $t3, 0x8c($s0)
/* ABF8B4 80048714 018B6021 */  addu  $t4, $t4, $t3
/* ABF8B8 80048718 918C0A39 */  lbu   $t4, 0xa39($t4)
/* ABF8BC 8004871C 11800006 */  beqz  $t4, .L80048738
/* ABF8C0 80048720 00000000 */   nop   
/* ABF8C4 80048724 860D001E */  lh    $t5, 0x1e($s0)
/* ABF8C8 80048728 8FA50044 */  lw    $a1, 0x44($sp)
/* ABF8CC 8004872C 31AE0010 */  andi  $t6, $t5, 0x10
/* ABF8D0 80048730 11C0000C */  beqz  $t6, .L80048764
/* ABF8D4 80048734 00000000 */   nop   
.L80048738:
/* ABF8D8 80048738 0C010F46 */  jal   func_80043D18
/* ABF8DC 8004873C 8FA50044 */   lw    $a1, 0x44($sp)
/* ABF8E0 80048740 27B800AC */  addiu $t8, $sp, 0xac
/* ABF8E4 80048744 8F080000 */  lw    $t0, ($t8)
/* ABF8E8 80048748 8FAF0048 */  lw    $t7, 0x48($sp)
/* ABF8EC 8004874C ADE80000 */  sw    $t0, ($t7)
/* ABF8F0 80048750 8F190004 */  lw    $t9, 4($t8)
/* ABF8F4 80048754 ADF90004 */  sw    $t9, 4($t7)
/* ABF8F8 80048758 8F080008 */  lw    $t0, 8($t8)
/* ABF8FC 8004875C 10000013 */  b     .L800487AC
/* ABF900 80048760 ADE80008 */   sw    $t0, 8($t7)
.L80048764:
/* ABF904 80048764 0C010FE5 */  jal   func_80043F94
/* ABF908 80048768 02002025 */   move  $a0, $s0
/* ABF90C 8004876C 27AA00AC */  addiu $t2, $sp, 0xac
/* ABF910 80048770 8FA50048 */  lw    $a1, 0x48($sp)
/* ABF914 80048774 8D4B0000 */  lw    $t3, ($t2)
/* ABF918 80048778 27A40098 */  addiu $a0, $sp, 0x98
/* ABF91C 8004877C ACAB0000 */  sw    $t3, ($a1)
/* ABF920 80048780 8D490004 */  lw    $t1, 4($t2)
/* ABF924 80048784 ACA90004 */  sw    $t1, 4($a1)
/* ABF928 80048788 8D4B0008 */  lw    $t3, 8($t2)
/* ABF92C 8004878C ACAB0008 */  sw    $t3, 8($a1)
/* ABF930 80048790 0C01F124 */  jal   func_8007C490
/* ABF934 80048794 8FA60044 */   lw    $a2, 0x44($sp)
/* ABF938 80048798 87AC009C */  lh    $t4, 0x9c($sp)
/* ABF93C 8004879C A60C0134 */  sh    $t4, 0x134($s0)
/* ABF940 800487A0 87AD009E */  lh    $t5, 0x9e($sp)
/* ABF944 800487A4 A6000138 */  sh    $zero, 0x138($s0)
/* ABF948 800487A8 A60D0136 */  sh    $t5, 0x136($s0)
.L800487AC:
/* ABF94C 800487AC C62C001C */  lwc1  $f12, 0x1c($s1)
.L800487B0:
/* ABF950 800487B0 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* ABF954 800487B4 8E0600D4 */  lw    $a2, 0xd4($s0)
/* ABF958 800487B8 0C010E27 */  jal   func_8004389C
/* ABF95C 800487BC 3C073F80 */   lui   $a3, 0x3f80
/* ABF960 800487C0 E60000FC */  swc1  $f0, 0xfc($s0)
/* ABF964 800487C4 00002025 */  move  $a0, $zero
/* ABF968 800487C8 8605015A */  lh    $a1, 0x15a($s0)
/* ABF96C 800487CC 3C063F00 */  lui   $a2, 0x3f00
/* ABF970 800487D0 0C010E47 */  jal   func_8004391C
/* ABF974 800487D4 2407000A */   li    $a3, 10
/* ABF978 800487D8 A602015A */  sh    $v0, 0x15a($s0)
/* ABF97C 800487DC 02002025 */  move  $a0, $s0
/* ABF980 800487E0 0C011429 */  jal   func_800450A4
/* ABF984 800487E4 8E050018 */   lw    $a1, 0x18($s0)
/* ABF988 800487E8 E6000100 */  swc1  $f0, 0x100($s0)
/* ABF98C 800487EC 8FBF0024 */  lw    $ra, 0x24($sp)
/* ABF990 800487F0 8FB10020 */  lw    $s1, 0x20($sp)
/* ABF994 800487F4 8FB0001C */  lw    $s0, 0x1c($sp)
/* ABF998 800487F8 27BD00E0 */  addiu $sp, $sp, 0xe0
/* ABF99C 800487FC 03E00008 */  jr    $ra
/* ABF9A0 80048800 24020001 */   li    $v0, 1
# SPLIT
/* ABF9A4 80048804 27BDFF58 */  addiu $sp, $sp, -0xa8
/* ABF9A8 80048808 AFB0001C */  sw    $s0, 0x1c($sp)
/* ABF9AC 8004880C 00808025 */  move  $s0, $a0
/* ABF9B0 80048810 AFBF0024 */  sw    $ra, 0x24($sp)
/* ABF9B4 80048814 AFB10020 */  sw    $s1, 0x20($sp)
/* ABF9B8 80048818 0C00B721 */  jal   func_8002DC84
/* ABF9BC 8004881C 8C840090 */   lw    $a0, 0x90($a0)
/* ABF9C0 80048820 8602015E */  lh    $v0, 0x15e($s0)
/* ABF9C4 80048824 10400009 */  beqz  $v0, .L8004884C
/* ABF9C8 80048828 2401000A */   li    $at, 10
/* ABF9CC 8004882C 10410007 */  beq   $v0, $at, .L8004884C
/* ABF9D0 80048830 24010014 */   li    $at, 20
/* ABF9D4 80048834 10410005 */  beq   $v0, $at, .L8004884C
/* ABF9D8 80048838 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABF9DC 8004883C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF9E0 80048840 85C30314 */  lh    $v1, 0x314($t6)
/* ABF9E4 80048844 10600048 */  beqz  $v1, .L80048968
/* ABF9E8 80048848 00000000 */   nop   
.L8004884C:
/* ABF9EC 8004884C 860F0142 */  lh    $t7, 0x142($s0)
/* ABF9F0 80048850 3C198012 */  lui   $t9, %hi(D_8011D068)
/* ABF9F4 80048854 86080144 */  lh    $t0, 0x144($s0)
/* ABF9F8 80048858 000FC0C0 */  sll   $t8, $t7, 3
/* ABF9FC 8004885C 0338C821 */  addu  $t9, $t9, $t8
/* ABFA00 80048860 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* ABFA04 80048864 000848C0 */  sll   $t1, $t0, 3
/* ABFA08 80048868 3C018014 */  lui   $at, %hi(D_80139EF0)
/* ABFA0C 8004886C 03295021 */  addu  $t2, $t9, $t1
/* ABFA10 80048870 8D420004 */  lw    $v0, 4($t2)
/* ABFA14 80048874 C4249EF0 */  lwc1  $f4, %lo(D_80139EF0)($at)
/* ABFA18 80048878 3C018014 */  lui   $at, %hi(D_80139EF4)
/* ABFA1C 8004887C 844B0000 */  lh    $t3, ($v0)
/* ABFA20 80048880 46040082 */  mul.s $f2, $f0, $f4
/* ABFA24 80048884 24420020 */  addiu $v0, $v0, 0x20
/* ABFA28 80048888 448B3000 */  mtc1  $t3, $f6
/* ABFA2C 8004888C 00000000 */  nop   
/* ABFA30 80048890 46803220 */  cvt.s.w $f8, $f6
/* ABFA34 80048894 46024282 */  mul.s $f10, $f8, $f2
/* ABFA38 80048898 E60A0000 */  swc1  $f10, ($s0)
/* ABFA3C 8004889C 844CFFE4 */  lh    $t4, -0x1c($v0)
/* ABFA40 800488A0 448C9000 */  mtc1  $t4, $f18
/* ABFA44 800488A4 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* ABFA48 800488A8 46809120 */  cvt.s.w $f4, $f18
/* ABFA4C 800488AC 46022182 */  mul.s $f6, $f4, $f2
/* ABFA50 800488B0 E6060004 */  swc1  $f6, 4($s0)
/* ABFA54 800488B4 844DFFE8 */  lh    $t5, -0x18($v0)
/* ABFA58 800488B8 448D4000 */  mtc1  $t5, $f8
/* ABFA5C 800488BC 00000000 */  nop   
/* ABFA60 800488C0 468042A0 */  cvt.s.w $f10, $f8
/* ABFA64 800488C4 46025482 */  mul.s $f18, $f10, $f2
/* ABFA68 800488C8 E6120008 */  swc1  $f18, 8($s0)
/* ABFA6C 800488CC 844EFFEC */  lh    $t6, -0x14($v0)
/* ABFA70 800488D0 C4289EF4 */  lwc1  $f8, %lo(D_80139EF4)($at)
/* ABFA74 800488D4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFA78 800488D8 448E2000 */  mtc1  $t6, $f4
/* ABFA7C 800488DC 44819000 */  mtc1  $at, $f18
/* ABFA80 800488E0 3C018014 */  lui   $at, %hi(D_80139EF8)
/* ABFA84 800488E4 468021A0 */  cvt.s.w $f6, $f4
/* ABFA88 800488E8 46083282 */  mul.s $f10, $f6, $f8
/* ABFA8C 800488EC 46125100 */  add.s $f4, $f10, $f18
/* ABFA90 800488F0 4600218D */  trunc.w.s $f6, $f4
/* ABFA94 800488F4 44183000 */  mfc1  $t8, $f6
/* ABFA98 800488F8 00000000 */  nop   
/* ABFA9C 800488FC A618001C */  sh    $t8, 0x1c($s0)
/* ABFAA0 80048900 8448FFF0 */  lh    $t0, -0x10($v0)
/* ABFAA4 80048904 44884000 */  mtc1  $t0, $f8
/* ABFAA8 80048908 00000000 */  nop   
/* ABFAAC 8004890C 468042A0 */  cvt.s.w $f10, $f8
/* ABFAB0 80048910 E60A000C */  swc1  $f10, 0xc($s0)
/* ABFAB4 80048914 8459FFF4 */  lh    $t9, -0xc($v0)
/* ABFAB8 80048918 44999000 */  mtc1  $t9, $f18
/* ABFABC 8004891C 00000000 */  nop   
/* ABFAC0 80048920 46809120 */  cvt.s.w $f4, $f18
/* ABFAC4 80048924 E6040010 */  swc1  $f4, 0x10($s0)
/* ABFAC8 80048928 8449FFF8 */  lh    $t1, -8($v0)
/* ABFACC 8004892C 44893000 */  mtc1  $t1, $f6
/* ABFAD0 80048930 00000000 */  nop   
/* ABFAD4 80048934 46803220 */  cvt.s.w $f8, $f6
/* ABFAD8 80048938 E6080014 */  swc1  $f8, 0x14($s0)
/* ABFADC 8004893C 844AFFFC */  lh    $t2, -4($v0)
/* ABFAE0 80048940 C4249EF8 */  lwc1  $f4, %lo(D_80139EF8)($at)
/* ABFAE4 80048944 448A5000 */  mtc1  $t2, $f10
/* ABFAE8 80048948 00000000 */  nop   
/* ABFAEC 8004894C 468054A0 */  cvt.s.w $f18, $f10
/* ABFAF0 80048950 46049182 */  mul.s $f6, $f18, $f4
/* ABFAF4 80048954 E6060018 */  swc1  $f6, 0x18($s0)
/* ABFAF8 80048958 844B0000 */  lh    $t3, ($v0)
/* ABFAFC 8004895C A60B001E */  sh    $t3, 0x1e($s0)
/* ABFB00 80048960 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABFB04 80048964 85830314 */  lh    $v1, 0x314($t4)
.L80048968:
/* ABFB08 80048968 50600004 */  beql  $v1, $zero, .L8004897C
/* ABFB0C 8004896C 26050050 */   addiu $a1, $s0, 0x50
/* ABFB10 80048970 0C011495 */  jal   func_80045254
/* ABFB14 80048974 02002025 */   move  $a0, $s0
/* ABFB18 80048978 26050050 */  addiu $a1, $s0, 0x50
.L8004897C:
/* ABFB1C 8004897C 2606005C */  addiu $a2, $s0, 0x5c
/* ABFB20 80048980 AFA60048 */  sw    $a2, 0x48($sp)
/* ABFB24 80048984 AFA50044 */  sw    $a1, 0x44($sp)
/* ABFB28 80048988 0C01F124 */  jal   func_8007C490
/* ABFB2C 8004898C 27A4007C */   addiu $a0, $sp, 0x7c
/* ABFB30 80048990 26060074 */  addiu $a2, $s0, 0x74
/* ABFB34 80048994 AFA60040 */  sw    $a2, 0x40($sp)
/* ABFB38 80048998 27A40074 */  addiu $a0, $sp, 0x74
/* ABFB3C 8004899C 0C01F124 */  jal   func_8007C490
/* ABFB40 800489A0 8FA50044 */   lw    $a1, 0x44($sp)
/* ABFB44 800489A4 24040001 */  li    $a0, 1
/* ABFB48 800489A8 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* ABFB4C 800489AC AC24D3E8 */  sw    $a0, %lo(D_8011D3E8)($at)
/* ABFB50 800489B0 860D001E */  lh    $t5, 0x1e($s0)
/* ABFB54 800489B4 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* ABFB58 800489B8 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* ABFB5C 800489BC 8603015E */  lh    $v1, 0x15e($s0)
/* ABFB60 800489C0 1060000A */  beqz  $v1, .L800489EC
/* ABFB64 800489C4 2401000A */   li    $at, 10
/* ABFB68 800489C8 10610008 */  beq   $v1, $at, .L800489EC
/* ABFB6C 800489CC 24010014 */   li    $at, 20
/* ABFB70 800489D0 10610006 */  beq   $v1, $at, .L800489EC
/* ABFB74 800489D4 24010019 */   li    $at, 25
/* ABFB78 800489D8 10610004 */  beq   $v1, $at, .L800489EC
/* ABFB7C 800489DC 260E0094 */   addiu $t6, $s0, 0x94
/* ABFB80 800489E0 AFAE003C */  sw    $t6, 0x3c($sp)
/* ABFB84 800489E4 1000002D */  b     .L80048A9C
/* ABFB88 800489E8 26110020 */   addiu $s1, $s0, 0x20
.L800489EC:
/* ABFB8C 800489EC 44804000 */  mtc1  $zero, $f8
/* ABFB90 800489F0 26110020 */  addiu $s1, $s0, 0x20
/* ABFB94 800489F4 AE20000C */  sw    $zero, 0xc($s1)
/* ABFB98 800489F8 A6200024 */  sh    $zero, 0x24($s1)
/* ABFB9C 800489FC E628001C */  swc1  $f8, 0x1c($s1)
/* ABFBA0 80048A00 C60A0104 */  lwc1  $f10, 0x104($s0)
/* ABFBA4 80048A04 A6200018 */  sh    $zero, 0x18($s1)
/* ABFBA8 80048A08 86220018 */  lh    $v0, 0x18($s1)
/* ABFBAC 80048A0C E62A0020 */  swc1  $f10, 0x20($s1)
/* ABFBB0 80048A10 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFBB4 80048A14 A6220014 */  sh    $v0, 0x14($s1)
/* ABFBB8 80048A18 A6220016 */  sh    $v0, 0x16($s1)
/* ABFBBC 80048A1C C612000C */  lwc1  $f18, 0xc($s0)
/* ABFBC0 80048A20 260F0094 */  addiu $t7, $s0, 0x94
/* ABFBC4 80048A24 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABFBC8 80048A28 E6320010 */  swc1  $f18, 0x10($s1)
/* ABFBCC 80048A2C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFBD0 80048A30 AFAF003C */  sw    $t7, 0x3c($sp)
/* ABFBD4 80048A34 44812000 */  mtc1  $at, $f4
/* ABFBD8 80048A38 870801C2 */  lh    $t0, 0x1c2($t8)
/* ABFBDC 80048A3C 85E9000E */  lh    $t1, 0xe($t7)
/* ABFBE0 80048A40 87AD0082 */  lh    $t5, 0x82($sp)
/* ABFBE4 80048A44 44883000 */  mtc1  $t0, $f6
/* ABFBE8 80048A48 252C8001 */  addiu $t4, $t1, -0x7fff
/* ABFBEC 80048A4C 018D7023 */  subu  $t6, $t4, $t5
/* ABFBF0 80048A50 46803220 */  cvt.s.w $f8, $f6
/* ABFBF4 80048A54 000E7C00 */  sll   $t7, $t6, 0x10
/* ABFBF8 80048A58 000FC403 */  sra   $t8, $t7, 0x10
/* ABFBFC 80048A5C 44989000 */  mtc1  $t8, $f18
/* ABFC00 80048A60 2409000A */  li    $t1, 10
/* ABFC04 80048A64 A629002A */  sh    $t1, 0x2a($s1)
/* ABFC08 80048A68 46082283 */  div.s $f10, $f4, $f8
/* ABFC0C 80048A6C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* ABFC10 80048A70 468091A0 */  cvt.s.w $f6, $f18
/* ABFC14 80048A74 46065102 */  mul.s $f4, $f10, $f6
/* ABFC18 80048A78 4600220D */  trunc.w.s $f8, $f4
/* ABFC1C 80048A7C 44194000 */  mfc1  $t9, $f8
/* ABFC20 80048A80 00000000 */  nop   
/* ABFC24 80048A84 A6390026 */  sh    $t9, 0x26($s1)
/* ABFC28 80048A88 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* ABFC2C 80048A8C 854B01C2 */  lh    $t3, 0x1c2($t2)
/* ABFC30 80048A90 A62B0028 */  sh    $t3, 0x28($s1)
/* ABFC34 80048A94 A604015E */  sh    $a0, 0x15e($s0)
/* ABFC38 80048A98 A620001A */  sh    $zero, 0x1a($s1)
.L80048A9C:
/* ABFC3C 80048A9C 8622002A */  lh    $v0, 0x2a($s1)
/* ABFC40 80048AA0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABFC44 80048AA4 10400002 */  beqz  $v0, .L80048AB0
/* ABFC48 80048AA8 244CFFFF */   addiu $t4, $v0, -1
/* ABFC4C 80048AAC A62C002A */  sh    $t4, 0x2a($s1)
.L80048AB0:
/* ABFC50 80048AB0 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABFC54 80048AB4 3C018014 */  lui   $at, %hi(D_80139EFC)
/* ABFC58 80048AB8 C4209EFC */  lwc1  $f0, %lo(D_80139EFC)($at)
/* ABFC5C 80048ABC 846D01C6 */  lh    $t5, 0x1c6($v1)
/* ABFC60 80048AC0 846E01C8 */  lh    $t6, 0x1c8($v1)
/* ABFC64 80048AC4 C60200E0 */  lwc1  $f2, 0xe0($s0)
/* ABFC68 80048AC8 448D9000 */  mtc1  $t5, $f18
/* ABFC6C 80048ACC 448E2000 */  mtc1  $t6, $f4
/* ABFC70 80048AD0 468092A0 */  cvt.s.w $f10, $f18
/* ABFC74 80048AD4 46802220 */  cvt.s.w $f8, $f4
/* ABFC78 80048AD8 46005182 */  mul.s $f6, $f10, $f0
/* ABFC7C 80048ADC 00000000 */  nop   
/* ABFC80 80048AE0 46023402 */  mul.s $f16, $f6, $f2
/* ABFC84 80048AE4 00000000 */  nop   
/* ABFC88 80048AE8 46004482 */  mul.s $f18, $f8, $f0
/* ABFC8C 80048AEC 00000000 */  nop   
/* ABFC90 80048AF0 46029282 */  mul.s $f10, $f18, $f2
/* ABFC94 80048AF4 E7AA0094 */  swc1  $f10, 0x94($sp)
/* ABFC98 80048AF8 8622001A */  lh    $v0, 0x1a($s1)
/* ABFC9C 80048AFC 10400022 */  beqz  $v0, .L80048B88
/* ABFCA0 80048B00 00000000 */   nop   
/* ABFCA4 80048B04 00027840 */  sll   $t7, $v0, 1
/* ABFCA8 80048B08 448F2000 */  mtc1  $t7, $f4
/* ABFCAC 80048B0C C606000C */  lwc1  $f6, 0xc($s0)
/* ABFCB0 80048B10 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABFCB4 80048B14 46802220 */  cvt.s.w $f8, $f4
/* ABFCB8 80048B18 44068000 */  mfc1  $a2, $f16
/* ABFCBC 80048B1C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFCC0 80048B20 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFCC4 80048B24 E7B00098 */  swc1  $f16, 0x98($sp)
/* ABFCC8 80048B28 0C010E27 */  jal   func_8004389C
/* ABFCCC 80048B2C 46083300 */   add.s $f12, $f6, $f8
/* ABFCD0 80048B30 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABFCD4 80048B34 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFCD8 80048B38 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFCDC 80048B3C 8639001A */  lh    $t9, 0x1a($s1)
/* ABFCE0 80048B40 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFCE4 80048B44 870801A2 */  lh    $t0, 0x1a2($t8)
/* ABFCE8 80048B48 00194840 */  sll   $t1, $t9, 1
/* ABFCEC 80048B4C 44892000 */  mtc1  $t1, $f4
/* ABFCF0 80048B50 44889000 */  mtc1  $t0, $f18
/* ABFCF4 80048B54 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFCF8 80048B58 468021A0 */  cvt.s.w $f6, $f4
/* ABFCFC 80048B5C 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFD00 80048B60 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABFD04 80048B64 468092A0 */  cvt.s.w $f10, $f18
/* ABFD08 80048B68 0C010E27 */  jal   func_8004389C
/* ABFD0C 80048B6C 46065300 */   add.s $f12, $f10, $f6
/* ABFD10 80048B70 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ABFD14 80048B74 E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABFD18 80048B78 862A001A */  lh    $t2, 0x1a($s1)
/* ABFD1C 80048B7C 254BFFFF */  addiu $t3, $t2, -1
/* ABFD20 80048B80 10000015 */  b     .L80048BD8
/* ABFD24 80048B84 A62B001A */   sh    $t3, 0x1a($s1)
.L80048B88:
/* ABFD28 80048B88 C60C000C */  lwc1  $f12, 0xc($s0)
/* ABFD2C 80048B8C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABFD30 80048B90 44068000 */  mfc1  $a2, $f16
/* ABFD34 80048B94 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFD38 80048B98 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD3C 80048B9C 0C010E27 */  jal   func_8004389C
/* ABFD40 80048BA0 E7B00098 */   swc1  $f16, 0x98($sp)
/* ABFD44 80048BA4 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABFD48 80048BA8 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* ABFD4C 80048BAC 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABFD50 80048BB0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFD54 80048BB4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD58 80048BB8 858D01A2 */  lh    $t5, 0x1a2($t4)
/* ABFD5C 80048BBC 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFD60 80048BC0 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABFD64 80048BC4 448D4000 */  mtc1  $t5, $f8
/* ABFD68 80048BC8 0C010E27 */  jal   func_8004389C
/* ABFD6C 80048BCC 46804320 */   cvt.s.w $f12, $f8
/* ABFD70 80048BD0 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ABFD74 80048BD4 E60000C4 */  swc1  $f0, 0xc4($s0)
.L80048BD8:
/* ABFD78 80048BD8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABFD7C 80048BDC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABFD80 80048BE0 3C018014 */  lui   $at, %hi(D_80139F00)
/* ABFD84 80048BE4 C42A9F00 */  lwc1  $f10, %lo(D_80139F00)($at)
/* ABFD88 80048BE8 85CF0198 */  lh    $t7, 0x198($t6)
/* ABFD8C 80048BEC 44068000 */  mfc1  $a2, $f16
/* ABFD90 80048BF0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFD94 80048BF4 448F9000 */  mtc1  $t7, $f18
/* ABFD98 80048BF8 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD9C 80048BFC C60E00CC */  lwc1  $f14, 0xcc($s0)
/* ABFDA0 80048C00 46809120 */  cvt.s.w $f4, $f18
/* ABFDA4 80048C04 460A2302 */  mul.s $f12, $f4, $f10
/* ABFDA8 80048C08 0C010E27 */  jal   func_8004389C
/* ABFDAC 80048C0C 00000000 */   nop   
/* ABFDB0 80048C10 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABFDB4 80048C14 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFDB8 80048C18 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFDBC 80048C1C 3C018014 */  lui   $at, %hi(D_80139F04)
/* ABFDC0 80048C20 C4329F04 */  lwc1  $f18, %lo(D_80139F04)($at)
/* ABFDC4 80048C24 8708019A */  lh    $t0, 0x19a($t8)
/* ABFDC8 80048C28 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFDCC 80048C2C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFDD0 80048C30 44883000 */  mtc1  $t0, $f6
/* ABFDD4 80048C34 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFDD8 80048C38 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* ABFDDC 80048C3C 46803220 */  cvt.s.w $f8, $f6
/* ABFDE0 80048C40 46124302 */  mul.s $f12, $f8, $f18
/* ABFDE4 80048C44 0C010E27 */  jal   func_8004389C
/* ABFDE8 80048C48 00000000 */   nop   
/* ABFDEC 80048C4C E60000D0 */  swc1  $f0, 0xd0($s0)
/* ABFDF0 80048C50 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ABFDF4 80048C54 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ABFDF8 80048C58 3C018014 */  lui   $at, %hi(D_80139F08)
/* ABFDFC 80048C5C C4269F08 */  lwc1  $f6, %lo(D_80139F08)($at)
/* ABFE00 80048C60 8729019C */  lh    $t1, 0x19c($t9)
/* ABFE04 80048C64 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFE08 80048C68 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFE0C 80048C6C 44892000 */  mtc1  $t1, $f4
/* ABFE10 80048C70 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFE14 80048C74 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* ABFE18 80048C78 468022A0 */  cvt.s.w $f10, $f4
/* ABFE1C 80048C7C 46065302 */  mul.s $f12, $f10, $f6
/* ABFE20 80048C80 0C010E27 */  jal   func_8004389C
/* ABFE24 80048C84 00000000 */   nop   
/* ABFE28 80048C88 E60000D4 */  swc1  $f0, 0xd4($s0)
/* ABFE2C 80048C8C 87A50082 */  lh    $a1, 0x82($sp)
/* ABFE30 80048C90 02002025 */  move  $a0, $s0
/* ABFE34 80048C94 24060001 */  li    $a2, 1
/* ABFE38 80048C98 24A58001 */  addiu $a1, $a1, -0x7fff
/* ABFE3C 80048C9C 00052C00 */  sll   $a1, $a1, 0x10
/* ABFE40 80048CA0 0C0112B7 */  jal   func_80044ADC
/* ABFE44 80048CA4 00052C03 */   sra   $a1, $a1, 0x10
/* ABFE48 80048CA8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABFE4C 80048CAC 44816000 */  mtc1  $at, $f12
/* ABFE50 80048CB0 C6080010 */  lwc1  $f8, 0x10($s0)
/* ABFE54 80048CB4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFE58 80048CB8 44812000 */  mtc1  $at, $f4
/* ABFE5C 80048CBC 46086483 */  div.s $f18, $f12, $f8
/* ABFE60 80048CC0 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* ABFE64 80048CC4 00022400 */  sll   $a0, $v0, 0x10
/* ABFE68 80048CC8 00042403 */  sra   $a0, $a0, 0x10
/* ABFE6C 80048CCC 460A6181 */  sub.s $f6, $f12, $f10
/* ABFE70 80048CD0 86250024 */  lh    $a1, 0x24($s1)
/* ABFE74 80048CD4 2407000F */  li    $a3, 15
/* ABFE78 80048CD8 46049002 */  mul.s $f0, $f18, $f4
/* ABFE7C 80048CDC 00000000 */  nop   
/* ABFE80 80048CE0 46060082 */  mul.s $f2, $f0, $f6
/* ABFE84 80048CE4 46020200 */  add.s $f8, $f0, $f2
/* ABFE88 80048CE8 44064000 */  mfc1  $a2, $f8
/* ABFE8C 80048CEC 0C010E47 */  jal   func_8004391C
/* ABFE90 80048CF0 00000000 */   nop   
/* ABFE94 80048CF4 A6220024 */  sh    $v0, 0x24($s1)
/* ABFE98 80048CF8 8E060000 */  lw    $a2, ($s0)
/* ABFE9C 80048CFC 240A0001 */  li    $t2, 1
/* ABFEA0 80048D00 AFAA0010 */  sw    $t2, 0x10($sp)
/* ABFEA4 80048D04 02002025 */  move  $a0, $s0
/* ABFEA8 80048D08 27A50074 */  addiu $a1, $sp, 0x74
/* ABFEAC 80048D0C 0C0119BE */  jal   func_800466F8
/* ABFEB0 80048D10 26270020 */   addiu $a3, $s1, 0x20
/* ABFEB4 80048D14 C6120008 */  lwc1  $f18, 8($s0)
/* ABFEB8 80048D18 C6040004 */  lwc1  $f4, 4($s0)
/* ABFEBC 80048D1C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFEC0 80048D20 44813000 */  mtc1  $at, $f6
/* ABFEC4 80048D24 46049280 */  add.s $f10, $f18, $f4
/* ABFEC8 80048D28 27A40084 */  addiu $a0, $sp, 0x84
/* ABFECC 80048D2C 8FA50044 */  lw    $a1, 0x44($sp)
/* ABFED0 80048D30 8FA60040 */  lw    $a2, 0x40($sp)
/* ABFED4 80048D34 46065202 */  mul.s $f8, $f10, $f6
/* ABFED8 80048D38 0C01F124 */  jal   func_8007C490
/* ABFEDC 80048D3C E7A80090 */   swc1  $f8, 0x90($sp)
/* ABFEE0 80048D40 862B002A */  lh    $t3, 0x2a($s1)
/* ABFEE4 80048D44 8E060004 */  lw    $a2, 4($s0)
/* ABFEE8 80048D48 8E070008 */  lw    $a3, 8($s0)
/* ABFEEC 80048D4C 02002025 */  move  $a0, $s0
/* ABFEF0 80048D50 8FA50084 */  lw    $a1, 0x84($sp)
/* ABFEF4 80048D54 0C011A70 */  jal   func_800469C0
/* ABFEF8 80048D58 AFAB0010 */   sw    $t3, 0x10($sp)
/* ABFEFC 80048D5C E7A00084 */  swc1  $f0, 0x84($sp)
/* ABFF00 80048D60 E60000DC */  swc1  $f0, 0xdc($s0)
/* ABFF04 80048D64 3C018014 */  lui   $at, %hi(D_80139F0C)
/* ABFF08 80048D68 C4329F0C */  lwc1  $f18, %lo(D_80139F0C)($at)
/* ABFF0C 80048D6C C60400D8 */  lwc1  $f4, 0xd8($s0)
/* ABFF10 80048D70 4604903C */  c.lt.s $f18, $f4
/* ABFF14 80048D74 00000000 */  nop   
/* ABFF18 80048D78 4502000A */  bc1fl .L80048DA4
/* ABFF1C 80048D7C 3C013F80 */   lui   $at, 0x3f80
/* ABFF20 80048D80 C7A00084 */  lwc1  $f0, 0x84($sp)
/* ABFF24 80048D84 C7AA0090 */  lwc1  $f10, 0x90($sp)
/* ABFF28 80048D88 3C018014 */  lui   $at, %hi(D_80139F10)
/* ABFF2C 80048D8C C4289F10 */  lwc1  $f8, %lo(D_80139F10)($at)
/* ABFF30 80048D90 46005181 */  sub.s $f6, $f10, $f0
/* ABFF34 80048D94 46083482 */  mul.s $f18, $f6, $f8
/* ABFF38 80048D98 46120000 */  add.s $f0, $f0, $f18
/* ABFF3C 80048D9C E7A00084 */  swc1  $f0, 0x84($sp)
/* ABFF40 80048DA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L80048DA4:
/* ABFF44 80048DA4 44812000 */  mtc1  $at, $f4
/* ABFF48 80048DA8 C60A00C4 */  lwc1  $f10, 0xc4($s0)
/* ABFF4C 80048DAC 860C001C */  lh    $t4, 0x1c($s0)
/* ABFF50 80048DB0 862D0024 */  lh    $t5, 0x24($s1)
/* ABFF54 80048DB4 460A2183 */  div.s $f6, $f4, $f10
/* ABFF58 80048DB8 87A50078 */  lh    $a1, 0x78($sp)
/* ABFF5C 80048DBC 018D2023 */  subu  $a0, $t4, $t5
/* ABFF60 80048DC0 00042400 */  sll   $a0, $a0, 0x10
/* ABFF64 80048DC4 00042403 */  sra   $a0, $a0, 0x10
/* ABFF68 80048DC8 2407000A */  li    $a3, 10
/* ABFF6C 80048DCC 44063000 */  mfc1  $a2, $f6
/* ABFF70 80048DD0 0C010E47 */  jal   func_8004391C
/* ABFF74 80048DD4 00000000 */   nop   
/* ABFF78 80048DD8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABFF7C 80048DDC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABFF80 80048DE0 A7A20088 */  sh    $v0, 0x88($sp)
/* ABFF84 80048DE4 27A60084 */  addiu $a2, $sp, 0x84
/* ABFF88 80048DE8 8464019E */  lh    $a0, 0x19e($v1)
/* ABFF8C 80048DEC 0082082A */  slt   $at, $a0, $v0
/* ABFF90 80048DF0 50200003 */  beql  $at, $zero, .L80048E00
/* ABFF94 80048DF4 846201D8 */   lh    $v0, 0x1d8($v1)
/* ABFF98 80048DF8 A7A40088 */  sh    $a0, 0x88($sp)
/* ABFF9C 80048DFC 846201D8 */  lh    $v0, 0x1d8($v1)
.L80048E00:
/* ABFFA0 80048E00 87AE0088 */  lh    $t6, 0x88($sp)
/* ABFFA4 80048E04 01C2082A */  slt   $at, $t6, $v0
/* ABFFA8 80048E08 50200003 */  beql  $at, $zero, .L80048E18
/* ABFFAC 80048E0C 8FAF003C */   lw    $t7, 0x3c($sp)
/* ABFFB0 80048E10 A7A20088 */  sh    $v0, 0x88($sp)
/* ABFFB4 80048E14 8FAF003C */  lw    $t7, 0x3c($sp)
.L80048E18:
/* ABFFB8 80048E18 87A8007A */  lh    $t0, 0x7a($sp)
/* ABFFBC 80048E1C 85F8000E */  lh    $t8, 0xe($t7)
/* ABFFC0 80048E20 250A8001 */  addiu $t2, $t0, -0x7fff
/* ABFFC4 80048E24 030A2023 */  subu  $a0, $t8, $t2
/* ABFFC8 80048E28 00042400 */  sll   $a0, $a0, 0x10
/* ABFFCC 80048E2C 00042403 */  sra   $a0, $a0, 0x10
/* ABFFD0 80048E30 04800003 */  bltz  $a0, .L80048E40
/* ABFFD4 80048E34 00041823 */   negu  $v1, $a0
/* ABFFD8 80048E38 10000001 */  b     .L80048E40
/* ABFFDC 80048E3C 00801825 */   move  $v1, $a0
.L80048E40:
/* ABFFE0 80048E40 28612AF9 */  slti  $at, $v1, 0x2af9
/* ABFFE4 80048E44 14200006 */  bnez  $at, .L80048E60
/* ABFFE8 80048E48 87AE007A */   lh    $t6, 0x7a($sp)
/* ABFFEC 80048E4C 58800004 */  blezl $a0, .L80048E60
/* ABFFF0 80048E50 2404D508 */   li    $a0, -11000
/* ABFFF4 80048E54 10000002 */  b     .L80048E60
/* ABFFF8 80048E58 24042AF8 */   li    $a0, 11000
/* ABFFFC 80048E5C 2404D508 */  li    $a0, -11000
.L80048E60:
/* AC0000 80048E60 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC0004 80048E64 44816000 */  mtc1  $at, $f12
/* AC0008 80048E68 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC000C 80048E6C 44812000 */  mtc1  $at, $f4
/* AC0010 80048E70 C60200E0 */  lwc1  $f2, 0xe0($s0)
/* AC0014 80048E74 44844000 */  mtc1  $a0, $f8
/* AC0018 80048E78 460C2281 */  sub.s $f10, $f4, $f12
/* AC001C 80048E7C 3C014316 */  li    $at, 0x43160000 # 0.000000
/* AC0020 80048E80 87AB007A */  lh    $t3, 0x7a($sp)
/* AC0024 80048E84 468044A0 */  cvt.s.w $f18, $f8
/* AC0028 80048E88 460A1182 */  mul.s $f6, $f2, $f10
/* AC002C 80048E8C C60A00C8 */  lwc1  $f10, 0xc8($s0)
/* AC0030 80048E90 460C3200 */  add.s $f8, $f6, $f12
/* AC0034 80048E94 44813000 */  mtc1  $at, $f6
/* AC0038 80048E98 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC003C 80048E9C 46089102 */  mul.s $f4, $f18, $f8
/* AC0040 80048EA0 44819000 */  mtc1  $at, $f18
/* AC0044 80048EA4 00000000 */  nop   
/* AC0048 80048EA8 46029201 */  sub.s $f8, $f18, $f2
/* AC004C 80048EAC 460A2403 */  div.s $f16, $f4, $f10
/* AC0050 80048EB0 46083102 */  mul.s $f4, $f6, $f8
/* AC0054 80048EB4 46008005 */  abs.s $f0, $f16
/* AC0058 80048EB8 4600203C */  c.lt.s $f4, $f0
/* AC005C 80048EBC 00000000 */  nop   
/* AC0060 80048EC0 4502000A */  bc1fl .L80048EEC
/* AC0064 80048EC4 A7AE008A */   sh    $t6, 0x8a($sp)
/* AC0068 80048EC8 448B5000 */  mtc1  $t3, $f10
/* AC006C 80048ECC 00000000 */  nop   
/* AC0070 80048ED0 468054A0 */  cvt.s.w $f18, $f10
/* AC0074 80048ED4 46109180 */  add.s $f6, $f18, $f16
/* AC0078 80048ED8 4600320D */  trunc.w.s $f8, $f6
/* AC007C 80048EDC 440D4000 */  mfc1  $t5, $f8
/* AC0080 80048EE0 10000002 */  b     .L80048EEC
/* AC0084 80048EE4 A7AD008A */   sh    $t5, 0x8a($sp)
/* AC0088 80048EE8 A7AE008A */  sh    $t6, 0x8a($sp)
.L80048EEC:
/* AC008C 80048EEC 862F0028 */  lh    $t7, 0x28($s1)
/* AC0090 80048EF0 87A8008A */  lh    $t0, 0x8a($sp)
/* AC0094 80048EF4 59E00008 */  blezl $t7, .L80048F18
/* AC0098 80048EF8 8FA40040 */   lw    $a0, 0x40($sp)
/* AC009C 80048EFC 86390026 */  lh    $t9, 0x26($s1)
/* AC00A0 80048F00 01194821 */  addu  $t1, $t0, $t9
/* AC00A4 80048F04 A7A9008A */  sh    $t1, 0x8a($sp)
/* AC00A8 80048F08 86380028 */  lh    $t8, 0x28($s1)
/* AC00AC 80048F0C 270AFFFF */  addiu $t2, $t8, -1
/* AC00B0 80048F10 A62A0028 */  sh    $t2, 0x28($s1)
/* AC00B4 80048F14 8FA40040 */  lw    $a0, 0x40($sp)
.L80048F18:
/* AC00B8 80048F18 0C010F0A */  jal   func_80043C28
/* AC00BC 80048F1C 8FA50044 */   lw    $a1, 0x44($sp)
/* AC00C0 80048F20 860B0140 */  lh    $t3, 0x140($s0)
/* AC00C4 80048F24 24010007 */  li    $at, 7
/* AC00C8 80048F28 02002025 */  move  $a0, $s0
/* AC00CC 80048F2C 1561000A */  bne   $t3, $at, .L80048F58
/* AC00D0 80048F30 8FAE0040 */   lw    $t6, 0x40($sp)
/* AC00D4 80048F34 8E060004 */  lw    $a2, 4($s0)
/* AC00D8 80048F38 8E07000C */  lw    $a3, 0xc($s0)
/* AC00DC 80048F3C 27AC008C */  addiu $t4, $sp, 0x8c
/* AC00E0 80048F40 AFAC0010 */  sw    $t4, 0x10($sp)
/* AC00E4 80048F44 AFB10014 */  sw    $s1, 0x14($sp)
/* AC00E8 80048F48 0C011B88 */  jal   func_80046E20
/* AC00EC 80048F4C 27A50084 */   addiu $a1, $sp, 0x84
/* AC00F0 80048F50 10000009 */  b     .L80048F78
/* AC00F4 80048F54 C60C0014 */   lwc1  $f12, 0x14($s0)
.L80048F58:
/* AC00F8 80048F58 8FAD0048 */  lw    $t5, 0x48($sp)
/* AC00FC 80048F5C 8DC80000 */  lw    $t0, ($t6)
/* AC0100 80048F60 ADA80000 */  sw    $t0, ($t5)
/* AC0104 80048F64 8DCF0004 */  lw    $t7, 4($t6)
/* AC0108 80048F68 ADAF0004 */  sw    $t7, 4($t5)
/* AC010C 80048F6C 8DC80008 */  lw    $t0, 8($t6)
/* AC0110 80048F70 ADA80008 */  sw    $t0, 8($t5)
/* AC0114 80048F74 C60C0014 */  lwc1  $f12, 0x14($s0)
.L80048F78:
/* AC0118 80048F78 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC011C 80048F7C 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC0120 80048F80 0C010E27 */  jal   func_8004389C
/* AC0124 80048F84 3C073F80 */   lui   $a3, 0x3f80
/* AC0128 80048F88 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC012C 80048F8C 00002025 */  move  $a0, $zero
/* AC0130 80048F90 8605015A */  lh    $a1, 0x15a($s0)
/* AC0134 80048F94 3C063F00 */  lui   $a2, 0x3f00
/* AC0138 80048F98 0C010E47 */  jal   func_8004391C
/* AC013C 80048F9C 2407000A */   li    $a3, 10
/* AC0140 80048FA0 A602015A */  sh    $v0, 0x15a($s0)
/* AC0144 80048FA4 02002025 */  move  $a0, $s0
/* AC0148 80048FA8 0C011429 */  jal   func_800450A4
/* AC014C 80048FAC 8E050018 */   lw    $a1, 0x18($s0)
/* AC0150 80048FB0 E6000100 */  swc1  $f0, 0x100($s0)
/* AC0154 80048FB4 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC0158 80048FB8 8FB10020 */  lw    $s1, 0x20($sp)
/* AC015C 80048FBC 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC0160 80048FC0 27BD00A8 */  addiu $sp, $sp, 0xa8
/* AC0164 80048FC4 03E00008 */  jr    $ra
/* AC0168 80048FC8 24020001 */   li    $v0, 1
# SPLIT
/* AC016C 80048FCC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC0170 80048FD0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC0174 80048FD4 0C011CE5 */  jal   func_80047394
/* AC0178 80048FD8 00000000 */   nop   
/* AC017C 80048FDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC0180 80048FE0 27BD0018 */  addiu $sp, $sp, 0x18
/* AC0184 80048FE4 03E00008 */  jr    $ra
/* AC0188 80048FE8 00000000 */   nop   
# SPLIT
/* AC018C 80048FEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC0190 80048FF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC0194 80048FF4 0C011CE5 */  jal   func_80047394
/* AC0198 80048FF8 00000000 */   nop   
/* AC019C 80048FFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC01A0 80049000 27BD0018 */  addiu $sp, $sp, 0x18
/* AC01A4 80049004 03E00008 */  jr    $ra
/* AC01A8 80049008 00000000 */   nop   
# SPLIT
/* AC01AC 8004900C 27BDFF38 */  addiu $sp, $sp, -0xc8
/* AC01B0 80049010 AFB00020 */  sw    $s0, 0x20($sp)
/* AC01B4 80049014 00808025 */  move  $s0, $a0
/* AC01B8 80049018 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC01BC 8004901C 0C00B721 */  jal   func_8002DC84
/* AC01C0 80049020 8C840090 */   lw    $a0, 0x90($a0)
/* AC01C4 80049024 8602015E */  lh    $v0, 0x15e($s0)
/* AC01C8 80049028 10400008 */  beqz  $v0, .L8004904C
/* AC01CC 8004902C 2401000A */   li    $at, 10
/* AC01D0 80049030 10410006 */  beq   $v0, $at, .L8004904C
/* AC01D4 80049034 24010014 */   li    $at, 20
/* AC01D8 80049038 10410004 */  beq   $v0, $at, .L8004904C
/* AC01DC 8004903C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC01E0 80049040 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC01E4 80049044 85C20314 */  lh    $v0, 0x314($t6)
/* AC01E8 80049048 1040006F */  beqz  $v0, .L80049208
.L8004904C:
/* AC01EC 8004904C 3C0C8016 */   lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC01F0 80049050 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC01F4 80049054 3C018014 */  lui   $at, %hi(D_80139F14)
/* AC01F8 80049058 C42E9F14 */  lwc1  $f14, %lo(D_80139F14)($at)
/* AC01FC 8004905C 858D01F0 */  lh    $t5, 0x1f0($t4)
/* AC0200 80049060 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC0204 80049064 44818000 */  mtc1  $at, $f16
/* AC0208 80049068 448D2000 */  mtc1  $t5, $f4
/* AC020C 8004906C 3C018014 */  lui   $at, %hi(D_80139F18)
/* AC0210 80049070 C4329F18 */  lwc1  $f18, %lo(D_80139F18)($at)
/* AC0214 80049074 468021A0 */  cvt.s.w $f6, $f4
/* AC0218 80049078 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC021C 8004907C 44814000 */  mtc1  $at, $f8
/* AC0220 80049080 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC0224 80049084 44812000 */  mtc1  $at, $f4
/* AC0228 80049088 860F0142 */  lh    $t7, 0x142($s0)
/* AC022C 8004908C 46123082 */  mul.s $f2, $f6, $f18
/* AC0230 80049090 46002183 */  div.s $f6, $f4, $f0
/* AC0234 80049094 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC0238 80049098 000FC0C0 */  sll   $t8, $t7, 3
/* AC023C 8004909C 86090144 */  lh    $t1, 0x144($s0)
/* AC0240 800490A0 0338C821 */  addu  $t9, $t9, $t8
/* AC0244 800490A4 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC0248 800490A8 000950C0 */  sll   $t2, $t1, 3
/* AC024C 800490AC 46024280 */  add.s $f10, $f8, $f2
/* AC0250 800490B0 032A5821 */  addu  $t3, $t9, $t2
/* AC0254 800490B4 8D620004 */  lw    $v0, 4($t3)
/* AC0258 800490B8 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC025C 800490BC 844E0000 */  lh    $t6, ($v0)
/* AC0260 800490C0 24420028 */  addiu $v0, $v0, 0x28
/* AC0264 800490C4 448E2000 */  mtc1  $t6, $f4
/* AC0268 800490C8 46061202 */  mul.s $f8, $f2, $f6
/* AC026C 800490CC 468021A0 */  cvt.s.w $f6, $f4
/* AC0270 800490D0 46085301 */  sub.s $f12, $f10, $f8
/* AC0274 800490D4 46123282 */  mul.s $f10, $f6, $f18
/* AC0278 800490D8 00000000 */  nop   
/* AC027C 800490DC 46005202 */  mul.s $f8, $f10, $f0
/* AC0280 800490E0 00000000 */  nop   
/* AC0284 800490E4 460C4102 */  mul.s $f4, $f8, $f12
/* AC0288 800490E8 E6040000 */  swc1  $f4, ($s0)
/* AC028C 800490EC 844FFFDC */  lh    $t7, -0x24($v0)
/* AC0290 800490F0 448F3000 */  mtc1  $t7, $f6
/* AC0294 800490F4 00000000 */  nop   
/* AC0298 800490F8 468032A0 */  cvt.s.w $f10, $f6
/* AC029C 800490FC 46125202 */  mul.s $f8, $f10, $f18
/* AC02A0 80049100 00000000 */  nop   
/* AC02A4 80049104 46004102 */  mul.s $f4, $f8, $f0
/* AC02A8 80049108 00000000 */  nop   
/* AC02AC 8004910C 460C2182 */  mul.s $f6, $f4, $f12
/* AC02B0 80049110 E6060004 */  swc1  $f6, 4($s0)
/* AC02B4 80049114 8458FFE0 */  lh    $t8, -0x20($v0)
/* AC02B8 80049118 44985000 */  mtc1  $t8, $f10
/* AC02BC 8004911C 00000000 */  nop   
/* AC02C0 80049120 46805220 */  cvt.s.w $f8, $f10
/* AC02C4 80049124 460E4102 */  mul.s $f4, $f8, $f14
/* AC02C8 80049128 46102180 */  add.s $f6, $f4, $f16
/* AC02CC 8004912C 4600328D */  trunc.w.s $f10, $f6
/* AC02D0 80049130 44195000 */  mfc1  $t9, $f10
/* AC02D4 80049134 00000000 */  nop   
/* AC02D8 80049138 A6190020 */  sh    $t9, 0x20($s0)
/* AC02DC 8004913C 844AFFE4 */  lh    $t2, -0x1c($v0)
/* AC02E0 80049140 448A4000 */  mtc1  $t2, $f8
/* AC02E4 80049144 00000000 */  nop   
/* AC02E8 80049148 46804120 */  cvt.s.w $f4, $f8
/* AC02EC 8004914C 460E2182 */  mul.s $f6, $f4, $f14
/* AC02F0 80049150 46103280 */  add.s $f10, $f6, $f16
/* AC02F4 80049154 4600520D */  trunc.w.s $f8, $f10
/* AC02F8 80049158 440C4000 */  mfc1  $t4, $f8
/* AC02FC 8004915C 00000000 */  nop   
/* AC0300 80049160 A60C0022 */  sh    $t4, 0x22($s0)
/* AC0304 80049164 844DFFE8 */  lh    $t5, -0x18($v0)
/* AC0308 80049168 448D2000 */  mtc1  $t5, $f4
/* AC030C 8004916C 00000000 */  nop   
/* AC0310 80049170 468021A0 */  cvt.s.w $f6, $f4
/* AC0314 80049174 E6060008 */  swc1  $f6, 8($s0)
/* AC0318 80049178 844EFFEC */  lh    $t6, -0x14($v0)
/* AC031C 8004917C 448E5000 */  mtc1  $t6, $f10
/* AC0320 80049180 00000000 */  nop   
/* AC0324 80049184 46805220 */  cvt.s.w $f8, $f10
/* AC0328 80049188 E608000C */  swc1  $f8, 0xc($s0)
/* AC032C 8004918C 844FFFF0 */  lh    $t7, -0x10($v0)
/* AC0330 80049190 448F2000 */  mtc1  $t7, $f4
/* AC0334 80049194 00000000 */  nop   
/* AC0338 80049198 468021A0 */  cvt.s.w $f6, $f4
/* AC033C 8004919C E6060010 */  swc1  $f6, 0x10($s0)
/* AC0340 800491A0 8458FFF4 */  lh    $t8, -0xc($v0)
/* AC0344 800491A4 44985000 */  mtc1  $t8, $f10
/* AC0348 800491A8 00000000 */  nop   
/* AC034C 800491AC 46805220 */  cvt.s.w $f8, $f10
/* AC0350 800491B0 46124102 */  mul.s $f4, $f8, $f18
/* AC0354 800491B4 E6040014 */  swc1  $f4, 0x14($s0)
/* AC0358 800491B8 8449FFF8 */  lh    $t1, -8($v0)
/* AC035C 800491BC A6090024 */  sh    $t1, 0x24($s0)
/* AC0360 800491C0 8459FFFC */  lh    $t9, -4($v0)
/* AC0364 800491C4 44993000 */  mtc1  $t9, $f6
/* AC0368 800491C8 00000000 */  nop   
/* AC036C 800491CC 468032A0 */  cvt.s.w $f10, $f6
/* AC0370 800491D0 46125202 */  mul.s $f8, $f10, $f18
/* AC0374 800491D4 00000000 */  nop   
/* AC0378 800491D8 46004102 */  mul.s $f4, $f8, $f0
/* AC037C 800491DC 00000000 */  nop   
/* AC0380 800491E0 460C2182 */  mul.s $f6, $f4, $f12
/* AC0384 800491E4 E6060018 */  swc1  $f6, 0x18($s0)
/* AC0388 800491E8 844A0000 */  lh    $t2, ($v0)
/* AC038C 800491EC 448A5000 */  mtc1  $t2, $f10
/* AC0390 800491F0 00000000 */  nop   
/* AC0394 800491F4 46805220 */  cvt.s.w $f8, $f10
/* AC0398 800491F8 46124102 */  mul.s $f4, $f8, $f18
/* AC039C 800491FC E604001C */  swc1  $f4, 0x1c($s0)
/* AC03A0 80049200 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC03A4 80049204 85620314 */  lh    $v0, 0x314($t3)
.L80049208:
/* AC03A8 80049208 50400004 */  beql  $v0, $zero, .L8004921C
/* AC03AC 8004920C 26050050 */   addiu $a1, $s0, 0x50
/* AC03B0 80049210 0C011495 */  jal   func_80045254
/* AC03B4 80049214 02002025 */   move  $a0, $s0
/* AC03B8 80049218 26050050 */  addiu $a1, $s0, 0x50
.L8004921C:
/* AC03BC 8004921C 2606005C */  addiu $a2, $s0, 0x5c
/* AC03C0 80049220 AFA60040 */  sw    $a2, 0x40($sp)
/* AC03C4 80049224 AFA5003C */  sw    $a1, 0x3c($sp)
/* AC03C8 80049228 0C01F124 */  jal   func_8007C490
/* AC03CC 8004922C 27A400A0 */   addiu $a0, $sp, 0xa0
/* AC03D0 80049230 26060074 */  addiu $a2, $s0, 0x74
/* AC03D4 80049234 AFA60038 */  sw    $a2, 0x38($sp)
/* AC03D8 80049238 27A40098 */  addiu $a0, $sp, 0x98
/* AC03DC 8004923C 0C01F124 */  jal   func_8007C490
/* AC03E0 80049240 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC03E4 80049244 8603015E */  lh    $v1, 0x15e($s0)
/* AC03E8 80049248 10600009 */  beqz  $v1, .L80049270
/* AC03EC 8004924C 2401000A */   li    $at, 10
/* AC03F0 80049250 10610007 */  beq   $v1, $at, .L80049270
/* AC03F4 80049254 24010014 */   li    $at, 20
/* AC03F8 80049258 10610005 */  beq   $v1, $at, .L80049270
/* AC03FC 8004925C 24010019 */   li    $at, 25
/* AC0400 80049260 50610004 */  beql  $v1, $at, .L80049274
/* AC0404 80049264 26080028 */   addiu $t0, $s0, 0x28
/* AC0408 80049268 10000017 */  b     .L800492C8
/* AC040C 8004926C 26080028 */   addiu $t0, $s0, 0x28
.L80049270:
/* AC0410 80049270 26080028 */  addiu $t0, $s0, 0x28
.L80049274:
/* AC0414 80049274 A5000016 */  sh    $zero, 0x16($t0)
/* AC0418 80049278 A5000010 */  sh    $zero, 0x10($t0)
/* AC041C 8004927C 860C0024 */  lh    $t4, 0x24($s0)
/* AC0420 80049280 44803000 */  mtc1  $zero, $f6
/* AC0424 80049284 240E0014 */  li    $t6, 20
/* AC0428 80049288 318D0004 */  andi  $t5, $t4, 4
/* AC042C 8004928C 11A00003 */  beqz  $t5, .L8004929C
/* AC0430 80049290 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC0434 80049294 10000004 */  b     .L800492A8
/* AC0438 80049298 A50E0018 */   sh    $t6, 0x18($t0)
.L8004929C:
/* AC043C 8004929C 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC0440 800492A0 85F801C2 */  lh    $t8, 0x1c2($t7)
/* AC0444 800492A4 A5180018 */  sh    $t8, 0x18($t0)
.L800492A8:
/* AC0448 800492A8 E5060000 */  swc1  $f6, ($t0)
/* AC044C 800492AC C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC0450 800492B0 C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC0454 800492B4 46085101 */  sub.s $f4, $f10, $f8
/* AC0458 800492B8 E504000C */  swc1  $f4, 0xc($t0)
/* AC045C 800492BC 8609015E */  lh    $t1, 0x15e($s0)
/* AC0460 800492C0 25390001 */  addiu $t9, $t1, 1
/* AC0464 800492C4 A619015E */  sh    $t9, 0x15e($s0)
.L800492C8:
/* AC0468 800492C8 850A0018 */  lh    $t2, 0x18($t0)
/* AC046C 800492CC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC0470 800492D0 51400013 */  beql  $t2, $zero, .L80049320
/* AC0474 800492D4 86020024 */   lh    $v0, 0x24($s0)
/* AC0478 800492D8 86020024 */  lh    $v0, 0x24($s0)
/* AC047C 800492DC 304B0002 */  andi  $t3, $v0, 2
/* AC0480 800492E0 11600007 */  beqz  $t3, .L80049300
/* AC0484 800492E4 30590004 */   andi  $t9, $v0, 4
/* AC0488 800492E8 860C00A2 */  lh    $t4, 0xa2($s0)
/* AC048C 800492EC 86180022 */  lh    $t8, 0x22($s0)
/* AC0490 800492F0 258F8001 */  addiu $t7, $t4, -0x7fff
/* AC0494 800492F4 01F84821 */  addu  $t1, $t7, $t8
/* AC0498 800492F8 10000014 */  b     .L8004934C
/* AC049C 800492FC A5090012 */   sh    $t1, 0x12($t0)
.L80049300:
/* AC04A0 80049300 13200004 */  beqz  $t9, .L80049314
/* AC04A4 80049304 87AB009E */   lh    $t3, 0x9e($sp)
/* AC04A8 80049308 860A0022 */  lh    $t2, 0x22($s0)
/* AC04AC 8004930C 1000000F */  b     .L8004934C
/* AC04B0 80049310 A50A0012 */   sh    $t2, 0x12($t0)
.L80049314:
/* AC04B4 80049314 1000000D */  b     .L8004934C
/* AC04B8 80049318 A50B0012 */   sh    $t3, 0x12($t0)
/* AC04BC 8004931C 86020024 */  lh    $v0, 0x24($s0)
.L80049320:
/* AC04C0 80049320 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC04C4 80049324 304C0020 */  andi  $t4, $v0, 0x20
/* AC04C8 80049328 11800007 */  beqz  $t4, .L80049348
/* AC04CC 8004932C 00000000 */   nop   
/* AC04D0 80049330 860D00A2 */  lh    $t5, 0xa2($s0)
/* AC04D4 80049334 86090022 */  lh    $t1, 0x22($s0)
/* AC04D8 80049338 25B88001 */  addiu $t8, $t5, -0x7fff
/* AC04DC 8004933C 0309C821 */  addu  $t9, $t8, $t1
/* AC04E0 80049340 A5190012 */  sh    $t9, 0x12($t0)
/* AC04E4 80049344 86020024 */  lh    $v0, 0x24($s0)
.L80049348:
/* AC04E8 80049348 AC22D3A0 */  sw    $v0, %lo(D_8011D3A0)($at)
.L8004934C:
/* AC04EC 8004934C 860A0020 */  lh    $t2, 0x20($s0)
/* AC04F0 80049350 24010015 */  li    $at, 21
/* AC04F4 80049354 A50A0014 */  sh    $t2, 0x14($t0)
/* AC04F8 80049358 8602015E */  lh    $v0, 0x15e($s0)
/* AC04FC 8004935C 54410006 */  bnel  $v0, $at, .L80049378
/* AC0500 80049360 2401000B */   li    $at, 11
/* AC0504 80049364 24020001 */  li    $v0, 1
/* AC0508 80049368 A5020016 */  sh    $v0, 0x16($t0)
/* AC050C 8004936C 10000005 */  b     .L80049384
/* AC0510 80049370 A602015E */   sh    $v0, 0x15e($s0)
/* AC0514 80049374 2401000B */  li    $at, 11
.L80049378:
/* AC0518 80049378 14410002 */  bne   $v0, $at, .L80049384
/* AC051C 8004937C 24020001 */   li    $v0, 1
/* AC0520 80049380 A602015E */  sh    $v0, 0x15e($s0)
.L80049384:
/* AC0524 80049384 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC0528 80049388 3C018014 */  lui   $at, %hi(D_80139F24)
/* AC052C 8004938C C4309F24 */  lwc1  $f16, %lo(D_80139F24)($at)
/* AC0530 80049390 846B01C6 */  lh    $t3, 0x1c6($v1)
/* AC0534 80049394 846C01C8 */  lh    $t4, 0x1c8($v1)
/* AC0538 80049398 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* AC053C 8004939C 448B3000 */  mtc1  $t3, $f6
/* AC0540 800493A0 448C2000 */  mtc1  $t4, $f4
/* AC0544 800493A4 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0548 800493A8 468032A0 */  cvt.s.w $f10, $f6
/* AC054C 800493AC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0550 800493B0 468021A0 */  cvt.s.w $f6, $f4
/* AC0554 800493B4 46105202 */  mul.s $f8, $f10, $f16
/* AC0558 800493B8 00000000 */  nop   
/* AC055C 800493BC 46004082 */  mul.s $f2, $f8, $f0
/* AC0560 800493C0 00000000 */  nop   
/* AC0564 800493C4 46103282 */  mul.s $f10, $f6, $f16
/* AC0568 800493C8 44061000 */  mfc1  $a2, $f2
/* AC056C 800493CC 46005202 */  mul.s $f8, $f10, $f0
/* AC0570 800493D0 E7A800B4 */  swc1  $f8, 0xb4($sp)
/* AC0574 800493D4 846D01A0 */  lh    $t5, 0x1a0($v1)
/* AC0578 800493D8 C60E00C0 */  lwc1  $f14, 0xc0($s0)
/* AC057C 800493DC E7A200B8 */  swc1  $f2, 0xb8($sp)
/* AC0580 800493E0 448D2000 */  mtc1  $t5, $f4
/* AC0584 800493E4 AFA80034 */  sw    $t0, 0x34($sp)
/* AC0588 800493E8 0C010E27 */  jal   func_8004389C
/* AC058C 800493EC 46802320 */   cvt.s.w $f12, $f4
/* AC0590 800493F0 C7A200B8 */  lwc1  $f2, 0xb8($sp)
/* AC0594 800493F4 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0598 800493F8 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC059C 800493FC 44061000 */  mfc1  $a2, $f2
/* AC05A0 80049400 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05A4 80049404 C60C0008 */  lwc1  $f12, 8($s0)
/* AC05A8 80049408 0C010E27 */  jal   func_8004389C
/* AC05AC 8004940C C60E00C8 */   lwc1  $f14, 0xc8($s0)
/* AC05B0 80049410 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC05B4 80049414 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC05B8 80049418 44816000 */  mtc1  $at, $f12
/* AC05BC 8004941C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC05C0 80049420 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05C4 80049424 8FA600B4 */  lw    $a2, 0xb4($sp)
/* AC05C8 80049428 0C010E27 */  jal   func_8004389C
/* AC05CC 8004942C C60E00C4 */   lwc1  $f14, 0xc4($s0)
/* AC05D0 80049430 C7A200B8 */  lwc1  $f2, 0xb8($sp)
/* AC05D4 80049434 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC05D8 80049438 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC05DC 8004943C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC05E0 80049440 3C018014 */  lui   $at, %hi(D_80139F28)
/* AC05E4 80049444 C4289F28 */  lwc1  $f8, %lo(D_80139F28)($at)
/* AC05E8 80049448 85CF0198 */  lh    $t7, 0x198($t6)
/* AC05EC 8004944C 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC05F0 80049450 44061000 */  mfc1  $a2, $f2
/* AC05F4 80049454 448F3000 */  mtc1  $t7, $f6
/* AC05F8 80049458 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC05FC 8004945C C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC0600 80049460 468032A0 */  cvt.s.w $f10, $f6
/* AC0604 80049464 46085302 */  mul.s $f12, $f10, $f8
/* AC0608 80049468 0C010E27 */  jal   func_8004389C
/* AC060C 8004946C 00000000 */   nop   
/* AC0610 80049470 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC0614 80049474 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC0618 80049478 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC061C 8004947C 3C018014 */  lui   $at, %hi(D_80139F2C)
/* AC0620 80049480 C42A9F2C */  lwc1  $f10, %lo(D_80139F2C)($at)
/* AC0624 80049484 8709019A */  lh    $t1, 0x19a($t8)
/* AC0628 80049488 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC062C 8004948C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0630 80049490 44892000 */  mtc1  $t1, $f4
/* AC0634 80049494 8FA600B4 */  lw    $a2, 0xb4($sp)
/* AC0638 80049498 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC063C 8004949C 468021A0 */  cvt.s.w $f6, $f4
/* AC0640 800494A0 460A3302 */  mul.s $f12, $f6, $f10
/* AC0644 800494A4 0C010E27 */  jal   func_8004389C
/* AC0648 800494A8 00000000 */   nop   
/* AC064C 800494AC E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC0650 800494B0 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC0654 800494B4 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC0658 800494B8 3C018014 */  lui   $at, %hi(D_80139F30)
/* AC065C 800494BC C4269F30 */  lwc1  $f6, %lo(D_80139F30)($at)
/* AC0660 800494C0 872A019C */  lh    $t2, 0x19c($t9)
/* AC0664 800494C4 3C018014 */  lui   $at, %hi(D_80139F34)
/* AC0668 800494C8 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC066C 800494CC 448A4000 */  mtc1  $t2, $f8
/* AC0670 800494D0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0674 800494D4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0678 800494D8 46804120 */  cvt.s.w $f4, $f8
/* AC067C 800494DC C4289F34 */  lwc1  $f8, %lo(D_80139F34)($at)
/* AC0680 800494E0 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC0684 800494E4 46062302 */  mul.s $f12, $f4, $f6
/* AC0688 800494E8 00000000 */  nop   
/* AC068C 800494EC 46085102 */  mul.s $f4, $f10, $f8
/* AC0690 800494F0 44062000 */  mfc1  $a2, $f4
/* AC0694 800494F4 0C010E27 */  jal   func_8004389C
/* AC0698 800494F8 00000000 */   nop   
/* AC069C 800494FC 860B0024 */  lh    $t3, 0x24($s0)
/* AC06A0 80049500 8FA80034 */  lw    $t0, 0x34($sp)
/* AC06A4 80049504 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC06A8 80049508 316C0001 */  andi  $t4, $t3, 1
/* AC06AC 8004950C 51800024 */  beql  $t4, $zero, .L800495A0
/* AC06B0 80049510 A5000010 */   sh    $zero, 0x10($t0)
/* AC06B4 80049514 87A500A6 */  lh    $a1, 0xa6($sp)
/* AC06B8 80049518 02002025 */  move  $a0, $s0
/* AC06BC 8004951C 24060001 */  li    $a2, 1
/* AC06C0 80049520 24A58001 */  addiu $a1, $a1, -0x7fff
/* AC06C4 80049524 00052C00 */  sll   $a1, $a1, 0x10
/* AC06C8 80049528 00052C03 */  sra   $a1, $a1, 0x10
/* AC06CC 8004952C 0C0112B7 */  jal   func_80044ADC
/* AC06D0 80049530 AFA80034 */   sw    $t0, 0x34($sp)
/* AC06D4 80049534 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC06D8 80049538 44817000 */  mtc1  $at, $f14
/* AC06DC 8004953C C606000C */  lwc1  $f6, 0xc($s0)
/* AC06E0 80049540 3C018014 */  lui   $at, %hi(D_80139F38)
/* AC06E4 80049544 C42A9F38 */  lwc1  $f10, %lo(D_80139F38)($at)
/* AC06E8 80049548 46067003 */  div.s $f0, $f14, $f6
/* AC06EC 8004954C 3C018014 */  lui   $at, %hi(D_80139F3C)
/* AC06F0 80049550 C4289F3C */  lwc1  $f8, %lo(D_80139F3C)($at)
/* AC06F4 80049554 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC06F8 80049558 8FA80034 */  lw    $t0, 0x34($sp)
/* AC06FC 8004955C 00022400 */  sll   $a0, $v0, 0x10
/* AC0700 80049560 00042403 */  sra   $a0, $a0, 0x10
/* AC0704 80049564 2407000F */  li    $a3, 15
/* AC0708 80049568 85050010 */  lh    $a1, 0x10($t0)
/* AC070C 8004956C 460A0082 */  mul.s $f2, $f0, $f10
/* AC0710 80049570 46067281 */  sub.s $f10, $f14, $f6
/* AC0714 80049574 46080102 */  mul.s $f4, $f0, $f8
/* AC0718 80049578 00000000 */  nop   
/* AC071C 8004957C 460A2302 */  mul.s $f12, $f4, $f10
/* AC0720 80049580 460C1200 */  add.s $f8, $f2, $f12
/* AC0724 80049584 44064000 */  mfc1  $a2, $f8
/* AC0728 80049588 0C010E47 */  jal   func_8004391C
/* AC072C 8004958C 00000000 */   nop   
/* AC0730 80049590 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0734 80049594 10000002 */  b     .L800495A0
/* AC0738 80049598 A5020010 */   sh    $v0, 0x10($t0)
/* AC073C 8004959C A5000010 */  sh    $zero, 0x10($t0)
.L800495A0:
/* AC0740 800495A0 C6060098 */  lwc1  $f6, 0x98($s0)
/* AC0744 800495A4 C6040104 */  lwc1  $f4, 0x104($s0)
/* AC0748 800495A8 46043032 */  c.eq.s $f6, $f4
/* AC074C 800495AC 00000000 */  nop   
/* AC0750 800495B0 4503000F */  bc1tl .L800495F0
/* AC0754 800495B4 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC0758 800495B8 8E020090 */  lw    $v0, 0x90($s0)
/* AC075C 800495BC 3C018014 */  lui   $at, %hi(D_80139F40)
/* AC0760 800495C0 C42A9F40 */  lwc1  $f10, %lo(D_80139F40)($at)
/* AC0764 800495C4 C448006C */  lwc1  $f8, 0x6c($v0)
/* AC0768 800495C8 4608503C */  c.lt.s $f10, $f8
/* AC076C 800495CC 00000000 */  nop   
/* AC0770 800495D0 45030007 */  bc1tl .L800495F0
/* AC0774 800495D4 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC0778 800495D8 8C4D067C */  lw    $t5, 0x67c($v0)
/* AC077C 800495DC 240F0001 */  li    $t7, 1
/* AC0780 800495E0 000D7280 */  sll   $t6, $t5, 0xa
/* AC0784 800495E4 05C30006 */  bgezl $t6, .L80049600
/* AC0788 800495E8 A7AF006A */   sh    $t7, 0x6a($sp)
/* AC078C 800495EC C6060098 */  lwc1  $f6, 0x98($s0)
.L800495F0:
/* AC0790 800495F0 E506000C */  swc1  $f6, 0xc($t0)
/* AC0794 800495F4 10000002 */  b     .L80049600
/* AC0798 800495F8 A7A0006A */   sh    $zero, 0x6a($sp)
/* AC079C 800495FC A7AF006A */  sh    $t7, 0x6a($sp)
.L80049600:
/* AC07A0 80049600 86020024 */  lh    $v0, 0x24($s0)
/* AC07A4 80049604 87A9006A */  lh    $t1, 0x6a($sp)
/* AC07A8 80049608 02002025 */  move  $a0, $s0
/* AC07AC 8004960C 30580080 */  andi  $t8, $v0, 0x80
/* AC07B0 80049610 1700000C */  bnez  $t8, .L80049644
/* AC07B4 80049614 27A50098 */   addiu $a1, $sp, 0x98
/* AC07B8 80049618 1520000A */  bnez  $t1, .L80049644
/* AC07BC 8004961C 2507000C */   addiu $a3, $t0, 0xc
/* AC07C0 80049620 8E060000 */  lw    $a2, ($s0)
/* AC07C4 80049624 30590001 */  andi  $t9, $v0, 1
/* AC07C8 80049628 AFB90010 */  sw    $t9, 0x10($sp)
/* AC07CC 8004962C AFA80034 */  sw    $t0, 0x34($sp)
/* AC07D0 80049630 02002025 */  move  $a0, $s0
/* AC07D4 80049634 0C01171D */  jal   func_80045C74
/* AC07D8 80049638 27A50098 */   addiu $a1, $sp, 0x98
/* AC07DC 8004963C 10000008 */  b     .L80049660
/* AC07E0 80049640 8FA80034 */   lw    $t0, 0x34($sp)
.L80049644:
/* AC07E4 80049644 8E060018 */  lw    $a2, 0x18($s0)
/* AC07E8 80049648 304A0001 */  andi  $t2, $v0, 1
/* AC07EC 8004964C AFAA0010 */  sw    $t2, 0x10($sp)
/* AC07F0 80049650 AFA80034 */  sw    $t0, 0x34($sp)
/* AC07F4 80049654 0C011635 */  jal   func_800458D4
/* AC07F8 80049658 2507000C */   addiu $a3, $t0, 0xc
/* AC07FC 8004965C 8FA80034 */  lw    $t0, 0x34($sp)
.L80049660:
/* AC0800 80049660 850B0018 */  lh    $t3, 0x18($t0)
/* AC0804 80049664 51600028 */  beql  $t3, $zero, .L80049708
/* AC0808 80049668 A5000016 */   sh    $zero, 0x16($t0)
/* AC080C 8004966C 860C014C */  lh    $t4, 0x14c($s0)
/* AC0810 80049670 358D0020 */  ori   $t5, $t4, 0x20
/* AC0814 80049674 A60D014C */  sh    $t5, 0x14c($s0)
/* AC0818 80049678 85020018 */  lh    $v0, 0x18($t0)
/* AC081C 8004967C 87B800A6 */  lh    $t8, 0xa6($sp)
/* AC0820 80049680 850F0012 */  lh    $t7, 0x12($t0)
/* AC0824 80049684 244E0001 */  addiu $t6, $v0, 1
/* AC0828 80049688 01C20019 */  multu $t6, $v0
/* AC082C 8004968C 01F84823 */  subu  $t1, $t7, $t8
/* AC0830 80049690 0009CC00 */  sll   $t9, $t1, 0x10
/* AC0834 80049694 00195403 */  sra   $t2, $t9, 0x10
/* AC0838 80049698 87AE00A4 */  lh    $t6, 0xa4($sp)
/* AC083C 8004969C C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* AC0840 800496A0 A7AE00AC */  sh    $t6, 0xac($sp)
/* AC0844 800496A4 E7A400A8 */  swc1  $f4, 0xa8($sp)
/* AC0848 800496A8 00001812 */  mflo  $v1
/* AC084C 800496AC 00031843 */  sra   $v1, $v1, 1
/* AC0850 800496B0 00031C00 */  sll   $v1, $v1, 0x10
/* AC0854 800496B4 00031C03 */  sra   $v1, $v1, 0x10
/* AC0858 800496B8 0143001A */  div   $zero, $t2, $v1
/* AC085C 800496BC 00005812 */  mflo  $t3
/* AC0860 800496C0 14600002 */  bnez  $v1, .L800496CC
/* AC0864 800496C4 00000000 */   nop   
/* AC0868 800496C8 0007000D */  break 7
.L800496CC:
/* AC086C 800496CC 2401FFFF */  li    $at, -1
/* AC0870 800496D0 14610004 */  bne   $v1, $at, .L800496E4
/* AC0874 800496D4 3C018000 */   lui   $at, 0x8000
/* AC0878 800496D8 15410002 */  bne   $t2, $at, .L800496E4
/* AC087C 800496DC 00000000 */   nop   
/* AC0880 800496E0 0006000D */  break 6
.L800496E4:
/* AC0884 800496E4 01620019 */  multu $t3, $v0
/* AC0888 800496E8 00006012 */  mflo  $t4
/* AC088C 800496EC 030C6821 */  addu  $t5, $t8, $t4
/* AC0890 800496F0 A7AD00AE */  sh    $t5, 0xae($sp)
/* AC0894 800496F4 850F0018 */  lh    $t7, 0x18($t0)
/* AC0898 800496F8 25E9FFFF */  addiu $t1, $t7, -1
/* AC089C 800496FC 1000004D */  b     .L80049834
/* AC08A0 80049700 A5090018 */   sh    $t1, 0x18($t0)
/* AC08A4 80049704 A5000016 */  sh    $zero, 0x16($t0)
.L80049708:
/* AC08A8 80049708 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC08AC 8004970C 44815000 */  mtc1  $at, $f10
/* AC08B0 80049710 C60800C0 */  lwc1  $f8, 0xc0($s0)
/* AC08B4 80049714 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC08B8 80049718 C60C0004 */  lwc1  $f12, 4($s0)
/* AC08BC 8004971C 46085183 */  div.s $f6, $f10, $f8
/* AC08C0 80049720 AFA80034 */  sw    $t0, 0x34($sp)
/* AC08C4 80049724 3C074000 */  lui   $a3, 0x4000
/* AC08C8 80049728 44063000 */  mfc1  $a2, $f6
/* AC08CC 8004972C 0C010E27 */  jal   func_8004389C
/* AC08D0 80049730 00000000 */   nop   
/* AC08D4 80049734 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC08D8 80049738 8FA60038 */  lw    $a2, 0x38($sp)
/* AC08DC 8004973C 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC08E0 80049740 0C01F124 */  jal   func_8007C490
/* AC08E4 80049744 27A400A8 */   addiu $a0, $sp, 0xa8
/* AC08E8 80049748 C60400DC */  lwc1  $f4, 0xdc($s0)
/* AC08EC 8004974C 3C063F4C */  lui   $a2, (0x3F4CCCCD >> 16) # lui $a2, 0x3f4c
/* AC08F0 80049750 8FA80034 */  lw    $t0, 0x34($sp)
/* AC08F4 80049754 E7A400A8 */  swc1  $f4, 0xa8($sp)
/* AC08F8 80049758 86190024 */  lh    $t9, 0x24($s0)
/* AC08FC 8004975C 34C6CCCD */  ori   $a2, (0x3F4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC0900 80049760 87A5009E */  lh    $a1, 0x9e($sp)
/* AC0904 80049764 332A0040 */  andi  $t2, $t9, 0x40
/* AC0908 80049768 1140000B */  beqz  $t2, .L80049798
/* AC090C 8004976C 2407000A */   li    $a3, 10
/* AC0910 80049770 85040012 */  lh    $a0, 0x12($t0)
/* AC0914 80049774 3C063F19 */  lui   $a2, (0x3F19999A >> 16) # lui $a2, 0x3f19
/* AC0918 80049778 34C6999A */  ori   $a2, (0x3F19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* AC091C 8004977C AFA80034 */  sw    $t0, 0x34($sp)
/* AC0920 80049780 87A5009E */  lh    $a1, 0x9e($sp)
/* AC0924 80049784 0C010E47 */  jal   func_8004391C
/* AC0928 80049788 2407000A */   li    $a3, 10
/* AC092C 8004978C 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0930 80049790 10000006 */  b     .L800497AC
/* AC0934 80049794 A7A200AE */   sh    $v0, 0xae($sp)
.L80049798:
/* AC0938 80049798 85040012 */  lh    $a0, 0x12($t0)
/* AC093C 8004979C 0C010E47 */  jal   func_8004391C
/* AC0940 800497A0 AFA80034 */   sw    $t0, 0x34($sp)
/* AC0944 800497A4 8FA80034 */  lw    $t0, 0x34($sp)
/* AC0948 800497A8 A7A200AE */  sh    $v0, 0xae($sp)
.L800497AC:
/* AC094C 800497AC 860B0024 */  lh    $t3, 0x24($s0)
/* AC0950 800497B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC0954 800497B4 44815000 */  mtc1  $at, $f10
/* AC0958 800497B8 31780001 */  andi  $t8, $t3, 1
/* AC095C 800497BC 53000008 */  beql  $t8, $zero, .L800497E0
/* AC0960 800497C0 85040014 */   lh    $a0, 0x14($t0)
/* AC0964 800497C4 850C0014 */  lh    $t4, 0x14($t0)
/* AC0968 800497C8 850D0010 */  lh    $t5, 0x10($t0)
/* AC096C 800497CC 018D2023 */  subu  $a0, $t4, $t5
/* AC0970 800497D0 00042400 */  sll   $a0, $a0, 0x10
/* AC0974 800497D4 10000002 */  b     .L800497E0
/* AC0978 800497D8 00042403 */   sra   $a0, $a0, 0x10
/* AC097C 800497DC 85040014 */  lh    $a0, 0x14($t0)
.L800497E0:
/* AC0980 800497E0 C60800C4 */  lwc1  $f8, 0xc4($s0)
/* AC0984 800497E4 87A5009C */  lh    $a1, 0x9c($sp)
/* AC0988 800497E8 24070004 */  li    $a3, 4
/* AC098C 800497EC 46085183 */  div.s $f6, $f10, $f8
/* AC0990 800497F0 44063000 */  mfc1  $a2, $f6
/* AC0994 800497F4 0C010E47 */  jal   func_8004391C
/* AC0998 800497F8 00000000 */   nop   
/* AC099C 800497FC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC09A0 80049800 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC09A4 80049804 A7A200AC */  sh    $v0, 0xac($sp)
/* AC09A8 80049808 8464019E */  lh    $a0, 0x19e($v1)
/* AC09AC 8004980C 0082082A */  slt   $at, $a0, $v0
/* AC09B0 80049810 50200003 */  beql  $at, $zero, .L80049820
/* AC09B4 80049814 846201D8 */   lh    $v0, 0x1d8($v1)
/* AC09B8 80049818 A7A400AC */  sh    $a0, 0xac($sp)
/* AC09BC 8004981C 846201D8 */  lh    $v0, 0x1d8($v1)
.L80049820:
/* AC09C0 80049820 87AE00AC */  lh    $t6, 0xac($sp)
/* AC09C4 80049824 01C2082A */  slt   $at, $t6, $v0
/* AC09C8 80049828 50200003 */  beql  $at, $zero, .L80049838
/* AC09CC 8004982C 8FA40038 */   lw    $a0, 0x38($sp)
/* AC09D0 80049830 A7A200AC */  sh    $v0, 0xac($sp)
.L80049834:
/* AC09D4 80049834 8FA40038 */  lw    $a0, 0x38($sp)
.L80049838:
/* AC09D8 80049838 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC09DC 8004983C 0C010F0A */  jal   func_80043C28
/* AC09E0 80049840 27A600A8 */   addiu $a2, $sp, 0xa8
/* AC09E4 80049844 860F0140 */  lh    $t7, 0x140($s0)
/* AC09E8 80049848 24010007 */  li    $at, 7
/* AC09EC 8004984C 8FA90038 */  lw    $t1, 0x38($sp)
/* AC09F0 80049850 55E10032 */  bnel  $t7, $at, .L8004991C
/* AC09F4 80049854 C60C0010 */   lwc1  $f12, 0x10($s0)
/* AC09F8 80049858 8D2A0000 */  lw    $t2, ($t1)
/* AC09FC 8004985C 27A6006C */  addiu $a2, $sp, 0x6c
/* AC0A00 80049860 3C180001 */  lui   $t8, 1
/* AC0A04 80049864 ACCA0000 */  sw    $t2, ($a2)
/* AC0A08 80049868 8D390004 */  lw    $t9, 4($t1)
/* AC0A0C 8004986C 02002025 */  move  $a0, $s0
/* AC0A10 80049870 ACD90004 */  sw    $t9, 4($a2)
/* AC0A14 80049874 8D2A0008 */  lw    $t2, 8($t1)
/* AC0A18 80049878 ACCA0008 */  sw    $t2, 8($a2)
/* AC0A1C 8004987C 8E0B008C */  lw    $t3, 0x8c($s0)
/* AC0A20 80049880 030BC021 */  addu  $t8, $t8, $t3
/* AC0A24 80049884 93180A39 */  lbu   $t8, 0xa39($t8)
/* AC0A28 80049888 13000006 */  beqz  $t8, .L800498A4
/* AC0A2C 8004988C 00000000 */   nop   
/* AC0A30 80049890 860C0024 */  lh    $t4, 0x24($s0)
/* AC0A34 80049894 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC0A38 80049898 318D0010 */  andi  $t5, $t4, 0x10
/* AC0A3C 8004989C 11A0000C */  beqz  $t5, .L800498D0
/* AC0A40 800498A0 00000000 */   nop   
.L800498A4:
/* AC0A44 800498A4 0C010F46 */  jal   func_80043D18
/* AC0A48 800498A8 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC0A4C 800498AC 27AF006C */  addiu $t7, $sp, 0x6c
/* AC0A50 800498B0 8DF90000 */  lw    $t9, ($t7)
/* AC0A54 800498B4 8FAE0040 */  lw    $t6, 0x40($sp)
/* AC0A58 800498B8 ADD90000 */  sw    $t9, ($t6)
/* AC0A5C 800498BC 8DE90004 */  lw    $t1, 4($t7)
/* AC0A60 800498C0 ADC90004 */  sw    $t1, 4($t6)
/* AC0A64 800498C4 8DF90008 */  lw    $t9, 8($t7)
/* AC0A68 800498C8 10000013 */  b     .L80049918
/* AC0A6C 800498CC ADD90008 */   sw    $t9, 8($t6)
.L800498D0:
/* AC0A70 800498D0 0C010FE5 */  jal   func_80043F94
/* AC0A74 800498D4 02002025 */   move  $a0, $s0
/* AC0A78 800498D8 27AA006C */  addiu $t2, $sp, 0x6c
/* AC0A7C 800498DC 8FA50040 */  lw    $a1, 0x40($sp)
/* AC0A80 800498E0 8D580000 */  lw    $t8, ($t2)
/* AC0A84 800498E4 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC0A88 800498E8 ACB80000 */  sw    $t8, ($a1)
/* AC0A8C 800498EC 8D4B0004 */  lw    $t3, 4($t2)
/* AC0A90 800498F0 ACAB0004 */  sw    $t3, 4($a1)
/* AC0A94 800498F4 8D580008 */  lw    $t8, 8($t2)
/* AC0A98 800498F8 ACB80008 */  sw    $t8, 8($a1)
/* AC0A9C 800498FC 0C01F124 */  jal   func_8007C490
/* AC0AA0 80049900 8FA6003C */   lw    $a2, 0x3c($sp)
/* AC0AA4 80049904 87AC00AC */  lh    $t4, 0xac($sp)
/* AC0AA8 80049908 A60C0134 */  sh    $t4, 0x134($s0)
/* AC0AAC 8004990C 87AD00AE */  lh    $t5, 0xae($sp)
/* AC0AB0 80049910 A6000138 */  sh    $zero, 0x138($s0)
/* AC0AB4 80049914 A60D0136 */  sh    $t5, 0x136($s0)
.L80049918:
/* AC0AB8 80049918 C60C0010 */  lwc1  $f12, 0x10($s0)
.L8004991C:
/* AC0ABC 8004991C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC0AC0 80049920 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC0AC4 80049924 0C010E27 */  jal   func_8004389C
/* AC0AC8 80049928 3C073F80 */   lui   $a3, 0x3f80
/* AC0ACC 8004992C E60000FC */  swc1  $f0, 0xfc($s0)
/* AC0AD0 80049930 00002025 */  move  $a0, $zero
/* AC0AD4 80049934 8605015A */  lh    $a1, 0x15a($s0)
/* AC0AD8 80049938 3C063F00 */  lui   $a2, 0x3f00
/* AC0ADC 8004993C 0C010E47 */  jal   func_8004391C
/* AC0AE0 80049940 2407000A */   li    $a3, 10
/* AC0AE4 80049944 A602015A */  sh    $v0, 0x15a($s0)
/* AC0AE8 80049948 87AE006A */  lh    $t6, 0x6a($sp)
/* AC0AEC 8004994C 51C00004 */  beql  $t6, $zero, .L80049960
/* AC0AF0 80049950 C6000014 */   lwc1  $f0, 0x14($s0)
/* AC0AF4 80049954 10000002 */  b     .L80049960
/* AC0AF8 80049958 C600001C */   lwc1  $f0, 0x1c($s0)
/* AC0AFC 8004995C C6000014 */  lwc1  $f0, 0x14($s0)
.L80049960:
/* AC0B00 80049960 44050000 */  mfc1  $a1, $f0
/* AC0B04 80049964 0C011429 */  jal   func_800450A4
/* AC0B08 80049968 02002025 */   move  $a0, $s0
/* AC0B0C 8004996C E6000100 */  swc1  $f0, 0x100($s0)
/* AC0B10 80049970 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC0B14 80049974 8FB00020 */  lw    $s0, 0x20($sp)
/* AC0B18 80049978 27BD00C8 */  addiu $sp, $sp, 0xc8
/* AC0B1C 8004997C 03E00008 */  jr    $ra
/* AC0B20 80049980 00000000 */   nop   
# SPLIT
/* AC0B24 80049984 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC0B28 80049988 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC0B2C 8004998C 0C011CE5 */  jal   func_80047394
/* AC0B30 80049990 00000000 */   nop   
/* AC0B34 80049994 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC0B38 80049998 27BD0018 */  addiu $sp, $sp, 0x18
/* AC0B3C 8004999C 03E00008 */  jr    $ra
/* AC0B40 800499A0 00000000 */   nop   
# SPLIT
/* AC0B44 800499A4 848E0142 */  lh    $t6, 0x142($a0)
/* AC0B48 800499A8 3C188012 */  lui   $t8, %hi(D_8011D068)
/* AC0B4C 800499AC 84990144 */  lh    $t9, 0x144($a0)
/* AC0B50 800499B0 000E78C0 */  sll   $t7, $t6, 3
/* AC0B54 800499B4 030FC021 */  addu  $t8, $t8, $t7
/* AC0B58 800499B8 8F18D068 */  lw    $t8, %lo(D_8011D068)($t8)
/* AC0B5C 800499BC 001940C0 */  sll   $t0, $t9, 3
/* AC0B60 800499C0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC0B64 800499C4 03084821 */  addu  $t1, $t8, $t0
/* AC0B68 800499C8 8D220004 */  lw    $v0, 4($t1)
/* AC0B6C 800499CC 84430000 */  lh    $v1, ($v0)
/* AC0B70 800499D0 306A0001 */  andi  $t2, $v1, 1
/* AC0B74 800499D4 11400004 */  beqz  $t2, .L800499E8
/* AC0B78 800499D8 AC23D3A0 */   sw    $v1, %lo(D_8011D3A0)($at)
/* AC0B7C 800499DC 848B014C */  lh    $t3, 0x14c($a0)
/* AC0B80 800499E0 356C0400 */  ori   $t4, $t3, 0x400
/* AC0B84 800499E4 A48C014C */  sh    $t4, 0x14c($a0)
.L800499E8:
/* AC0B88 800499E8 306D0002 */  andi  $t5, $v1, 2
/* AC0B8C 800499EC 11A00004 */  beqz  $t5, .L80049A00
/* AC0B90 800499F0 00000000 */   nop   
/* AC0B94 800499F4 848E014C */  lh    $t6, 0x14c($a0)
/* AC0B98 800499F8 35CF0010 */  ori   $t7, $t6, 0x10
/* AC0B9C 800499FC A48F014C */  sh    $t7, 0x14c($a0)
.L80049A00:
/* AC0BA0 80049A00 03E00008 */  jr    $ra
/* AC0BA4 80049A04 00000000 */   nop   
# SPLIT
/* AC0BA8 80049A08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC0BAC 80049A0C AFBF0014 */  sw    $ra, 0x14($sp)
/* AC0BB0 80049A10 0C011CE5 */  jal   func_80047394
/* AC0BB4 80049A14 00000000 */   nop   
/* AC0BB8 80049A18 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC0BBC 80049A1C 27BD0018 */  addiu $sp, $sp, 0x18
/* AC0BC0 80049A20 03E00008 */  jr    $ra
/* AC0BC4 80049A24 00000000 */   nop   
# SPLIT
/* AC0BC8 80049A28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC0BCC 80049A2C AFBF0014 */  sw    $ra, 0x14($sp)
/* AC0BD0 80049A30 0C011CE5 */  jal   func_80047394
/* AC0BD4 80049A34 00000000 */   nop   
/* AC0BD8 80049A38 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC0BDC 80049A3C 27BD0018 */  addiu $sp, $sp, 0x18
/* AC0BE0 80049A40 03E00008 */  jr    $ra
/* AC0BE4 80049A44 00000000 */   nop   
# SPLIT
/* AC0BE8 80049A48 27BDFF48 */  addiu $sp, $sp, -0xb8
/* AC0BEC 80049A4C AFB0001C */  sw    $s0, 0x1c($sp)
/* AC0BF0 80049A50 00808025 */  move  $s0, $a0
/* AC0BF4 80049A54 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC0BF8 80049A58 AFB10020 */  sw    $s1, 0x20($sp)
/* AC0BFC 80049A5C 0C00B721 */  jal   func_8002DC84
/* AC0C00 80049A60 8C840090 */   lw    $a0, 0x90($a0)
/* AC0C04 80049A64 8603015E */  lh    $v1, 0x15e($s0)
/* AC0C08 80049A68 10600008 */  beqz  $v1, .L80049A8C
/* AC0C0C 80049A6C 2401000A */   li    $at, 10
/* AC0C10 80049A70 10610006 */  beq   $v1, $at, .L80049A8C
/* AC0C14 80049A74 24010014 */   li    $at, 20
/* AC0C18 80049A78 10610004 */  beq   $v1, $at, .L80049A8C
/* AC0C1C 80049A7C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC0C20 80049A80 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC0C24 80049A84 85C30314 */  lh    $v1, 0x314($t6)
/* AC0C28 80049A88 10600052 */  beqz  $v1, .L80049BD4
.L80049A8C:
/* AC0C2C 80049A8C 3C018014 */   lui   $at, %hi(D_80139F44)
/* AC0C30 80049A90 C42E9F44 */  lwc1  $f14, %lo(D_80139F44)($at)
/* AC0C34 80049A94 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC0C38 80049A98 44814000 */  mtc1  $at, $f8
/* AC0C3C 80049A9C 3C014288 */  lui   $at, 0x4288
/* AC0C40 80049AA0 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC0C44 80049AA4 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC0C48 80049AA8 44818000 */  mtc1  $at, $f16
/* AC0C4C 80049AAC 860F0142 */  lh    $t7, 0x142($s0)
/* AC0C50 80049AB0 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC0C54 80049AB4 46008483 */  div.s $f18, $f16, $f0
/* AC0C58 80049AB8 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC0C5C 80049ABC 448C2000 */  mtc1  $t4, $f4
/* AC0C60 80049AC0 000FC0C0 */  sll   $t8, $t7, 3
/* AC0C64 80049AC4 86080144 */  lh    $t0, 0x144($s0)
/* AC0C68 80049AC8 468021A0 */  cvt.s.w $f6, $f4
/* AC0C6C 80049ACC 0338C821 */  addu  $t9, $t9, $t8
/* AC0C70 80049AD0 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC0C74 80049AD4 000848C0 */  sll   $t1, $t0, 3
/* AC0C78 80049AD8 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC0C7C 80049ADC 03295021 */  addu  $t2, $t9, $t1
/* AC0C80 80049AE0 8D420004 */  lw    $v0, 4($t2)
/* AC0C84 80049AE4 844D0000 */  lh    $t5, ($v0)
/* AC0C88 80049AE8 2442001C */  addiu $v0, $v0, 0x1c
/* AC0C8C 80049AEC 460E3302 */  mul.s $f12, $f6, $f14
/* AC0C90 80049AF0 448D3000 */  mtc1  $t5, $f6
/* AC0C94 80049AF4 460C4280 */  add.s $f10, $f8, $f12
/* AC0C98 80049AF8 46126102 */  mul.s $f4, $f12, $f18
/* AC0C9C 80049AFC 46803220 */  cvt.s.w $f8, $f6
/* AC0CA0 80049B00 46045081 */  sub.s $f2, $f10, $f4
/* AC0CA4 80049B04 460E4402 */  mul.s $f16, $f8, $f14
/* AC0CA8 80049B08 00000000 */  nop   
/* AC0CAC 80049B0C 46008482 */  mul.s $f18, $f16, $f0
/* AC0CB0 80049B10 00000000 */  nop   
/* AC0CB4 80049B14 46029282 */  mul.s $f10, $f18, $f2
/* AC0CB8 80049B18 E60A0000 */  swc1  $f10, ($s0)
/* AC0CBC 80049B1C 844EFFE8 */  lh    $t6, -0x18($v0)
/* AC0CC0 80049B20 448E2000 */  mtc1  $t6, $f4
/* AC0CC4 80049B24 00000000 */  nop   
/* AC0CC8 80049B28 468021A0 */  cvt.s.w $f6, $f4
/* AC0CCC 80049B2C 460E3202 */  mul.s $f8, $f6, $f14
/* AC0CD0 80049B30 00000000 */  nop   
/* AC0CD4 80049B34 46004402 */  mul.s $f16, $f8, $f0
/* AC0CD8 80049B38 00000000 */  nop   
/* AC0CDC 80049B3C 46028482 */  mul.s $f18, $f16, $f2
/* AC0CE0 80049B40 E6120004 */  swc1  $f18, 4($s0)
/* AC0CE4 80049B44 844FFFEC */  lh    $t7, -0x14($v0)
/* AC0CE8 80049B48 448F5000 */  mtc1  $t7, $f10
/* AC0CEC 80049B4C 00000000 */  nop   
/* AC0CF0 80049B50 46805120 */  cvt.s.w $f4, $f10
/* AC0CF4 80049B54 460E2182 */  mul.s $f6, $f4, $f14
/* AC0CF8 80049B58 00000000 */  nop   
/* AC0CFC 80049B5C 46003202 */  mul.s $f8, $f6, $f0
/* AC0D00 80049B60 00000000 */  nop   
/* AC0D04 80049B64 46024402 */  mul.s $f16, $f8, $f2
/* AC0D08 80049B68 E6100008 */  swc1  $f16, 8($s0)
/* AC0D0C 80049B6C 8458FFF0 */  lh    $t8, -0x10($v0)
/* AC0D10 80049B70 44989000 */  mtc1  $t8, $f18
/* AC0D14 80049B74 00000000 */  nop   
/* AC0D18 80049B78 468092A0 */  cvt.s.w $f10, $f18
/* AC0D1C 80049B7C E60A000C */  swc1  $f10, 0xc($s0)
/* AC0D20 80049B80 8448FFF4 */  lh    $t0, -0xc($v0)
/* AC0D24 80049B84 44882000 */  mtc1  $t0, $f4
/* AC0D28 80049B88 00000000 */  nop   
/* AC0D2C 80049B8C 468021A0 */  cvt.s.w $f6, $f4
/* AC0D30 80049B90 460E3202 */  mul.s $f8, $f6, $f14
/* AC0D34 80049B94 E6080010 */  swc1  $f8, 0x10($s0)
/* AC0D38 80049B98 8459FFF8 */  lh    $t9, -8($v0)
/* AC0D3C 80049B9C 44998000 */  mtc1  $t9, $f16
/* AC0D40 80049BA0 00000000 */  nop   
/* AC0D44 80049BA4 468084A0 */  cvt.s.w $f18, $f16
/* AC0D48 80049BA8 E6120014 */  swc1  $f18, 0x14($s0)
/* AC0D4C 80049BAC 8449FFFC */  lh    $t1, -4($v0)
/* AC0D50 80049BB0 44895000 */  mtc1  $t1, $f10
/* AC0D54 80049BB4 00000000 */  nop   
/* AC0D58 80049BB8 46805120 */  cvt.s.w $f4, $f10
/* AC0D5C 80049BBC 460E2182 */  mul.s $f6, $f4, $f14
/* AC0D60 80049BC0 E6060018 */  swc1  $f6, 0x18($s0)
/* AC0D64 80049BC4 844A0000 */  lh    $t2, ($v0)
/* AC0D68 80049BC8 A60A001C */  sh    $t2, 0x1c($s0)
/* AC0D6C 80049BCC 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC0D70 80049BD0 85630314 */  lh    $v1, 0x314($t3)
.L80049BD4:
/* AC0D74 80049BD4 50600004 */  beql  $v1, $zero, .L80049BE8
/* AC0D78 80049BD8 27A40060 */   addiu $a0, $sp, 0x60
/* AC0D7C 80049BDC 0C011495 */  jal   func_80045254
/* AC0D80 80049BE0 02002025 */   move  $a0, $s0
/* AC0D84 80049BE4 27A40060 */  addiu $a0, $sp, 0x60
.L80049BE8:
/* AC0D88 80049BE8 0C00BBB9 */  jal   func_8002EEE4
/* AC0D8C 80049BEC 8E050090 */   lw    $a1, 0x90($s0)
/* AC0D90 80049BF0 26050050 */  addiu $a1, $s0, 0x50
/* AC0D94 80049BF4 2606005C */  addiu $a2, $s0, 0x5c
/* AC0D98 80049BF8 AFA60040 */  sw    $a2, 0x40($sp)
/* AC0D9C 80049BFC AFA5003C */  sw    $a1, 0x3c($sp)
/* AC0DA0 80049C00 0C01F124 */  jal   func_8007C490
/* AC0DA4 80049C04 27A40090 */   addiu $a0, $sp, 0x90
/* AC0DA8 80049C08 26060074 */  addiu $a2, $s0, 0x74
/* AC0DAC 80049C0C AFA60038 */  sw    $a2, 0x38($sp)
/* AC0DB0 80049C10 27A40088 */  addiu $a0, $sp, 0x88
/* AC0DB4 80049C14 0C01F124 */  jal   func_8007C490
/* AC0DB8 80049C18 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC0DBC 80049C1C 860C001C */  lh    $t4, 0x1c($s0)
/* AC0DC0 80049C20 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC0DC4 80049C24 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AC0DC8 80049C28 8603015E */  lh    $v1, 0x15e($s0)
/* AC0DCC 80049C2C 10600004 */  beqz  $v1, .L80049C40
/* AC0DD0 80049C30 2401000A */   li    $at, 10
/* AC0DD4 80049C34 10610002 */  beq   $v1, $at, .L80049C40
/* AC0DD8 80049C38 24010014 */   li    $at, 20
/* AC0DDC 80049C3C 1461001B */  bne   $v1, $at, .L80049CAC
.L80049C40:
/* AC0DE0 80049C40 26110020 */   addiu $s1, $s0, 0x20
/* AC0DE4 80049C44 A6200018 */  sh    $zero, 0x18($s1)
/* AC0DE8 80049C48 862D0018 */  lh    $t5, 0x18($s1)
/* AC0DEC 80049C4C 240E00C8 */  li    $t6, 200
/* AC0DF0 80049C50 AE20000C */  sw    $zero, 0xc($s1)
/* AC0DF4 80049C54 A6200024 */  sh    $zero, 0x24($s1)
/* AC0DF8 80049C58 A62E0026 */  sh    $t6, 0x26($s1)
/* AC0DFC 80049C5C A620001A */  sh    $zero, 0x1a($s1)
/* AC0E00 80049C60 A62D0016 */  sh    $t5, 0x16($s1)
/* AC0E04 80049C64 C608000C */  lwc1  $f8, 0xc($s0)
/* AC0E08 80049C68 3C018014 */  lui   $at, %hi(D_80139F50)
/* AC0E0C 80049C6C E6280010 */  swc1  $f8, 0x10($s1)
/* AC0E10 80049C70 C61200F4 */  lwc1  $f18, 0xf4($s0)
/* AC0E14 80049C74 C6100098 */  lwc1  $f16, 0x98($s0)
/* AC0E18 80049C78 46128281 */  sub.s $f10, $f16, $f18
/* AC0E1C 80049C7C E62A001C */  swc1  $f10, 0x1c($s1)
/* AC0E20 80049C80 C7A40090 */  lwc1  $f4, 0x90($sp)
/* AC0E24 80049C84 E6240020 */  swc1  $f4, 0x20($s1)
/* AC0E28 80049C88 C60600E8 */  lwc1  $f6, 0xe8($s0)
/* AC0E2C 80049C8C C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC0E30 80049C90 860F015E */  lh    $t7, 0x15e($s0)
/* AC0E34 80049C94 46083401 */  sub.s $f16, $f6, $f8
/* AC0E38 80049C98 25F80001 */  addiu $t8, $t7, 1
/* AC0E3C 80049C9C E61000E8 */  swc1  $f16, 0xe8($s0)
/* AC0E40 80049CA0 C4329F50 */  lwc1  $f18, %lo(D_80139F50)($at)
/* AC0E44 80049CA4 A618015E */  sh    $t8, 0x15e($s0)
/* AC0E48 80049CA8 E61200CC */  swc1  $f18, 0xcc($s0)
.L80049CAC:
/* AC0E4C 80049CAC 26110020 */  addiu $s1, $s0, 0x20
/* AC0E50 80049CB0 8622001A */  lh    $v0, 0x1a($s1)
/* AC0E54 80049CB4 1040002D */  beqz  $v0, .L80049D6C
/* AC0E58 80049CB8 3C088016 */   lui   $t0, %hi(gGameInfo)
/* AC0E5C 80049CBC 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC0E60 80049CC0 44822000 */  mtc1  $v0, $f4
/* AC0E64 80049CC4 3C018014 */  lui   $at, %hi(D_80139F54)
/* AC0E68 80049CC8 851901C8 */  lh    $t9, 0x1c8($t0)
/* AC0E6C 80049CCC C4329F54 */  lwc1  $f18, %lo(D_80139F54)($at)
/* AC0E70 80049CD0 468021A0 */  cvt.s.w $f6, $f4
/* AC0E74 80049CD4 44994000 */  mtc1  $t9, $f8
/* AC0E78 80049CD8 C60A000C */  lwc1  $f10, 0xc($s0)
/* AC0E7C 80049CDC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0E80 80049CE0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0E84 80049CE4 46804420 */  cvt.s.w $f16, $f8
/* AC0E88 80049CE8 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC0E8C 80049CEC 46065300 */  add.s $f12, $f10, $f6
/* AC0E90 80049CF0 46128102 */  mul.s $f4, $f16, $f18
/* AC0E94 80049CF4 44062000 */  mfc1  $a2, $f4
/* AC0E98 80049CF8 0C010E27 */  jal   func_8004389C
/* AC0E9C 80049CFC 00000000 */   nop   
/* AC0EA0 80049D00 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC0EA4 80049D04 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC0EA8 80049D08 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC0EAC 80049D0C 862A001A */  lh    $t2, 0x1a($s1)
/* AC0EB0 80049D10 3C018014 */  lui   $at, %hi(D_80139F58)
/* AC0EB4 80049D14 844B01C8 */  lh    $t3, 0x1c8($v0)
/* AC0EB8 80049D18 844901A2 */  lh    $t1, 0x1a2($v0)
/* AC0EBC 80049D1C 448A4000 */  mtc1  $t2, $f8
/* AC0EC0 80049D20 448B9000 */  mtc1  $t3, $f18
/* AC0EC4 80049D24 44895000 */  mtc1  $t1, $f10
/* AC0EC8 80049D28 46804420 */  cvt.s.w $f16, $f8
/* AC0ECC 80049D2C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0ED0 80049D30 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0ED4 80049D34 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC0ED8 80049D38 46809120 */  cvt.s.w $f4, $f18
/* AC0EDC 80049D3C 468051A0 */  cvt.s.w $f6, $f10
/* AC0EE0 80049D40 C42A9F58 */  lwc1  $f10, %lo(D_80139F58)($at)
/* AC0EE4 80049D44 460A2202 */  mul.s $f8, $f4, $f10
/* AC0EE8 80049D48 46103300 */  add.s $f12, $f6, $f16
/* AC0EEC 80049D4C 44064000 */  mfc1  $a2, $f8
/* AC0EF0 80049D50 0C010E27 */  jal   func_8004389C
/* AC0EF4 80049D54 00000000 */   nop   
/* AC0EF8 80049D58 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC0EFC 80049D5C 862C001A */  lh    $t4, 0x1a($s1)
/* AC0F00 80049D60 258DFFFF */  addiu $t5, $t4, -1
/* AC0F04 80049D64 10000023 */  b     .L80049DF4
/* AC0F08 80049D68 A62D001A */   sh    $t5, 0x1a($s1)
.L80049D6C:
/* AC0F0C 80049D6C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC0F10 80049D70 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC0F14 80049D74 3C018014 */  lui   $at, %hi(D_80139F5C)
/* AC0F18 80049D78 C4329F5C */  lwc1  $f18, %lo(D_80139F5C)($at)
/* AC0F1C 80049D7C 85CF01C8 */  lh    $t7, 0x1c8($t6)
/* AC0F20 80049D80 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC0F24 80049D84 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0F28 80049D88 448F3000 */  mtc1  $t7, $f6
/* AC0F2C 80049D8C C60C000C */  lwc1  $f12, 0xc($s0)
/* AC0F30 80049D90 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC0F34 80049D94 46803420 */  cvt.s.w $f16, $f6
/* AC0F38 80049D98 46128102 */  mul.s $f4, $f16, $f18
/* AC0F3C 80049D9C 44062000 */  mfc1  $a2, $f4
/* AC0F40 80049DA0 0C010E27 */  jal   func_8004389C
/* AC0F44 80049DA4 00000000 */   nop   
/* AC0F48 80049DA8 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC0F4C 80049DAC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC0F50 80049DB0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC0F54 80049DB4 3C018014 */  lui   $at, %hi(D_80139F60)
/* AC0F58 80049DB8 C4309F60 */  lwc1  $f16, %lo(D_80139F60)($at)
/* AC0F5C 80049DBC 844801C8 */  lh    $t0, 0x1c8($v0)
/* AC0F60 80049DC0 845801A2 */  lh    $t8, 0x1a2($v0)
/* AC0F64 80049DC4 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC0F68 80049DC8 44884000 */  mtc1  $t0, $f8
/* AC0F6C 80049DCC 44985000 */  mtc1  $t8, $f10
/* AC0F70 80049DD0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0F74 80049DD4 468041A0 */  cvt.s.w $f6, $f8
/* AC0F78 80049DD8 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC0F7C 80049DDC 46805320 */  cvt.s.w $f12, $f10
/* AC0F80 80049DE0 46103482 */  mul.s $f18, $f6, $f16
/* AC0F84 80049DE4 44069000 */  mfc1  $a2, $f18
/* AC0F88 80049DE8 0C010E27 */  jal   func_8004389C
/* AC0F8C 80049DEC 00000000 */   nop   
/* AC0F90 80049DF0 E60000C4 */  swc1  $f0, 0xc4($s0)
.L80049DF4:
/* AC0F94 80049DF4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC0F98 80049DF8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC0F9C 80049DFC 3C018014 */  lui   $at, %hi(D_80139F64)
/* AC0FA0 80049E00 C4209F64 */  lwc1  $f0, %lo(D_80139F64)($at)
/* AC0FA4 80049E04 84590198 */  lh    $t9, 0x198($v0)
/* AC0FA8 80049E08 844901C6 */  lh    $t1, 0x1c6($v0)
/* AC0FAC 80049E0C 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC0FB0 80049E10 44992000 */  mtc1  $t9, $f4
/* AC0FB4 80049E14 44894000 */  mtc1  $t1, $f8
/* AC0FB8 80049E18 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0FBC 80049E1C 468022A0 */  cvt.s.w $f10, $f4
/* AC0FC0 80049E20 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC0FC4 80049E24 468041A0 */  cvt.s.w $f6, $f8
/* AC0FC8 80049E28 46005302 */  mul.s $f12, $f10, $f0
/* AC0FCC 80049E2C 00000000 */  nop   
/* AC0FD0 80049E30 46003402 */  mul.s $f16, $f6, $f0
/* AC0FD4 80049E34 44068000 */  mfc1  $a2, $f16
/* AC0FD8 80049E38 0C010E27 */  jal   func_8004389C
/* AC0FDC 80049E3C 00000000 */   nop   
/* AC0FE0 80049E40 3C018014 */  lui   $at, %hi(D_80139F68)
/* AC0FE4 80049E44 C4229F68 */  lwc1  $f2, %lo(D_80139F68)($at)
/* AC0FE8 80049E48 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC0FEC 80049E4C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC0FF0 80049E50 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC0FF4 80049E54 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC0FF8 80049E58 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC0FFC 80049E5C 844A019A */  lh    $t2, 0x19a($v0)
/* AC1000 80049E60 844B01C8 */  lh    $t3, 0x1c8($v0)
/* AC1004 80049E64 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC1008 80049E68 448A9000 */  mtc1  $t2, $f18
/* AC100C 80049E6C 448B5000 */  mtc1  $t3, $f10
/* AC1010 80049E70 46809120 */  cvt.s.w $f4, $f18
/* AC1014 80049E74 46805220 */  cvt.s.w $f8, $f10
/* AC1018 80049E78 46022302 */  mul.s $f12, $f4, $f2
/* AC101C 80049E7C 00000000 */  nop   
/* AC1020 80049E80 46024182 */  mul.s $f6, $f8, $f2
/* AC1024 80049E84 44063000 */  mfc1  $a2, $f6
/* AC1028 80049E88 0C010E27 */  jal   func_8004389C
/* AC102C 80049E8C 00000000 */   nop   
/* AC1030 80049E90 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC1034 80049E94 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC1038 80049E98 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC103C 80049E9C 3C018014 */  lui   $at, %hi(D_80139F6C)
/* AC1040 80049EA0 C4249F6C */  lwc1  $f4, %lo(D_80139F6C)($at)
/* AC1044 80049EA4 858D019C */  lh    $t5, 0x19c($t4)
/* AC1048 80049EA8 3C063D4C */  lui   $a2, (0x3D4CCCCD >> 16) # lui $a2, 0x3d4c
/* AC104C 80049EAC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC1050 80049EB0 448D8000 */  mtc1  $t5, $f16
/* AC1054 80049EB4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1058 80049EB8 34C6CCCD */  ori   $a2, (0x3D4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC105C 80049EBC 468084A0 */  cvt.s.w $f18, $f16
/* AC1060 80049EC0 46000386 */  mov.s $f14, $f0
/* AC1064 80049EC4 46049302 */  mul.s $f12, $f18, $f4
/* AC1068 80049EC8 0C010E27 */  jal   func_8004389C
/* AC106C 80049ECC 00000000 */   nop   
/* AC1070 80049ED0 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC1074 80049ED4 8E060000 */  lw    $a2, ($s0)
/* AC1078 80049ED8 AFA00010 */  sw    $zero, 0x10($sp)
/* AC107C 80049EDC 02002025 */  move  $a0, $s0
/* AC1080 80049EE0 27A50088 */  addiu $a1, $sp, 0x88
/* AC1084 80049EE4 0C011635 */  jal   func_800458D4
/* AC1088 80049EE8 2627001C */   addiu $a3, $s1, 0x1c
/* AC108C 80049EEC 27AF0090 */  addiu $t7, $sp, 0x90
/* AC1090 80049EF0 8DE80000 */  lw    $t0, ($t7)
/* AC1094 80049EF4 27AE0080 */  addiu $t6, $sp, 0x80
/* AC1098 80049EF8 27A40078 */  addiu $a0, $sp, 0x78
/* AC109C 80049EFC ADC80000 */  sw    $t0, ($t6)
/* AC10A0 80049F00 8DF80004 */  lw    $t8, 4($t7)
/* AC10A4 80049F04 ADD80004 */  sw    $t8, 4($t6)
/* AC10A8 80049F08 8FA60040 */  lw    $a2, 0x40($sp)
/* AC10AC 80049F0C 0C01F124 */  jal   func_8007C490
/* AC10B0 80049F10 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC10B4 80049F14 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC10B8 80049F18 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC10BC 80049F1C 3C018014 */  lui   $at, %hi(D_80139F70)
/* AC10C0 80049F20 C4269F70 */  lwc1  $f6, %lo(D_80139F70)($at)
/* AC10C4 80049F24 872901CE */  lh    $t1, 0x1ce($t9)
/* AC10C8 80049F28 C7AC0078 */  lwc1  $f12, 0x78($sp)
/* AC10CC 80049F2C C7AE0090 */  lwc1  $f14, 0x90($sp)
/* AC10D0 80049F30 44895000 */  mtc1  $t1, $f10
/* AC10D4 80049F34 3C073F80 */  lui   $a3, 0x3f80
/* AC10D8 80049F38 46805220 */  cvt.s.w $f8, $f10
/* AC10DC 80049F3C 46064402 */  mul.s $f16, $f8, $f6
/* AC10E0 80049F40 44068000 */  mfc1  $a2, $f16
/* AC10E4 80049F44 0C010E27 */  jal   func_8004389C
/* AC10E8 80049F48 00000000 */   nop   
/* AC10EC 80049F4C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC10F0 80049F50 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC10F4 80049F54 E7A00080 */  swc1  $f0, 0x80($sp)
/* AC10F8 80049F58 3C018014 */  lui   $at, %hi(D_80139F74)
/* AC10FC 80049F5C 854B01CE */  lh    $t3, 0x1ce($t2)
/* AC1100 80049F60 C42A9F74 */  lwc1  $f10, %lo(D_80139F74)($at)
/* AC1104 80049F64 87A4007C */  lh    $a0, 0x7c($sp)
/* AC1108 80049F68 448B9000 */  mtc1  $t3, $f18
/* AC110C 80049F6C 87A50094 */  lh    $a1, 0x94($sp)
/* AC1110 80049F70 2407000A */  li    $a3, 10
/* AC1114 80049F74 46809120 */  cvt.s.w $f4, $f18
/* AC1118 80049F78 460A2202 */  mul.s $f8, $f4, $f10
/* AC111C 80049F7C 44064000 */  mfc1  $a2, $f8
/* AC1120 80049F80 0C010E47 */  jal   func_8004391C
/* AC1124 80049F84 00000000 */   nop   
/* AC1128 80049F88 A7A20084 */  sh    $v0, 0x84($sp)
/* AC112C 80049F8C 862C0018 */  lh    $t4, 0x18($s1)
/* AC1130 80049F90 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1134 80049F94 02002025 */  move  $a0, $s0
/* AC1138 80049F98 11800017 */  beqz  $t4, .L80049FF8
/* AC113C 80049F9C 87A5008E */   lh    $a1, 0x8e($sp)
/* AC1140 80049FA0 44813000 */  mtc1  $at, $f6
/* AC1144 80049FA4 C61000C8 */  lwc1  $f16, 0xc8($s0)
/* AC1148 80049FA8 86240016 */  lh    $a0, 0x16($s1)
/* AC114C 80049FAC 87A5008E */  lh    $a1, 0x8e($sp)
/* AC1150 80049FB0 46103483 */  div.s $f18, $f6, $f16
/* AC1154 80049FB4 2407000A */  li    $a3, 10
/* AC1158 80049FB8 44069000 */  mfc1  $a2, $f18
/* AC115C 80049FBC 0C010E47 */  jal   func_8004391C
/* AC1160 80049FC0 00000000 */   nop   
/* AC1164 80049FC4 A7A20086 */  sh    $v0, 0x86($sp)
/* AC1168 80049FC8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC116C 80049FCC 44812000 */  mtc1  $at, $f4
/* AC1170 80049FD0 C60A00C8 */  lwc1  $f10, 0xc8($s0)
/* AC1174 80049FD4 86240014 */  lh    $a0, 0x14($s1)
/* AC1178 80049FD8 87A5008C */  lh    $a1, 0x8c($sp)
/* AC117C 80049FDC 460A2203 */  div.s $f8, $f4, $f10
/* AC1180 80049FE0 2407000A */  li    $a3, 10
/* AC1184 80049FE4 44064000 */  mfc1  $a2, $f8
/* AC1188 80049FE8 0C010E47 */  jal   func_8004391C
/* AC118C 80049FEC 00000000 */   nop   
/* AC1190 80049FF0 10000007 */  b     .L8004A010
/* AC1194 80049FF4 A7A20084 */   sh    $v0, 0x84($sp)
.L80049FF8:
/* AC1198 80049FF8 44803000 */  mtc1  $zero, $f6
/* AC119C 80049FFC 860600A2 */  lh    $a2, 0xa2($s0)
/* AC11A0 8004A000 8E070010 */  lw    $a3, 0x10($s0)
/* AC11A4 8004A004 0C011B2D */  jal   func_80046CB4
/* AC11A8 8004A008 E7A60010 */   swc1  $f6, 0x10($sp)
/* AC11AC 8004A00C A7A20086 */  sh    $v0, 0x86($sp)
.L8004A010:
/* AC11B0 8004A010 C6000004 */  lwc1  $f0, 4($s0)
/* AC11B4 8004A014 C7B00080 */  lwc1  $f16, 0x80($sp)
/* AC11B8 8004A018 C7B20080 */  lwc1  $f18, 0x80($sp)
/* AC11BC 8004A01C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC11C0 8004A020 4600803C */  c.lt.s $f16, $f0
/* AC11C4 8004A024 27A40098 */  addiu $a0, $sp, 0x98
/* AC11C8 8004A028 27A60080 */  addiu $a2, $sp, 0x80
/* AC11CC 8004A02C 45020004 */  bc1fl .L8004A040
/* AC11D0 8004A030 C6000008 */   lwc1  $f0, 8($s0)
/* AC11D4 8004A034 10000007 */  b     .L8004A054
/* AC11D8 8004A038 E7A00080 */   swc1  $f0, 0x80($sp)
/* AC11DC 8004A03C C6000008 */  lwc1  $f0, 8($s0)
.L8004A040:
/* AC11E0 8004A040 4612003C */  c.lt.s $f0, $f18
/* AC11E4 8004A044 00000000 */  nop   
/* AC11E8 8004A048 45000002 */  bc1f  .L8004A054
/* AC11EC 8004A04C 00000000 */   nop   
/* AC11F0 8004A050 E7A00080 */  swc1  $f0, 0x80($sp)
.L8004A054:
/* AC11F4 8004A054 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC11F8 8004A058 87AD0084 */  lh    $t5, 0x84($sp)
/* AC11FC 8004A05C 87AE0084 */  lh    $t6, 0x84($sp)
/* AC1200 8004A060 8443019E */  lh    $v1, 0x19e($v0)
/* AC1204 8004A064 006D082A */  slt   $at, $v1, $t5
/* AC1208 8004A068 50200004 */  beql  $at, $zero, .L8004A07C
/* AC120C 8004A06C 844301DA */   lh    $v1, 0x1da($v0)
/* AC1210 8004A070 10000006 */  b     .L8004A08C
/* AC1214 8004A074 A7A30084 */   sh    $v1, 0x84($sp)
/* AC1218 8004A078 844301DA */  lh    $v1, 0x1da($v0)
.L8004A07C:
/* AC121C 8004A07C 01C3082A */  slt   $at, $t6, $v1
/* AC1220 8004A080 10200002 */  beqz  $at, .L8004A08C
/* AC1224 8004A084 00000000 */   nop   
/* AC1228 8004A088 A7A30084 */  sh    $v1, 0x84($sp)
.L8004A08C:
/* AC122C 8004A08C 0C010F0A */  jal   func_80043C28
/* AC1230 8004A090 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC1234 8004A094 8FA30038 */  lw    $v1, 0x38($sp)
/* AC1238 8004A098 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AC123C 8004A09C 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC1240 8004A0A0 3C018014 */  lui   $at, %hi(D_80139F78)
/* AC1244 8004A0A4 E4640000 */  swc1  $f4, ($v1)
/* AC1248 8004A0A8 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* AC124C 8004A0AC C4600004 */  lwc1  $f0, 4($v1)
/* AC1250 8004A0B0 E46A0008 */  swc1  $f10, 8($v1)
/* AC1254 8004A0B4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC1258 8004A0B8 C4309F78 */  lwc1  $f16, %lo(D_80139F78)($at)
/* AC125C 8004A0BC C7A4009C */  lwc1  $f4, 0x9c($sp)
/* AC1260 8004A0C0 85F801D2 */  lh    $t8, 0x1d2($t7)
/* AC1264 8004A0C4 24010007 */  li    $at, 7
/* AC1268 8004A0C8 46002281 */  sub.s $f10, $f4, $f0
/* AC126C 8004A0CC 44984000 */  mtc1  $t8, $f8
/* AC1270 8004A0D0 00000000 */  nop   
/* AC1274 8004A0D4 468041A0 */  cvt.s.w $f6, $f8
/* AC1278 8004A0D8 46103482 */  mul.s $f18, $f6, $f16
/* AC127C 8004A0DC 00000000 */  nop   
/* AC1280 8004A0E0 46125202 */  mul.s $f8, $f10, $f18
/* AC1284 8004A0E4 46080180 */  add.s $f6, $f0, $f8
/* AC1288 8004A0E8 E4660004 */  swc1  $f6, 4($v1)
/* AC128C 8004A0EC 86080140 */  lh    $t0, 0x140($s0)
/* AC1290 8004A0F0 15010037 */  bne   $t0, $at, .L8004A1D0
/* AC1294 8004A0F4 00000000 */   nop   
/* AC1298 8004A0F8 8619001C */  lh    $t9, 0x1c($s0)
/* AC129C 8004A0FC 02002025 */  move  $a0, $s0
/* AC12A0 8004A100 27A50080 */  addiu $a1, $sp, 0x80
/* AC12A4 8004A104 33290010 */  andi  $t1, $t9, 0x10
/* AC12A8 8004A108 15200031 */  bnez  $t1, .L8004A1D0
/* AC12AC 8004A10C 27AA00A4 */   addiu $t2, $sp, 0xa4
/* AC12B0 8004A110 8E060004 */  lw    $a2, 4($s0)
/* AC12B4 8004A114 8E07000C */  lw    $a3, 0xc($s0)
/* AC12B8 8004A118 AFB10014 */  sw    $s1, 0x14($sp)
/* AC12BC 8004A11C 0C011B88 */  jal   func_80046E20
/* AC12C0 8004A120 AFAA0010 */   sw    $t2, 0x10($sp)
/* AC12C4 8004A124 860B001C */  lh    $t3, 0x1c($s0)
/* AC12C8 8004A128 87AD0094 */  lh    $t5, 0x94($sp)
/* AC12CC 8004A12C 27A40080 */  addiu $a0, $sp, 0x80
/* AC12D0 8004A130 316C0004 */  andi  $t4, $t3, 4
/* AC12D4 8004A134 11800008 */  beqz  $t4, .L8004A158
/* AC12D8 8004A138 8FA50040 */   lw    $a1, 0x40($sp)
/* AC12DC 8004A13C 000D7023 */  negu  $t6, $t5
/* AC12E0 8004A140 A60E0134 */  sh    $t6, 0x134($s0)
/* AC12E4 8004A144 87AF0096 */  lh    $t7, 0x96($sp)
/* AC12E8 8004A148 A6000138 */  sh    $zero, 0x138($s0)
/* AC12EC 8004A14C 25F88001 */  addiu $t8, $t7, -0x7fff
/* AC12F0 8004A150 10000008 */  b     .L8004A174
/* AC12F4 8004A154 A6180136 */   sh    $t8, 0x136($s0)
.L8004A158:
/* AC12F8 8004A158 0C01F124 */  jal   func_8007C490
/* AC12FC 8004A15C 8FA6003C */   lw    $a2, 0x3c($sp)
/* AC1300 8004A160 87A80084 */  lh    $t0, 0x84($sp)
/* AC1304 8004A164 A6080134 */  sh    $t0, 0x134($s0)
/* AC1308 8004A168 87B90086 */  lh    $t9, 0x86($sp)
/* AC130C 8004A16C A6000138 */  sh    $zero, 0x138($s0)
/* AC1310 8004A170 A6190136 */  sh    $t9, 0x136($s0)
.L8004A174:
/* AC1314 8004A174 86290018 */  lh    $t1, 0x18($s1)
/* AC1318 8004A178 3C018014 */  lui   $at, %hi(D_80139F7C)
/* AC131C 8004A17C C7A400A4 */  lwc1  $f4, 0xa4($sp)
/* AC1320 8004A180 51200020 */  beql  $t1, $zero, .L8004A204
/* AC1324 8004A184 8FA4003C */   lw    $a0, 0x3c($sp)
/* AC1328 8004A188 C4309F7C */  lwc1  $f16, %lo(D_80139F7C)($at)
/* AC132C 8004A18C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1330 8004A190 44819000 */  mtc1  $at, $f18
/* AC1334 8004A194 46048282 */  mul.s $f10, $f16, $f4
/* AC1338 8004A198 862A0016 */  lh    $t2, 0x16($s1)
/* AC133C 8004A19C 86050136 */  lh    $a1, 0x136($s0)
/* AC1340 8004A1A0 2407000A */  li    $a3, 10
/* AC1344 8004A1A4 254D8001 */  addiu $t5, $t2, -0x7fff
/* AC1348 8004A1A8 01A5C023 */  subu  $t8, $t5, $a1
/* AC134C 8004A1AC 00B82021 */  addu  $a0, $a1, $t8
/* AC1350 8004A1B0 460A9201 */  sub.s $f8, $f18, $f10
/* AC1354 8004A1B4 00042400 */  sll   $a0, $a0, 0x10
/* AC1358 8004A1B8 00042403 */  sra   $a0, $a0, 0x10
/* AC135C 8004A1BC 44064000 */  mfc1  $a2, $f8
/* AC1360 8004A1C0 0C010E47 */  jal   func_8004391C
/* AC1364 8004A1C4 00000000 */   nop   
/* AC1368 8004A1C8 1000000D */  b     .L8004A200
/* AC136C 8004A1CC A6020136 */   sh    $v0, 0x136($s0)
.L8004A1D0:
/* AC1370 8004A1D0 C606000C */  lwc1  $f6, 0xc($s0)
/* AC1374 8004A1D4 A6200018 */  sh    $zero, 0x18($s1)
/* AC1378 8004A1D8 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC137C 8004A1DC E6260010 */  swc1  $f6, 0x10($s1)
/* AC1380 8004A1E0 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* AC1384 8004A1E4 8C690000 */  lw    $t1, ($v1)
/* AC1388 8004A1E8 8FA80040 */  lw    $t0, 0x40($sp)
/* AC138C 8004A1EC AD090000 */  sw    $t1, ($t0)
/* AC1390 8004A1F0 8C790004 */  lw    $t9, 4($v1)
/* AC1394 8004A1F4 AD190004 */  sw    $t9, 4($t0)
/* AC1398 8004A1F8 8C690008 */  lw    $t1, 8($v1)
/* AC139C 8004A1FC AD090008 */  sw    $t1, 8($t0)
.L8004A200:
/* AC13A0 8004A200 8FA4003C */  lw    $a0, 0x3c($sp)
.L8004A204:
/* AC13A4 8004A204 0C01EFE4 */  jal   func_8007BF90
/* AC13A8 8004A208 8FA50040 */   lw    $a1, 0x40($sp)
/* AC13AC 8004A20C E60000DC */  swc1  $f0, 0xdc($s0)
/* AC13B0 8004A210 00002025 */  move  $a0, $zero
/* AC13B4 8004A214 8605015A */  lh    $a1, 0x15a($s0)
/* AC13B8 8004A218 3C063F00 */  lui   $a2, 0x3f00
/* AC13BC 8004A21C 0C010E47 */  jal   func_8004391C
/* AC13C0 8004A220 2407000A */   li    $a3, 10
/* AC13C4 8004A224 A602015A */  sh    $v0, 0x15a($s0)
/* AC13C8 8004A228 02002025 */  move  $a0, $s0
/* AC13CC 8004A22C 0C011429 */  jal   func_800450A4
/* AC13D0 8004A230 8E050018 */   lw    $a1, 0x18($s0)
/* AC13D4 8004A234 E6000100 */  swc1  $f0, 0x100($s0)
/* AC13D8 8004A238 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC13DC 8004A23C 8FB10020 */  lw    $s1, 0x20($sp)
/* AC13E0 8004A240 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC13E4 8004A244 27BD00B8 */  addiu $sp, $sp, 0xb8
/* AC13E8 8004A248 03E00008 */  jr    $ra
/* AC13EC 8004A24C 24020001 */   li    $v0, 1
# SPLIT
/* AC13F0 8004A250 27BDFF20 */  addiu $sp, $sp, -0xe0
/* AC13F4 8004A254 AFB00018 */  sw    $s0, 0x18($sp)
/* AC13F8 8004A258 00808025 */  move  $s0, $a0
/* AC13FC 8004A25C AFBF001C */  sw    $ra, 0x1c($sp)
/* AC1400 8004A260 0C00B721 */  jal   func_8002DC84
/* AC1404 8004A264 8C840090 */   lw    $a0, 0x90($a0)
/* AC1408 8004A268 E7A00048 */  swc1  $f0, 0x48($sp)
/* AC140C 8004A26C 8603015E */  lh    $v1, 0x15e($s0)
/* AC1410 8004A270 10600009 */  beqz  $v1, .L8004A298
/* AC1414 8004A274 2401000A */   li    $at, 10
/* AC1418 8004A278 10610007 */  beq   $v1, $at, .L8004A298
/* AC141C 8004A27C 24010014 */   li    $at, 20
/* AC1420 8004A280 10610005 */  beq   $v1, $at, .L8004A298
/* AC1424 8004A284 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC1428 8004A288 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC142C 8004A28C 85C30314 */  lh    $v1, 0x314($t6)
/* AC1430 8004A290 10600066 */  beqz  $v1, .L8004A42C
/* AC1434 8004A294 00000000 */   nop   
.L8004A298:
/* AC1438 8004A298 860F0142 */  lh    $t7, 0x142($s0)
/* AC143C 8004A29C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC1440 8004A2A0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC1444 8004A2A4 3C018014 */  lui   $at, %hi(D_80139F80)
/* AC1448 8004A2A8 000FC0C0 */  sll   $t8, $t7, 3
/* AC144C 8004A2AC C42E9F80 */  lwc1  $f14, %lo(D_80139F80)($at)
/* AC1450 8004A2B0 85CF01F0 */  lh    $t7, 0x1f0($t6)
/* AC1454 8004A2B4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1458 8004A2B8 44814000 */  mtc1  $at, $f8
/* AC145C 8004A2BC 448F2000 */  mtc1  $t7, $f4
/* AC1460 8004A2C0 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC1464 8004A2C4 44819000 */  mtc1  $at, $f18
/* AC1468 8004A2C8 468021A0 */  cvt.s.w $f6, $f4
/* AC146C 8004A2CC 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC1470 8004A2D0 860B0144 */  lh    $t3, 0x144($s0)
/* AC1474 8004A2D4 0338C821 */  addu  $t9, $t9, $t8
/* AC1478 8004A2D8 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC147C 8004A2DC 46009103 */  div.s $f4, $f18, $f0
/* AC1480 8004A2E0 C61200F4 */  lwc1  $f18, 0xf4($s0)
/* AC1484 8004A2E4 000B60C0 */  sll   $t4, $t3, 3
/* AC1488 8004A2E8 032C6821 */  addu  $t5, $t9, $t4
/* AC148C 8004A2EC 460E3082 */  mul.s $f2, $f6, $f14
/* AC1490 8004A2F0 8DA20004 */  lw    $v0, 4($t5)
/* AC1494 8004A2F4 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC1498 8004A2F8 46024280 */  add.s $f10, $f8, $f2
/* AC149C 8004A2FC 44804000 */  mtc1  $zero, $f8
/* AC14A0 8004A300 46041182 */  mul.s $f6, $f2, $f4
/* AC14A4 8004A304 4612403C */  c.lt.s $f8, $f18
/* AC14A8 8004A308 00000000 */  nop   
/* AC14AC 8004A30C 45000005 */  bc1f  .L8004A324
/* AC14B0 8004A310 46065301 */   sub.s $f12, $f10, $f6
/* AC14B4 8004A314 3C01C120 */  li    $at, 0xC1200000 # 0.000000
/* AC14B8 8004A318 44811000 */  mtc1  $at, $f2
/* AC14BC 8004A31C 10000004 */  b     .L8004A330
/* AC14C0 8004A320 84580000 */   lh    $t8, ($v0)
.L8004A324:
/* AC14C4 8004A324 44811000 */  mtc1  $at, $f2
/* AC14C8 8004A328 00000000 */  nop   
/* AC14CC 8004A32C 84580000 */  lh    $t8, ($v0)
.L8004A330:
/* AC14D0 8004A330 24420020 */  addiu $v0, $v0, 0x20
/* AC14D4 8004A334 44982000 */  mtc1  $t8, $f4
/* AC14D8 8004A338 00000000 */  nop   
/* AC14DC 8004A33C 468022A0 */  cvt.s.w $f10, $f4
/* AC14E0 8004A340 46025180 */  add.s $f6, $f10, $f2
/* AC14E4 8004A344 460E3202 */  mul.s $f8, $f6, $f14
/* AC14E8 8004A348 00000000 */  nop   
/* AC14EC 8004A34C 46004482 */  mul.s $f18, $f8, $f0
/* AC14F0 8004A350 00000000 */  nop   
/* AC14F4 8004A354 460C9102 */  mul.s $f4, $f18, $f12
/* AC14F8 8004A358 E6040000 */  swc1  $f4, ($s0)
/* AC14FC 8004A35C 844BFFE4 */  lh    $t3, -0x1c($v0)
/* AC1500 8004A360 448B5000 */  mtc1  $t3, $f10
/* AC1504 8004A364 00000000 */  nop   
/* AC1508 8004A368 468051A0 */  cvt.s.w $f6, $f10
/* AC150C 8004A36C 460E3202 */  mul.s $f8, $f6, $f14
/* AC1510 8004A370 00000000 */  nop   
/* AC1514 8004A374 46004482 */  mul.s $f18, $f8, $f0
/* AC1518 8004A378 00000000 */  nop   
/* AC151C 8004A37C 460C9102 */  mul.s $f4, $f18, $f12
/* AC1520 8004A380 E6040004 */  swc1  $f4, 4($s0)
/* AC1524 8004A384 8459FFE8 */  lh    $t9, -0x18($v0)
/* AC1528 8004A388 44995000 */  mtc1  $t9, $f10
/* AC152C 8004A38C 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC1530 8004A390 468051A0 */  cvt.s.w $f6, $f10
/* AC1534 8004A394 460E3202 */  mul.s $f8, $f6, $f14
/* AC1538 8004A398 00000000 */  nop   
/* AC153C 8004A39C 46004482 */  mul.s $f18, $f8, $f0
/* AC1540 8004A3A0 00000000 */  nop   
/* AC1544 8004A3A4 460C9102 */  mul.s $f4, $f18, $f12
/* AC1548 8004A3A8 E6040008 */  swc1  $f4, 8($s0)
/* AC154C 8004A3AC 844CFFEC */  lh    $t4, -0x14($v0)
/* AC1550 8004A3B0 448C5000 */  mtc1  $t4, $f10
/* AC1554 8004A3B4 00000000 */  nop   
/* AC1558 8004A3B8 468051A0 */  cvt.s.w $f6, $f10
/* AC155C 8004A3BC 460E3202 */  mul.s $f8, $f6, $f14
/* AC1560 8004A3C0 E608000C */  swc1  $f8, 0xc($s0)
/* AC1564 8004A3C4 844DFFF0 */  lh    $t5, -0x10($v0)
/* AC1568 8004A3C8 448D9000 */  mtc1  $t5, $f18
/* AC156C 8004A3CC 00000000 */  nop   
/* AC1570 8004A3D0 46809120 */  cvt.s.w $f4, $f18
/* AC1574 8004A3D4 E6040010 */  swc1  $f4, 0x10($s0)
/* AC1578 8004A3D8 844EFFF4 */  lh    $t6, -0xc($v0)
/* AC157C 8004A3DC 448E5000 */  mtc1  $t6, $f10
/* AC1580 8004A3E0 00000000 */  nop   
/* AC1584 8004A3E4 468051A0 */  cvt.s.w $f6, $f10
/* AC1588 8004A3E8 460E3202 */  mul.s $f8, $f6, $f14
/* AC158C 8004A3EC E6080014 */  swc1  $f8, 0x14($s0)
/* AC1590 8004A3F0 844FFFF8 */  lh    $t7, -8($v0)
/* AC1594 8004A3F4 448F9000 */  mtc1  $t7, $f18
/* AC1598 8004A3F8 00000000 */  nop   
/* AC159C 8004A3FC 46809120 */  cvt.s.w $f4, $f18
/* AC15A0 8004A400 E6040018 */  swc1  $f4, 0x18($s0)
/* AC15A4 8004A404 8458FFFC */  lh    $t8, -4($v0)
/* AC15A8 8004A408 44985000 */  mtc1  $t8, $f10
/* AC15AC 8004A40C 00000000 */  nop   
/* AC15B0 8004A410 468051A0 */  cvt.s.w $f6, $f10
/* AC15B4 8004A414 460E3202 */  mul.s $f8, $f6, $f14
/* AC15B8 8004A418 E608001C */  swc1  $f8, 0x1c($s0)
/* AC15BC 8004A41C 844B0000 */  lh    $t3, ($v0)
/* AC15C0 8004A420 A60B0020 */  sh    $t3, 0x20($s0)
/* AC15C4 8004A424 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC15C8 8004A428 87230314 */  lh    $v1, 0x314($t9)
.L8004A42C:
/* AC15CC 8004A42C 50600004 */  beql  $v1, $zero, .L8004A440
/* AC15D0 8004A430 26050050 */   addiu $a1, $s0, 0x50
/* AC15D4 8004A434 0C011495 */  jal   func_80045254
/* AC15D8 8004A438 02002025 */   move  $a0, $s0
/* AC15DC 8004A43C 26050050 */  addiu $a1, $s0, 0x50
.L8004A440:
/* AC15E0 8004A440 2606005C */  addiu $a2, $s0, 0x5c
/* AC15E4 8004A444 AFA60038 */  sw    $a2, 0x38($sp)
/* AC15E8 8004A448 AFA50034 */  sw    $a1, 0x34($sp)
/* AC15EC 8004A44C 0C01F124 */  jal   func_8007C490
/* AC15F0 8004A450 27A4009C */   addiu $a0, $sp, 0x9c
/* AC15F4 8004A454 26060074 */  addiu $a2, $s0, 0x74
/* AC15F8 8004A458 AFA60030 */  sw    $a2, 0x30($sp)
/* AC15FC 8004A45C 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC1600 8004A460 0C01F124 */  jal   func_8007C490
/* AC1604 8004A464 8FA50034 */   lw    $a1, 0x34($sp)
/* AC1608 8004A468 860C0020 */  lh    $t4, 0x20($s0)
/* AC160C 8004A46C 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC1610 8004A470 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AC1614 8004A474 8603015E */  lh    $v1, 0x15e($s0)
/* AC1618 8004A478 10600004 */  beqz  $v1, .L8004A48C
/* AC161C 8004A47C 2401000A */   li    $at, 10
/* AC1620 8004A480 10610002 */  beq   $v1, $at, .L8004A48C
/* AC1624 8004A484 24010014 */   li    $at, 20
/* AC1628 8004A488 1461006C */  bne   $v1, $at, .L8004A63C
.L8004A48C:
/* AC162C 8004A48C 26080094 */   addiu $t0, $s0, 0x94
/* AC1630 8004A490 8D0E0000 */  lw    $t6, ($t0)
/* AC1634 8004A494 27A500C8 */  addiu $a1, $sp, 0xc8
/* AC1638 8004A498 02002025 */  move  $a0, $s0
/* AC163C 8004A49C ACAE0000 */  sw    $t6, ($a1)
/* AC1640 8004A4A0 8D0D0004 */  lw    $t5, 4($t0)
/* AC1644 8004A4A4 ACAD0004 */  sw    $t5, 4($a1)
/* AC1648 8004A4A8 8D0E0008 */  lw    $t6, 8($t0)
/* AC164C 8004A4AC ACAE0008 */  sw    $t6, 8($a1)
/* AC1650 8004A4B0 0C011144 */  jal   func_80044510
/* AC1654 8004A4B4 AFA8002C */   sw    $t0, 0x2c($sp)
/* AC1658 8004A4B8 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AC165C 8004A4BC 44819000 */  mtc1  $at, $f18
/* AC1660 8004A4C0 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1664 8004A4C4 26090024 */  addiu $t1, $s0, 0x24
/* AC1668 8004A4C8 46120032 */  c.eq.s $f0, $f18
/* AC166C 8004A4CC E5200000 */  swc1  $f0, ($t1)
/* AC1670 8004A4D0 87AF00AA */  lh    $t7, 0xaa($sp)
/* AC1674 8004A4D4 A5200006 */  sh    $zero, 6($t1)
/* AC1678 8004A4D8 45000010 */  bc1f  .L8004A51C
/* AC167C 8004A4DC A52F0004 */   sh    $t7, 4($t1)
/* AC1680 8004A4E0 3C048014 */  lui   $a0, %hi(D_80139140) # $a0, 0x8014
/* AC1684 8004A4E4 24849140 */  addiu $a0, %lo(D_80139140) # addiu $a0, $a0, -0x6ec0
/* AC1688 8004A4E8 AFA8002C */  sw    $t0, 0x2c($sp)
/* AC168C 8004A4EC 0C00084C */  jal   osSyncPrintf
/* AC1690 8004A4F0 AFA90028 */   sw    $t1, 0x28($sp)
/* AC1694 8004A4F4 8FA90028 */  lw    $t1, 0x28($sp)
/* AC1698 8004A4F8 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC169C 8004A4FC 2418FFFF */  li    $t8, -1
/* AC16A0 8004A500 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AC16A4 8004A504 A538000A */  sh    $t8, 0xa($t1)
/* AC16A8 8004A508 44815000 */  mtc1  $at, $f10
/* AC16AC 8004A50C C5040004 */  lwc1  $f4, 4($t0)
/* AC16B0 8004A510 460A2181 */  sub.s $f6, $f4, $f10
/* AC16B4 8004A514 1000000E */  b     .L8004A550
/* AC16B8 8004A518 E5260000 */   swc1  $f6, ($t1)
.L8004A51C:
/* AC16BC 8004A51C C5080004 */  lwc1  $f8, 4($t0)
/* AC16C0 8004A520 C5320000 */  lwc1  $f18, ($t1)
/* AC16C4 8004A524 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* AC16C8 8004A528 240B0001 */  li    $t3, 1
/* AC16CC 8004A52C 46124101 */  sub.s $f4, $f8, $f18
/* AC16D0 8004A530 2419FFFF */  li    $t9, -1
/* AC16D4 8004A534 460A203C */  c.lt.s $f4, $f10
/* AC16D8 8004A538 00000000 */  nop   
/* AC16DC 8004A53C 45020004 */  bc1fl .L8004A550
/* AC16E0 8004A540 A539000A */   sh    $t9, 0xa($t1)
/* AC16E4 8004A544 10000002 */  b     .L8004A550
/* AC16E8 8004A548 A52B000A */   sh    $t3, 0xa($t1)
/* AC16EC 8004A54C A539000A */  sh    $t9, 0xa($t1)
.L8004A550:
/* AC16F0 8004A550 850C000E */  lh    $t4, 0xe($t0)
/* AC16F4 8004A554 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC16F8 8004A558 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AC16FC 8004A55C 87B800AA */  lh    $t8, 0xaa($sp)
/* AC1700 8004A560 8C6B0000 */  lw    $t3, ($v1)
/* AC1704 8004A564 258D8001 */  addiu $t5, $t4, -0x7fff
/* AC1708 8004A568 000D7400 */  sll   $t6, $t5, 0x10
/* AC170C 8004A56C 000E7C03 */  sra   $t7, $t6, 0x10
/* AC1710 8004A570 857901C2 */  lh    $t9, 0x1c2($t3)
/* AC1714 8004A574 01F81023 */  subu  $v0, $t7, $t8
/* AC1718 8004A578 00021400 */  sll   $v0, $v0, 0x10
/* AC171C 8004A57C 00021403 */  sra   $v0, $v0, 0x10
/* AC1720 8004A580 0059001A */  div   $zero, $v0, $t9
/* AC1724 8004A584 17200002 */  bnez  $t9, .L8004A590
/* AC1728 8004A588 00000000 */   nop   
/* AC172C 8004A58C 0007000D */  break 7
.L8004A590:
/* AC1730 8004A590 2401FFFF */  li    $at, -1
/* AC1734 8004A594 17210004 */  bne   $t9, $at, .L8004A5A8
/* AC1738 8004A598 3C018000 */   lui   $at, 0x8000
/* AC173C 8004A59C 14410002 */  bne   $v0, $at, .L8004A5A8
/* AC1740 8004A5A0 00000000 */   nop   
/* AC1744 8004A5A4 0006000D */  break 6
.L8004A5A8:
/* AC1748 8004A5A8 00006012 */  mflo  $t4
/* AC174C 8004A5AC 240B000A */  li    $t3, 10
/* AC1750 8004A5B0 05810003 */  bgez  $t4, .L8004A5C0
/* AC1754 8004A5B4 000C6883 */   sra   $t5, $t4, 2
/* AC1758 8004A5B8 25810003 */  addiu $at, $t4, 3
/* AC175C 8004A5BC 00016883 */  sra   $t5, $at, 2
.L8004A5C0:
/* AC1760 8004A5C0 000D7080 */  sll   $t6, $t5, 2
/* AC1764 8004A5C4 01CD7023 */  subu  $t6, $t6, $t5
/* AC1768 8004A5C8 A52E0006 */  sh    $t6, 6($t1)
/* AC176C 8004A5CC 860F0020 */  lh    $t7, 0x20($s0)
/* AC1770 8004A5D0 24192710 */  li    $t9, 10000
/* AC1774 8004A5D4 31F80002 */  andi  $t8, $t7, 2
/* AC1778 8004A5D8 53000004 */  beql  $t8, $zero, .L8004A5EC
/* AC177C 8004A5DC A5390008 */   sh    $t9, 8($t1)
/* AC1780 8004A5E0 10000002 */  b     .L8004A5EC
/* AC1784 8004A5E4 A52B0008 */   sh    $t3, 8($t1)
/* AC1788 8004A5E8 A5390008 */  sh    $t9, 8($t1)
.L8004A5EC:
/* AC178C 8004A5EC C5060000 */  lwc1  $f6, ($t0)
/* AC1790 8004A5F0 C60800F0 */  lwc1  $f8, 0xf0($s0)
/* AC1794 8004A5F4 C5040004 */  lwc1  $f4, 4($t0)
/* AC1798 8004A5F8 46083481 */  sub.s $f18, $f6, $f8
/* AC179C 8004A5FC C5080008 */  lwc1  $f8, 8($t0)
/* AC17A0 8004A600 E5120000 */  swc1  $f18, ($t0)
/* AC17A4 8004A604 C60A00F4 */  lwc1  $f10, 0xf4($s0)
/* AC17A8 8004A608 460A2181 */  sub.s $f6, $f4, $f10
/* AC17AC 8004A60C E5060004 */  swc1  $f6, 4($t0)
/* AC17B0 8004A610 C61200F8 */  lwc1  $f18, 0xf8($s0)
/* AC17B4 8004A614 46124101 */  sub.s $f4, $f8, $f18
/* AC17B8 8004A618 E5040008 */  swc1  $f4, 8($t0)
/* AC17BC 8004A61C 8C6C0000 */  lw    $t4, ($v1)
/* AC17C0 8004A620 858D01C2 */  lh    $t5, 0x1c2($t4)
/* AC17C4 8004A624 A52D000C */  sh    $t5, 0xc($t1)
/* AC17C8 8004A628 860E015E */  lh    $t6, 0x15e($s0)
/* AC17CC 8004A62C C60A001C */  lwc1  $f10, 0x1c($s0)
/* AC17D0 8004A630 25CF0001 */  addiu $t7, $t6, 1
/* AC17D4 8004A634 A60F015E */  sh    $t7, 0x15e($s0)
/* AC17D8 8004A638 E60A0100 */  swc1  $f10, 0x100($s0)
.L8004A63C:
/* AC17DC 8004A63C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC17E0 8004A640 2463FA90 */  addiu $v1, %lo(gGameInfo) # addiu $v1, $v1, -0x570
/* AC17E4 8004A644 8C620000 */  lw    $v0, ($v1)
/* AC17E8 8004A648 3C018014 */  lui   $at, %hi(D_80139F8C)
/* AC17EC 8004A64C C4309F8C */  lwc1  $f16, %lo(D_80139F8C)($at)
/* AC17F0 8004A650 845801C6 */  lh    $t8, 0x1c6($v0)
/* AC17F4 8004A654 844B01C8 */  lh    $t3, 0x1c8($v0)
/* AC17F8 8004A658 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* AC17FC 8004A65C 44983000 */  mtc1  $t8, $f6
/* AC1800 8004A660 448B2000 */  mtc1  $t3, $f4
/* AC1804 8004A664 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC1808 8004A668 46803220 */  cvt.s.w $f8, $f6
/* AC180C 8004A66C 26080094 */  addiu $t0, $s0, 0x94
/* AC1810 8004A670 26090024 */  addiu $t1, $s0, 0x24
/* AC1814 8004A674 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1818 8004A678 468022A0 */  cvt.s.w $f10, $f4
/* AC181C 8004A67C 46104482 */  mul.s $f18, $f8, $f16
/* AC1820 8004A680 00000000 */  nop   
/* AC1824 8004A684 46009082 */  mul.s $f2, $f18, $f0
/* AC1828 8004A688 00000000 */  nop   
/* AC182C 8004A68C 46105182 */  mul.s $f6, $f10, $f16
/* AC1830 8004A690 44061000 */  mfc1  $a2, $f2
/* AC1834 8004A694 46003202 */  mul.s $f8, $f6, $f0
/* AC1838 8004A698 E7A8008C */  swc1  $f8, 0x8c($sp)
/* AC183C 8004A69C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC1840 8004A6A0 C60C0010 */  lwc1  $f12, 0x10($s0)
/* AC1844 8004A6A4 E7A20090 */  swc1  $f2, 0x90($sp)
/* AC1848 8004A6A8 AFA90028 */  sw    $t1, 0x28($sp)
/* AC184C 8004A6AC 0C010E27 */  jal   func_8004389C
/* AC1850 8004A6B0 AFA8002C */   sw    $t0, 0x2c($sp)
/* AC1854 8004A6B4 C7A20090 */  lwc1  $f2, 0x90($sp)
/* AC1858 8004A6B8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC185C 8004A6BC E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC1860 8004A6C0 44061000 */  mfc1  $a2, $f2
/* AC1864 8004A6C4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1868 8004A6C8 C60C0014 */  lwc1  $f12, 0x14($s0)
/* AC186C 8004A6CC 0C010E27 */  jal   func_8004389C
/* AC1870 8004A6D0 C60E00CC */   lwc1  $f14, 0xcc($s0)
/* AC1874 8004A6D4 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC1878 8004A6D8 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC187C 8004A6DC 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC1880 8004A6E0 3C018014 */  lui   $at, %hi(D_80139F90)
/* AC1884 8004A6E4 C42A9F90 */  lwc1  $f10, %lo(D_80139F90)($at)
/* AC1888 8004A6E8 872C019A */  lh    $t4, 0x19a($t9)
/* AC188C 8004A6EC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC1890 8004A6F0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1894 8004A6F4 448C9000 */  mtc1  $t4, $f18
/* AC1898 8004A6F8 8FA6008C */  lw    $a2, 0x8c($sp)
/* AC189C 8004A6FC C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC18A0 8004A700 46809120 */  cvt.s.w $f4, $f18
/* AC18A4 8004A704 460A2302 */  mul.s $f12, $f4, $f10
/* AC18A8 8004A708 0C010E27 */  jal   func_8004389C
/* AC18AC 8004A70C 00000000 */   nop   
/* AC18B0 8004A710 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC18B4 8004A714 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC18B8 8004A718 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC18BC 8004A71C 3C018014 */  lui   $at, %hi(D_80139F94)
/* AC18C0 8004A720 C4329F94 */  lwc1  $f18, %lo(D_80139F94)($at)
/* AC18C4 8004A724 85AE019C */  lh    $t6, 0x19c($t5)
/* AC18C8 8004A728 3C018014 */  lui   $at, %hi(D_80139F98)
/* AC18CC 8004A72C C42A9F98 */  lwc1  $f10, %lo(D_80139F98)($at)
/* AC18D0 8004A730 448E3000 */  mtc1  $t6, $f6
/* AC18D4 8004A734 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC18D8 8004A738 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC18DC 8004A73C 46803220 */  cvt.s.w $f8, $f6
/* AC18E0 8004A740 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC18E4 8004A744 46000386 */  mov.s $f14, $f0
/* AC18E8 8004A748 46124302 */  mul.s $f12, $f8, $f18
/* AC18EC 8004A74C 00000000 */  nop   
/* AC18F0 8004A750 460A2182 */  mul.s $f6, $f4, $f10
/* AC18F4 8004A754 44063000 */  mfc1  $a2, $f6
/* AC18F8 8004A758 0C010E27 */  jal   func_8004389C
/* AC18FC 8004A75C 00000000 */   nop   
/* AC1900 8004A760 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC1904 8004A764 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC1908 8004A768 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC190C 8004A76C 02002025 */  move  $a0, $s0
/* AC1910 8004A770 27A500A4 */  addiu $a1, $sp, 0xa4
/* AC1914 8004A774 85F801CA */  lh    $t8, 0x1ca($t7)
/* AC1918 8004A778 8E060000 */  lw    $a2, ($s0)
/* AC191C 8004A77C 00003825 */  move  $a3, $zero
/* AC1920 8004A780 44984000 */  mtc1  $t8, $f8
/* AC1924 8004A784 00000000 */  nop   
/* AC1928 8004A788 468044A0 */  cvt.s.w $f18, $f8
/* AC192C 8004A78C 0C0115EA */  jal   func_800457A8
/* AC1930 8004A790 E61200C0 */   swc1  $f18, 0xc0($s0)
/* AC1934 8004A794 27A400B4 */  addiu $a0, $sp, 0xb4
/* AC1938 8004A798 8FA50034 */  lw    $a1, 0x34($sp)
/* AC193C 8004A79C 0C01F124 */  jal   func_8007C490
/* AC1940 8004A7A0 8FA60038 */   lw    $a2, 0x38($sp)
/* AC1944 8004A7A4 C60C0008 */  lwc1  $f12, 8($s0)
/* AC1948 8004A7A8 C60E000C */  lwc1  $f14, 0xc($s0)
/* AC194C 8004A7AC C6000004 */  lwc1  $f0, 4($s0)
/* AC1950 8004A7B0 C7A600B4 */  lwc1  $f6, 0xb4($sp)
/* AC1954 8004A7B4 460E6102 */  mul.s $f4, $f12, $f14
/* AC1958 8004A7B8 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC195C 8004A7BC 8FA90028 */  lw    $t1, 0x28($sp)
/* AC1960 8004A7C0 460E0282 */  mul.s $f10, $f0, $f14
/* AC1964 8004A7C4 46046080 */  add.s $f2, $f12, $f4
/* AC1968 8004A7C8 460A0401 */  sub.s $f16, $f0, $f10
/* AC196C 8004A7CC 4606103C */  c.lt.s $f2, $f6
/* AC1970 8004A7D0 00000000 */  nop   
/* AC1974 8004A7D4 45020004 */  bc1fl .L8004A7E8
/* AC1978 8004A7D8 C7A800B4 */   lwc1  $f8, 0xb4($sp)
/* AC197C 8004A7DC 10000007 */  b     .L8004A7FC
/* AC1980 8004A7E0 E7A200B4 */   swc1  $f2, 0xb4($sp)
/* AC1984 8004A7E4 C7A800B4 */  lwc1  $f8, 0xb4($sp)
.L8004A7E8:
/* AC1988 8004A7E8 4610403C */  c.lt.s $f8, $f16
/* AC198C 8004A7EC 00000000 */  nop   
/* AC1990 8004A7F0 45020003 */  bc1fl .L8004A800
/* AC1994 8004A7F4 850A000E */   lh    $t2, 0xe($t0)
/* AC1998 8004A7F8 E7B000B4 */  swc1  $f16, 0xb4($sp)
.L8004A7FC:
/* AC199C 8004A7FC 850A000E */  lh    $t2, 0xe($t0)
.L8004A800:
/* AC19A0 8004A800 87AC00BA */  lh    $t4, 0xba($sp)
/* AC19A4 8004A804 8523000C */  lh    $v1, 0xc($t1)
/* AC19A8 8004A808 254A8001 */  addiu $t2, $t2, -0x7fff
/* AC19AC 8004A80C 014C1023 */  subu  $v0, $t2, $t4
/* AC19B0 8004A810 00021400 */  sll   $v0, $v0, 0x10
/* AC19B4 8004A814 1060000F */  beqz  $v1, .L8004A854
/* AC19B8 8004A818 00021403 */   sra   $v0, $v0, 0x10
/* AC19BC 8004A81C A52A0004 */  sh    $t2, 4($t1)
/* AC19C0 8004A820 246DFFFF */  addiu $t5, $v1, -1
/* AC19C4 8004A824 A52D000C */  sh    $t5, 0xc($t1)
/* AC19C8 8004A828 85240004 */  lh    $a0, 4($t1)
/* AC19CC 8004A82C AFA90028 */  sw    $t1, 0x28($sp)
/* AC19D0 8004A830 AFA8002C */  sw    $t0, 0x2c($sp)
/* AC19D4 8004A834 87A500AA */  lh    $a1, 0xaa($sp)
/* AC19D8 8004A838 3C063F00 */  lui   $a2, 0x3f00
/* AC19DC 8004A83C 0C010E47 */  jal   func_8004391C
/* AC19E0 8004A840 2407000A */   li    $a3, 10
/* AC19E4 8004A844 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC19E8 8004A848 8FA90028 */  lw    $t1, 0x28($sp)
/* AC19EC 8004A84C 10000029 */  b     .L8004A8F4
/* AC19F0 8004A850 A7A200BA */   sh    $v0, 0xba($sp)
.L8004A854:
/* AC19F4 8004A854 04400003 */  bltz  $v0, .L8004A864
/* AC19F8 8004A858 00021823 */   negu  $v1, $v0
/* AC19FC 8004A85C 10000001 */  b     .L8004A864
/* AC1A00 8004A860 00401825 */   move  $v1, $v0
.L8004A864:
/* AC1A04 8004A864 85240008 */  lh    $a0, 8($t1)
/* AC1A08 8004A868 87A500AA */  lh    $a1, 0xaa($sp)
/* AC1A0C 8004A86C 3C063E80 */  lui   $a2, 0x3e80
/* AC1A10 8004A870 0083082A */  slt   $at, $a0, $v1
/* AC1A14 8004A874 10200018 */  beqz  $at, .L8004A8D8
/* AC1A18 8004A878 2407000A */   li    $a3, 10
/* AC1A1C 8004A87C 000A2C00 */  sll   $a1, $t2, 0x10
/* AC1A20 8004A880 04410005 */  bgez  $v0, .L8004A898
/* AC1A24 8004A884 00052C03 */   sra   $a1, $a1, 0x10
/* AC1A28 8004A888 00A41821 */  addu  $v1, $a1, $a0
/* AC1A2C 8004A88C 00031C00 */  sll   $v1, $v1, 0x10
/* AC1A30 8004A890 10000004 */  b     .L8004A8A4
/* AC1A34 8004A894 00031C03 */   sra   $v1, $v1, 0x10
.L8004A898:
/* AC1A38 8004A898 00A41823 */  subu  $v1, $a1, $a0
/* AC1A3C 8004A89C 00031C00 */  sll   $v1, $v1, 0x10
/* AC1A40 8004A8A0 00031C03 */  sra   $v1, $v1, 0x10
.L8004A8A4:
/* AC1A44 8004A8A4 00032400 */  sll   $a0, $v1, 0x10
/* AC1A48 8004A8A8 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* AC1A4C 8004A8AC 34C6CCCD */  ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC1A50 8004A8B0 00042403 */  sra   $a0, $a0, 0x10
/* AC1A54 8004A8B4 87A500AA */  lh    $a1, 0xaa($sp)
/* AC1A58 8004A8B8 2407000A */  li    $a3, 10
/* AC1A5C 8004A8BC AFA8002C */  sw    $t0, 0x2c($sp)
/* AC1A60 8004A8C0 0C010E6B */  jal   func_800439AC
/* AC1A64 8004A8C4 AFA90028 */   sw    $t1, 0x28($sp)
/* AC1A68 8004A8C8 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1A6C 8004A8CC 8FA90028 */  lw    $t1, 0x28($sp)
/* AC1A70 8004A8D0 10000008 */  b     .L8004A8F4
/* AC1A74 8004A8D4 A7A200BA */   sh    $v0, 0xba($sp)
.L8004A8D8:
/* AC1A78 8004A8D8 87A400BA */  lh    $a0, 0xba($sp)
/* AC1A7C 8004A8DC AFA8002C */  sw    $t0, 0x2c($sp)
/* AC1A80 8004A8E0 0C010E47 */  jal   func_8004391C
/* AC1A84 8004A8E4 AFA90028 */   sw    $t1, 0x28($sp)
/* AC1A88 8004A8E8 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1A8C 8004A8EC 8FA90028 */  lw    $t1, 0x28($sp)
/* AC1A90 8004A8F0 A7A200BA */  sh    $v0, 0xba($sp)
.L8004A8F4:
/* AC1A94 8004A8F4 8504000E */  lh    $a0, 0xe($t0)
/* AC1A98 8004A8F8 AFA90028 */  sw    $t1, 0x28($sp)
/* AC1A9C 8004A8FC 0C01DE1C */  jal   Math_Sins
/* AC1AA0 8004A900 AFA8002C */   sw    $t0, 0x2c($sp)
/* AC1AA4 8004A904 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AC1AA8 8004A908 44819000 */  mtc1  $at, $f18
/* AC1AAC 8004A90C 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1AB0 8004A910 3C018014 */  lui   $at, %hi(D_80139F9C)
/* AC1AB4 8004A914 46120102 */  mul.s $f4, $f0, $f18
/* AC1AB8 8004A918 C50A0000 */  lwc1  $f10, ($t0)
/* AC1ABC 8004A91C C4329F9C */  lwc1  $f18, %lo(D_80139F9C)($at)
/* AC1AC0 8004A920 C7A80048 */  lwc1  $f8, 0x48($sp)
/* AC1AC4 8004A924 460A2180 */  add.s $f6, $f4, $f10
/* AC1AC8 8004A928 46124102 */  mul.s $f4, $f8, $f18
/* AC1ACC 8004A92C E7A600C8 */  swc1  $f6, 0xc8($sp)
/* AC1AD0 8004A930 C50A0004 */  lwc1  $f10, 4($t0)
/* AC1AD4 8004A934 46045180 */  add.s $f6, $f10, $f4
/* AC1AD8 8004A938 E7A600CC */  swc1  $f6, 0xcc($sp)
/* AC1ADC 8004A93C 0C01DE0D */  jal   Math_Coss
/* AC1AE0 8004A940 8504000E */   lh    $a0, 0xe($t0)
/* AC1AE4 8004A944 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AC1AE8 8004A948 44814000 */  mtc1  $at, $f8
/* AC1AEC 8004A94C 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1AF0 8004A950 02002025 */  move  $a0, $s0
/* AC1AF4 8004A954 46080482 */  mul.s $f18, $f0, $f8
/* AC1AF8 8004A958 C50A0008 */  lwc1  $f10, 8($t0)
/* AC1AFC 8004A95C 27A500BC */  addiu $a1, $sp, 0xbc
/* AC1B00 8004A960 27A600C8 */  addiu $a2, $sp, 0xc8
/* AC1B04 8004A964 27A70088 */  addiu $a3, $sp, 0x88
/* AC1B08 8004A968 460A9100 */  add.s $f4, $f18, $f10
/* AC1B0C 8004A96C 0C01110D */  jal   func_80044434
/* AC1B10 8004A970 E7A400D0 */   swc1  $f4, 0xd0($sp)
/* AC1B14 8004A974 3C01C6FA */  li    $at, 0xC6FA0000 # 0.000000
/* AC1B18 8004A978 44813000 */  mtc1  $at, $f6
/* AC1B1C 8004A97C 8FA8002C */  lw    $t0, 0x2c($sp)
/* AC1B20 8004A980 8FA90028 */  lw    $t1, 0x28($sp)
/* AC1B24 8004A984 46060032 */  c.eq.s $f0, $f6
/* AC1B28 8004A988 00000000 */  nop   
/* AC1B2C 8004A98C 45030036 */  bc1tl .L8004AA68
/* AC1B30 8004A990 C50A0004 */   lwc1  $f10, 4($t0)
/* AC1B34 8004A994 C5080004 */  lwc1  $f8, 4($t0)
/* AC1B38 8004A998 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC1B3C 8004A99C 4600403C */  c.lt.s $f8, $f0
/* AC1B40 8004A9A0 00000000 */  nop   
/* AC1B44 8004A9A4 45020030 */  bc1fl .L8004AA68
/* AC1B48 8004A9A8 C50A0004 */   lwc1  $f10, 4($t0)
/* AC1B4C 8004A9AC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC1B50 8004A9B0 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AC1B54 8004A9B4 44816000 */  mtc1  $at, $f12
/* AC1B58 8004A9B8 85CF01C8 */  lh    $t7, 0x1c8($t6)
/* AC1B5C 8004A9BC 3C018014 */  lui   $at, %hi(D_80139FA0)
/* AC1B60 8004A9C0 C4249FA0 */  lwc1  $f4, %lo(D_80139FA0)($at)
/* AC1B64 8004A9C4 448F9000 */  mtc1  $t7, $f18
/* AC1B68 8004A9C8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC1B6C 8004A9CC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1B70 8004A9D0 468092A0 */  cvt.s.w $f10, $f18
/* AC1B74 8004A9D4 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC1B78 8004A9D8 46045182 */  mul.s $f6, $f10, $f4
/* AC1B7C 8004A9DC 44063000 */  mfc1  $a2, $f6
/* AC1B80 8004A9E0 0C010E27 */  jal   func_8004389C
/* AC1B84 8004A9E4 00000000 */   nop   
/* AC1B88 8004A9E8 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC1B8C 8004A9EC 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC1B90 8004A9F0 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC1B94 8004A9F4 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AC1B98 8004A9F8 44816000 */  mtc1  $at, $f12
/* AC1B9C 8004A9FC 870B01C8 */  lh    $t3, 0x1c8($t8)
/* AC1BA0 8004AA00 3C018014 */  lui   $at, %hi(D_80139FA4)
/* AC1BA4 8004AA04 C42A9FA4 */  lwc1  $f10, %lo(D_80139FA4)($at)
/* AC1BA8 8004AA08 448B4000 */  mtc1  $t3, $f8
/* AC1BAC 8004AA0C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC1BB0 8004AA10 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1BB4 8004AA14 468044A0 */  cvt.s.w $f18, $f8
/* AC1BB8 8004AA18 C60E00C0 */  lwc1  $f14, 0xc0($s0)
/* AC1BBC 8004AA1C 460A9102 */  mul.s $f4, $f18, $f10
/* AC1BC0 8004AA20 44062000 */  mfc1  $a2, $f4
/* AC1BC4 8004AA24 0C010E27 */  jal   func_8004389C
/* AC1BC8 8004AA28 00000000 */   nop   
/* AC1BCC 8004AA2C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1BD0 8004AA30 44813000 */  mtc1  $at, $f6
/* AC1BD4 8004AA34 C60800C4 */  lwc1  $f8, 0xc4($s0)
/* AC1BD8 8004AA38 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC1BDC 8004AA3C 87A500A8 */  lh    $a1, 0xa8($sp)
/* AC1BE0 8004AA40 46083483 */  div.s $f18, $f6, $f8
/* AC1BE4 8004AA44 240401F4 */  li    $a0, 500
/* AC1BE8 8004AA48 2407000A */  li    $a3, 10
/* AC1BEC 8004AA4C 44069000 */  mfc1  $a2, $f18
/* AC1BF0 8004AA50 0C010E47 */  jal   func_8004391C
/* AC1BF4 8004AA54 00000000 */   nop   
/* AC1BF8 8004AA58 00021C00 */  sll   $v1, $v0, 0x10
/* AC1BFC 8004AA5C 1000003E */  b     .L8004AB58
/* AC1C00 8004AA60 00031C03 */   sra   $v1, $v1, 0x10
/* AC1C04 8004AA64 C50A0004 */  lwc1  $f10, 4($t0)
.L8004AA68:
/* AC1C08 8004AA68 C5240000 */  lwc1  $f4, ($t1)
/* AC1C0C 8004AA6C C7A80048 */  lwc1  $f8, 0x48($sp)
/* AC1C10 8004AA70 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC1C14 8004AA74 46045181 */  sub.s $f6, $f10, $f4
/* AC1C18 8004AA78 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC1C1C 8004AA7C 4608303C */  c.lt.s $f6, $f8
/* AC1C20 8004AA80 00000000 */  nop   
/* AC1C24 8004AA84 45020030 */  bc1fl .L8004AB48
/* AC1C28 8004AA88 44810000 */   mtc1  $at, $f0
/* AC1C2C 8004AA8C 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC1C30 8004AA90 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AC1C34 8004AA94 44816000 */  mtc1  $at, $f12
/* AC1C38 8004AA98 872C01C8 */  lh    $t4, 0x1c8($t9)
/* AC1C3C 8004AA9C 3C018014 */  lui   $at, %hi(D_80139FA8)
/* AC1C40 8004AAA0 C4249FA8 */  lwc1  $f4, %lo(D_80139FA8)($at)
/* AC1C44 8004AAA4 448C9000 */  mtc1  $t4, $f18
/* AC1C48 8004AAA8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC1C4C 8004AAAC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1C50 8004AAB0 468092A0 */  cvt.s.w $f10, $f18
/* AC1C54 8004AAB4 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC1C58 8004AAB8 46045182 */  mul.s $f6, $f10, $f4
/* AC1C5C 8004AABC 44063000 */  mfc1  $a2, $f6
/* AC1C60 8004AAC0 0C010E27 */  jal   func_8004389C
/* AC1C64 8004AAC4 00000000 */   nop   
/* AC1C68 8004AAC8 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC1C6C 8004AACC 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC1C70 8004AAD0 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC1C74 8004AAD4 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AC1C78 8004AAD8 44816000 */  mtc1  $at, $f12
/* AC1C7C 8004AADC 85AE01C8 */  lh    $t6, 0x1c8($t5)
/* AC1C80 8004AAE0 3C018014 */  lui   $at, %hi(D_80139FAC)
/* AC1C84 8004AAE4 C42A9FAC */  lwc1  $f10, %lo(D_80139FAC)($at)
/* AC1C88 8004AAE8 448E4000 */  mtc1  $t6, $f8
/* AC1C8C 8004AAEC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC1C90 8004AAF0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC1C94 8004AAF4 468044A0 */  cvt.s.w $f18, $f8
/* AC1C98 8004AAF8 C60E00C0 */  lwc1  $f14, 0xc0($s0)
/* AC1C9C 8004AAFC 460A9102 */  mul.s $f4, $f18, $f10
/* AC1CA0 8004AB00 44062000 */  mfc1  $a2, $f4
/* AC1CA4 8004AB04 0C010E27 */  jal   func_8004389C
/* AC1CA8 8004AB08 00000000 */   nop   
/* AC1CAC 8004AB0C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1CB0 8004AB10 44813000 */  mtc1  $at, $f6
/* AC1CB4 8004AB14 C60800C4 */  lwc1  $f8, 0xc4($s0)
/* AC1CB8 8004AB18 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC1CBC 8004AB1C 87A500A8 */  lh    $a1, 0xa8($sp)
/* AC1CC0 8004AB20 46083483 */  div.s $f18, $f6, $f8
/* AC1CC4 8004AB24 240401F4 */  li    $a0, 500
/* AC1CC8 8004AB28 2407000A */  li    $a3, 10
/* AC1CCC 8004AB2C 44069000 */  mfc1  $a2, $f18
/* AC1CD0 8004AB30 0C010E47 */  jal   func_8004391C
/* AC1CD4 8004AB34 00000000 */   nop   
/* AC1CD8 8004AB38 A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC1CDC 8004AB3C 10000006 */  b     .L8004AB58
/* AC1CE0 8004AB40 87A300B8 */   lh    $v1, 0xb8($sp)
/* AC1CE4 8004AB44 44810000 */  mtc1  $at, $f0
.L8004AB48:
/* AC1CE8 8004AB48 00000000 */  nop   
/* AC1CEC 8004AB4C E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC1CF0 8004AB50 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC1CF4 8004AB54 87A300B8 */  lh    $v1, 0xb8($sp)
.L8004AB58:
/* AC1CF8 8004AB58 28612AF9 */  slti  $at, $v1, 0x2af9
/* AC1CFC 8004AB5C 14200002 */  bnez  $at, .L8004AB68
/* AC1D00 8004AB60 27A600B4 */   addiu $a2, $sp, 0xb4
/* AC1D04 8004AB64 24032AF8 */  li    $v1, 11000
.L8004AB68:
/* AC1D08 8004AB68 2861D508 */  slti  $at, $v1, -0x2af8
/* AC1D0C 8004AB6C 10200003 */  beqz  $at, .L8004AB7C
/* AC1D10 8004AB70 A7A300B8 */   sh    $v1, 0xb8($sp)
/* AC1D14 8004AB74 2403D508 */  li    $v1, -11000
/* AC1D18 8004AB78 A7A300B8 */  sh    $v1, 0xb8($sp)
.L8004AB7C:
/* AC1D1C 8004AB7C 8FA40030 */  lw    $a0, 0x30($sp)
/* AC1D20 8004AB80 0C010F0A */  jal   func_80043C28
/* AC1D24 8004AB84 8FA50034 */   lw    $a1, 0x34($sp)
/* AC1D28 8004AB88 8FAF0030 */  lw    $t7, 0x30($sp)
/* AC1D2C 8004AB8C 27A60060 */  addiu $a2, $sp, 0x60
/* AC1D30 8004AB90 02002025 */  move  $a0, $s0
/* AC1D34 8004AB94 8DEB0000 */  lw    $t3, ($t7)
/* AC1D38 8004AB98 ACCB0000 */  sw    $t3, ($a2)
/* AC1D3C 8004AB9C 8DF80004 */  lw    $t8, 4($t7)
/* AC1D40 8004ABA0 ACD80004 */  sw    $t8, 4($a2)
/* AC1D44 8004ABA4 8DEB0008 */  lw    $t3, 8($t7)
/* AC1D48 8004ABA8 ACCB0008 */  sw    $t3, 8($a2)
/* AC1D4C 8004ABAC 0C010F46 */  jal   func_80043D18
/* AC1D50 8004ABB0 8FA50034 */   lw    $a1, 0x34($sp)
/* AC1D54 8004ABB4 10400030 */  beqz  $v0, .L8004AC78
/* AC1D58 8004ABB8 8FAD0030 */   lw    $t5, 0x30($sp)
/* AC1D5C 8004ABBC 27A40060 */  addiu $a0, $sp, 0x60
/* AC1D60 8004ABC0 8C8D0000 */  lw    $t5, ($a0)
/* AC1D64 8004ABC4 27B900C8 */  addiu $t9, $sp, 0xc8
/* AC1D68 8004ABC8 27A600AC */  addiu $a2, $sp, 0xac
/* AC1D6C 8004ABCC AF2D0000 */  sw    $t5, ($t9)
/* AC1D70 8004ABD0 8C8C0004 */  lw    $t4, 4($a0)
/* AC1D74 8004ABD4 AF2C0004 */  sw    $t4, 4($t9)
/* AC1D78 8004ABD8 8C8D0008 */  lw    $t5, 8($a0)
/* AC1D7C 8004ABDC AF2D0008 */  sw    $t5, 8($t9)
/* AC1D80 8004ABE0 C7AA00B4 */  lwc1  $f10, 0xb4($sp)
/* AC1D84 8004ABE4 87AE00BA */  lh    $t6, 0xba($sp)
/* AC1D88 8004ABE8 A7A000B0 */  sh    $zero, 0xb0($sp)
/* AC1D8C 8004ABEC 8FA50034 */  lw    $a1, 0x34($sp)
/* AC1D90 8004ABF0 E7AA00AC */  swc1  $f10, 0xac($sp)
/* AC1D94 8004ABF4 0C010F0A */  jal   func_80043C28
/* AC1D98 8004ABF8 A7AE00B2 */   sh    $t6, 0xb2($sp)
/* AC1D9C 8004ABFC 02002025 */  move  $a0, $s0
/* AC1DA0 8004AC00 8FA50034 */  lw    $a1, 0x34($sp)
/* AC1DA4 8004AC04 0C010F46 */  jal   func_80043D18
/* AC1DA8 8004AC08 27A60060 */   addiu $a2, $sp, 0x60
/* AC1DAC 8004AC0C 1040000A */  beqz  $v0, .L8004AC38
/* AC1DB0 8004AC10 00002025 */   move  $a0, $zero
/* AC1DB4 8004AC14 27B800C8 */  addiu $t8, $sp, 0xc8
/* AC1DB8 8004AC18 8F190000 */  lw    $t9, ($t8)
/* AC1DBC 8004AC1C 8FAF0038 */  lw    $t7, 0x38($sp)
/* AC1DC0 8004AC20 ADF90000 */  sw    $t9, ($t7)
/* AC1DC4 8004AC24 8F0B0004 */  lw    $t3, 4($t8)
/* AC1DC8 8004AC28 ADEB0004 */  sw    $t3, 4($t7)
/* AC1DCC 8004AC2C 8F190008 */  lw    $t9, 8($t8)
/* AC1DD0 8004AC30 10000018 */  b     .L8004AC94
/* AC1DD4 8004AC34 ADF90008 */   sw    $t9, 8($t7)
.L8004AC38:
/* AC1DD8 8004AC38 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* AC1DDC 8004AC3C 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC1DE0 8004AC40 87A500B8 */  lh    $a1, 0xb8($sp)
/* AC1DE4 8004AC44 0C010E47 */  jal   func_8004391C
/* AC1DE8 8004AC48 2407000A */   li    $a3, 10
/* AC1DEC 8004AC4C A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC1DF0 8004AC50 8FA40038 */  lw    $a0, 0x38($sp)
/* AC1DF4 8004AC54 8FA50034 */  lw    $a1, 0x34($sp)
/* AC1DF8 8004AC58 0C010F0A */  jal   func_80043C28
/* AC1DFC 8004AC5C 27A600B4 */   addiu $a2, $sp, 0xb4
/* AC1E00 8004AC60 02002025 */  move  $a0, $s0
/* AC1E04 8004AC64 8FA50034 */  lw    $a1, 0x34($sp)
/* AC1E08 8004AC68 0C010FCD */  jal   func_80043F34
/* AC1E0C 8004AC6C 8FA60038 */   lw    $a2, 0x38($sp)
/* AC1E10 8004AC70 10000009 */  b     .L8004AC98
/* AC1E14 8004AC74 C7A400B4 */   lwc1  $f4, 0xb4($sp)
.L8004AC78:
/* AC1E18 8004AC78 8FAC0038 */  lw    $t4, 0x38($sp)
/* AC1E1C 8004AC7C 8DAF0000 */  lw    $t7, ($t5)
/* AC1E20 8004AC80 AD8F0000 */  sw    $t7, ($t4)
/* AC1E24 8004AC84 8DAE0004 */  lw    $t6, 4($t5)
/* AC1E28 8004AC88 AD8E0004 */  sw    $t6, 4($t4)
/* AC1E2C 8004AC8C 8DAF0008 */  lw    $t7, 8($t5)
/* AC1E30 8004AC90 AD8F0008 */  sw    $t7, 8($t4)
.L8004AC94:
/* AC1E34 8004AC94 C7A400B4 */  lwc1  $f4, 0xb4($sp)
.L8004AC98:
/* AC1E38 8004AC98 C60C0018 */  lwc1  $f12, 0x18($s0)
/* AC1E3C 8004AC9C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC1E40 8004ACA0 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC1E44 8004ACA4 3C073F80 */  lui   $a3, 0x3f80
/* AC1E48 8004ACA8 0C010E27 */  jal   func_8004389C
/* AC1E4C 8004ACAC E60400DC */   swc1  $f4, 0xdc($s0)
/* AC1E50 8004ACB0 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC1E54 8004ACB4 00002025 */  move  $a0, $zero
/* AC1E58 8004ACB8 8605015A */  lh    $a1, 0x15a($s0)
/* AC1E5C 8004ACBC 3C063F00 */  lui   $a2, 0x3f00
/* AC1E60 8004ACC0 0C010E47 */  jal   func_8004391C
/* AC1E64 8004ACC4 2407000A */   li    $a3, 10
/* AC1E68 8004ACC8 A602015A */  sh    $v0, 0x15a($s0)
/* AC1E6C 8004ACCC 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC1E70 8004ACD0 8FB00018 */  lw    $s0, 0x18($sp)
/* AC1E74 8004ACD4 27BD00E0 */  addiu $sp, $sp, 0xe0
/* AC1E78 8004ACD8 03E00008 */  jr    $ra
/* AC1E7C 8004ACDC 24020001 */   li    $v0, 1
# SPLIT
/* AC1E80 8004ACE0 27BDFF28 */  addiu $sp, $sp, -0xd8
/* AC1E84 8004ACE4 AFB0001C */  sw    $s0, 0x1c($sp)
/* AC1E88 8004ACE8 00808025 */  move  $s0, $a0
/* AC1E8C 8004ACEC AFBF0024 */  sw    $ra, 0x24($sp)
/* AC1E90 8004ACF0 AFB10020 */  sw    $s1, 0x20($sp)
/* AC1E94 8004ACF4 0C00B721 */  jal   func_8002DC84
/* AC1E98 8004ACF8 8C840090 */   lw    $a0, 0x90($a0)
/* AC1E9C 8004ACFC E7A00074 */  swc1  $f0, 0x74($sp)
/* AC1EA0 8004AD00 8E050090 */  lw    $a1, 0x90($s0)
/* AC1EA4 8004AD04 0C00BBB9 */  jal   func_8002EEE4
/* AC1EA8 8004AD08 27A40060 */   addiu $a0, $sp, 0x60
/* AC1EAC 8004AD0C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC1EB0 8004AD10 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC1EB4 8004AD14 2606005C */  addiu $a2, $s0, 0x5c
/* AC1EB8 8004AD18 C4C60004 */  lwc1  $f6, 4($a2)
/* AC1EBC 8004AD1C 846E01EC */  lh    $t6, 0x1ec($v1)
/* AC1EC0 8004AD20 C6040114 */  lwc1  $f4, 0x114($s0)
/* AC1EC4 8004AD24 00003825 */  move  $a3, $zero
/* AC1EC8 8004AD28 448E4000 */  mtc1  $t6, $f8
/* AC1ECC 8004AD2C 46062001 */  sub.s $f0, $f4, $f6
/* AC1ED0 8004AD30 27A40098 */  addiu $a0, $sp, 0x98
/* AC1ED4 8004AD34 26050050 */  addiu $a1, $s0, 0x50
/* AC1ED8 8004AD38 468042A0 */  cvt.s.w $f10, $f8
/* AC1EDC 8004AD3C 460A003C */  c.lt.s $f0, $f10
/* AC1EE0 8004AD40 00000000 */  nop   
/* AC1EE4 8004AD44 45030004 */  bc1tl .L8004AD58
/* AC1EE8 8004AD48 26110024 */   addiu $s1, $s0, 0x24
/* AC1EEC 8004AD4C 860F015E */  lh    $t7, 0x15e($s0)
/* AC1EF0 8004AD50 15E00007 */  bnez  $t7, .L8004AD70
/* AC1EF4 8004AD54 26110024 */   addiu $s1, $s0, 0x24
.L8004AD58:
/* AC1EF8 8004AD58 86380022 */  lh    $t8, 0x22($s1)
/* AC1EFC 8004AD5C 53000015 */  beql  $t8, $zero, .L8004ADB4
/* AC1F00 8004AD60 26110024 */   addiu $s1, $s0, 0x24
/* AC1F04 8004AD64 A6200022 */  sh    $zero, 0x22($s1)
/* AC1F08 8004AD68 10000011 */  b     .L8004ADB0
/* AC1F0C 8004AD6C 24070001 */   li    $a3, 1
.L8004AD70:
/* AC1F10 8004AD70 847901EE */  lh    $t9, 0x1ee($v1)
/* AC1F14 8004AD74 26110024 */  addiu $s1, $s0, 0x24
/* AC1F18 8004AD78 44992000 */  mtc1  $t9, $f4
/* AC1F1C 8004AD7C 00000000 */  nop   
/* AC1F20 8004AD80 468021A0 */  cvt.s.w $f6, $f4
/* AC1F24 8004AD84 4600303C */  c.lt.s $f6, $f0
/* AC1F28 8004AD88 00000000 */  nop   
/* AC1F2C 8004AD8C 45020009 */  bc1fl .L8004ADB4
/* AC1F30 8004AD90 26110024 */   addiu $s1, $s0, 0x24
/* AC1F34 8004AD94 86280022 */  lh    $t0, 0x22($s1)
/* AC1F38 8004AD98 2401000A */  li    $at, 10
/* AC1F3C 8004AD9C 2409000A */  li    $t1, 10
/* AC1F40 8004ADA0 51010004 */  beql  $t0, $at, .L8004ADB4
/* AC1F44 8004ADA4 26110024 */   addiu $s1, $s0, 0x24
/* AC1F48 8004ADA8 A6290022 */  sh    $t1, 0x22($s1)
/* AC1F4C 8004ADAC 24070001 */  li    $a3, 1
.L8004ADB0:
/* AC1F50 8004ADB0 26110024 */  addiu $s1, $s0, 0x24
.L8004ADB4:
/* AC1F54 8004ADB4 AFA5003C */  sw    $a1, 0x3c($sp)
/* AC1F58 8004ADB8 AFA60040 */  sw    $a2, 0x40($sp)
/* AC1F5C 8004ADBC 0C01F124 */  jal   func_8007C490
/* AC1F60 8004ADC0 AFA70054 */   sw    $a3, 0x54($sp)
/* AC1F64 8004ADC4 26060074 */  addiu $a2, $s0, 0x74
/* AC1F68 8004ADC8 AFA60038 */  sw    $a2, 0x38($sp)
/* AC1F6C 8004ADCC 27A40090 */  addiu $a0, $sp, 0x90
/* AC1F70 8004ADD0 0C01F124 */  jal   func_8007C490
/* AC1F74 8004ADD4 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC1F78 8004ADD8 8603015E */  lh    $v1, 0x15e($s0)
/* AC1F7C 8004ADDC 8FA70054 */  lw    $a3, 0x54($sp)
/* AC1F80 8004ADE0 1060000A */  beqz  $v1, .L8004AE0C
/* AC1F84 8004ADE4 2401000A */   li    $at, 10
/* AC1F88 8004ADE8 10610008 */  beq   $v1, $at, .L8004AE0C
/* AC1F8C 8004ADEC 24010014 */   li    $at, 20
/* AC1F90 8004ADF0 10610006 */  beq   $v1, $at, .L8004AE0C
/* AC1F94 8004ADF4 00000000 */   nop   
/* AC1F98 8004ADF8 14E00004 */  bnez  $a3, .L8004AE0C
/* AC1F9C 8004ADFC 3C0A8016 */   lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC1FA0 8004AE00 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC1FA4 8004AE04 85430314 */  lh    $v1, 0x314($t2)
/* AC1FA8 8004AE08 1060005C */  beqz  $v1, .L8004AF7C
.L8004AE0C:
/* AC1FAC 8004AE0C 3C198016 */   lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC1FB0 8004AE10 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC1FB4 8004AE14 3C018014 */  lui   $at, %hi(D_80139FB0)
/* AC1FB8 8004AE18 C4309FB0 */  lwc1  $f16, %lo(D_80139FB0)($at)
/* AC1FBC 8004AE1C 872801F0 */  lh    $t0, 0x1f0($t9)
/* AC1FC0 8004AE20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1FC4 8004AE24 44812000 */  mtc1  $at, $f4
/* AC1FC8 8004AE28 44884000 */  mtc1  $t0, $f8
/* AC1FCC 8004AE2C 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC1FD0 8004AE30 C7AE0074 */  lwc1  $f14, 0x74($sp)
/* AC1FD4 8004AE34 468042A0 */  cvt.s.w $f10, $f8
/* AC1FD8 8004AE38 44814000 */  mtc1  $at, $f8
/* AC1FDC 8004AE3C 860B0142 */  lh    $t3, 0x142($s0)
/* AC1FE0 8004AE40 3C0D8012 */  lui   $t5, %hi(D_8011D068)
/* AC1FE4 8004AE44 862E0022 */  lh    $t6, 0x22($s1)
/* AC1FE8 8004AE48 000B60C0 */  sll   $t4, $t3, 3
/* AC1FEC 8004AE4C 46105082 */  mul.s $f2, $f10, $f16
/* AC1FF0 8004AE50 460E4283 */  div.s $f10, $f8, $f14
/* AC1FF4 8004AE54 01AC6821 */  addu  $t5, $t5, $t4
/* AC1FF8 8004AE58 8DADD068 */  lw    $t5, %lo(D_8011D068)($t5)
/* AC1FFC 8004AE5C 000E78C0 */  sll   $t7, $t6, 3
/* AC2000 8004AE60 3C018014 */  lui   $at, %hi(D_80139FB4)
/* AC2004 8004AE64 01AFC021 */  addu  $t8, $t5, $t7
/* AC2008 8004AE68 46022180 */  add.s $f6, $f4, $f2
/* AC200C 8004AE6C 8F020004 */  lw    $v0, 4($t8)
/* AC2010 8004AE70 84490000 */  lh    $t1, ($v0)
/* AC2014 8004AE74 24420024 */  addiu $v0, $v0, 0x24
/* AC2018 8004AE78 460A1102 */  mul.s $f4, $f2, $f10
/* AC201C 8004AE7C 44895000 */  mtc1  $t1, $f10
/* AC2020 8004AE80 46107202 */  mul.s $f8, $f14, $f16
/* AC2024 8004AE84 46043301 */  sub.s $f12, $f6, $f4
/* AC2028 8004AE88 468051A0 */  cvt.s.w $f6, $f10
/* AC202C 8004AE8C 460C4002 */  mul.s $f0, $f8, $f12
/* AC2030 8004AE90 00000000 */  nop   
/* AC2034 8004AE94 46003102 */  mul.s $f4, $f6, $f0
/* AC2038 8004AE98 E6040000 */  swc1  $f4, ($s0)
/* AC203C 8004AE9C 844AFFE0 */  lh    $t2, -0x20($v0)
/* AC2040 8004AEA0 448A4000 */  mtc1  $t2, $f8
/* AC2044 8004AEA4 00000000 */  nop   
/* AC2048 8004AEA8 468042A0 */  cvt.s.w $f10, $f8
/* AC204C 8004AEAC 46005182 */  mul.s $f6, $f10, $f0
/* AC2050 8004AEB0 E6060004 */  swc1  $f6, 4($s0)
/* AC2054 8004AEB4 844BFFE4 */  lh    $t3, -0x1c($v0)
/* AC2058 8004AEB8 448B2000 */  mtc1  $t3, $f4
/* AC205C 8004AEBC 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC2060 8004AEC0 46802220 */  cvt.s.w $f8, $f4
/* AC2064 8004AEC4 46004282 */  mul.s $f10, $f8, $f0
/* AC2068 8004AEC8 E60A0008 */  swc1  $f10, 8($s0)
/* AC206C 8004AECC 844CFFE8 */  lh    $t4, -0x18($v0)
/* AC2070 8004AED0 C4289FB4 */  lwc1  $f8, %lo(D_80139FB4)($at)
/* AC2074 8004AED4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC2078 8004AED8 448C3000 */  mtc1  $t4, $f6
/* AC207C 8004AEDC 00000000 */  nop   
/* AC2080 8004AEE0 46803120 */  cvt.s.w $f4, $f6
/* AC2084 8004AEE4 44813000 */  mtc1  $at, $f6
/* AC2088 8004AEE8 46082282 */  mul.s $f10, $f4, $f8
/* AC208C 8004AEEC 46065100 */  add.s $f4, $f10, $f6
/* AC2090 8004AEF0 4600220D */  trunc.w.s $f8, $f4
/* AC2094 8004AEF4 440D4000 */  mfc1  $t5, $f8
/* AC2098 8004AEF8 00000000 */  nop   
/* AC209C 8004AEFC A60D0020 */  sh    $t5, 0x20($s0)
/* AC20A0 8004AF00 844FFFEC */  lh    $t7, -0x14($v0)
/* AC20A4 8004AF04 448F5000 */  mtc1  $t7, $f10
/* AC20A8 8004AF08 00000000 */  nop   
/* AC20AC 8004AF0C 468051A0 */  cvt.s.w $f6, $f10
/* AC20B0 8004AF10 E606000C */  swc1  $f6, 0xc($s0)
/* AC20B4 8004AF14 8458FFF0 */  lh    $t8, -0x10($v0)
/* AC20B8 8004AF18 44982000 */  mtc1  $t8, $f4
/* AC20BC 8004AF1C 00000000 */  nop   
/* AC20C0 8004AF20 46802220 */  cvt.s.w $f8, $f4
/* AC20C4 8004AF24 E6080010 */  swc1  $f8, 0x10($s0)
/* AC20C8 8004AF28 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC20CC 8004AF2C 44995000 */  mtc1  $t9, $f10
/* AC20D0 8004AF30 00000000 */  nop   
/* AC20D4 8004AF34 468051A0 */  cvt.s.w $f6, $f10
/* AC20D8 8004AF38 46103102 */  mul.s $f4, $f6, $f16
/* AC20DC 8004AF3C E6040014 */  swc1  $f4, 0x14($s0)
/* AC20E0 8004AF40 8448FFF8 */  lh    $t0, -8($v0)
/* AC20E4 8004AF44 44884000 */  mtc1  $t0, $f8
/* AC20E8 8004AF48 00000000 */  nop   
/* AC20EC 8004AF4C 468042A0 */  cvt.s.w $f10, $f8
/* AC20F0 8004AF50 E60A0018 */  swc1  $f10, 0x18($s0)
/* AC20F4 8004AF54 8449FFFC */  lh    $t1, -4($v0)
/* AC20F8 8004AF58 44893000 */  mtc1  $t1, $f6
/* AC20FC 8004AF5C 00000000 */  nop   
/* AC2100 8004AF60 46803120 */  cvt.s.w $f4, $f6
/* AC2104 8004AF64 46102202 */  mul.s $f8, $f4, $f16
/* AC2108 8004AF68 E608001C */  swc1  $f8, 0x1c($s0)
/* AC210C 8004AF6C 844A0000 */  lh    $t2, ($v0)
/* AC2110 8004AF70 A60A0022 */  sh    $t2, 0x22($s0)
/* AC2114 8004AF74 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC2118 8004AF78 85630314 */  lh    $v1, 0x314($t3)
.L8004AF7C:
/* AC211C 8004AF7C 3C018014 */  lui   $at, %hi(D_80139FB8)
/* AC2120 8004AF80 1060000B */  beqz  $v1, .L8004AFB0
/* AC2124 8004AF84 C4309FB8 */   lwc1  $f16, %lo(D_80139FB8)($at)
/* AC2128 8004AF88 860C0144 */  lh    $t4, 0x144($s0)
/* AC212C 8004AF8C 02002025 */  move  $a0, $s0
/* AC2130 8004AF90 AFAC00C8 */  sw    $t4, 0xc8($sp)
/* AC2134 8004AF94 862E0022 */  lh    $t6, 0x22($s1)
/* AC2138 8004AF98 0C011495 */  jal   func_80045254
/* AC213C 8004AF9C A60E0144 */   sh    $t6, 0x144($s0)
/* AC2140 8004AFA0 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* AC2144 8004AFA4 3C018014 */  lui   $at, %hi(D_80139FBC)
/* AC2148 8004AFA8 A60D0144 */  sh    $t5, 0x144($s0)
/* AC214C 8004AFAC C4309FBC */  lwc1  $f16, %lo(D_80139FBC)($at)
.L8004AFB0:
/* AC2150 8004AFB0 860F0022 */  lh    $t7, 0x22($s0)
/* AC2154 8004AFB4 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC2158 8004AFB8 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* AC215C 8004AFBC 8602015E */  lh    $v0, 0x15e($s0)
/* AC2160 8004AFC0 10400007 */  beqz  $v0, .L8004AFE0
/* AC2164 8004AFC4 2401000A */   li    $at, 10
/* AC2168 8004AFC8 10410005 */  beq   $v0, $at, .L8004AFE0
/* AC216C 8004AFCC 24010014 */   li    $at, 20
/* AC2170 8004AFD0 10410003 */  beq   $v0, $at, .L8004AFE0
/* AC2174 8004AFD4 24010019 */   li    $at, 25
/* AC2178 8004AFD8 14410013 */  bne   $v0, $at, .L8004B028
/* AC217C 8004AFDC 3C038016 */   lui   $v1, %hi(gGameInfo)
.L8004AFE0:
/* AC2180 8004AFE0 AE20000C */  sw    $zero, 0xc($s1)
/* AC2184 8004AFE4 C60A0104 */  lwc1  $f10, 0x104($s0)
/* AC2188 8004AFE8 A6200018 */  sh    $zero, 0x18($s1)
/* AC218C 8004AFEC 86220018 */  lh    $v0, 0x18($s1)
/* AC2190 8004AFF0 2418000A */  li    $t8, 10
/* AC2194 8004AFF4 A6380020 */  sh    $t8, 0x20($s1)
/* AC2198 8004AFF8 E62A001C */  swc1  $f10, 0x1c($s1)
/* AC219C 8004AFFC A6220014 */  sh    $v0, 0x14($s1)
/* AC21A0 8004B000 A6220016 */  sh    $v0, 0x16($s1)
/* AC21A4 8004B004 C606000C */  lwc1  $f6, 0xc($s0)
/* AC21A8 8004B008 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC21AC 8004B00C E6260010 */  swc1  $f6, 0x10($s1)
/* AC21B0 8004B010 8619015E */  lh    $t9, 0x15e($s0)
/* AC21B4 8004B014 27280001 */  addiu $t0, $t9, 1
/* AC21B8 8004B018 A608015E */  sh    $t0, 0x15e($s0)
/* AC21BC 8004B01C A620001A */  sh    $zero, 0x1a($s1)
/* AC21C0 8004B020 10000006 */  b     .L8004B03C
/* AC21C4 8004B024 8C63FA90 */   lw    $v1, %lo(gGameInfo)($v1)
.L8004B028:
/* AC21C8 8004B028 86220020 */  lh    $v0, 0x20($s1)
/* AC21CC 8004B02C 10400002 */  beqz  $v0, .L8004B038
/* AC21D0 8004B030 2449FFFF */   addiu $t1, $v0, -1
/* AC21D4 8004B034 A6290020 */  sh    $t1, 0x20($s1)
.L8004B038:
/* AC21D8 8004B038 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
.L8004B03C:
/* AC21DC 8004B03C 8FAB0040 */  lw    $t3, 0x40($sp)
/* AC21E0 8004B040 27AA00B0 */  addiu $t2, $sp, 0xb0
/* AC21E4 8004B044 8D6E0000 */  lw    $t6, ($t3)
/* AC21E8 8004B048 AD4E0000 */  sw    $t6, ($t2)
/* AC21EC 8004B04C 8D6C0004 */  lw    $t4, 4($t3)
/* AC21F0 8004B050 AD4C0004 */  sw    $t4, 4($t2)
/* AC21F4 8004B054 8D6E0008 */  lw    $t6, 8($t3)
/* AC21F8 8004B058 AD4E0008 */  sw    $t6, 8($t2)
/* AC21FC 8004B05C 846D01C6 */  lh    $t5, 0x1c6($v1)
/* AC2200 8004B060 846F01C8 */  lh    $t7, 0x1c8($v1)
/* AC2204 8004B064 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* AC2208 8004B068 448D2000 */  mtc1  $t5, $f4
/* AC220C 8004B06C 448F5000 */  mtc1  $t7, $f10
/* AC2210 8004B070 46802220 */  cvt.s.w $f8, $f4
/* AC2214 8004B074 468051A0 */  cvt.s.w $f6, $f10
/* AC2218 8004B078 46104082 */  mul.s $f2, $f8, $f16
/* AC221C 8004B07C 00000000 */  nop   
/* AC2220 8004B080 46001482 */  mul.s $f18, $f2, $f0
/* AC2224 8004B084 00000000 */  nop   
/* AC2228 8004B088 46103102 */  mul.s $f4, $f6, $f16
/* AC222C 8004B08C 00000000 */  nop   
/* AC2230 8004B090 46002202 */  mul.s $f8, $f4, $f0
/* AC2234 8004B094 E7A800C0 */  swc1  $f8, 0xc0($sp)
/* AC2238 8004B098 86380018 */  lh    $t8, 0x18($s1)
/* AC223C 8004B09C 13000003 */  beqz  $t8, .L8004B0AC
/* AC2240 8004B0A0 00000000 */   nop   
/* AC2244 8004B0A4 10000002 */  b     .L8004B0B0
/* AC2248 8004B0A8 E7A200BC */   swc1  $f2, 0xbc($sp)
.L8004B0AC:
/* AC224C 8004B0AC E7B200BC */  swc1  $f18, 0xbc($sp)
.L8004B0B0:
/* AC2250 8004B0B0 8622001A */  lh    $v0, 0x1a($s1)
/* AC2254 8004B0B4 1040001D */  beqz  $v0, .L8004B12C
/* AC2258 8004B0B8 0002C840 */   sll   $t9, $v0, 1
/* AC225C 8004B0BC 44993000 */  mtc1  $t9, $f6
/* AC2260 8004B0C0 C62A0010 */  lwc1  $f10, 0x10($s1)
/* AC2264 8004B0C4 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC2268 8004B0C8 46803120 */  cvt.s.w $f4, $f6
/* AC226C 8004B0CC 44069000 */  mfc1  $a2, $f18
/* AC2270 8004B0D0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2274 8004B0D4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2278 8004B0D8 E7B200C4 */  swc1  $f18, 0xc4($sp)
/* AC227C 8004B0DC 0C010E27 */  jal   func_8004389C
/* AC2280 8004B0E0 46045300 */   add.s $f12, $f10, $f4
/* AC2284 8004B0E4 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC2288 8004B0E8 8628001A */  lh    $t0, 0x1a($s1)
/* AC228C 8004B0EC 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2290 8004B0F0 44815000 */  mtc1  $at, $f10
/* AC2294 8004B0F4 00084840 */  sll   $t1, $t0, 1
/* AC2298 8004B0F8 44894000 */  mtc1  $t1, $f8
/* AC229C 8004B0FC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22A0 8004B100 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22A4 8004B104 468041A0 */  cvt.s.w $f6, $f8
/* AC22A8 8004B108 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC22AC 8004B10C C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC22B0 8004B110 0C010E27 */  jal   func_8004389C
/* AC22B4 8004B114 460A3300 */   add.s $f12, $f6, $f10
/* AC22B8 8004B118 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC22BC 8004B11C 862A001A */  lh    $t2, 0x1a($s1)
/* AC22C0 8004B120 254BFFFF */  addiu $t3, $t2, -1
/* AC22C4 8004B124 10000011 */  b     .L8004B16C
/* AC22C8 8004B128 A62B001A */   sh    $t3, 0x1a($s1)
.L8004B12C:
/* AC22CC 8004B12C C62C0010 */  lwc1  $f12, 0x10($s1)
/* AC22D0 8004B130 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC22D4 8004B134 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22D8 8004B138 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22DC 8004B13C E7B200C4 */  swc1  $f18, 0xc4($sp)
/* AC22E0 8004B140 0C010E27 */  jal   func_8004389C
/* AC22E4 8004B144 8FA600BC */   lw    $a2, 0xbc($sp)
/* AC22E8 8004B148 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC22EC 8004B14C E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC22F0 8004B150 44816000 */  mtc1  $at, $f12
/* AC22F4 8004B154 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22F8 8004B158 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22FC 8004B15C 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC2300 8004B160 0C010E27 */  jal   func_8004389C
/* AC2304 8004B164 C60E00C4 */   lwc1  $f14, 0xc4($s0)
/* AC2308 8004B168 E60000C4 */  swc1  $f0, 0xc4($s0)
.L8004B16C:
/* AC230C 8004B16C 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC2310 8004B170 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC2314 8004B174 3C018014 */  lui   $at, %hi(D_80139FC0)
/* AC2318 8004B178 C4269FC0 */  lwc1  $f6, %lo(D_80139FC0)($at)
/* AC231C 8004B17C 858E0198 */  lh    $t6, 0x198($t4)
/* AC2320 8004B180 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2324 8004B184 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2328 8004B188 448E2000 */  mtc1  $t6, $f4
/* AC232C 8004B18C C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2330 8004B190 8FA600C4 */  lw    $a2, 0xc4($sp)
/* AC2334 8004B194 46802220 */  cvt.s.w $f8, $f4
/* AC2338 8004B198 46064302 */  mul.s $f12, $f8, $f6
/* AC233C 8004B19C 0C010E27 */  jal   func_8004389C
/* AC2340 8004B1A0 00000000 */   nop   
/* AC2344 8004B1A4 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2348 8004B1A8 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC234C 8004B1AC 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC2350 8004B1B0 3C018014 */  lui   $at, %hi(D_80139FC4)
/* AC2354 8004B1B4 C4289FC4 */  lwc1  $f8, %lo(D_80139FC4)($at)
/* AC2358 8004B1B8 85AF019A */  lh    $t7, 0x19a($t5)
/* AC235C 8004B1BC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2360 8004B1C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2364 8004B1C4 448F5000 */  mtc1  $t7, $f10
/* AC2368 8004B1C8 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC236C 8004B1CC C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2370 8004B1D0 46805120 */  cvt.s.w $f4, $f10
/* AC2374 8004B1D4 46082302 */  mul.s $f12, $f4, $f8
/* AC2378 8004B1D8 0C010E27 */  jal   func_8004389C
/* AC237C 8004B1DC 00000000 */   nop   
/* AC2380 8004B1E0 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2384 8004B1E4 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC2388 8004B1E8 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC238C 8004B1EC 3C018014 */  lui   $at, %hi(D_80139FC8)
/* AC2390 8004B1F0 C4249FC8 */  lwc1  $f4, %lo(D_80139FC8)($at)
/* AC2394 8004B1F4 8719019C */  lh    $t9, 0x19c($t8)
/* AC2398 8004B1F8 3C018014 */  lui   $at, %hi(D_80139FCC)
/* AC239C 8004B1FC C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC23A0 8004B200 44993000 */  mtc1  $t9, $f6
/* AC23A4 8004B204 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC23A8 8004B208 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC23AC 8004B20C 468032A0 */  cvt.s.w $f10, $f6
/* AC23B0 8004B210 C4269FCC */  lwc1  $f6, %lo(D_80139FCC)($at)
/* AC23B4 8004B214 46000386 */  mov.s $f14, $f0
/* AC23B8 8004B218 46045302 */  mul.s $f12, $f10, $f4
/* AC23BC 8004B21C 00000000 */  nop   
/* AC23C0 8004B220 46064282 */  mul.s $f10, $f8, $f6
/* AC23C4 8004B224 44065000 */  mfc1  $a2, $f10
/* AC23C8 8004B228 0C010E27 */  jal   func_8004389C
/* AC23CC 8004B22C 00000000 */   nop   
/* AC23D0 8004B230 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC23D4 8004B234 02002025 */  move  $a0, $s0
/* AC23D8 8004B238 27A50090 */  addiu $a1, $sp, 0x90
/* AC23DC 8004B23C 8E060000 */  lw    $a2, ($s0)
/* AC23E0 8004B240 0C0115EA */  jal   func_800457A8
/* AC23E4 8004B244 86070022 */   lh    $a3, 0x22($s0)
/* AC23E8 8004B248 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC23EC 8004B24C 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC23F0 8004B250 0C01F124 */  jal   func_8007C490
/* AC23F4 8004B254 8FA60038 */   lw    $a2, 0x38($sp)
/* AC23F8 8004B258 86280020 */  lh    $t0, 0x20($s1)
/* AC23FC 8004B25C 8E060004 */  lw    $a2, 4($s0)
/* AC2400 8004B260 8E070008 */  lw    $a3, 8($s0)
/* AC2404 8004B264 02002025 */  move  $a0, $s0
/* AC2408 8004B268 8FA500A8 */  lw    $a1, 0xa8($sp)
/* AC240C 8004B26C 0C011A70 */  jal   func_800469C0
/* AC2410 8004B270 AFA80010 */   sw    $t0, 0x10($sp)
/* AC2414 8004B274 E7A000A8 */  swc1  $f0, 0xa8($sp)
/* AC2418 8004B278 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC241C 8004B27C 26020094 */  addiu $v0, $s0, 0x94
/* AC2420 8004B280 C44C0004 */  lwc1  $f12, 4($v0)
/* AC2424 8004B284 C6020104 */  lwc1  $f2, 0x104($s0)
/* AC2428 8004B288 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC242C 8004B28C 44812000 */  mtc1  $at, $f4
/* AC2430 8004B290 460C103E */  c.le.s $f2, $f12
/* AC2434 8004B294 00000000 */  nop   
/* AC2438 8004B298 45020004 */  bc1fl .L8004B2AC
/* AC243C 8004B29C 46026001 */   sub.s $f0, $f12, $f2
/* AC2440 8004B2A0 10000003 */  b     .L8004B2B0
/* AC2444 8004B2A4 46026001 */   sub.s $f0, $f12, $f2
/* AC2448 8004B2A8 46026001 */  sub.s $f0, $f12, $f2
.L8004B2AC:
/* AC244C 8004B2AC 46000007 */  neg.s $f0, $f0
.L8004B2B0:
/* AC2450 8004B2B0 4604003C */  c.lt.s $f0, $f4
/* AC2454 8004B2B4 C7A80064 */  lwc1  $f8, 0x64($sp)
/* AC2458 8004B2B8 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC245C 8004B2BC 45030014 */  bc1tl .L8004B310
/* AC2460 8004B2C0 86290018 */   lh    $t1, 0x18($s1)
/* AC2464 8004B2C4 C6000114 */  lwc1  $f0, 0x114($s0)
/* AC2468 8004B2C8 44815000 */  mtc1  $at, $f10
/* AC246C 8004B2CC C7A60064 */  lwc1  $f6, 0x64($sp)
/* AC2470 8004B2D0 4608003E */  c.le.s $f0, $f8
/* AC2474 8004B2D4 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC2478 8004B2D8 45020004 */  bc1fl .L8004B2EC
/* AC247C 8004B2DC 46003081 */   sub.s $f2, $f6, $f0
/* AC2480 8004B2E0 10000003 */  b     .L8004B2F0
/* AC2484 8004B2E4 46004081 */   sub.s $f2, $f8, $f0
/* AC2488 8004B2E8 46003081 */  sub.s $f2, $f6, $f0
.L8004B2EC:
/* AC248C 8004B2EC 46001087 */  neg.s $f2, $f2
.L8004B2F0:
/* AC2490 8004B2F0 460A103C */  c.lt.s $f2, $f10
/* AC2494 8004B2F4 00000000 */  nop   
/* AC2498 8004B2F8 45030005 */  bc1tl .L8004B310
/* AC249C 8004B2FC 86290018 */   lh    $t1, 0x18($s1)
/* AC24A0 8004B300 44812000 */  mtc1  $at, $f4
/* AC24A4 8004B304 00000000 */  nop   
/* AC24A8 8004B308 E60400C4 */  swc1  $f4, 0xc4($s0)
/* AC24AC 8004B30C 86290018 */  lh    $t1, 0x18($s1)
.L8004B310:
/* AC24B0 8004B310 02002025 */  move  $a0, $s0
/* AC24B4 8004B314 87A50096 */  lh    $a1, 0x96($sp)
/* AC24B8 8004B318 11200017 */  beqz  $t1, .L8004B378
/* AC24BC 8004B31C 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AC24C0 8004B320 44814000 */  mtc1  $at, $f8
/* AC24C4 8004B324 C60600C8 */  lwc1  $f6, 0xc8($s0)
/* AC24C8 8004B328 86240016 */  lh    $a0, 0x16($s1)
/* AC24CC 8004B32C 87A50096 */  lh    $a1, 0x96($sp)
/* AC24D0 8004B330 46064283 */  div.s $f10, $f8, $f6
/* AC24D4 8004B334 2407000A */  li    $a3, 10
/* AC24D8 8004B338 44065000 */  mfc1  $a2, $f10
/* AC24DC 8004B33C 0C010E47 */  jal   func_8004391C
/* AC24E0 8004B340 00000000 */   nop   
/* AC24E4 8004B344 A7A200AE */  sh    $v0, 0xae($sp)
/* AC24E8 8004B348 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC24EC 8004B34C 44812000 */  mtc1  $at, $f4
/* AC24F0 8004B350 C60800C8 */  lwc1  $f8, 0xc8($s0)
/* AC24F4 8004B354 86240014 */  lh    $a0, 0x14($s1)
/* AC24F8 8004B358 87A50094 */  lh    $a1, 0x94($sp)
/* AC24FC 8004B35C 46082183 */  div.s $f6, $f4, $f8
/* AC2500 8004B360 2407000A */  li    $a3, 10
/* AC2504 8004B364 44063000 */  mfc1  $a2, $f6
/* AC2508 8004B368 0C010E47 */  jal   func_8004391C
/* AC250C 8004B36C 00000000 */   nop   
/* AC2510 8004B370 1000000D */  b     .L8004B3A8
/* AC2514 8004B374 A7A200AC */   sh    $v0, 0xac($sp)
.L8004B378:
/* AC2518 8004B378 44805000 */  mtc1  $zero, $f10
/* AC251C 8004B37C 8446000E */  lh    $a2, 0xe($v0)
/* AC2520 8004B380 8E070014 */  lw    $a3, 0x14($s0)
/* AC2524 8004B384 0C011B2D */  jal   func_80046CB4
/* AC2528 8004B388 E7AA0010 */   swc1  $f10, 0x10($sp)
/* AC252C 8004B38C A7A200AE */  sh    $v0, 0xae($sp)
/* AC2530 8004B390 86060020 */  lh    $a2, 0x20($s0)
/* AC2534 8004B394 02002025 */  move  $a0, $s0
/* AC2538 8004B398 87A50094 */  lh    $a1, 0x94($sp)
/* AC253C 8004B39C 0C011AD1 */  jal   func_80046B44
/* AC2540 8004B3A0 00003825 */   move  $a3, $zero
/* AC2544 8004B3A4 A7A200AC */  sh    $v0, 0xac($sp)
.L8004B3A8:
/* AC2548 8004B3A8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC254C 8004B3AC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2550 8004B3B0 27A600A8 */  addiu $a2, $sp, 0xa8
/* AC2554 8004B3B4 8464019E */  lh    $a0, 0x19e($v1)
/* AC2558 8004B3B8 0082082A */  slt   $at, $a0, $v0
/* AC255C 8004B3BC 50200003 */  beql  $at, $zero, .L8004B3CC
/* AC2560 8004B3C0 846201D8 */   lh    $v0, 0x1d8($v1)
/* AC2564 8004B3C4 A7A400AC */  sh    $a0, 0xac($sp)
/* AC2568 8004B3C8 846201D8 */  lh    $v0, 0x1d8($v1)
.L8004B3CC:
/* AC256C 8004B3CC 87AA00AC */  lh    $t2, 0xac($sp)
/* AC2570 8004B3D0 0142082A */  slt   $at, $t2, $v0
/* AC2574 8004B3D4 50200003 */  beql  $at, $zero, .L8004B3E4
/* AC2578 8004B3D8 8FA40038 */   lw    $a0, 0x38($sp)
/* AC257C 8004B3DC A7A200AC */  sh    $v0, 0xac($sp)
/* AC2580 8004B3E0 8FA40038 */  lw    $a0, 0x38($sp)
.L8004B3E4:
/* AC2584 8004B3E4 0C010F0A */  jal   func_80043C28
/* AC2588 8004B3E8 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC258C 8004B3EC 860B0140 */  lh    $t3, 0x140($s0)
/* AC2590 8004B3F0 24010007 */  li    $at, 7
/* AC2594 8004B3F4 55610038 */  bnel  $t3, $at, .L8004B4D8
/* AC2598 8004B3F8 C608000C */   lwc1  $f8, 0xc($s0)
/* AC259C 8004B3FC 860C0022 */  lh    $t4, 0x22($s0)
/* AC25A0 8004B400 02002025 */  move  $a0, $s0
/* AC25A4 8004B404 27A500A8 */  addiu $a1, $sp, 0xa8
/* AC25A8 8004B408 318E0010 */  andi  $t6, $t4, 0x10
/* AC25AC 8004B40C 15C00031 */  bnez  $t6, .L8004B4D4
/* AC25B0 8004B410 27AD00BC */   addiu $t5, $sp, 0xbc
/* AC25B4 8004B414 8E060004 */  lw    $a2, 4($s0)
/* AC25B8 8004B418 8E07000C */  lw    $a3, 0xc($s0)
/* AC25BC 8004B41C AFB10014 */  sw    $s1, 0x14($sp)
/* AC25C0 8004B420 0C011B88 */  jal   func_80046E20
/* AC25C4 8004B424 AFAD0010 */   sw    $t5, 0x10($sp)
/* AC25C8 8004B428 860F0022 */  lh    $t7, 0x22($s0)
/* AC25CC 8004B42C 87B9009C */  lh    $t9, 0x9c($sp)
/* AC25D0 8004B430 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC25D4 8004B434 31F80004 */  andi  $t8, $t7, 4
/* AC25D8 8004B438 13000008 */  beqz  $t8, .L8004B45C
/* AC25DC 8004B43C 8FA50040 */   lw    $a1, 0x40($sp)
/* AC25E0 8004B440 00194023 */  negu  $t0, $t9
/* AC25E4 8004B444 A6080134 */  sh    $t0, 0x134($s0)
/* AC25E8 8004B448 87A9009E */  lh    $t1, 0x9e($sp)
/* AC25EC 8004B44C A6000138 */  sh    $zero, 0x138($s0)
/* AC25F0 8004B450 252A8001 */  addiu $t2, $t1, -0x7fff
/* AC25F4 8004B454 10000008 */  b     .L8004B478
/* AC25F8 8004B458 A60A0136 */   sh    $t2, 0x136($s0)
.L8004B45C:
/* AC25FC 8004B45C 0C01F124 */  jal   func_8007C490
/* AC2600 8004B460 8FA6003C */   lw    $a2, 0x3c($sp)
/* AC2604 8004B464 87AB00AC */  lh    $t3, 0xac($sp)
/* AC2608 8004B468 A60B0134 */  sh    $t3, 0x134($s0)
/* AC260C 8004B46C 87AC00AE */  lh    $t4, 0xae($sp)
/* AC2610 8004B470 A6000138 */  sh    $zero, 0x138($s0)
/* AC2614 8004B474 A60C0136 */  sh    $t4, 0x136($s0)
.L8004B478:
/* AC2618 8004B478 862E0018 */  lh    $t6, 0x18($s1)
/* AC261C 8004B47C 3C018014 */  lui   $at, %hi(D_80139FD0)
/* AC2620 8004B480 C7A800BC */  lwc1  $f8, 0xbc($sp)
/* AC2624 8004B484 51C00021 */  beql  $t6, $zero, .L8004B50C
/* AC2628 8004B488 C60C0018 */   lwc1  $f12, 0x18($s0)
/* AC262C 8004B48C C4249FD0 */  lwc1  $f4, %lo(D_80139FD0)($at)
/* AC2630 8004B490 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC2634 8004B494 44815000 */  mtc1  $at, $f10
/* AC2638 8004B498 46082182 */  mul.s $f6, $f4, $f8
/* AC263C 8004B49C 862D0016 */  lh    $t5, 0x16($s1)
/* AC2640 8004B4A0 86050136 */  lh    $a1, 0x136($s0)
/* AC2644 8004B4A4 2407000A */  li    $a3, 10
/* AC2648 8004B4A8 25B98001 */  addiu $t9, $t5, -0x7fff
/* AC264C 8004B4AC 03255023 */  subu  $t2, $t9, $a1
/* AC2650 8004B4B0 00AA2021 */  addu  $a0, $a1, $t2
/* AC2654 8004B4B4 46065101 */  sub.s $f4, $f10, $f6
/* AC2658 8004B4B8 00042400 */  sll   $a0, $a0, 0x10
/* AC265C 8004B4BC 00042403 */  sra   $a0, $a0, 0x10
/* AC2660 8004B4C0 44062000 */  mfc1  $a2, $f4
/* AC2664 8004B4C4 0C010E47 */  jal   func_8004391C
/* AC2668 8004B4C8 00000000 */   nop   
/* AC266C 8004B4CC 1000000E */  b     .L8004B508
/* AC2670 8004B4D0 A6020136 */   sh    $v0, 0x136($s0)
.L8004B4D4:
/* AC2674 8004B4D4 C608000C */  lwc1  $f8, 0xc($s0)
.L8004B4D8:
/* AC2678 8004B4D8 A6200018 */  sh    $zero, 0x18($s1)
/* AC267C 8004B4DC 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC2680 8004B4E0 E6280010 */  swc1  $f8, 0x10($s1)
/* AC2684 8004B4E4 8FAC0038 */  lw    $t4, 0x38($sp)
/* AC2688 8004B4E8 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* AC268C 8004B4EC 8FAB0040 */  lw    $t3, 0x40($sp)
/* AC2690 8004B4F0 8D8D0000 */  lw    $t5, ($t4)
/* AC2694 8004B4F4 AD6D0000 */  sw    $t5, ($t3)
/* AC2698 8004B4F8 8D8E0004 */  lw    $t6, 4($t4)
/* AC269C 8004B4FC AD6E0004 */  sw    $t6, 4($t3)
/* AC26A0 8004B500 8D8D0008 */  lw    $t5, 8($t4)
/* AC26A4 8004B504 AD6D0008 */  sw    $t5, 8($t3)
.L8004B508:
/* AC26A8 8004B508 C60C0018 */  lwc1  $f12, 0x18($s0)
.L8004B50C:
/* AC26AC 8004B50C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC26B0 8004B510 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC26B4 8004B514 0C010E27 */  jal   func_8004389C
/* AC26B8 8004B518 3C073F80 */   lui   $a3, 0x3f80
/* AC26BC 8004B51C E60000FC */  swc1  $f0, 0xfc($s0)
/* AC26C0 8004B520 00002025 */  move  $a0, $zero
/* AC26C4 8004B524 8605015A */  lh    $a1, 0x15a($s0)
/* AC26C8 8004B528 3C063F00 */  lui   $a2, 0x3f00
/* AC26CC 8004B52C 0C010E47 */  jal   func_8004391C
/* AC26D0 8004B530 2407000A */   li    $a3, 10
/* AC26D4 8004B534 A602015A */  sh    $v0, 0x15a($s0)
/* AC26D8 8004B538 02002025 */  move  $a0, $s0
/* AC26DC 8004B53C 0C011429 */  jal   func_800450A4
/* AC26E0 8004B540 8E05001C */   lw    $a1, 0x1c($s0)
/* AC26E4 8004B544 E6000100 */  swc1  $f0, 0x100($s0)
/* AC26E8 8004B548 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC26EC 8004B54C 8FB10020 */  lw    $s1, 0x20($sp)
/* AC26F0 8004B550 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC26F4 8004B554 27BD00D8 */  addiu $sp, $sp, 0xd8
/* AC26F8 8004B558 03E00008 */  jr    $ra
/* AC26FC 8004B55C 24020001 */   li    $v0, 1
# SPLIT
/* AC2700 8004B560 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC2704 8004B564 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC2708 8004B568 0C011CE5 */  jal   func_80047394
/* AC270C 8004B56C 00000000 */   nop   
/* AC2710 8004B570 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC2714 8004B574 27BD0018 */  addiu $sp, $sp, 0x18
/* AC2718 8004B578 03E00008 */  jr    $ra
/* AC271C 8004B57C 00000000 */   nop   
# SPLIT
/* AC2720 8004B580 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC2724 8004B584 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC2728 8004B588 0C011CE5 */  jal   func_80047394
/* AC272C 8004B58C 00000000 */   nop   
/* AC2730 8004B590 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC2734 8004B594 27BD0018 */  addiu $sp, $sp, 0x18
/* AC2738 8004B598 03E00008 */  jr    $ra
/* AC273C 8004B59C 00000000 */   nop   
# SPLIT
/* AC2740 8004B5A0 27BDFEC0 */  addiu $sp, $sp, -0x140
/* AC2744 8004B5A4 AFB00024 */  sw    $s0, 0x24($sp)
/* AC2748 8004B5A8 00808025 */  move  $s0, $a0
/* AC274C 8004B5AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AC2750 8004B5B0 AFB10028 */  sw    $s1, 0x28($sp)
/* AC2754 8004B5B4 AFA000E8 */  sw    $zero, 0xe8($sp)
/* AC2758 8004B5B8 8C840090 */  lw    $a0, 0x90($a0)
/* AC275C 8004B5BC 0C00B721 */  jal   func_8002DC84
/* AC2760 8004B5C0 AFA40088 */   sw    $a0, 0x88($sp)
/* AC2764 8004B5C4 E7A00064 */  swc1  $f0, 0x64($sp)
/* AC2768 8004B5C8 8602015E */  lh    $v0, 0x15e($s0)
/* AC276C 8004B5CC 2401000A */  li    $at, 10
/* AC2770 8004B5D0 1040000A */  beqz  $v0, .L8004B5FC
/* AC2774 8004B5D4 00000000 */   nop   
/* AC2778 8004B5D8 10410008 */  beq   $v0, $at, .L8004B5FC
/* AC277C 8004B5DC 24010014 */   li    $at, 20
/* AC2780 8004B5E0 10410006 */  beq   $v0, $at, .L8004B5FC
/* AC2784 8004B5E4 3C058016 */   lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2788 8004B5E8 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC278C 8004B5EC 8CAE0000 */  lw    $t6, ($a1)
/* AC2790 8004B5F0 85C30314 */  lh    $v1, 0x314($t6)
/* AC2794 8004B5F4 1060006C */  beqz  $v1, .L8004B7A8
/* AC2798 8004B5F8 00000000 */   nop   
.L8004B5FC:
/* AC279C 8004B5FC 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC27A0 8004B600 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC27A4 8004B604 8CAC0000 */  lw    $t4, ($a1)
/* AC27A8 8004B608 3C018014 */  lui   $at, %hi(D_80139FD4)
/* AC27AC 8004B60C C4309FD4 */  lwc1  $f16, %lo(D_80139FD4)($at)
/* AC27B0 8004B610 858D01F0 */  lh    $t5, 0x1f0($t4)
/* AC27B4 8004B614 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC27B8 8004B618 44814000 */  mtc1  $at, $f8
/* AC27BC 8004B61C 448D2000 */  mtc1  $t5, $f4
/* AC27C0 8004B620 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC27C4 8004B624 860F0142 */  lh    $t7, 0x142($s0)
/* AC27C8 8004B628 468021A0 */  cvt.s.w $f6, $f4
/* AC27CC 8004B62C 44812000 */  mtc1  $at, $f4
/* AC27D0 8004B630 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC27D4 8004B634 000FC0C0 */  sll   $t8, $t7, 3
/* AC27D8 8004B638 86090144 */  lh    $t1, 0x144($s0)
/* AC27DC 8004B63C 0338C821 */  addu  $t9, $t9, $t8
/* AC27E0 8004B640 46103082 */  mul.s $f2, $f6, $f16
/* AC27E4 8004B644 46002183 */  div.s $f6, $f4, $f0
/* AC27E8 8004B648 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC27EC 8004B64C 000950C0 */  sll   $t2, $t1, 3
/* AC27F0 8004B650 26110030 */  addiu $s1, $s0, 0x30
/* AC27F4 8004B654 032A5821 */  addu  $t3, $t9, $t2
/* AC27F8 8004B658 8D620004 */  lw    $v0, 4($t3)
/* AC27FC 8004B65C 46024280 */  add.s $f10, $f8, $f2
/* AC2800 8004B660 844E0000 */  lh    $t6, ($v0)
/* AC2804 8004B664 2442002C */  addiu $v0, $v0, 0x2c
/* AC2808 8004B668 448E2000 */  mtc1  $t6, $f4
/* AC280C 8004B66C 46061202 */  mul.s $f8, $f2, $f6
/* AC2810 8004B670 468021A0 */  cvt.s.w $f6, $f4
/* AC2814 8004B674 46085301 */  sub.s $f12, $f10, $f8
/* AC2818 8004B678 46103282 */  mul.s $f10, $f6, $f16
/* AC281C 8004B67C 00000000 */  nop   
/* AC2820 8004B680 46005202 */  mul.s $f8, $f10, $f0
/* AC2824 8004B684 00000000 */  nop   
/* AC2828 8004B688 460C4102 */  mul.s $f4, $f8, $f12
/* AC282C 8004B68C E6040000 */  swc1  $f4, ($s0)
/* AC2830 8004B690 844FFFD8 */  lh    $t7, -0x28($v0)
/* AC2834 8004B694 448F3000 */  mtc1  $t7, $f6
/* AC2838 8004B698 00000000 */  nop   
/* AC283C 8004B69C 468032A0 */  cvt.s.w $f10, $f6
/* AC2840 8004B6A0 E60A0004 */  swc1  $f10, 4($s0)
/* AC2844 8004B6A4 8458FFDC */  lh    $t8, -0x24($v0)
/* AC2848 8004B6A8 44984000 */  mtc1  $t8, $f8
/* AC284C 8004B6AC 00000000 */  nop   
/* AC2850 8004B6B0 46804120 */  cvt.s.w $f4, $f8
/* AC2854 8004B6B4 E6040008 */  swc1  $f4, 8($s0)
/* AC2858 8004B6B8 8449FFE0 */  lh    $t1, -0x20($v0)
/* AC285C 8004B6BC 44893000 */  mtc1  $t1, $f6
/* AC2860 8004B6C0 24090028 */  li    $t1, 40
/* AC2864 8004B6C4 468032A0 */  cvt.s.w $f10, $f6
/* AC2868 8004B6C8 E60A000C */  swc1  $f10, 0xc($s0)
/* AC286C 8004B6CC 8459FFE4 */  lh    $t9, -0x1c($v0)
/* AC2870 8004B6D0 44994000 */  mtc1  $t9, $f8
/* AC2874 8004B6D4 00000000 */  nop   
/* AC2878 8004B6D8 46804120 */  cvt.s.w $f4, $f8
/* AC287C 8004B6DC E6040010 */  swc1  $f4, 0x10($s0)
/* AC2880 8004B6E0 844AFFE8 */  lh    $t2, -0x18($v0)
/* AC2884 8004B6E4 448A3000 */  mtc1  $t2, $f6
/* AC2888 8004B6E8 00000000 */  nop   
/* AC288C 8004B6EC 468032A0 */  cvt.s.w $f10, $f6
/* AC2890 8004B6F0 E60A0014 */  swc1  $f10, 0x14($s0)
/* AC2894 8004B6F4 844BFFEC */  lh    $t3, -0x14($v0)
/* AC2898 8004B6F8 448B4000 */  mtc1  $t3, $f8
/* AC289C 8004B6FC 00000000 */  nop   
/* AC28A0 8004B700 46804120 */  cvt.s.w $f4, $f8
/* AC28A4 8004B704 46102182 */  mul.s $f6, $f4, $f16
/* AC28A8 8004B708 E6060018 */  swc1  $f6, 0x18($s0)
/* AC28AC 8004B70C 844CFFF0 */  lh    $t4, -0x10($v0)
/* AC28B0 8004B710 448C5000 */  mtc1  $t4, $f10
/* AC28B4 8004B714 00000000 */  nop   
/* AC28B8 8004B718 46805220 */  cvt.s.w $f8, $f10
/* AC28BC 8004B71C E608001C */  swc1  $f8, 0x1c($s0)
/* AC28C0 8004B720 844DFFF4 */  lh    $t5, -0xc($v0)
/* AC28C4 8004B724 448D2000 */  mtc1  $t5, $f4
/* AC28C8 8004B728 00000000 */  nop   
/* AC28CC 8004B72C 468021A0 */  cvt.s.w $f6, $f4
/* AC28D0 8004B730 46103282 */  mul.s $f10, $f6, $f16
/* AC28D4 8004B734 E60A0020 */  swc1  $f10, 0x20($s0)
/* AC28D8 8004B738 844EFFF8 */  lh    $t6, -8($v0)
/* AC28DC 8004B73C A60E002C */  sh    $t6, 0x2c($s0)
/* AC28E0 8004B740 844FFFFC */  lh    $t7, -4($v0)
/* AC28E4 8004B744 448F4000 */  mtc1  $t7, $f8
/* AC28E8 8004B748 00000000 */  nop   
/* AC28EC 8004B74C 46804120 */  cvt.s.w $f4, $f8
/* AC28F0 8004B750 46102182 */  mul.s $f6, $f4, $f16
/* AC28F4 8004B754 00000000 */  nop   
/* AC28F8 8004B758 46003282 */  mul.s $f10, $f6, $f0
/* AC28FC 8004B75C 00000000 */  nop   
/* AC2900 8004B760 460C5202 */  mul.s $f8, $f10, $f12
/* AC2904 8004B764 E6080024 */  swc1  $f8, 0x24($s0)
/* AC2908 8004B768 84580000 */  lh    $t8, ($v0)
/* AC290C 8004B76C 44982000 */  mtc1  $t8, $f4
/* AC2910 8004B770 00000000 */  nop   
/* AC2914 8004B774 468021A0 */  cvt.s.w $f6, $f4
/* AC2918 8004B778 46103282 */  mul.s $f10, $f6, $f16
/* AC291C 8004B77C E60A0028 */  swc1  $f10, 0x28($s0)
/* AC2920 8004B780 A629001C */  sh    $t1, 0x1c($s1)
/* AC2924 8004B784 8CB90000 */  lw    $t9, ($a1)
/* AC2928 8004B788 872A01AC */  lh    $t2, 0x1ac($t9)
/* AC292C 8004B78C 448A4000 */  mtc1  $t2, $f8
/* AC2930 8004B790 00000000 */  nop   
/* AC2934 8004B794 46804120 */  cvt.s.w $f4, $f8
/* AC2938 8004B798 46102182 */  mul.s $f6, $f4, $f16
/* AC293C 8004B79C E6260010 */  swc1  $f6, 0x10($s1)
/* AC2940 8004B7A0 8CAB0000 */  lw    $t3, ($a1)
/* AC2944 8004B7A4 85630314 */  lh    $v1, 0x314($t3)
.L8004B7A8:
/* AC2948 8004B7A8 3C018014 */  lui   $at, %hi(D_80139FD8)
/* AC294C 8004B7AC C4309FD8 */  lwc1  $f16, %lo(D_80139FD8)($at)
/* AC2950 8004B7B0 10600007 */  beqz  $v1, .L8004B7D0
/* AC2954 8004B7B4 26110030 */   addiu $s1, $s0, 0x30
/* AC2958 8004B7B8 0C011495 */  jal   func_80045254
/* AC295C 8004B7BC 02002025 */   move  $a0, $s0
/* AC2960 8004B7C0 3C018014 */  lui   $at, %hi(D_80139FDC)
/* AC2964 8004B7C4 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2968 8004B7C8 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC296C 8004B7CC C4309FDC */  lwc1  $f16, %lo(D_80139FDC)($at)
.L8004B7D0:
/* AC2970 8004B7D0 C60A0004 */  lwc1  $f10, 4($s0)
/* AC2974 8004B7D4 E7AA0080 */  swc1  $f10, 0x80($sp)
/* AC2978 8004B7D8 C6080010 */  lwc1  $f8, 0x10($s0)
/* AC297C 8004B7DC E7A8007C */  swc1  $f8, 0x7c($sp)
/* AC2980 8004B7E0 C6040014 */  lwc1  $f4, 0x14($s0)
/* AC2984 8004B7E4 E7A40078 */  swc1  $f4, 0x78($sp)
/* AC2988 8004B7E8 C606001C */  lwc1  $f6, 0x1c($s0)
/* AC298C 8004B7EC E7A60074 */  swc1  $f6, 0x74($sp)
/* AC2990 8004B7F0 8E0C0090 */  lw    $t4, 0x90($s0)
/* AC2994 8004B7F4 8D8D067C */  lw    $t5, 0x67c($t4)
/* AC2998 8004B7F8 31AE1000 */  andi  $t6, $t5, 0x1000
/* AC299C 8004B7FC 51C0004F */  beql  $t6, $zero, .L8004B93C
/* AC29A0 8004B800 8622001C */   lh    $v0, 0x1c($s1)
/* AC29A4 8004B804 8CA30000 */  lw    $v1, ($a1)
/* AC29A8 8004B808 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC29AC 8004B80C 44813000 */  mtc1  $at, $f6
/* AC29B0 8004B810 846F01AC */  lh    $t7, 0x1ac($v1)
/* AC29B4 8004B814 847801C6 */  lh    $t8, 0x1c6($v1)
/* AC29B8 8004B818 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC29BC 8004B81C 448F5000 */  mtc1  $t7, $f10
/* AC29C0 8004B820 34E7CCCD */  ori   $a3, $a3, 0xcccd
/* AC29C4 8004B824 C62E0010 */  lwc1  $f14, 0x10($s1)
/* AC29C8 8004B828 46805220 */  cvt.s.w $f8, $f10
/* AC29CC 8004B82C 44985000 */  mtc1  $t8, $f10
/* AC29D0 8004B830 46104102 */  mul.s $f4, $f8, $f16
/* AC29D4 8004B834 46805220 */  cvt.s.w $f8, $f10
/* AC29D8 8004B838 46062302 */  mul.s $f12, $f4, $f6
/* AC29DC 8004B83C 00000000 */  nop   
/* AC29E0 8004B840 46104102 */  mul.s $f4, $f8, $f16
/* AC29E4 8004B844 44062000 */  mfc1  $a2, $f4
/* AC29E8 8004B848 0C010E27 */  jal   func_8004389C
/* AC29EC 8004B84C 00000000 */   nop   
/* AC29F0 8004B850 E6200010 */  swc1  $f0, 0x10($s1)
/* AC29F4 8004B854 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AC29F8 8004B858 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC29FC 8004B85C 3C018014 */  lui   $at, %hi(D_80139FE0)
/* AC2A00 8004B860 C42C9FE0 */  lwc1  $f12, %lo(D_80139FE0)($at)
/* AC2A04 8004B864 853901C6 */  lh    $t9, 0x1c6($t1)
/* AC2A08 8004B868 3C018014 */  lui   $at, %hi(D_80139FE4)
/* AC2A0C 8004B86C C4289FE4 */  lwc1  $f8, %lo(D_80139FE4)($at)
/* AC2A10 8004B870 44993000 */  mtc1  $t9, $f6
/* AC2A14 8004B874 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2A18 8004B878 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2A1C 8004B87C 468032A0 */  cvt.s.w $f10, $f6
/* AC2A20 8004B880 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2A24 8004B884 46085102 */  mul.s $f4, $f10, $f8
/* AC2A28 8004B888 44062000 */  mfc1  $a2, $f4
/* AC2A2C 8004B88C 0C010E27 */  jal   func_8004389C
/* AC2A30 8004B890 00000000 */   nop   
/* AC2A34 8004B894 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2A38 8004B898 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC2A3C 8004B89C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC2A40 8004B8A0 3C018014 */  lui   $at, %hi(D_80139FE8)
/* AC2A44 8004B8A4 C42C9FE8 */  lwc1  $f12, %lo(D_80139FE8)($at)
/* AC2A48 8004B8A8 854B01C6 */  lh    $t3, 0x1c6($t2)
/* AC2A4C 8004B8AC 3C018014 */  lui   $at, %hi(D_80139FEC)
/* AC2A50 8004B8B0 C4289FEC */  lwc1  $f8, %lo(D_80139FEC)($at)
/* AC2A54 8004B8B4 448B3000 */  mtc1  $t3, $f6
/* AC2A58 8004B8B8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2A5C 8004B8BC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2A60 8004B8C0 468032A0 */  cvt.s.w $f10, $f6
/* AC2A64 8004B8C4 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2A68 8004B8C8 46085102 */  mul.s $f4, $f10, $f8
/* AC2A6C 8004B8CC 44062000 */  mfc1  $a2, $f4
/* AC2A70 8004B8D0 0C010E27 */  jal   func_8004389C
/* AC2A74 8004B8D4 00000000 */   nop   
/* AC2A78 8004B8D8 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2A7C 8004B8DC 8622001C */  lh    $v0, 0x1c($s1)
/* AC2A80 8004B8E0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2A84 8004B8E4 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC2A88 8004B8E8 2841FFED */  slti  $at, $v0, -0x13
/* AC2A8C 8004B8EC 14200003 */  bnez  $at, .L8004B8FC
/* AC2A90 8004B8F0 244CFFFF */   addiu $t4, $v0, -1
/* AC2A94 8004B8F4 1000000D */  b     .L8004B92C
/* AC2A98 8004B8F8 A62C001C */   sh    $t4, 0x1c($s1)
.L8004B8FC:
/* AC2A9C 8004B8FC 3C01437A */  li    $at, 0x437A0000 # 0.000000
/* AC2AA0 8004B900 44813000 */  mtc1  $at, $f6
/* AC2AA4 8004B904 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC2AA8 8004B908 44815000 */  mtc1  $at, $f10
/* AC2AAC 8004B90C 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2AB0 8004B910 44814000 */  mtc1  $at, $f8
/* AC2AB4 8004B914 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AC2AB8 8004B918 44812000 */  mtc1  $at, $f4
/* AC2ABC 8004B91C E7A60080 */  swc1  $f6, 0x80($sp)
/* AC2AC0 8004B920 E7AA007C */  swc1  $f10, 0x7c($sp)
/* AC2AC4 8004B924 E7A80078 */  swc1  $f8, 0x78($sp)
/* AC2AC8 8004B928 E7A40074 */  swc1  $f4, 0x74($sp)
.L8004B92C:
/* AC2ACC 8004B92C 3C018014 */  lui   $at, %hi(D_80139FF0)
/* AC2AD0 8004B930 10000059 */  b     .L8004BA98
/* AC2AD4 8004B934 C4309FF0 */   lwc1  $f16, %lo(D_80139FF0)($at)
/* AC2AD8 8004B938 8622001C */  lh    $v0, 0x1c($s1)
.L8004B93C:
/* AC2ADC 8004B93C 3C01437A */  li    $at, 0x437A0000 # 0.000000
/* AC2AE0 8004B940 240E0028 */  li    $t6, 40
/* AC2AE4 8004B944 0441000E */  bgez  $v0, .L8004B980
/* AC2AE8 8004B948 244D0001 */   addiu $t5, $v0, 1
/* AC2AEC 8004B94C 44813000 */  mtc1  $at, $f6
/* AC2AF0 8004B950 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC2AF4 8004B954 44815000 */  mtc1  $at, $f10
/* AC2AF8 8004B958 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2AFC 8004B95C 44814000 */  mtc1  $at, $f8
/* AC2B00 8004B960 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AC2B04 8004B964 44812000 */  mtc1  $at, $f4
/* AC2B08 8004B968 E7A60080 */  swc1  $f6, 0x80($sp)
/* AC2B0C 8004B96C E7AA007C */  swc1  $f10, 0x7c($sp)
/* AC2B10 8004B970 E7A80078 */  swc1  $f8, 0x78($sp)
/* AC2B14 8004B974 E7A40074 */  swc1  $f4, 0x74($sp)
/* AC2B18 8004B978 10000047 */  b     .L8004BA98
/* AC2B1C 8004B97C A62D001C */   sh    $t5, 0x1c($s1)
.L8004B980:
/* AC2B20 8004B980 A62E001C */  sh    $t6, 0x1c($s1)
/* AC2B24 8004B984 8CA30000 */  lw    $v1, ($a1)
/* AC2B28 8004B988 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2B2C 8004B98C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2B30 8004B990 846F01AC */  lh    $t7, 0x1ac($v1)
/* AC2B34 8004B994 847801C6 */  lh    $t8, 0x1c6($v1)
/* AC2B38 8004B998 C62E0010 */  lwc1  $f14, 0x10($s1)
/* AC2B3C 8004B99C 448F3000 */  mtc1  $t7, $f6
/* AC2B40 8004B9A0 44984000 */  mtc1  $t8, $f8
/* AC2B44 8004B9A4 468032A0 */  cvt.s.w $f10, $f6
/* AC2B48 8004B9A8 46804120 */  cvt.s.w $f4, $f8
/* AC2B4C 8004B9AC 46105302 */  mul.s $f12, $f10, $f16
/* AC2B50 8004B9B0 00000000 */  nop   
/* AC2B54 8004B9B4 46102182 */  mul.s $f6, $f4, $f16
/* AC2B58 8004B9B8 44063000 */  mfc1  $a2, $f6
/* AC2B5C 8004B9BC 0C010E27 */  jal   func_8004389C
/* AC2B60 8004B9C0 00000000 */   nop   
/* AC2B64 8004B9C4 E6200010 */  swc1  $f0, 0x10($s1)
/* AC2B68 8004B9C8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC2B6C 8004B9CC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2B70 8004B9D0 3C018014 */  lui   $at, %hi(D_80139FF4)
/* AC2B74 8004B9D4 C4249FF4 */  lwc1  $f4, %lo(D_80139FF4)($at)
/* AC2B78 8004B9D8 846901E4 */  lh    $t1, 0x1e4($v1)
/* AC2B7C 8004B9DC 847901C6 */  lh    $t9, 0x1c6($v1)
/* AC2B80 8004B9E0 3C018014 */  lui   $at, %hi(D_80139FF8)
/* AC2B84 8004B9E4 44895000 */  mtc1  $t1, $f10
/* AC2B88 8004B9E8 44993000 */  mtc1  $t9, $f6
/* AC2B8C 8004B9EC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2B90 8004B9F0 46805220 */  cvt.s.w $f8, $f10
/* AC2B94 8004B9F4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2B98 8004B9F8 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2B9C 8004B9FC 468032A0 */  cvt.s.w $f10, $f6
/* AC2BA0 8004BA00 46044302 */  mul.s $f12, $f8, $f4
/* AC2BA4 8004BA04 C4289FF8 */  lwc1  $f8, %lo(D_80139FF8)($at)
/* AC2BA8 8004BA08 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC2BAC 8004BA0C 46085102 */  mul.s $f4, $f10, $f8
/* AC2BB0 8004BA10 00000000 */  nop   
/* AC2BB4 8004BA14 46062282 */  mul.s $f10, $f4, $f6
/* AC2BB8 8004BA18 44065000 */  mfc1  $a2, $f10
/* AC2BBC 8004BA1C 0C010E27 */  jal   func_8004389C
/* AC2BC0 8004BA20 00000000 */   nop   
/* AC2BC4 8004BA24 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2BC8 8004BA28 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC2BCC 8004BA2C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2BD0 8004BA30 3C018014 */  lui   $at, %hi(D_80139FFC)
/* AC2BD4 8004BA34 C4269FFC */  lwc1  $f6, %lo(D_80139FFC)($at)
/* AC2BD8 8004BA38 846A01E4 */  lh    $t2, 0x1e4($v1)
/* AC2BDC 8004BA3C 846B01C8 */  lh    $t3, 0x1c8($v1)
/* AC2BE0 8004BA40 3C018014 */  lui   $at, %hi(D_8013A000)
/* AC2BE4 8004BA44 448A4000 */  mtc1  $t2, $f8
/* AC2BE8 8004BA48 448B5000 */  mtc1  $t3, $f10
/* AC2BEC 8004BA4C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2BF0 8004BA50 46804120 */  cvt.s.w $f4, $f8
/* AC2BF4 8004BA54 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2BF8 8004BA58 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2BFC 8004BA5C 46805220 */  cvt.s.w $f8, $f10
/* AC2C00 8004BA60 46062302 */  mul.s $f12, $f4, $f6
/* AC2C04 8004BA64 C424A000 */  lwc1  $f4, %lo(D_8013A000)($at)
/* AC2C08 8004BA68 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC2C0C 8004BA6C 46044182 */  mul.s $f6, $f8, $f4
/* AC2C10 8004BA70 00000000 */  nop   
/* AC2C14 8004BA74 460A3202 */  mul.s $f8, $f6, $f10
/* AC2C18 8004BA78 44064000 */  mfc1  $a2, $f8
/* AC2C1C 8004BA7C 0C010E27 */  jal   func_8004389C
/* AC2C20 8004BA80 00000000 */   nop   
/* AC2C24 8004BA84 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2C28 8004BA88 3C018014 */  lui   $at, %hi(D_8013A004)
/* AC2C2C 8004BA8C 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2C30 8004BA90 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC2C34 8004BA94 C430A004 */  lwc1  $f16, %lo(D_8013A004)($at)
.L8004BA98:
/* AC2C38 8004BA98 8CAC0000 */  lw    $t4, ($a1)
/* AC2C3C 8004BA9C 3C018014 */  lui   $at, %hi(D_8013A008)
/* AC2C40 8004BAA0 C428A008 */  lwc1  $f8, %lo(D_8013A008)($at)
/* AC2C44 8004BAA4 858D019C */  lh    $t5, 0x19c($t4)
/* AC2C48 8004BAA8 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC2C4C 8004BAAC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2C50 8004BAB0 448D2000 */  mtc1  $t5, $f4
/* AC2C54 8004BAB4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2C58 8004BAB8 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC2C5C 8004BABC 468021A0 */  cvt.s.w $f6, $f4
/* AC2C60 8004BAC0 46103302 */  mul.s $f12, $f6, $f16
/* AC2C64 8004BAC4 00000000 */  nop   
/* AC2C68 8004BAC8 46085102 */  mul.s $f4, $f10, $f8
/* AC2C6C 8004BACC 44062000 */  mfc1  $a2, $f4
/* AC2C70 8004BAD0 0C010E27 */  jal   func_8004389C
/* AC2C74 8004BAD4 00000000 */   nop   
/* AC2C78 8004BAD8 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC2C7C 8004BADC C7A60064 */  lwc1  $f6, 0x64($sp)
/* AC2C80 8004BAE0 C60A0000 */  lwc1  $f10, ($s0)
/* AC2C84 8004BAE4 26050050 */  addiu $a1, $s0, 0x50
/* AC2C88 8004BAE8 2606005C */  addiu $a2, $s0, 0x5c
/* AC2C8C 8004BAEC 460A3200 */  add.s $f8, $f6, $f10
/* AC2C90 8004BAF0 AFA6004C */  sw    $a2, 0x4c($sp)
/* AC2C94 8004BAF4 AFA50048 */  sw    $a1, 0x48($sp)
/* AC2C98 8004BAF8 27A4009C */  addiu $a0, $sp, 0x9c
/* AC2C9C 8004BAFC 0C01F124 */  jal   func_8007C490
/* AC2CA0 8004BB00 E7A80064 */   swc1  $f8, 0x64($sp)
/* AC2CA4 8004BB04 26060074 */  addiu $a2, $s0, 0x74
/* AC2CA8 8004BB08 AFA60044 */  sw    $a2, 0x44($sp)
/* AC2CAC 8004BB0C 27A40094 */  addiu $a0, $sp, 0x94
/* AC2CB0 8004BB10 0C01F124 */  jal   func_8007C490
/* AC2CB4 8004BB14 8FA50048 */   lw    $a1, 0x48($sp)
/* AC2CB8 8004BB18 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC2CBC 8004BB1C 10600004 */  beqz  $v1, .L8004BB30
/* AC2CC0 8004BB20 00000000 */   nop   
/* AC2CC4 8004BB24 8C6E0130 */  lw    $t6, 0x130($v1)
/* AC2CC8 8004BB28 55C0000C */  bnezl $t6, .L8004BB5C
/* AC2CCC 8004BB2C 860F002C */   lh    $t7, 0x2c($s0)
.L8004BB30:
/* AC2CD0 8004BB30 14600003 */  bnez  $v1, .L8004BB40
/* AC2CD4 8004BB34 3C048014 */   lui   $a0, %hi(D_80139168)
/* AC2CD8 8004BB38 0C00084C */  jal   osSyncPrintf
/* AC2CDC 8004BB3C 24849168 */   addiu $a0, %lo(D_80139168) # addiu $a0, $a0, -0x6e98
.L8004BB40:
/* AC2CE0 8004BB40 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC2CE4 8004BB44 02002025 */  move  $a0, $s0
/* AC2CE8 8004BB48 0C016911 */  jal   func_8005A444
/* AC2CEC 8004BB4C 24050001 */   li    $a1, 1
/* AC2CF0 8004BB50 100002A3 */  b     .L8004C5E0
/* AC2CF4 8004BB54 24020001 */   li    $v0, 1
/* AC2CF8 8004BB58 860F002C */  lh    $t7, 0x2c($s0)
.L8004BB5C:
/* AC2CFC 8004BB5C 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC2D00 8004BB60 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* AC2D04 8004BB64 8602015E */  lh    $v0, 0x15e($s0)
/* AC2D08 8004BB68 2401000A */  li    $at, 10
/* AC2D0C 8004BB6C 50400006 */  beql  $v0, $zero, .L8004BB88
/* AC2D10 8004BB70 44802000 */   mtc1  $zero, $f4
/* AC2D14 8004BB74 10410003 */  beq   $v0, $at, .L8004BB84
/* AC2D18 8004BB78 24010014 */   li    $at, 20
/* AC2D1C 8004BB7C 5441002B */  bnel  $v0, $at, .L8004BC2C
/* AC2D20 8004BB80 86180140 */   lh    $t8, 0x140($s0)
.L8004BB84:
/* AC2D24 8004BB84 44802000 */  mtc1  $zero, $f4
.L8004BB88:
/* AC2D28 8004BB88 A6200014 */  sh    $zero, 0x14($s1)
/* AC2D2C 8004BB8C 3C048014 */  lui   $a0, %hi(D_801391E4)
/* AC2D30 8004BB90 E6240004 */  swc1  $f4, 4($s1)
/* AC2D34 8004BB94 8E1800A8 */  lw    $t8, 0xa8($s0)
/* AC2D38 8004BB98 AE38000C */  sw    $t8, 0xc($s1)
/* AC2D3C 8004BB9C 8609015E */  lh    $t1, 0x15e($s0)
/* AC2D40 8004BBA0 25390001 */  addiu $t9, $t1, 1
/* AC2D44 8004BBA4 A619015E */  sh    $t9, 0x15e($s0)
/* AC2D48 8004BBA8 8E2A000C */  lw    $t2, 0xc($s1)
/* AC2D4C 8004BBAC 85450000 */  lh    $a1, ($t2)
/* AC2D50 8004BBB0 18A00006 */  blez  $a1, .L8004BBCC
/* AC2D54 8004BBB4 00000000 */   nop   
/* AC2D58 8004BBB8 3C048014 */  lui   $a0, %hi(D_801391B4) # $a0, 0x8014
/* AC2D5C 8004BBBC 0C00084C */  jal   osSyncPrintf
/* AC2D60 8004BBC0 248491B4 */   addiu $a0, %lo(D_801391B4) # addiu $a0, $a0, -0x6e4c
/* AC2D64 8004BBC4 10000009 */  b     .L8004BBEC
/* AC2D68 8004BBC8 3C038016 */   lui   $v1, %hi(gGameInfo) # $v1, 0x8016
.L8004BBCC:
/* AC2D6C 8004BBCC 0C00084C */  jal   osSyncPrintf
/* AC2D70 8004BBD0 248491E4 */   addiu $a0, %lo(D_801391E4)
/* AC2D74 8004BBD4 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC2D78 8004BBD8 02002025 */  move  $a0, $s0
/* AC2D7C 8004BBDC 0C016911 */  jal   func_8005A444
/* AC2D80 8004BBE0 24050001 */   li    $a1, 1
/* AC2D84 8004BBE4 1000027E */  b     .L8004C5E0
/* AC2D88 8004BBE8 24020001 */   li    $v0, 1
.L8004BBEC:
/* AC2D8C 8004BBEC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2D90 8004BBF0 846B01C4 */  lh    $t3, 0x1c4($v1)
/* AC2D94 8004BBF4 846C01C2 */  lh    $t4, 0x1c2($v1)
/* AC2D98 8004BBF8 016C6821 */  addu  $t5, $t3, $t4
/* AC2D9C 8004BBFC A62D001A */  sh    $t5, 0x1a($s1)
/* AC2DA0 8004BC00 87AE00A2 */  lh    $t6, 0xa2($sp)
/* AC2DA4 8004BC04 A62E0016 */  sh    $t6, 0x16($s1)
/* AC2DA8 8004BC08 87AF00A0 */  lh    $t7, 0xa0($sp)
/* AC2DAC 8004BC0C A62F0018 */  sh    $t7, 0x18($s1)
/* AC2DB0 8004BC10 C7A6009C */  lwc1  $f6, 0x9c($sp)
/* AC2DB4 8004BC14 E6260000 */  swc1  $f6, ($s1)
/* AC2DB8 8004BC18 C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC2DBC 8004BC1C C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC2DC0 8004BC20 46085101 */  sub.s $f4, $f10, $f8
/* AC2DC4 8004BC24 E6240008 */  swc1  $f4, 8($s1)
/* AC2DC8 8004BC28 86180140 */  lh    $t8, 0x140($s0)
.L8004BC2C:
/* AC2DCC 8004BC2C 24010007 */  li    $at, 7
/* AC2DD0 8004BC30 24090001 */  li    $t1, 1
/* AC2DD4 8004BC34 5701000B */  bnel  $t8, $at, .L8004BC64
/* AC2DD8 8004BC38 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2DDC 8004BC3C 87B900A0 */  lh    $t9, 0xa0($sp)
/* AC2DE0 8004BC40 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC2DE4 8004BC44 AC29D3E8 */  sw    $t1, %lo(D_8011D3E8)($at)
/* AC2DE8 8004BC48 00195023 */  negu  $t2, $t9
/* AC2DEC 8004BC4C A60A0134 */  sh    $t2, 0x134($s0)
/* AC2DF0 8004BC50 87AB00A2 */  lh    $t3, 0xa2($sp)
/* AC2DF4 8004BC54 A6000138 */  sh    $zero, 0x138($s0)
/* AC2DF8 8004BC58 256C8001 */  addiu $t4, $t3, -0x7fff
/* AC2DFC 8004BC5C A60C0136 */  sh    $t4, 0x136($s0)
/* AC2E00 8004BC60 C6060098 */  lwc1  $f6, 0x98($s0)
.L8004BC64:
/* AC2E04 8004BC64 C60A0104 */  lwc1  $f10, 0x104($s0)
/* AC2E08 8004BC68 460A3032 */  c.eq.s $f6, $f10
/* AC2E0C 8004BC6C 00000000 */  nop   
/* AC2E10 8004BC70 4503000F */  bc1tl .L8004BCB0
/* AC2E14 8004BC74 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2E18 8004BC78 8E040090 */  lw    $a0, 0x90($s0)
/* AC2E1C 8004BC7C 3C018014 */  lui   $at, %hi(D_8013A00C)
/* AC2E20 8004BC80 C428A00C */  lwc1  $f8, %lo(D_8013A00C)($at)
/* AC2E24 8004BC84 C484006C */  lwc1  $f4, 0x6c($a0)
/* AC2E28 8004BC88 4604403C */  c.lt.s $f8, $f4
/* AC2E2C 8004BC8C 00000000 */  nop   
/* AC2E30 8004BC90 45030007 */  bc1tl .L8004BCB0
/* AC2E34 8004BC94 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2E38 8004BC98 8C8D067C */  lw    $t5, 0x67c($a0)
/* AC2E3C 8004BC9C 24060001 */  li    $a2, 1
/* AC2E40 8004BCA0 000D7280 */  sll   $t6, $t5, 0xa
/* AC2E44 8004BCA4 05C10005 */  bgez  $t6, .L8004BCBC
/* AC2E48 8004BCA8 00000000 */   nop   
/* AC2E4C 8004BCAC C6060098 */  lwc1  $f6, 0x98($s0)
.L8004BCB0:
/* AC2E50 8004BCB0 00003025 */  move  $a2, $zero
/* AC2E54 8004BCB4 10000001 */  b     .L8004BCBC
/* AC2E58 8004BCB8 E6260008 */   swc1  $f6, 8($s1)
.L8004BCBC:
/* AC2E5C 8004BCBC 862F001A */  lh    $t7, 0x1a($s1)
/* AC2E60 8004BCC0 02002025 */  move  $a0, $s0
/* AC2E64 8004BCC4 55E0000C */  bnezl $t7, .L8004BCF8
/* AC2E68 8004BCC8 260400AC */   addiu $a0, $s0, 0xac
/* AC2E6C 8004BCCC 50C00004 */  beql  $a2, $zero, .L8004BCE0
/* AC2E70 8004BCD0 C6020020 */   lwc1  $f2, 0x20($s0)
/* AC2E74 8004BCD4 10000002 */  b     .L8004BCE0
/* AC2E78 8004BCD8 C6020028 */   lwc1  $f2, 0x28($s0)
/* AC2E7C 8004BCDC C6020020 */  lwc1  $f2, 0x20($s0)
.L8004BCE0:
/* AC2E80 8004BCE0 44051000 */  mfc1  $a1, $f2
/* AC2E84 8004BCE4 0C011429 */  jal   func_800450A4
/* AC2E88 8004BCE8 A7A60084 */   sh    $a2, 0x84($sp)
/* AC2E8C 8004BCEC 87A60084 */  lh    $a2, 0x84($sp)
/* AC2E90 8004BCF0 E6000100 */  swc1  $f0, 0x100($s0)
/* AC2E94 8004BCF4 260400AC */  addiu $a0, $s0, 0xac
.L8004BCF8:
/* AC2E98 8004BCF8 8E0500A8 */  lw    $a1, 0xa8($s0)
/* AC2E9C 8004BCFC A7A60084 */  sh    $a2, 0x84($sp)
/* AC2EA0 8004BD00 0C00BBB9 */  jal   func_8002EEE4
/* AC2EA4 8004BD04 AFA40038 */   sw    $a0, 0x38($sp)
/* AC2EA8 8004BD08 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC2EAC 8004BD0C 8E27000C */  lw    $a3, 0xc($s1)
/* AC2EB0 8004BD10 87A60084 */  lh    $a2, 0x84($sp)
/* AC2EB4 8004BD14 02002025 */  move  $a0, $s0
/* AC2EB8 8004BD18 10670009 */  beq   $v1, $a3, .L8004BD40
/* AC2EBC 8004BD1C 27A50094 */   addiu $a1, $sp, 0x94
/* AC2EC0 8004BD20 3C048014 */  lui   $a0, %hi(D_80139218) # $a0, 0x8014
/* AC2EC4 8004BD24 24849218 */  addiu $a0, %lo(D_80139218) # addiu $a0, $a0, -0x6de8
/* AC2EC8 8004BD28 84E50000 */  lh    $a1, ($a3)
/* AC2ECC 8004BD2C 0C00084C */  jal   osSyncPrintf
/* AC2ED0 8004BD30 84660000 */   lh    $a2, ($v1)
/* AC2ED4 8004BD34 A600015E */  sh    $zero, 0x15e($s0)
/* AC2ED8 8004BD38 10000229 */  b     .L8004C5E0
/* AC2EDC 8004BD3C 24020001 */   li    $v0, 1
.L8004BD40:
/* AC2EE0 8004BD40 10C00003 */  beqz  $a2, .L8004BD50
/* AC2EE4 8004BD44 26030094 */   addiu $v1, $s0, 0x94
/* AC2EE8 8004BD48 10000002 */  b     .L8004BD54
/* AC2EEC 8004BD4C C6020024 */   lwc1  $f2, 0x24($s0)
.L8004BD50:
/* AC2EF0 8004BD50 C6020000 */  lwc1  $f2, ($s0)
.L8004BD54:
/* AC2EF4 8004BD54 10C00003 */  beqz  $a2, .L8004BD64
/* AC2EF8 8004BD58 C7AA0080 */   lwc1  $f10, 0x80($sp)
/* AC2EFC 8004BD5C 10000002 */  b     .L8004BD68
/* AC2F00 8004BD60 24020081 */   li    $v0, 129
.L8004BD64:
/* AC2F04 8004BD64 24020001 */  li    $v0, 1
.L8004BD68:
/* AC2F08 8004BD68 26380008 */  addiu $t8, $s1, 8
/* AC2F0C 8004BD6C 27A900A4 */  addiu $t1, $sp, 0xa4
/* AC2F10 8004BD70 AFA90018 */  sw    $t1, 0x18($sp)
/* AC2F14 8004BD74 AFB80014 */  sw    $t8, 0x14($sp)
/* AC2F18 8004BD78 E7AA0010 */  swc1  $f10, 0x10($sp)
/* AC2F1C 8004BD7C 8619002C */  lh    $t9, 0x2c($s0)
/* AC2F20 8004BD80 44071000 */  mfc1  $a3, $f2
/* AC2F24 8004BD84 AFA30040 */  sw    $v1, 0x40($sp)
/* AC2F28 8004BD88 00595025 */  or    $t2, $v0, $t9
/* AC2F2C 8004BD8C AFAA001C */  sw    $t2, 0x1c($sp)
/* AC2F30 8004BD90 0C01182A */  jal   func_800460A8
/* AC2F34 8004BD94 8FA60038 */   lw    $a2, 0x38($sp)
/* AC2F38 8004BD98 8FA30040 */  lw    $v1, 0x40($sp)
/* AC2F3C 8004BD9C 87A800AA */  lh    $t0, 0xaa($sp)
/* AC2F40 8004BDA0 27A5011C */  addiu $a1, $sp, 0x11c
/* AC2F44 8004BDA4 8C6C0000 */  lw    $t4, ($v1)
/* AC2F48 8004BDA8 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC2F4C 8004BDAC ACAC0000 */  sw    $t4, ($a1)
/* AC2F50 8004BDB0 8C6B0004 */  lw    $t3, 4($v1)
/* AC2F54 8004BDB4 ACAB0004 */  sw    $t3, 4($a1)
/* AC2F58 8004BDB8 8C6C0008 */  lw    $t4, 8($v1)
/* AC2F5C 8004BDBC ACAC0008 */  sw    $t4, 8($a1)
/* AC2F60 8004BDC0 C7A80120 */  lwc1  $f8, 0x120($sp)
/* AC2F64 8004BDC4 C7A40064 */  lwc1  $f4, 0x64($sp)
/* AC2F68 8004BDC8 8FA60038 */  lw    $a2, 0x38($sp)
/* AC2F6C 8004BDCC A7A8008C */  sh    $t0, 0x8c($sp)
/* AC2F70 8004BDD0 46044180 */  add.s $f6, $f8, $f4
/* AC2F74 8004BDD4 0C01F124 */  jal   func_8007C490
/* AC2F78 8004BDD8 E7A60120 */   swc1  $f6, 0x120($sp)
/* AC2F7C 8004BDDC C7A000A4 */  lwc1  $f0, 0xa4($sp)
/* AC2F80 8004BDE0 C7A20080 */  lwc1  $f2, 0x80($sp)
/* AC2F84 8004BDE4 87A8008C */  lh    $t0, 0x8c($sp)
/* AC2F88 8004BDE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC2F8C 8004BDEC 4600103C */  c.lt.s $f2, $f0
/* AC2F90 8004BDF0 00000000 */  nop   
/* AC2F94 8004BDF4 45020005 */  bc1fl .L8004BE0C
/* AC2F98 8004BDF8 46020203 */   div.s $f8, $f0, $f2
/* AC2F9C 8004BDFC 44815000 */  mtc1  $at, $f10
/* AC2FA0 8004BE00 10000003 */  b     .L8004BE10
/* AC2FA4 8004BE04 E7AA00E4 */   swc1  $f10, 0xe4($sp)
/* AC2FA8 8004BE08 46020203 */  div.s $f8, $f0, $f2
.L8004BE0C:
/* AC2FAC 8004BE0C E7A800E4 */  swc1  $f8, 0xe4($sp)
.L8004BE10:
/* AC2FB0 8004BE10 8FAD0038 */  lw    $t5, 0x38($sp)
/* AC2FB4 8004BE14 27A60110 */  addiu $a2, $sp, 0x110
/* AC2FB8 8004BE18 27A400AC */  addiu $a0, $sp, 0xac
/* AC2FBC 8004BE1C 8DAF0000 */  lw    $t7, ($t5)
/* AC2FC0 8004BE20 ACCF0000 */  sw    $t7, ($a2)
/* AC2FC4 8004BE24 8DAE0004 */  lw    $t6, 4($t5)
/* AC2FC8 8004BE28 ACCE0004 */  sw    $t6, 4($a2)
/* AC2FCC 8004BE2C 8DAF0008 */  lw    $t7, 8($t5)
/* AC2FD0 8004BE30 ACCF0008 */  sw    $t7, 8($a2)
/* AC2FD4 8004BE34 A7A8008C */  sh    $t0, 0x8c($sp)
/* AC2FD8 8004BE38 0C01F124 */  jal   func_8007C490
/* AC2FDC 8004BE3C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC2FE0 8004BE40 C7AC00AC */  lwc1  $f12, 0xac($sp)
/* AC2FE4 8004BE44 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AC2FE8 8004BE48 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC2FEC 8004BE4C 44815000 */  mtc1  $at, $f10
/* AC2FF0 8004BE50 4604603E */  c.le.s $f12, $f4
/* AC2FF4 8004BE54 87A8008C */  lh    $t0, 0x8c($sp)
/* AC2FF8 8004BE58 C7A20080 */  lwc1  $f2, 0x80($sp)
/* AC2FFC 8004BE5C 45000003 */  bc1f  .L8004BE6C
/* AC3000 8004BE60 00000000 */   nop   
/* AC3004 8004BE64 10000001 */  b     .L8004BE6C
/* AC3008 8004BE68 46006086 */   mov.s $f2, $f12
.L8004BE6C:
/* AC300C 8004BE6C 460A1202 */  mul.s $f8, $f2, $f10
/* AC3010 8004BE70 C7AC0080 */  lwc1  $f12, 0x80($sp)
/* AC3014 8004BE74 3C018014 */  lui   $at, %hi(D_8013A010)
/* AC3018 8004BE78 C42AA010 */  lwc1  $f10, %lo(D_8013A010)($at)
/* AC301C 8004BE7C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC3020 8004BE80 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3024 8004BE84 3C018014 */  lui   $at, %hi(D_8013A014)
/* AC3028 8004BE88 46086101 */  sub.s $f4, $f12, $f8
/* AC302C 8004BE8C C7A800E4 */  lwc1  $f8, 0xe4($sp)
/* AC3030 8004BE90 3C074000 */  lui   $a3, 0x4000
/* AC3034 8004BE94 E7A400AC */  swc1  $f4, 0xac($sp)
/* AC3038 8004BE98 46085101 */  sub.s $f4, $f10, $f8
/* AC303C 8004BE9C C60A000C */  lwc1  $f10, 0xc($s0)
/* AC3040 8004BEA0 C6000008 */  lwc1  $f0, 8($s0)
/* AC3044 8004BEA4 847801AE */  lh    $t8, 0x1ae($v1)
/* AC3048 8004BEA8 46005201 */  sub.s $f8, $f10, $f0
/* AC304C 8004BEAC 46044282 */  mul.s $f10, $f8, $f4
/* AC3050 8004BEB0 44984000 */  mtc1  $t8, $f8
/* AC3054 8004BEB4 00000000 */  nop   
/* AC3058 8004BEB8 46804120 */  cvt.s.w $f4, $f8
/* AC305C 8004BEBC 460A0480 */  add.s $f18, $f0, $f10
/* AC3060 8004BEC0 46122280 */  add.s $f10, $f4, $f18
/* AC3064 8004BEC4 E7AA00F8 */  swc1  $f10, 0xf8($sp)
/* AC3068 8004BEC8 846901AA */  lh    $t1, 0x1aa($v1)
/* AC306C 8004BECC C42AA014 */  lwc1  $f10, %lo(D_8013A014)($at)
/* AC3070 8004BED0 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC3074 8004BED4 44894000 */  mtc1  $t1, $f8
/* AC3078 8004BED8 E7B200F4 */  swc1  $f18, 0xf4($sp)
/* AC307C 8004BEDC A7A8008C */  sh    $t0, 0x8c($sp)
/* AC3080 8004BEE0 46804120 */  cvt.s.w $f4, $f8
/* AC3084 8004BEE4 460A2182 */  mul.s $f6, $f4, $f10
/* AC3088 8004BEE8 44063000 */  mfc1  $a2, $f6
/* AC308C 8004BEEC 0C010E27 */  jal   func_8004389C
/* AC3090 8004BEF0 00000000 */   nop   
/* AC3094 8004BEF4 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3098 8004BEF8 C7B200F4 */  lwc1  $f18, 0xf4($sp)
/* AC309C 8004BEFC E60000DC */  swc1  $f0, 0xdc($s0)
/* AC30A0 8004BF00 87B9009A */  lh    $t9, 0x9a($sp)
/* AC30A4 8004BF04 87AA00B2 */  lh    $t2, 0xb2($sp)
/* AC30A8 8004BF08 E7A000B4 */  swc1  $f0, 0xb4($sp)
/* AC30AC 8004BF0C 272B8001 */  addiu $t3, $t9, -0x7fff
/* AC30B0 8004BF10 000B6400 */  sll   $t4, $t3, 0x10
/* AC30B4 8004BF14 A7B900BA */  sh    $t9, 0xba($sp)
/* AC30B8 8004BF18 8623001A */  lh    $v1, 0x1a($s1)
/* AC30BC 8004BF1C 000C6C03 */  sra   $t5, $t4, 0x10
/* AC30C0 8004BF20 014D1023 */  subu  $v0, $t2, $t5
/* AC30C4 8004BF24 00022C00 */  sll   $a1, $v0, 0x10
/* AC30C8 8004BF28 1060007B */  beqz  $v1, .L8004C118
/* AC30CC 8004BF2C 00052C03 */   sra   $a1, $a1, 0x10
/* AC30D0 8004BF30 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC30D4 8004BF34 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC30D8 8004BF38 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC30DC 8004BF3C 24190001 */  li    $t9, 1
/* AC30E0 8004BF40 85C201C4 */  lh    $v0, 0x1c4($t6)
/* AC30E4 8004BF44 0062082A */  slt   $at, $v1, $v0
/* AC30E8 8004BF48 1420006F */  bnez  $at, .L8004C108
/* AC30EC 8004BF4C 00627823 */   subu  $t7, $v1, $v0
/* AC30F0 8004BF50 A7AF0086 */  sh    $t7, 0x86($sp)
/* AC30F4 8004BF54 8FA50048 */  lw    $a1, 0x48($sp)
/* AC30F8 8004BF58 8FA6004C */  lw    $a2, 0x4c($sp)
/* AC30FC 8004BF5C 0C01F124 */  jal   func_8007C490
/* AC3100 8004BF60 A7A8008C */   sh    $t0, 0x8c($sp)
/* AC3104 8004BF64 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3108 8004BF68 3C038016 */  lui   $v1, %hi(gGameInfo)
/* AC310C 8004BF6C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3110 8004BF70 25188001 */  addiu $t8, $t0, -0x7fff
/* AC3114 8004BF74 A7B800AA */  sh    $t8, 0xaa($sp)
/* AC3118 8004BF78 846901C2 */  lh    $t1, 0x1c2($v1)
/* AC311C 8004BF7C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3120 8004BF80 44818000 */  mtc1  $at, $f16
/* AC3124 8004BF84 44894000 */  mtc1  $t1, $f8
/* AC3128 8004BF88 87AB00AA */  lh    $t3, 0xaa($sp)
/* AC312C 8004BF8C 86390016 */  lh    $t9, 0x16($s1)
/* AC3130 8004BF90 46804120 */  cvt.s.w $f4, $f8
/* AC3134 8004BF94 C62A0000 */  lwc1  $f10, ($s1)
/* AC3138 8004BF98 032B6023 */  subu  $t4, $t9, $t3
/* AC313C 8004BF9C C7A600A4 */  lwc1  $f6, 0xa4($sp)
/* AC3140 8004BFA0 000C5400 */  sll   $t2, $t4, 0x10
/* AC3144 8004BFA4 000A6C03 */  sra   $t5, $t2, 0x10
/* AC3148 8004BFA8 46048003 */  div.s $f0, $f16, $f4
/* AC314C 8004BFAC 448D2000 */  mtc1  $t5, $f4
/* AC3150 8004BFB0 87A900A8 */  lh    $t1, 0xa8($sp)
/* AC3154 8004BFB4 87AD0086 */  lh    $t5, 0x86($sp)
/* AC3158 8004BFB8 46065201 */  sub.s $f8, $f10, $f6
/* AC315C 8004BFBC 3C018014 */  lui   $at, %hi(D_8013A018)
/* AC3160 8004BFC0 44078000 */  mfc1  $a3, $f16
/* AC3164 8004BFC4 468022A0 */  cvt.s.w $f10, $f4
/* AC3168 8004BFC8 C7AE009C */  lwc1  $f14, 0x9c($sp)
/* AC316C 8004BFCC 46004082 */  mul.s $f2, $f8, $f0
/* AC3170 8004BFD0 00000000 */  nop   
/* AC3174 8004BFD4 46005202 */  mul.s $f8, $f10, $f0
/* AC3178 8004BFD8 4600410D */  trunc.w.s $f4, $f8
/* AC317C 8004BFDC 440F2000 */  mfc1  $t7, $f4
/* AC3180 8004BFE0 00000000 */  nop   
/* AC3184 8004BFE4 A7AF008E */  sh    $t7, 0x8e($sp)
/* AC3188 8004BFE8 86380018 */  lh    $t8, 0x18($s1)
/* AC318C 8004BFEC 846E01CC */  lh    $t6, 0x1cc($v1)
/* AC3190 8004BFF0 0309C823 */  subu  $t9, $t8, $t1
/* AC3194 8004BFF4 00195C00 */  sll   $t3, $t9, 0x10
/* AC3198 8004BFF8 000B6403 */  sra   $t4, $t3, 0x10
/* AC319C 8004BFFC 448C5000 */  mtc1  $t4, $f10
/* AC31A0 8004C000 00000000 */  nop   
/* AC31A4 8004C004 46805220 */  cvt.s.w $f8, $f10
/* AC31A8 8004C008 46004102 */  mul.s $f4, $f8, $f0
/* AC31AC 8004C00C 448D4000 */  mtc1  $t5, $f8
/* AC31B0 8004C010 4600228D */  trunc.w.s $f10, $f4
/* AC31B4 8004C014 46804120 */  cvt.s.w $f4, $f8
/* AC31B8 8004C018 44085000 */  mfc1  $t0, $f10
/* AC31BC 8004C01C 448E4000 */  mtc1  $t6, $f8
/* AC31C0 8004C020 00084400 */  sll   $t0, $t0, 0x10
/* AC31C4 8004C024 00084403 */  sra   $t0, $t0, 0x10
/* AC31C8 8004C028 46022282 */  mul.s $f10, $f4, $f2
/* AC31CC 8004C02C A7A8008C */  sh    $t0, 0x8c($sp)
/* AC31D0 8004C030 46804120 */  cvt.s.w $f4, $f8
/* AC31D4 8004C034 46065300 */  add.s $f12, $f10, $f6
/* AC31D8 8004C038 C42AA018 */  lwc1  $f10, %lo(D_8013A018)($at)
/* AC31DC 8004C03C 460A2182 */  mul.s $f6, $f4, $f10
/* AC31E0 8004C040 44063000 */  mfc1  $a2, $f6
/* AC31E4 8004C044 0C010E27 */  jal   func_8004389C
/* AC31E8 8004C048 00000000 */   nop   
/* AC31EC 8004C04C 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC31F0 8004C050 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC31F4 8004C054 E7A000B4 */  swc1  $f0, 0xb4($sp)
/* AC31F8 8004C058 87AF008E */  lh    $t7, 0x8e($sp)
/* AC31FC 8004C05C 856C01CC */  lh    $t4, 0x1cc($t3)
/* AC3200 8004C060 87B80086 */  lh    $t8, 0x86($sp)
/* AC3204 8004C064 3C018014 */  lui   $at, %hi(D_8013A01C)
/* AC3208 8004C068 448C4000 */  mtc1  $t4, $f8
/* AC320C 8004C06C 01F80019 */  multu $t7, $t8
/* AC3210 8004C070 C42AA01C */  lwc1  $f10, %lo(D_8013A01C)($at)
/* AC3214 8004C074 46804120 */  cvt.s.w $f4, $f8
/* AC3218 8004C078 87B900AA */  lh    $t9, 0xaa($sp)
/* AC321C 8004C07C 87A500A2 */  lh    $a1, 0xa2($sp)
/* AC3220 8004C080 2407000A */  li    $a3, 10
/* AC3224 8004C084 460A2182 */  mul.s $f6, $f4, $f10
/* AC3228 8004C088 00004812 */  mflo  $t1
/* AC322C 8004C08C 03292021 */  addu  $a0, $t9, $t1
/* AC3230 8004C090 00042400 */  sll   $a0, $a0, 0x10
/* AC3234 8004C094 00042403 */  sra   $a0, $a0, 0x10
/* AC3238 8004C098 44063000 */  mfc1  $a2, $f6
/* AC323C 8004C09C 0C010E47 */  jal   func_8004391C
/* AC3240 8004C0A0 00000000 */   nop   
/* AC3244 8004C0A4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC3248 8004C0A8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC324C 8004C0AC A7A200BA */  sh    $v0, 0xba($sp)
/* AC3250 8004C0B0 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3254 8004C0B4 85F801CC */  lh    $t8, 0x1cc($t7)
/* AC3258 8004C0B8 87AD0086 */  lh    $t5, 0x86($sp)
/* AC325C 8004C0BC 3C018014 */  lui   $at, %hi(D_8013A020)
/* AC3260 8004C0C0 44984000 */  mtc1  $t8, $f8
/* AC3264 8004C0C4 010D0019 */  multu $t0, $t5
/* AC3268 8004C0C8 C42AA020 */  lwc1  $f10, %lo(D_8013A020)($at)
/* AC326C 8004C0CC 46804120 */  cvt.s.w $f4, $f8
/* AC3270 8004C0D0 87AA00A8 */  lh    $t2, 0xa8($sp)
/* AC3274 8004C0D4 87A500A0 */  lh    $a1, 0xa0($sp)
/* AC3278 8004C0D8 2407000A */  li    $a3, 10
/* AC327C 8004C0DC 460A2182 */  mul.s $f6, $f4, $f10
/* AC3280 8004C0E0 00007012 */  mflo  $t6
/* AC3284 8004C0E4 014E2021 */  addu  $a0, $t2, $t6
/* AC3288 8004C0E8 00042400 */  sll   $a0, $a0, 0x10
/* AC328C 8004C0EC 00042403 */  sra   $a0, $a0, 0x10
/* AC3290 8004C0F0 44063000 */  mfc1  $a2, $f6
/* AC3294 8004C0F4 0C010E47 */  jal   func_8004391C
/* AC3298 8004C0F8 00000000 */   nop   
/* AC329C 8004C0FC A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC32A0 8004C100 10000002 */  b     .L8004C10C
/* AC32A4 8004C104 8623001A */   lh    $v1, 0x1a($s1)
.L8004C108:
/* AC32A8 8004C108 AFB900E8 */  sw    $t9, 0xe8($sp)
.L8004C10C:
/* AC32AC 8004C10C 2469FFFF */  addiu $t1, $v1, -1
/* AC32B0 8004C110 10000075 */  b     .L8004C2E8
/* AC32B4 8004C114 A629001A */   sh    $t1, 0x1a($s1)
.L8004C118:
/* AC32B8 8004C118 00022400 */  sll   $a0, $v0, 0x10
/* AC32BC 8004C11C 00042403 */  sra   $a0, $a0, 0x10
/* AC32C0 8004C120 04800003 */  bltz  $a0, .L8004C130
/* AC32C4 8004C124 3C018014 */   lui   $at, %hi(D_8013A024)
/* AC32C8 8004C128 10000002 */  b     .L8004C134
/* AC32CC 8004C12C 00801025 */   move  $v0, $a0
.L8004C130:
/* AC32D0 8004C130 00041023 */  negu  $v0, $a0
.L8004C134:
/* AC32D4 8004C134 C428A024 */  lwc1  $f8, %lo(D_8013A024)($at)
/* AC32D8 8004C138 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC32DC 8004C13C 44815000 */  mtc1  $at, $f10
/* AC32E0 8004C140 46089102 */  mul.s $f4, $f18, $f8
/* AC32E4 8004C144 460A2180 */  add.s $f6, $f4, $f10
/* AC32E8 8004C148 4600320D */  trunc.w.s $f8, $f6
/* AC32EC 8004C14C 44034000 */  mfc1  $v1, $f8
/* AC32F0 8004C150 00000000 */  nop   
/* AC32F4 8004C154 00031C00 */  sll   $v1, $v1, 0x10
/* AC32F8 8004C158 00031C03 */  sra   $v1, $v1, 0x10
/* AC32FC 8004C15C 0062082A */  slt   $at, $v1, $v0
/* AC3300 8004C160 50200049 */  beql  $at, $zero, .L8004C288
/* AC3304 8004C164 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AC3308 8004C168 44852000 */  mtc1  $a1, $f4
/* AC330C 8004C16C 3C018014 */  lui   $at, %hi(D_8013A028)
/* AC3310 8004C170 C426A028 */  lwc1  $f6, %lo(D_8013A028)($at)
/* AC3314 8004C174 468022A0 */  cvt.s.w $f10, $f4
/* AC3318 8004C178 C7AC00AC */  lwc1  $f12, 0xac($sp)
/* AC331C 8004C17C C7AE00B4 */  lwc1  $f14, 0xb4($sp)
/* AC3320 8004C180 A7A5008E */  sh    $a1, 0x8e($sp)
/* AC3324 8004C184 E7B200F4 */  swc1  $f18, 0xf4($sp)
/* AC3328 8004C188 46065402 */  mul.s $f16, $f10, $f6
/* AC332C 8004C18C 0C01F02A */  jal   func_8007C0A8
/* AC3330 8004C190 E7B000FC */   swc1  $f16, 0xfc($sp)
/* AC3334 8004C194 C7A800B4 */  lwc1  $f8, 0xb4($sp)
/* AC3338 8004C198 C7B200F4 */  lwc1  $f18, 0xf4($sp)
/* AC333C 8004C19C C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* AC3340 8004C1A0 46080103 */  div.s $f4, $f0, $f8
/* AC3344 8004C1A4 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC3348 8004C1A8 C7B000FC */  lwc1  $f16, 0xfc($sp)
/* AC334C 8004C1AC 87AC008E */  lh    $t4, 0x8e($sp)
/* AC3350 8004C1B0 46125181 */  sub.s $f6, $f10, $f18
/* AC3354 8004C1B4 87AE009A */  lh    $t6, 0x9a($sp)
/* AC3358 8004C1B8 25D98001 */  addiu $t9, $t6, -0x7fff
/* AC335C 8004C1BC 46062202 */  mul.s $f8, $f4, $f6
/* AC3360 8004C1C0 44812000 */  mtc1  $at, $f4
/* AC3364 8004C1C4 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC3368 8004C1C8 46124080 */  add.s $f2, $f8, $f18
/* AC336C 8004C1CC 44814000 */  mtc1  $at, $f8
/* AC3370 8004C1D0 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC3374 8004C1D4 46021282 */  mul.s $f10, $f2, $f2
/* AC3378 8004C1D8 46045181 */  sub.s $f6, $f10, $f4
/* AC337C 8004C1DC 44812000 */  mtc1  $at, $f4
/* AC3380 8004C1E0 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC3384 8004C1E4 46081281 */  sub.s $f10, $f2, $f8
/* AC3388 8004C1E8 44814000 */  mtc1  $at, $f8
/* AC338C 8004C1EC 3C018014 */  lui   $at, %hi(D_8013A030)
/* AC3390 8004C1F0 460A3303 */  div.s $f12, $f6, $f10
/* AC3394 8004C1F4 460C4182 */  mul.s $f6, $f8, $f12
/* AC3398 8004C1F8 46062281 */  sub.s $f10, $f4, $f6
/* AC339C 8004C1FC 46106202 */  mul.s $f8, $f12, $f16
/* AC33A0 8004C200 460A4100 */  add.s $f4, $f8, $f10
/* AC33A4 8004C204 46108182 */  mul.s $f6, $f16, $f16
/* AC33A8 8004C208 0580000D */  bltz  $t4, .L8004C240
/* AC33AC 8004C20C 46043383 */   div.s $f14, $f6, $f4
/* AC33B0 8004C210 3C018014 */  lui   $at, %hi(D_8013A02C)
/* AC33B4 8004C214 C428A02C */  lwc1  $f8, %lo(D_8013A02C)($at)
/* AC33B8 8004C218 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC33BC 8004C21C 44813000 */  mtc1  $at, $f6
/* AC33C0 8004C220 46087282 */  mul.s $f10, $f14, $f8
/* AC33C4 8004C224 46065100 */  add.s $f4, $f10, $f6
/* AC33C8 8004C228 4600220D */  trunc.w.s $f8, $f4
/* AC33CC 8004C22C 44084000 */  mfc1  $t0, $f8
/* AC33D0 8004C230 00000000 */  nop   
/* AC33D4 8004C234 00084400 */  sll   $t0, $t0, 0x10
/* AC33D8 8004C238 1000000E */  b     .L8004C274
/* AC33DC 8004C23C 00084403 */   sra   $t0, $t0, 0x10
.L8004C240:
/* AC33E0 8004C240 C42AA030 */  lwc1  $f10, %lo(D_8013A030)($at)
/* AC33E4 8004C244 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC33E8 8004C248 44812000 */  mtc1  $at, $f4
/* AC33EC 8004C24C 460A7182 */  mul.s $f6, $f14, $f10
/* AC33F0 8004C250 46043200 */  add.s $f8, $f6, $f4
/* AC33F4 8004C254 4600428D */  trunc.w.s $f10, $f8
/* AC33F8 8004C258 44085000 */  mfc1  $t0, $f10
/* AC33FC 8004C25C 00000000 */  nop   
/* AC3400 8004C260 00084400 */  sll   $t0, $t0, 0x10
/* AC3404 8004C264 00084403 */  sra   $t0, $t0, 0x10
/* AC3408 8004C268 00084023 */  negu  $t0, $t0
/* AC340C 8004C26C 00084400 */  sll   $t0, $t0, 0x10
/* AC3410 8004C270 00084403 */  sra   $t0, $t0, 0x10
.L8004C274:
/* AC3414 8004C274 03286021 */  addu  $t4, $t9, $t0
/* AC3418 8004C278 258D8001 */  addiu $t5, $t4, -0x7fff
/* AC341C 8004C27C 1000001A */  b     .L8004C2E8
/* AC3420 8004C280 A7AD00BA */   sh    $t5, 0xba($sp)
/* AC3424 8004C284 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L8004C288:
/* AC3428 8004C288 44813000 */  mtc1  $at, $f6
/* AC342C 8004C28C C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC3430 8004C290 3C018014 */  lui   $at, %hi(D_8013A034)
/* AC3434 8004C294 C42AA034 */  lwc1  $f10, %lo(D_8013A034)($at)
/* AC3438 8004C298 46043201 */  sub.s $f8, $f6, $f4
/* AC343C 8004C29C 00034023 */  negu  $t0, $v1
/* AC3440 8004C2A0 00084400 */  sll   $t0, $t0, 0x10
/* AC3444 8004C2A4 00084403 */  sra   $t0, $t0, 0x10
/* AC3448 8004C2A8 460A4402 */  mul.s $f16, $f8, $f10
/* AC344C 8004C2AC 04800004 */  bltz  $a0, .L8004C2C0
/* AC3450 8004C2B0 00000000 */   nop   
/* AC3454 8004C2B4 00034400 */  sll   $t0, $v1, 0x10
/* AC3458 8004C2B8 10000001 */  b     .L8004C2C0
/* AC345C 8004C2BC 00084403 */   sra   $t0, $t0, 0x10
.L8004C2C0:
/* AC3460 8004C2C0 01047023 */  subu  $t6, $t0, $a0
/* AC3464 8004C2C4 448E3000 */  mtc1  $t6, $f6
/* AC3468 8004C2C8 87AA009A */  lh    $t2, 0x9a($sp)
/* AC346C 8004C2CC 46803120 */  cvt.s.w $f4, $f6
/* AC3470 8004C2D0 46102202 */  mul.s $f8, $f4, $f16
/* AC3474 8004C2D4 4600428D */  trunc.w.s $f10, $f8
/* AC3478 8004C2D8 44095000 */  mfc1  $t1, $f10
/* AC347C 8004C2DC 00000000 */  nop   
/* AC3480 8004C2E0 01495823 */  subu  $t3, $t2, $t1
/* AC3484 8004C2E4 A7AB00BA */  sh    $t3, 0xba($sp)
.L8004C2E8:
/* AC3488 8004C2E8 8FAC00E8 */  lw    $t4, 0xe8($sp)
/* AC348C 8004C2EC 87AD00B0 */  lh    $t5, 0xb0($sp)
/* AC3490 8004C2F0 87A50098 */  lh    $a1, 0x98($sp)
/* AC3494 8004C2F4 15800076 */  bnez  $t4, .L8004C4D0
/* AC3498 8004C2F8 2407000A */   li    $a3, 10
/* AC349C 8004C2FC 448D3000 */  mtc1  $t5, $f6
/* AC34A0 8004C300 C6080018 */  lwc1  $f8, 0x18($s0)
/* AC34A4 8004C304 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* AC34A8 8004C308 46803120 */  cvt.s.w $f4, $f6
/* AC34AC 8004C30C C7A6007C */  lwc1  $f6, 0x7c($sp)
/* AC34B0 8004C310 C7A000E4 */  lwc1  $f0, 0xe4($sp)
/* AC34B4 8004C314 3C018014 */  lui   $at, %hi(D_8013A038)
/* AC34B8 8004C318 87AA00A8 */  lh    $t2, 0xa8($sp)
/* AC34BC 8004C31C 46082082 */  mul.s $f2, $f4, $f8
/* AC34C0 8004C320 46065101 */  sub.s $f4, $f10, $f6
/* AC34C4 8004C324 46002202 */  mul.s $f8, $f4, $f0
/* AC34C8 8004C328 C424A038 */  lwc1  $f4, %lo(D_8013A038)($at)
/* AC34CC 8004C32C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC34D0 8004C330 46064280 */  add.s $f10, $f8, $f6
/* AC34D4 8004C334 44813000 */  mtc1  $at, $f6
/* AC34D8 8004C338 46045202 */  mul.s $f8, $f10, $f4
/* AC34DC 8004C33C 46064280 */  add.s $f10, $f8, $f6
/* AC34E0 8004C340 44813000 */  mtc1  $at, $f6
/* AC34E4 8004C344 44814000 */  mtc1  $at, $f8
/* AC34E8 8004C348 4600510D */  trunc.w.s $f4, $f10
/* AC34EC 8004C34C 46060282 */  mul.s $f10, $f0, $f6
/* AC34F0 8004C350 448A3000 */  mtc1  $t2, $f6
/* AC34F4 8004C354 44192000 */  mfc1  $t9, $f4
/* AC34F8 8004C358 460A4100 */  add.s $f4, $f8, $f10
/* AC34FC 8004C35C 46803220 */  cvt.s.w $f8, $f6
/* AC3500 8004C360 46044282 */  mul.s $f10, $f8, $f4
/* AC3504 8004C364 4600120D */  trunc.w.s $f8, $f2
/* AC3508 8004C368 440C4000 */  mfc1  $t4, $f8
/* AC350C 8004C36C 4600518D */  trunc.w.s $f6, $f10
/* AC3510 8004C370 440D3000 */  mfc1  $t5, $f6
/* AC3514 8004C374 00000000 */  nop   
/* AC3518 8004C378 032DC023 */  subu  $t8, $t9, $t5
/* AC351C 8004C37C 030C1021 */  addu  $v0, $t8, $t4
/* AC3520 8004C380 00021C00 */  sll   $v1, $v0, 0x10
/* AC3524 8004C384 00031C03 */  sra   $v1, $v1, 0x10
/* AC3528 8004C388 00022400 */  sll   $a0, $v0, 0x10
/* AC352C 8004C38C 2861D558 */  slti  $at, $v1, -0x2aa8
/* AC3530 8004C390 10200003 */  beqz  $at, .L8004C3A0
/* AC3534 8004C394 00042403 */   sra   $a0, $a0, 0x10
/* AC3538 8004C398 10000005 */  b     .L8004C3B0
/* AC353C 8004C39C 2404D558 */   li    $a0, -10920
.L8004C3A0:
/* AC3540 8004C3A0 28612AA9 */  slti  $at, $v1, 0x2aa9
/* AC3544 8004C3A4 14200002 */  bnez  $at, .L8004C3B0
/* AC3548 8004C3A8 00000000 */   nop   
/* AC354C 8004C3AC 24042AA8 */  li    $a0, 10920
.L8004C3B0:
/* AC3550 8004C3B0 0C010E47 */  jal   func_8004391C
/* AC3554 8004C3B4 8E260010 */   lw    $a2, 0x10($s1)
/* AC3558 8004C3B8 A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC355C 8004C3BC 8FA40044 */  lw    $a0, 0x44($sp)
/* AC3560 8004C3C0 8FA50048 */  lw    $a1, 0x48($sp)
/* AC3564 8004C3C4 0C010F0A */  jal   func_80043C28
/* AC3568 8004C3C8 27A600B4 */   addiu $a2, $sp, 0xb4
/* AC356C 8004C3CC 8FB90044 */  lw    $t9, 0x44($sp)
/* AC3570 8004C3D0 27A600BC */  addiu $a2, $sp, 0xbc
/* AC3574 8004C3D4 24010007 */  li    $at, 7
/* AC3578 8004C3D8 8F2E0000 */  lw    $t6, ($t9)
/* AC357C 8004C3DC ACCE0000 */  sw    $t6, ($a2)
/* AC3580 8004C3E0 8F2D0004 */  lw    $t5, 4($t9)
/* AC3584 8004C3E4 ACCD0004 */  sw    $t5, 4($a2)
/* AC3588 8004C3E8 8F2E0008 */  lw    $t6, 8($t9)
/* AC358C 8004C3EC ACCE0008 */  sw    $t6, 8($a2)
/* AC3590 8004C3F0 860F0140 */  lh    $t7, 0x140($s0)
/* AC3594 8004C3F4 8FAA0044 */  lw    $t2, 0x44($sp)
/* AC3598 8004C3F8 55E1002F */  bnel  $t7, $at, .L8004C4B8
/* AC359C 8004C3FC 8FAF004C */   lw    $t7, 0x4c($sp)
/* AC35A0 8004C400 8E0A008C */  lw    $t2, 0x8c($s0)
/* AC35A4 8004C404 3C090001 */  lui   $t1, 1
/* AC35A8 8004C408 02002025 */  move  $a0, $s0
/* AC35AC 8004C40C 012A4821 */  addu  $t1, $t1, $t2
/* AC35B0 8004C410 91290A39 */  lbu   $t1, 0xa39($t1)
/* AC35B4 8004C414 11200005 */  beqz  $t1, .L8004C42C
/* AC35B8 8004C418 00000000 */   nop   
/* AC35BC 8004C41C 8602002C */  lh    $v0, 0x2c($s0)
/* AC35C0 8004C420 304B0001 */  andi  $t3, $v0, 1
/* AC35C4 8004C424 11600005 */  beqz  $t3, .L8004C43C
/* AC35C8 8004C428 30580002 */   andi  $t8, $v0, 2
.L8004C42C:
/* AC35CC 8004C42C 0C010F46 */  jal   func_80043D18
/* AC35D0 8004C430 8FA50048 */   lw    $a1, 0x48($sp)
/* AC35D4 8004C434 10000017 */  b     .L8004C494
/* AC35D8 8004C438 27B900BC */   addiu $t9, $sp, 0xbc
.L8004C43C:
/* AC35DC 8004C43C 13000006 */  beqz  $t8, .L8004C458
/* AC35E0 8004C440 27A40128 */   addiu $a0, $sp, 0x128
/* AC35E4 8004C444 02002025 */  move  $a0, $s0
/* AC35E8 8004C448 0C010FE5 */  jal   func_80043F94
/* AC35EC 8004C44C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC35F0 8004C450 10000010 */  b     .L8004C494
/* AC35F4 8004C454 27B900BC */   addiu $t9, $sp, 0xbc
.L8004C458:
/* AC35F8 8004C458 0C01F03E */  jal   func_8007C0F8
/* AC35FC 8004C45C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC3600 8004C460 C7A400BC */  lwc1  $f4, 0xbc($sp)
/* AC3604 8004C464 C7AA0128 */  lwc1  $f10, 0x128($sp)
/* AC3608 8004C468 C7A800C0 */  lwc1  $f8, 0xc0($sp)
/* AC360C 8004C46C 460A2181 */  sub.s $f6, $f4, $f10
/* AC3610 8004C470 C7A4012C */  lwc1  $f4, 0x12c($sp)
/* AC3614 8004C474 46044281 */  sub.s $f10, $f8, $f4
/* AC3618 8004C478 E7A600BC */  swc1  $f6, 0xbc($sp)
/* AC361C 8004C47C C7A600C4 */  lwc1  $f6, 0xc4($sp)
/* AC3620 8004C480 C7A80130 */  lwc1  $f8, 0x130($sp)
/* AC3624 8004C484 E7AA00C0 */  swc1  $f10, 0xc0($sp)
/* AC3628 8004C488 46083101 */  sub.s $f4, $f6, $f8
/* AC362C 8004C48C E7A400C4 */  swc1  $f4, 0xc4($sp)
/* AC3630 8004C490 27B900BC */  addiu $t9, $sp, 0xbc
.L8004C494:
/* AC3634 8004C494 8F2E0000 */  lw    $t6, ($t9)
/* AC3638 8004C498 8FAC004C */  lw    $t4, 0x4c($sp)
/* AC363C 8004C49C AD8E0000 */  sw    $t6, ($t4)
/* AC3640 8004C4A0 8F2D0004 */  lw    $t5, 4($t9)
/* AC3644 8004C4A4 AD8D0004 */  sw    $t5, 4($t4)
/* AC3648 8004C4A8 8F2E0008 */  lw    $t6, 8($t9)
/* AC364C 8004C4AC 10000008 */  b     .L8004C4D0
/* AC3650 8004C4B0 AD8E0008 */   sw    $t6, 8($t4)
/* AC3654 8004C4B4 8FAF004C */  lw    $t7, 0x4c($sp)
.L8004C4B8:
/* AC3658 8004C4B8 8D4B0000 */  lw    $t3, ($t2)
/* AC365C 8004C4BC ADEB0000 */  sw    $t3, ($t7)
/* AC3660 8004C4C0 8D490004 */  lw    $t1, 4($t2)
/* AC3664 8004C4C4 ADE90004 */  sw    $t1, 4($t7)
/* AC3668 8004C4C8 8D4B0008 */  lw    $t3, 8($t2)
/* AC366C 8004C4CC ADEB0008 */  sw    $t3, 8($t7)
.L8004C4D0:
/* AC3670 8004C4D0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC3674 8004C4D4 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3678 8004C4D8 C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC367C 8004C4DC 3C013F80 */  lui   $at, 0x3f80
/* AC3680 8004C4E0 847801DC */  lh    $t8, 0x1dc($v1)
/* AC3684 8004C4E4 846C01DE */  lh    $t4, 0x1de($v1)
/* AC3688 8004C4E8 C6200004 */  lwc1  $f0, 4($s1)
/* AC368C 8004C4EC 44985000 */  mtc1  $t8, $f10
/* AC3690 8004C4F0 3C0A8016 */  lui   $t2, %hi(gSaveContext+0x30)
/* AC3694 8004C4F4 468051A0 */  cvt.s.w $f6, $f10
/* AC3698 8004C4F8 44815000 */  mtc1  $at, $f10
/* AC369C 8004C4FC 3C018014 */  lui   $at, %hi(D_8013A03C)
/* AC36A0 8004C500 46083102 */  mul.s $f4, $f6, $f8
/* AC36A4 8004C504 C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* AC36A8 8004C508 46065201 */  sub.s $f8, $f10, $f6
/* AC36AC 8004C50C 46082282 */  mul.s $f10, $f4, $f8
/* AC36B0 8004C510 448C2000 */  mtc1  $t4, $f4
/* AC36B4 8004C514 00000000 */  nop   
/* AC36B8 8004C518 46802220 */  cvt.s.w $f8, $f4
/* AC36BC 8004C51C 46005181 */  sub.s $f6, $f10, $f0
/* AC36C0 8004C520 C42AA03C */  lwc1  $f10, %lo(D_8013A03C)($at)
/* AC36C4 8004C524 3C018014 */  lui   $at, %hi(D_8013A040)
/* AC36C8 8004C528 460A4102 */  mul.s $f4, $f8, $f10
/* AC36CC 8004C52C 00000000 */  nop   
/* AC36D0 8004C530 46043202 */  mul.s $f8, $f6, $f4
/* AC36D4 8004C534 46080280 */  add.s $f10, $f0, $f8
/* AC36D8 8004C538 E62A0004 */  swc1  $f10, 4($s1)
/* AC36DC 8004C53C C424A040 */  lwc1  $f4, %lo(D_8013A040)($at)
/* AC36E0 8004C540 C6260004 */  lwc1  $f6, 4($s1)
/* AC36E4 8004C544 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC36E8 8004C548 44815000 */  mtc1  $at, $f10
/* AC36EC 8004C54C 46043202 */  mul.s $f8, $f6, $f4
/* AC36F0 8004C550 3C018014 */  lui   $at, %hi(D_8013A044)
/* AC36F4 8004C554 460A4180 */  add.s $f6, $f8, $f10
/* AC36F8 8004C558 4600310D */  trunc.w.s $f4, $f6
/* AC36FC 8004C55C 440D2000 */  mfc1  $t5, $f4
/* AC3700 8004C560 00000000 */  nop   
/* AC3704 8004C564 A60D015A */  sh    $t5, 0x15a($s0)
/* AC3708 8004C568 8FAE0088 */  lw    $t6, 0x88($sp)
/* AC370C 8004C56C C7A80074 */  lwc1  $f8, 0x74($sp)
/* AC3710 8004C570 81CF0843 */  lb    $t7, 0x843($t6)
/* AC3714 8004C574 11E00003 */  beqz  $t7, .L8004C584
/* AC3718 8004C578 00000000 */   nop   
/* AC371C 8004C57C 1000000B */  b     .L8004C5AC
/* AC3720 8004C580 C422A044 */   lwc1  $f2, %lo(D_8013A044)($at)
.L8004C584:
/* AC3724 8004C584 854AE690 */  lh    $t2, %lo(gSaveContext+0x30)($t2)
/* AC3728 8004C588 29410011 */  slti  $at, $t2, 0x11
/* AC372C 8004C58C 10200003 */  beqz  $at, .L8004C59C
/* AC3730 8004C590 3C018014 */   lui   $at, %hi(D_8013A048)
/* AC3734 8004C594 10000004 */  b     .L8004C5A8
/* AC3738 8004C598 C420A048 */   lwc1  $f0, %lo(D_8013A048)($at)
.L8004C59C:
/* AC373C 8004C59C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3740 8004C5A0 44810000 */  mtc1  $at, $f0
/* AC3744 8004C5A4 00000000 */  nop   
.L8004C5A8:
/* AC3748 8004C5A8 46000086 */  mov.s $f2, $f0
.L8004C5AC:
/* AC374C 8004C5AC 3C018014 */  lui   $at, %hi(D_8013A04C)
/* AC3750 8004C5B0 C42AA04C */  lwc1  $f10, %lo(D_8013A04C)($at)
/* AC3754 8004C5B4 C7A400E4 */  lwc1  $f4, 0xe4($sp)
/* AC3758 8004C5B8 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC375C 8004C5BC 460A4182 */  mul.s $f6, $f8, $f10
/* AC3760 8004C5C0 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC3764 8004C5C4 3C073F80 */  lui   $a3, 0x3f80
/* AC3768 8004C5C8 46043282 */  mul.s $f10, $f6, $f4
/* AC376C 8004C5CC 460A4181 */  sub.s $f6, $f8, $f10
/* AC3770 8004C5D0 46061302 */  mul.s $f12, $f2, $f6
/* AC3774 8004C5D4 0C010E27 */  jal   func_8004389C
/* AC3778 8004C5D8 00000000 */   nop   
/* AC377C 8004C5DC E60000FC */  swc1  $f0, 0xfc($s0)
.L8004C5E0:
/* AC3780 8004C5E0 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC3784 8004C5E4 8FB00024 */  lw    $s0, 0x24($sp)
/* AC3788 8004C5E8 8FB10028 */  lw    $s1, 0x28($sp)
/* AC378C 8004C5EC 03E00008 */  jr    $ra
/* AC3790 8004C5F0 27BD0140 */   addiu $sp, $sp, 0x140

/* AC3794 8004C5F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC3798 8004C5F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC379C 8004C5FC 0C011CE5 */  jal   func_80047394
/* AC37A0 8004C600 00000000 */   nop   
/* AC37A4 8004C604 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC37A8 8004C608 27BD0018 */  addiu $sp, $sp, 0x18
/* AC37AC 8004C60C 03E00008 */  jr    $ra
/* AC37B0 8004C610 00000000 */   nop   

/* AC37B4 8004C614 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC37B8 8004C618 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC37BC 8004C61C 0C011CE5 */  jal   func_80047394
/* AC37C0 8004C620 00000000 */   nop   
/* AC37C4 8004C624 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC37C8 8004C628 27BD0018 */  addiu $sp, $sp, 0x18
/* AC37CC 8004C62C 03E00008 */  jr    $ra
/* AC37D0 8004C630 00000000 */   nop   

/* AC37D4 8004C634 27BDFF88 */  addiu $sp, $sp, -0x78
/* AC37D8 8004C638 AFB00018 */  sw    $s0, 0x18($sp)
/* AC37DC 8004C63C 00808025 */  move  $s0, $a0
/* AC37E0 8004C640 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC37E4 8004C644 0C00B721 */  jal   func_8002DC84
/* AC37E8 8004C648 8C840090 */   lw    $a0, 0x90($a0)
/* AC37EC 8004C64C 8602015E */  lh    $v0, 0x15e($s0)
/* AC37F0 8004C650 10400008 */  beqz  $v0, .L8004C674
/* AC37F4 8004C654 2401000A */   li    $at, 10
/* AC37F8 8004C658 10410006 */  beq   $v0, $at, .L8004C674
/* AC37FC 8004C65C 24010014 */   li    $at, 20
/* AC3800 8004C660 10410004 */  beq   $v0, $at, .L8004C674
/* AC3804 8004C664 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC3808 8004C668 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC380C 8004C66C 85C30314 */  lh    $v1, 0x314($t6)
/* AC3810 8004C670 10600050 */  beqz  $v1, .L8004C7B4
.L8004C674:
/* AC3814 8004C674 3C018014 */   lui   $at, %hi(D_8013A050)
/* AC3818 8004C678 C42EA050 */  lwc1  $f14, %lo(D_8013A050)($at)
/* AC381C 8004C67C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3820 8004C680 44814000 */  mtc1  $at, $f8
/* AC3824 8004C684 3C014288 */  lui   $at, 0x4288
/* AC3828 8004C688 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC382C 8004C68C 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC3830 8004C690 44818000 */  mtc1  $at, $f16
/* AC3834 8004C694 860F0142 */  lh    $t7, 0x142($s0)
/* AC3838 8004C698 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC383C 8004C69C 46008483 */  div.s $f18, $f16, $f0
/* AC3840 8004C6A0 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC3844 8004C6A4 448C2000 */  mtc1  $t4, $f4
/* AC3848 8004C6A8 000FC0C0 */  sll   $t8, $t7, 3
/* AC384C 8004C6AC 86080144 */  lh    $t0, 0x144($s0)
/* AC3850 8004C6B0 468021A0 */  cvt.s.w $f6, $f4
/* AC3854 8004C6B4 0338C821 */  addu  $t9, $t9, $t8
/* AC3858 8004C6B8 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC385C 8004C6BC 000848C0 */  sll   $t1, $t0, 3
/* AC3860 8004C6C0 3C018014 */  lui   $at, %hi(D_8013A054)
/* AC3864 8004C6C4 03295021 */  addu  $t2, $t9, $t1
/* AC3868 8004C6C8 8D420004 */  lw    $v0, 4($t2)
/* AC386C 8004C6CC 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC3870 8004C6D0 844D0000 */  lh    $t5, ($v0)
/* AC3874 8004C6D4 24420018 */  addiu $v0, $v0, 0x18
/* AC3878 8004C6D8 460E3302 */  mul.s $f12, $f6, $f14
/* AC387C 8004C6DC 448D3000 */  mtc1  $t5, $f6
/* AC3880 8004C6E0 460C4280 */  add.s $f10, $f8, $f12
/* AC3884 8004C6E4 46126102 */  mul.s $f4, $f12, $f18
/* AC3888 8004C6E8 46803220 */  cvt.s.w $f8, $f6
/* AC388C 8004C6EC 46045081 */  sub.s $f2, $f10, $f4
/* AC3890 8004C6F0 460E4402 */  mul.s $f16, $f8, $f14
/* AC3894 8004C6F4 00000000 */  nop   
/* AC3898 8004C6F8 46008482 */  mul.s $f18, $f16, $f0
/* AC389C 8004C6FC 00000000 */  nop   
/* AC38A0 8004C700 46029282 */  mul.s $f10, $f18, $f2
/* AC38A4 8004C704 E60A0000 */  swc1  $f10, ($s0)
/* AC38A8 8004C708 844EFFEC */  lh    $t6, -0x14($v0)
/* AC38AC 8004C70C 448E2000 */  mtc1  $t6, $f4
/* AC38B0 8004C710 00000000 */  nop   
/* AC38B4 8004C714 468021A0 */  cvt.s.w $f6, $f4
/* AC38B8 8004C718 460E3202 */  mul.s $f8, $f6, $f14
/* AC38BC 8004C71C 00000000 */  nop   
/* AC38C0 8004C720 46004402 */  mul.s $f16, $f8, $f0
/* AC38C4 8004C724 00000000 */  nop   
/* AC38C8 8004C728 46028482 */  mul.s $f18, $f16, $f2
/* AC38CC 8004C72C E6120004 */  swc1  $f18, 4($s0)
/* AC38D0 8004C730 844FFFF0 */  lh    $t7, -0x10($v0)
/* AC38D4 8004C734 C426A054 */  lwc1  $f6, %lo(D_8013A054)($at)
/* AC38D8 8004C738 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC38DC 8004C73C 448F5000 */  mtc1  $t7, $f10
/* AC38E0 8004C740 44818000 */  mtc1  $at, $f16
/* AC38E4 8004C744 46805120 */  cvt.s.w $f4, $f10
/* AC38E8 8004C748 46062202 */  mul.s $f8, $f4, $f6
/* AC38EC 8004C74C 46104480 */  add.s $f18, $f8, $f16
/* AC38F0 8004C750 4600928D */  trunc.w.s $f10, $f18
/* AC38F4 8004C754 44085000 */  mfc1  $t0, $f10
/* AC38F8 8004C758 00000000 */  nop   
/* AC38FC 8004C75C A6080008 */  sh    $t0, 8($s0)
/* AC3900 8004C760 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC3904 8004C764 44992000 */  mtc1  $t9, $f4
/* AC3908 8004C768 00000000 */  nop   
/* AC390C 8004C76C 468021A0 */  cvt.s.w $f6, $f4
/* AC3910 8004C770 460E3202 */  mul.s $f8, $f6, $f14
/* AC3914 8004C774 E608000C */  swc1  $f8, 0xc($s0)
/* AC3918 8004C778 8449FFF8 */  lh    $t1, -8($v0)
/* AC391C 8004C77C 44898000 */  mtc1  $t1, $f16
/* AC3920 8004C780 00000000 */  nop   
/* AC3924 8004C784 468084A0 */  cvt.s.w $f18, $f16
/* AC3928 8004C788 E6120010 */  swc1  $f18, 0x10($s0)
/* AC392C 8004C78C 844AFFFC */  lh    $t2, -4($v0)
/* AC3930 8004C790 448A5000 */  mtc1  $t2, $f10
/* AC3934 8004C794 00000000 */  nop   
/* AC3938 8004C798 46805120 */  cvt.s.w $f4, $f10
/* AC393C 8004C79C 460E2182 */  mul.s $f6, $f4, $f14
/* AC3940 8004C7A0 E6060014 */  swc1  $f6, 0x14($s0)
/* AC3944 8004C7A4 844B0000 */  lh    $t3, ($v0)
/* AC3948 8004C7A8 A60B0018 */  sh    $t3, 0x18($s0)
/* AC394C 8004C7AC 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC3950 8004C7B0 85830314 */  lh    $v1, 0x314($t4)
.L8004C7B4:
/* AC3954 8004C7B4 50600004 */  beql  $v1, $zero, .L8004C7C8
/* AC3958 8004C7B8 26050050 */   addiu $a1, $s0, 0x50
/* AC395C 8004C7BC 0C011495 */  jal   func_80045254
/* AC3960 8004C7C0 02002025 */   move  $a0, $s0
/* AC3964 8004C7C4 26050050 */  addiu $a1, $s0, 0x50
.L8004C7C8:
/* AC3968 8004C7C8 2606005C */  addiu $a2, $s0, 0x5c
/* AC396C 8004C7CC AFA60034 */  sw    $a2, 0x34($sp)
/* AC3970 8004C7D0 AFA50030 */  sw    $a1, 0x30($sp)
/* AC3974 8004C7D4 0C01F124 */  jal   func_8007C490
/* AC3978 8004C7D8 27A4005C */   addiu $a0, $sp, 0x5c
/* AC397C 8004C7DC 26060074 */  addiu $a2, $s0, 0x74
/* AC3980 8004C7E0 AFA6002C */  sw    $a2, 0x2c($sp)
/* AC3984 8004C7E4 27A40054 */  addiu $a0, $sp, 0x54
/* AC3988 8004C7E8 0C01F124 */  jal   func_8007C490
/* AC398C 8004C7EC 8FA50030 */   lw    $a1, 0x30($sp)
/* AC3990 8004C7F0 860D0018 */  lh    $t5, 0x18($s0)
/* AC3994 8004C7F4 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC3998 8004C7F8 240E0032 */  li    $t6, 50
/* AC399C 8004C7FC AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* AC39A0 8004C800 8603015E */  lh    $v1, 0x15e($s0)
/* AC39A4 8004C804 2401000A */  li    $at, 10
/* AC39A8 8004C808 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AC39AC 8004C80C 50600008 */  beql  $v1, $zero, .L8004C830
/* AC39B0 8004C810 2603001C */   addiu $v1, $s0, 0x1c
/* AC39B4 8004C814 10610005 */  beq   $v1, $at, .L8004C82C
/* AC39B8 8004C818 24010014 */   li    $at, 20
/* AC39BC 8004C81C 50610004 */  beql  $v1, $at, .L8004C830
/* AC39C0 8004C820 2603001C */   addiu $v1, $s0, 0x1c
/* AC39C4 8004C824 10000006 */  b     .L8004C840
/* AC39C8 8004C828 2603001C */   addiu $v1, $s0, 0x1c
.L8004C82C:
/* AC39CC 8004C82C 2603001C */  addiu $v1, $s0, 0x1c
.L8004C830:
/* AC39D0 8004C830 A46E0000 */  sh    $t6, ($v1)
/* AC39D4 8004C834 860F015E */  lh    $t7, 0x15e($s0)
/* AC39D8 8004C838 25F80001 */  addiu $t8, $t7, 1
/* AC39DC 8004C83C A618015E */  sh    $t8, 0x15e($s0)
.L8004C840:
/* AC39E0 8004C840 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC39E4 8004C844 3C018014 */  lui   $at, %hi(D_8013A060)
/* AC39E8 8004C848 C432A060 */  lwc1  $f18, %lo(D_8013A060)($at)
/* AC39EC 8004C84C 851901C6 */  lh    $t9, 0x1c6($t0)
/* AC39F0 8004C850 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC39F4 8004C854 C60C000C */  lwc1  $f12, 0xc($s0)
/* AC39F8 8004C858 44994000 */  mtc1  $t9, $f8
/* AC39FC 8004C85C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC3A00 8004C860 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3A04 8004C864 46804420 */  cvt.s.w $f16, $f8
/* AC3A08 8004C868 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3A0C 8004C86C AFA30028 */  sw    $v1, 0x28($sp)
/* AC3A10 8004C870 46128282 */  mul.s $f10, $f16, $f18
/* AC3A14 8004C874 00000000 */  nop   
/* AC3A18 8004C878 46045182 */  mul.s $f6, $f10, $f4
/* AC3A1C 8004C87C 44063000 */  mfc1  $a2, $f6
/* AC3A20 8004C880 0C010E27 */  jal   func_8004389C
/* AC3A24 8004C884 00000000 */   nop   
/* AC3A28 8004C888 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AC3A2C 8004C88C 44811000 */  mtc1  $at, $f2
/* AC3A30 8004C890 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC3A34 8004C894 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AC3A38 8004C898 E60200C0 */  swc1  $f2, 0xc0($s0)
/* AC3A3C 8004C89C E60200C4 */  swc1  $f2, 0xc4($s0)
/* AC3A40 8004C8A0 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC3A44 8004C8A4 3C018014 */  lui   $at, %hi(D_8013A064)
/* AC3A48 8004C8A8 C42CA064 */  lwc1  $f12, %lo(D_8013A064)($at)
/* AC3A4C 8004C8AC 852A01C6 */  lh    $t2, 0x1c6($t1)
/* AC3A50 8004C8B0 3C018014 */  lui   $at, %hi(D_8013A068)
/* AC3A54 8004C8B4 C432A068 */  lwc1  $f18, %lo(D_8013A068)($at)
/* AC3A58 8004C8B8 448A4000 */  mtc1  $t2, $f8
/* AC3A5C 8004C8BC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3A60 8004C8C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3A64 8004C8C4 46804420 */  cvt.s.w $f16, $f8
/* AC3A68 8004C8C8 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC3A6C 8004C8CC 46128282 */  mul.s $f10, $f16, $f18
/* AC3A70 8004C8D0 44065000 */  mfc1  $a2, $f10
/* AC3A74 8004C8D4 0C010E27 */  jal   func_8004389C
/* AC3A78 8004C8D8 00000000 */   nop   
/* AC3A7C 8004C8DC E60000CC */  swc1  $f0, 0xcc($s0)
/* AC3A80 8004C8E0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC3A84 8004C8E4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC3A88 8004C8E8 3C018014 */  lui   $at, %hi(D_8013A06C)
/* AC3A8C 8004C8EC C428A06C */  lwc1  $f8, %lo(D_8013A06C)($at)
/* AC3A90 8004C8F0 844B019A */  lh    $t3, 0x19a($v0)
/* AC3A94 8004C8F4 844C01C8 */  lh    $t4, 0x1c8($v0)
/* AC3A98 8004C8F8 3C018014 */  lui   $at, %hi(D_8013A070)
/* AC3A9C 8004C8FC 448B2000 */  mtc1  $t3, $f4
/* AC3AA0 8004C900 448C8000 */  mtc1  $t4, $f16
/* AC3AA4 8004C904 C42AA070 */  lwc1  $f10, %lo(D_8013A070)($at)
/* AC3AA8 8004C908 468021A0 */  cvt.s.w $f6, $f4
/* AC3AAC 8004C90C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3AB0 8004C910 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3AB4 8004C914 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC3AB8 8004C918 468084A0 */  cvt.s.w $f18, $f16
/* AC3ABC 8004C91C 46083302 */  mul.s $f12, $f6, $f8
/* AC3AC0 8004C920 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC3AC4 8004C924 460A9102 */  mul.s $f4, $f18, $f10
/* AC3AC8 8004C928 00000000 */  nop   
/* AC3ACC 8004C92C 46062202 */  mul.s $f8, $f4, $f6
/* AC3AD0 8004C930 44064000 */  mfc1  $a2, $f8
/* AC3AD4 8004C934 0C010E27 */  jal   func_8004389C
/* AC3AD8 8004C938 00000000 */   nop   
/* AC3ADC 8004C93C E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC3AE0 8004C940 3C018014 */  lui   $at, %hi(D_8013A074)
/* AC3AE4 8004C944 C430A074 */  lwc1  $f16, %lo(D_8013A074)($at)
/* AC3AE8 8004C948 02002025 */  move  $a0, $s0
/* AC3AEC 8004C94C 27A50054 */  addiu $a1, $sp, 0x54
/* AC3AF0 8004C950 8E060000 */  lw    $a2, ($s0)
/* AC3AF4 8004C954 24070001 */  li    $a3, 1
/* AC3AF8 8004C958 0C0115EA */  jal   func_800457A8
/* AC3AFC 8004C95C E61000D4 */   swc1  $f16, 0xd4($s0)
/* AC3B00 8004C960 8FA30028 */  lw    $v1, 0x28($sp)
/* AC3B04 8004C964 87AE0062 */  lh    $t6, 0x62($sp)
/* AC3B08 8004C968 87B90062 */  lh    $t9, 0x62($sp)
/* AC3B0C 8004C96C 846D0000 */  lh    $t5, ($v1)
/* AC3B10 8004C970 24070002 */  li    $a3, 2
/* AC3B14 8004C974 51A0000B */  beql  $t5, $zero, .L8004C9A4
/* AC3B18 8004C978 A7B9006A */   sh    $t9, 0x6a($sp)
/* AC3B1C 8004C97C 87AF0060 */  lh    $t7, 0x60($sp)
/* AC3B20 8004C980 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* AC3B24 8004C984 A7AE006A */  sh    $t6, 0x6a($sp)
/* AC3B28 8004C988 A7AF0068 */  sh    $t7, 0x68($sp)
/* AC3B2C 8004C98C E7B20064 */  swc1  $f18, 0x64($sp)
/* AC3B30 8004C990 84780000 */  lh    $t8, ($v1)
/* AC3B34 8004C994 2708FFFF */  addiu $t0, $t8, -1
/* AC3B38 8004C998 1000000E */  b     .L8004C9D4
/* AC3B3C 8004C99C A4680000 */   sh    $t0, ($v1)
/* AC3B40 8004C9A0 A7B9006A */  sh    $t9, 0x6a($sp)
.L8004C9A4:
/* AC3B44 8004C9A4 8E06000C */  lw    $a2, 0xc($s0)
/* AC3B48 8004C9A8 86040008 */  lh    $a0, 8($s0)
/* AC3B4C 8004C9AC 0C010E47 */  jal   func_8004391C
/* AC3B50 8004C9B0 87A50060 */   lh    $a1, 0x60($sp)
/* AC3B54 8004C9B4 A7A20068 */  sh    $v0, 0x68($sp)
/* AC3B58 8004C9B8 3C073A83 */  lui   $a3, (0x3A83126F >> 16) # lui $a3, 0x3a83
/* AC3B5C 8004C9BC 34E7126F */  ori   $a3, (0x3A83126F & 0xFFFF) # ori $a3, $a3, 0x126f
/* AC3B60 8004C9C0 8E06000C */  lw    $a2, 0xc($s0)
/* AC3B64 8004C9C4 C60C0004 */  lwc1  $f12, 4($s0)
/* AC3B68 8004C9C8 0C010E27 */  jal   func_8004389C
/* AC3B6C 8004C9CC C7AE005C */   lwc1  $f14, 0x5c($sp)
/* AC3B70 8004C9D0 E7A00064 */  swc1  $f0, 0x64($sp)
.L8004C9D4:
/* AC3B74 8004C9D4 8FA4002C */  lw    $a0, 0x2c($sp)
/* AC3B78 8004C9D8 8FA50030 */  lw    $a1, 0x30($sp)
/* AC3B7C 8004C9DC 0C010F0A */  jal   func_80043C28
/* AC3B80 8004C9E0 27A60064 */   addiu $a2, $sp, 0x64
/* AC3B84 8004C9E4 8FAA002C */  lw    $t2, 0x2c($sp)
/* AC3B88 8004C9E8 8FA90034 */  lw    $t1, 0x34($sp)
/* AC3B8C 8004C9EC 3C073F80 */  lui   $a3, 0x3f80
/* AC3B90 8004C9F0 8D4C0000 */  lw    $t4, ($t2)
/* AC3B94 8004C9F4 AD2C0000 */  sw    $t4, ($t1)
/* AC3B98 8004C9F8 8D4B0004 */  lw    $t3, 4($t2)
/* AC3B9C 8004C9FC AD2B0004 */  sw    $t3, 4($t1)
/* AC3BA0 8004CA00 8D4C0008 */  lw    $t4, 8($t2)
/* AC3BA4 8004CA04 AD2C0008 */  sw    $t4, 8($t1)
/* AC3BA8 8004CA08 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* AC3BAC 8004CA0C 8E06000C */  lw    $a2, 0xc($s0)
/* AC3BB0 8004CA10 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC3BB4 8004CA14 C60C0010 */  lwc1  $f12, 0x10($s0)
/* AC3BB8 8004CA18 0C010E27 */  jal   func_8004389C
/* AC3BBC 8004CA1C E60A00DC */   swc1  $f10, 0xdc($s0)
/* AC3BC0 8004CA20 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC3BC4 8004CA24 A600015A */  sh    $zero, 0x15a($s0)
/* AC3BC8 8004CA28 02002025 */  move  $a0, $s0
/* AC3BCC 8004CA2C 0C011429 */  jal   func_800450A4
/* AC3BD0 8004CA30 8E050014 */   lw    $a1, 0x14($s0)
/* AC3BD4 8004CA34 E6000100 */  swc1  $f0, 0x100($s0)
/* AC3BD8 8004CA38 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC3BDC 8004CA3C 8FB00018 */  lw    $s0, 0x18($sp)
/* AC3BE0 8004CA40 27BD0078 */  addiu $sp, $sp, 0x78
/* AC3BE4 8004CA44 03E00008 */  jr    $ra
/* AC3BE8 8004CA48 24020001 */   li    $v0, 1
# SPLIT
/* AC3BEC 8004CA4C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC3BF0 8004CA50 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC3BF4 8004CA54 0C011CE5 */  jal   func_80047394
/* AC3BF8 8004CA58 00000000 */   nop   
/* AC3BFC 8004CA5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC3C00 8004CA60 27BD0018 */  addiu $sp, $sp, 0x18
/* AC3C04 8004CA64 03E00008 */  jr    $ra
/* AC3C08 8004CA68 00000000 */   nop   
# SPLIT
/* AC3C0C 8004CA6C 27BDFEC8 */  addiu $sp, $sp, -0x138
/* AC3C10 8004CA70 AFB00028 */  sw    $s0, 0x28($sp)
/* AC3C14 8004CA74 00808025 */  move  $s0, $a0
/* AC3C18 8004CA78 AFBF002C */  sw    $ra, 0x2c($sp)
/* AC3C1C 8004CA7C AFA00088 */  sw    $zero, 0x88($sp)
/* AC3C20 8004CA80 0C00B721 */  jal   func_8002DC84
/* AC3C24 8004CA84 8C840090 */   lw    $a0, 0x90($a0)
/* AC3C28 8004CA88 E7A00070 */  swc1  $f0, 0x70($sp)
/* AC3C2C 8004CA8C 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC3C30 8004CA90 10600004 */  beqz  $v1, .L8004CAA4
/* AC3C34 8004CA94 00000000 */   nop   
/* AC3C38 8004CA98 8C6E0130 */  lw    $t6, 0x130($v1)
/* AC3C3C 8004CA9C 55C0000C */  bnezl $t6, .L8004CAD0
/* AC3C40 8004CAA0 8604015E */   lh    $a0, 0x15e($s0)
.L8004CAA4:
/* AC3C44 8004CAA4 14600003 */  bnez  $v1, .L8004CAB4
/* AC3C48 8004CAA8 3C048014 */   lui   $a0, %hi(D_80139248) # $a0, 0x8014
/* AC3C4C 8004CAAC 0C00084C */  jal   osSyncPrintf
/* AC3C50 8004CAB0 24849248 */   addiu $a0, %lo(D_80139248) # addiu $a0, $a0, -0x6db8
.L8004CAB4:
/* AC3C54 8004CAB4 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC3C58 8004CAB8 02002025 */  move  $a0, $s0
/* AC3C5C 8004CABC 0C016911 */  jal   func_8005A444
/* AC3C60 8004CAC0 24050001 */   li    $a1, 1
/* AC3C64 8004CAC4 100003BA */  b     .L8004D9B0
/* AC3C68 8004CAC8 24020001 */   li    $v0, 1
/* AC3C6C 8004CACC 8604015E */  lh    $a0, 0x15e($s0)
.L8004CAD0:
/* AC3C70 8004CAD0 10800008 */  beqz  $a0, .L8004CAF4
/* AC3C74 8004CAD4 2401000A */   li    $at, 10
/* AC3C78 8004CAD8 10810006 */  beq   $a0, $at, .L8004CAF4
/* AC3C7C 8004CADC 24010014 */   li    $at, 20
/* AC3C80 8004CAE0 10810004 */  beq   $a0, $at, .L8004CAF4
/* AC3C84 8004CAE4 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC3C88 8004CAE8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC3C8C 8004CAEC 85E30314 */  lh    $v1, 0x314($t7)
/* AC3C90 8004CAF0 10600066 */  beqz  $v1, .L8004CC8C
.L8004CAF4:
/* AC3C94 8004CAF4 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC3C98 8004CAF8 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC3C9C 8004CAFC 3C018014 */  lui   $at, %hi(D_8013A078)
/* AC3CA0 8004CB00 C42EA078 */  lwc1  $f14, %lo(D_8013A078)($at)
/* AC3CA4 8004CB04 85CF01F0 */  lh    $t7, 0x1f0($t6)
/* AC3CA8 8004CB08 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3CAC 8004CB0C 44814000 */  mtc1  $at, $f8
/* AC3CB0 8004CB10 448F2000 */  mtc1  $t7, $f4
/* AC3CB4 8004CB14 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC3CB8 8004CB18 86180142 */  lh    $t8, 0x142($s0)
/* AC3CBC 8004CB1C 468021A0 */  cvt.s.w $f6, $f4
/* AC3CC0 8004CB20 44812000 */  mtc1  $at, $f4
/* AC3CC4 8004CB24 3C0A8012 */  lui   $t2, %hi(D_8011D068)
/* AC3CC8 8004CB28 0018C8C0 */  sll   $t9, $t8, 3
/* AC3CCC 8004CB2C 860B0144 */  lh    $t3, 0x144($s0)
/* AC3CD0 8004CB30 01595021 */  addu  $t2, $t2, $t9
/* AC3CD4 8004CB34 460E3082 */  mul.s $f2, $f6, $f14
/* AC3CD8 8004CB38 46002183 */  div.s $f6, $f4, $f0
/* AC3CDC 8004CB3C 8D4AD068 */  lw    $t2, %lo(D_8011D068)($t2)
/* AC3CE0 8004CB40 000B60C0 */  sll   $t4, $t3, 3
/* AC3CE4 8004CB44 014C6821 */  addu  $t5, $t2, $t4
/* AC3CE8 8004CB48 8DA20004 */  lw    $v0, 4($t5)
/* AC3CEC 8004CB4C 46024280 */  add.s $f10, $f8, $f2
/* AC3CF0 8004CB50 84580000 */  lh    $t8, ($v0)
/* AC3CF4 8004CB54 24420030 */  addiu $v0, $v0, 0x30
/* AC3CF8 8004CB58 44982000 */  mtc1  $t8, $f4
/* AC3CFC 8004CB5C 46061202 */  mul.s $f8, $f2, $f6
/* AC3D00 8004CB60 468021A0 */  cvt.s.w $f6, $f4
/* AC3D04 8004CB64 46085301 */  sub.s $f12, $f10, $f8
/* AC3D08 8004CB68 460E3282 */  mul.s $f10, $f6, $f14
/* AC3D0C 8004CB6C 00000000 */  nop   
/* AC3D10 8004CB70 46005202 */  mul.s $f8, $f10, $f0
/* AC3D14 8004CB74 00000000 */  nop   
/* AC3D18 8004CB78 460C4102 */  mul.s $f4, $f8, $f12
/* AC3D1C 8004CB7C E6040000 */  swc1  $f4, ($s0)
/* AC3D20 8004CB80 8459FFD4 */  lh    $t9, -0x2c($v0)
/* AC3D24 8004CB84 44993000 */  mtc1  $t9, $f6
/* AC3D28 8004CB88 00000000 */  nop   
/* AC3D2C 8004CB8C 468032A0 */  cvt.s.w $f10, $f6
/* AC3D30 8004CB90 E60A0004 */  swc1  $f10, 4($s0)
/* AC3D34 8004CB94 844BFFD8 */  lh    $t3, -0x28($v0)
/* AC3D38 8004CB98 448B4000 */  mtc1  $t3, $f8
/* AC3D3C 8004CB9C 00000000 */  nop   
/* AC3D40 8004CBA0 46804120 */  cvt.s.w $f4, $f8
/* AC3D44 8004CBA4 E6040008 */  swc1  $f4, 8($s0)
/* AC3D48 8004CBA8 844AFFDC */  lh    $t2, -0x24($v0)
/* AC3D4C 8004CBAC 448A3000 */  mtc1  $t2, $f6
/* AC3D50 8004CBB0 00000000 */  nop   
/* AC3D54 8004CBB4 468032A0 */  cvt.s.w $f10, $f6
/* AC3D58 8004CBB8 E60A000C */  swc1  $f10, 0xc($s0)
/* AC3D5C 8004CBBC 844CFFE0 */  lh    $t4, -0x20($v0)
/* AC3D60 8004CBC0 448C4000 */  mtc1  $t4, $f8
/* AC3D64 8004CBC4 00000000 */  nop   
/* AC3D68 8004CBC8 46804120 */  cvt.s.w $f4, $f8
/* AC3D6C 8004CBCC E6040010 */  swc1  $f4, 0x10($s0)
/* AC3D70 8004CBD0 844DFFE4 */  lh    $t5, -0x1c($v0)
/* AC3D74 8004CBD4 448D3000 */  mtc1  $t5, $f6
/* AC3D78 8004CBD8 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC3D7C 8004CBDC 468032A0 */  cvt.s.w $f10, $f6
/* AC3D80 8004CBE0 E60A0014 */  swc1  $f10, 0x14($s0)
/* AC3D84 8004CBE4 844EFFE8 */  lh    $t6, -0x18($v0)
/* AC3D88 8004CBE8 448E4000 */  mtc1  $t6, $f8
/* AC3D8C 8004CBEC 00000000 */  nop   
/* AC3D90 8004CBF0 46804120 */  cvt.s.w $f4, $f8
/* AC3D94 8004CBF4 E6040018 */  swc1  $f4, 0x18($s0)
/* AC3D98 8004CBF8 844FFFEC */  lh    $t7, -0x14($v0)
/* AC3D9C 8004CBFC 448F3000 */  mtc1  $t7, $f6
/* AC3DA0 8004CC00 00000000 */  nop   
/* AC3DA4 8004CC04 468032A0 */  cvt.s.w $f10, $f6
/* AC3DA8 8004CC08 460E5202 */  mul.s $f8, $f10, $f14
/* AC3DAC 8004CC0C E608001C */  swc1  $f8, 0x1c($s0)
/* AC3DB0 8004CC10 8458FFF0 */  lh    $t8, -0x10($v0)
/* AC3DB4 8004CC14 44982000 */  mtc1  $t8, $f4
/* AC3DB8 8004CC18 00000000 */  nop   
/* AC3DBC 8004CC1C 468021A0 */  cvt.s.w $f6, $f4
/* AC3DC0 8004CC20 E6060020 */  swc1  $f6, 0x20($s0)
/* AC3DC4 8004CC24 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC3DC8 8004CC28 44995000 */  mtc1  $t9, $f10
/* AC3DCC 8004CC2C 00000000 */  nop   
/* AC3DD0 8004CC30 46805220 */  cvt.s.w $f8, $f10
/* AC3DD4 8004CC34 460E4102 */  mul.s $f4, $f8, $f14
/* AC3DD8 8004CC38 E6040024 */  swc1  $f4, 0x24($s0)
/* AC3DDC 8004CC3C 844BFFF8 */  lh    $t3, -8($v0)
/* AC3DE0 8004CC40 A60B0030 */  sh    $t3, 0x30($s0)
/* AC3DE4 8004CC44 844AFFFC */  lh    $t2, -4($v0)
/* AC3DE8 8004CC48 448A3000 */  mtc1  $t2, $f6
/* AC3DEC 8004CC4C 00000000 */  nop   
/* AC3DF0 8004CC50 468032A0 */  cvt.s.w $f10, $f6
/* AC3DF4 8004CC54 460E5202 */  mul.s $f8, $f10, $f14
/* AC3DF8 8004CC58 00000000 */  nop   
/* AC3DFC 8004CC5C 46004102 */  mul.s $f4, $f8, $f0
/* AC3E00 8004CC60 00000000 */  nop   
/* AC3E04 8004CC64 460C2182 */  mul.s $f6, $f4, $f12
/* AC3E08 8004CC68 E6060028 */  swc1  $f6, 0x28($s0)
/* AC3E0C 8004CC6C 844C0000 */  lh    $t4, ($v0)
/* AC3E10 8004CC70 448C5000 */  mtc1  $t4, $f10
/* AC3E14 8004CC74 00000000 */  nop   
/* AC3E18 8004CC78 46805220 */  cvt.s.w $f8, $f10
/* AC3E1C 8004CC7C 460E4102 */  mul.s $f4, $f8, $f14
/* AC3E20 8004CC80 E604002C */  swc1  $f4, 0x2c($s0)
/* AC3E24 8004CC84 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC3E28 8004CC88 85A30314 */  lh    $v1, 0x314($t5)
.L8004CC8C:
/* AC3E2C 8004CC8C 50600004 */  beql  $v1, $zero, .L8004CCA0
/* AC3E30 8004CC90 C7A60070 */   lwc1  $f6, 0x70($sp)
/* AC3E34 8004CC94 0C011495 */  jal   func_80045254
/* AC3E38 8004CC98 02002025 */   move  $a0, $s0
/* AC3E3C 8004CC9C C7A60070 */  lwc1  $f6, 0x70($sp)
.L8004CCA0:
/* AC3E40 8004CCA0 C60A0000 */  lwc1  $f10, ($s0)
/* AC3E44 8004CCA4 26050050 */  addiu $a1, $s0, 0x50
/* AC3E48 8004CCA8 2606005C */  addiu $a2, $s0, 0x5c
/* AC3E4C 8004CCAC 460A3200 */  add.s $f8, $f6, $f10
/* AC3E50 8004CCB0 AFA60048 */  sw    $a2, 0x48($sp)
/* AC3E54 8004CCB4 AFA50044 */  sw    $a1, 0x44($sp)
/* AC3E58 8004CCB8 27A400C0 */  addiu $a0, $sp, 0xc0
/* AC3E5C 8004CCBC 0C01F124 */  jal   func_8007C490
/* AC3E60 8004CCC0 E7A80070 */   swc1  $f8, 0x70($sp)
/* AC3E64 8004CCC4 26060074 */  addiu $a2, $s0, 0x74
/* AC3E68 8004CCC8 AFA60040 */  sw    $a2, 0x40($sp)
/* AC3E6C 8004CCCC 27A400B8 */  addiu $a0, $sp, 0xb8
/* AC3E70 8004CCD0 0C01F124 */  jal   func_8007C490
/* AC3E74 8004CCD4 8FA50044 */   lw    $a1, 0x44($sp)
/* AC3E78 8004CCD8 860E0030 */  lh    $t6, 0x30($s0)
/* AC3E7C 8004CCDC 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC3E80 8004CCE0 AC2ED3A0 */  sw    $t6, %lo(D_8011D3A0)($at)
/* AC3E84 8004CCE4 8604015E */  lh    $a0, 0x15e($s0)
/* AC3E88 8004CCE8 260E0094 */  addiu $t6, $s0, 0x94
/* AC3E8C 8004CCEC 10800005 */  beqz  $a0, .L8004CD04
/* AC3E90 8004CCF0 2401000A */   li    $at, 10
/* AC3E94 8004CCF4 10810003 */  beq   $a0, $at, .L8004CD04
/* AC3E98 8004CCF8 24010014 */   li    $at, 20
/* AC3E9C 8004CCFC 5481001A */  bnel  $a0, $at, .L8004CD68
/* AC3EA0 8004CD00 AFAE003C */   sw    $t6, 0x3c($sp)
.L8004CD04:
/* AC3EA4 8004CD04 44802000 */  mtc1  $zero, $f4
/* AC3EA8 8004CD08 248F0001 */  addiu $t7, $a0, 1
/* AC3EAC 8004CD0C A60F015E */  sh    $t7, 0x15e($s0)
/* AC3EB0 8004CD10 26090034 */  addiu $t1, $s0, 0x34
/* AC3EB4 8004CD14 A5200010 */  sh    $zero, 0x10($t1)
/* AC3EB8 8004CD18 E5240004 */  swc1  $f4, 4($t1)
/* AC3EBC 8004CD1C 8E1800A8 */  lw    $t8, 0xa8($s0)
/* AC3EC0 8004CD20 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC3EC4 8004CD24 AD38000C */  sw    $t8, 0xc($t1)
/* AC3EC8 8004CD28 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3ECC 8004CD2C 847901C4 */  lh    $t9, 0x1c4($v1)
/* AC3ED0 8004CD30 846B01C2 */  lh    $t3, 0x1c2($v1)
/* AC3ED4 8004CD34 032B5021 */  addu  $t2, $t9, $t3
/* AC3ED8 8004CD38 A52A0016 */  sh    $t2, 0x16($t1)
/* AC3EDC 8004CD3C 87AC00C6 */  lh    $t4, 0xc6($sp)
/* AC3EE0 8004CD40 A52C0012 */  sh    $t4, 0x12($t1)
/* AC3EE4 8004CD44 87AD00C4 */  lh    $t5, 0xc4($sp)
/* AC3EE8 8004CD48 A52D0014 */  sh    $t5, 0x14($t1)
/* AC3EEC 8004CD4C C7A600C0 */  lwc1  $f6, 0xc0($sp)
/* AC3EF0 8004CD50 E5260000 */  swc1  $f6, ($t1)
/* AC3EF4 8004CD54 C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC3EF8 8004CD58 C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC3EFC 8004CD5C 46085101 */  sub.s $f4, $f10, $f8
/* AC3F00 8004CD60 E5240008 */  swc1  $f4, 8($t1)
/* AC3F04 8004CD64 AFAE003C */  sw    $t6, 0x3c($sp)
.L8004CD68:
/* AC3F08 8004CD68 860F0140 */  lh    $t7, 0x140($s0)
/* AC3F0C 8004CD6C 24010007 */  li    $at, 7
/* AC3F10 8004CD70 26090034 */  addiu $t1, $s0, 0x34
/* AC3F14 8004CD74 55E1000C */  bnel  $t7, $at, .L8004CDA8
/* AC3F18 8004CD78 3C013F80 */   lui   $at, 0x3f80
/* AC3F1C 8004CD7C 87B900C4 */  lh    $t9, 0xc4($sp)
/* AC3F20 8004CD80 24180001 */  li    $t8, 1
/* AC3F24 8004CD84 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC3F28 8004CD88 AC38D3E8 */  sw    $t8, %lo(D_8011D3E8)($at)
/* AC3F2C 8004CD8C 00195823 */  negu  $t3, $t9
/* AC3F30 8004CD90 A60B0134 */  sh    $t3, 0x134($s0)
/* AC3F34 8004CD94 87AA00C6 */  lh    $t2, 0xc6($sp)
/* AC3F38 8004CD98 A6000138 */  sh    $zero, 0x138($s0)
/* AC3F3C 8004CD9C 254C8001 */  addiu $t4, $t2, -0x7fff
/* AC3F40 8004CDA0 A60C0136 */  sh    $t4, 0x136($s0)
/* AC3F44 8004CDA4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L8004CDA8:
/* AC3F48 8004CDA8 C6060004 */  lwc1  $f6, 4($s0)
/* AC3F4C 8004CDAC 44815000 */  mtc1  $at, $f10
/* AC3F50 8004CDB0 24010008 */  li    $at, 8
/* AC3F54 8004CDB4 E7A60104 */  swc1  $f6, 0x104($sp)
/* AC3F58 8004CDB8 E7AA0084 */  swc1  $f10, 0x84($sp)
/* AC3F5C 8004CDBC 8602015C */  lh    $v0, 0x15c($s0)
/* AC3F60 8004CDC0 30420018 */  andi  $v0, $v0, 0x18
/* AC3F64 8004CDC4 10410013 */  beq   $v0, $at, .L8004CE14
/* AC3F68 8004CDC8 24010010 */   li    $at, 16
/* AC3F6C 8004CDCC 1041007C */  beq   $v0, $at, .L8004CFC0
/* AC3F70 8004CDD0 260E00AC */   addiu $t6, $s0, 0xac
/* AC3F74 8004CDD4 8FAD003C */  lw    $t5, 0x3c($sp)
/* AC3F78 8004CDD8 8FA50044 */  lw    $a1, 0x44($sp)
/* AC3F7C 8004CDDC 261800AC */  addiu $t8, $s0, 0xac
/* AC3F80 8004CDE0 8DAF0000 */  lw    $t7, ($t5)
/* AC3F84 8004CDE4 ACAF0000 */  sw    $t7, ($a1)
/* AC3F88 8004CDE8 8DAE0004 */  lw    $t6, 4($t5)
/* AC3F8C 8004CDEC ACAE0004 */  sw    $t6, 4($a1)
/* AC3F90 8004CDF0 8DAF0008 */  lw    $t7, 8($t5)
/* AC3F94 8004CDF4 C4A80004 */  lwc1  $f8, 4($a1)
/* AC3F98 8004CDF8 ACAF0008 */  sw    $t7, 8($a1)
/* AC3F9C 8004CDFC C7A40070 */  lwc1  $f4, 0x70($sp)
/* AC3FA0 8004CE00 46044180 */  add.s $f6, $f8, $f4
/* AC3FA4 8004CE04 E4A60004 */  swc1  $f6, 4($a1)
/* AC3FA8 8004CE08 AD20000C */  sw    $zero, 0xc($t1)
/* AC3FAC 8004CE0C 100000BC */  b     .L8004D100
/* AC3FB0 8004CE10 AFB80030 */   sw    $t8, 0x30($sp)
.L8004CE14:
/* AC3FB4 8004CE14 8E050090 */  lw    $a1, 0x90($s0)
/* AC3FB8 8004CE18 24010002 */  li    $at, 2
/* AC3FBC 8004CE1C 260400AC */  addiu $a0, $s0, 0xac
/* AC3FC0 8004CE20 90B90002 */  lbu   $t9, 2($a1)
/* AC3FC4 8004CE24 57210017 */  bnel  $t9, $at, .L8004CE84
/* AC3FC8 8004CE28 AFA40030 */   sw    $a0, 0x30($sp)
/* AC3FCC 8004CE2C 8E0B00A8 */  lw    $t3, 0xa8($s0)
/* AC3FD0 8004CE30 8CAA0438 */  lw    $t2, 0x438($a1)
/* AC3FD4 8004CE34 556A0013 */  bnel  $t3, $t2, .L8004CE84
/* AC3FD8 8004CE38 AFA40030 */   sw    $a0, 0x30($sp)
/* AC3FDC 8004CE3C 27A40054 */  addiu $a0, $sp, 0x54
/* AC3FE0 8004CE40 0C00BBB9 */  jal   func_8002EEE4
/* AC3FE4 8004CE44 AFA90038 */   sw    $t1, 0x38($sp)
/* AC3FE8 8004CE48 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AC3FEC 8004CE4C 44815000 */  mtc1  $at, $f10
/* AC3FF0 8004CE50 240D2EE0 */  li    $t5, 12000
/* AC3FF4 8004CE54 260400AC */  addiu $a0, $s0, 0xac
/* AC3FF8 8004CE58 E7AA00C8 */  swc1  $f10, 0xc8($sp)
/* AC3FFC 8004CE5C 860C00A2 */  lh    $t4, 0xa2($s0)
/* AC4000 8004CE60 A7AD00CC */  sh    $t5, 0xcc($sp)
/* AC4004 8004CE64 AFA40030 */  sw    $a0, 0x30($sp)
/* AC4008 8004CE68 27A50054 */  addiu $a1, $sp, 0x54
/* AC400C 8004CE6C 27A600C8 */  addiu $a2, $sp, 0xc8
/* AC4010 8004CE70 0C010F0A */  jal   func_80043C28
/* AC4014 8004CE74 A7AC00CE */   sh    $t4, 0xce($sp)
/* AC4018 8004CE78 10000006 */  b     .L8004CE94
/* AC401C 8004CE7C 8FA90038 */   lw    $t1, 0x38($sp)
/* AC4020 8004CE80 AFA40030 */  sw    $a0, 0x30($sp)
.L8004CE84:
/* AC4024 8004CE84 8E0500A8 */  lw    $a1, 0xa8($s0)
/* AC4028 8004CE88 0C00BBB9 */  jal   func_8002EEE4
/* AC402C 8004CE8C AFA90038 */   sw    $t1, 0x38($sp)
/* AC4030 8004CE90 8FA90038 */  lw    $t1, 0x38($sp)
.L8004CE94:
/* AC4034 8004CE94 8E0500A8 */  lw    $a1, 0xa8($s0)
/* AC4038 8004CE98 AFA90038 */  sw    $t1, 0x38($sp)
/* AC403C 8004CE9C 0C00BBB9 */  jal   func_8002EEE4
/* AC4040 8004CEA0 8FA40030 */   lw    $a0, 0x30($sp)
/* AC4044 8004CEA4 8FA90038 */  lw    $t1, 0x38($sp)
/* AC4048 8004CEA8 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC404C 8004CEAC 3C188016 */  lui   $t8, %hi(gGameInfo)
/* AC4050 8004CEB0 8D2F000C */  lw    $t7, 0xc($t1)
/* AC4054 8004CEB4 106F0004 */  beq   $v1, $t7, .L8004CEC8
/* AC4058 8004CEB8 00000000 */   nop   
/* AC405C 8004CEBC 44804000 */  mtc1  $zero, $f8
/* AC4060 8004CEC0 AD23000C */  sw    $v1, 0xc($t1)
/* AC4064 8004CEC4 E6080100 */  swc1  $f8, 0x100($s0)
.L8004CEC8:
/* AC4068 8004CEC8 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC406C 8004CECC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4070 8004CED0 44816000 */  mtc1  $at, $f12
/* AC4074 8004CED4 871901C6 */  lh    $t9, 0x1c6($t8)
/* AC4078 8004CED8 3C018014 */  lui   $at, %hi(D_8013A084)
/* AC407C 8004CEDC C42AA084 */  lwc1  $f10, %lo(D_8013A084)($at)
/* AC4080 8004CEE0 44992000 */  mtc1  $t9, $f4
/* AC4084 8004CEE4 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC4088 8004CEE8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC408C 8004CEEC 468021A0 */  cvt.s.w $f6, $f4
/* AC4090 8004CEF0 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC4094 8004CEF4 AFA90038 */  sw    $t1, 0x38($sp)
/* AC4098 8004CEF8 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC409C 8004CEFC 460A3202 */  mul.s $f8, $f6, $f10
/* AC40A0 8004CF00 00000000 */  nop   
/* AC40A4 8004CF04 46044182 */  mul.s $f6, $f8, $f4
/* AC40A8 8004CF08 44063000 */  mfc1  $a2, $f6
/* AC40AC 8004CF0C 0C010E27 */  jal   func_8004389C
/* AC40B0 8004CF10 00000000 */   nop   
/* AC40B4 8004CF14 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC40B8 8004CF18 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC40BC 8004CF1C 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC40C0 8004CF20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC40C4 8004CF24 44816000 */  mtc1  $at, $f12
/* AC40C8 8004CF28 856A01C8 */  lh    $t2, 0x1c8($t3)
/* AC40CC 8004CF2C 3C018014 */  lui   $at, %hi(D_8013A088)
/* AC40D0 8004CF30 C424A088 */  lwc1  $f4, %lo(D_8013A088)($at)
/* AC40D4 8004CF34 448A5000 */  mtc1  $t2, $f10
/* AC40D8 8004CF38 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC40DC 8004CF3C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC40E0 8004CF40 46805220 */  cvt.s.w $f8, $f10
/* AC40E4 8004CF44 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC40E8 8004CF48 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC40EC 8004CF4C 46044182 */  mul.s $f6, $f8, $f4
/* AC40F0 8004CF50 00000000 */  nop   
/* AC40F4 8004CF54 460A3202 */  mul.s $f8, $f6, $f10
/* AC40F8 8004CF58 44064000 */  mfc1  $a2, $f8
/* AC40FC 8004CF5C 0C010E27 */  jal   func_8004389C
/* AC4100 8004CF60 00000000 */   nop   
/* AC4104 8004CF64 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC4108 8004CF68 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC410C 8004CF6C 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC4110 8004CF70 3C018014 */  lui   $at, %hi(D_8013A08C)
/* AC4114 8004CF74 C42AA08C */  lwc1  $f10, %lo(D_8013A08C)($at)
/* AC4118 8004CF78 858D019C */  lh    $t5, 0x19c($t4)
/* AC411C 8004CF7C 3C018014 */  lui   $at, %hi(D_8013A090)
/* AC4120 8004CF80 C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC4124 8004CF84 448D2000 */  mtc1  $t5, $f4
/* AC4128 8004CF88 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC412C 8004CF8C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC4130 8004CF90 468021A0 */  cvt.s.w $f6, $f4
/* AC4134 8004CF94 C424A090 */  lwc1  $f4, %lo(D_8013A090)($at)
/* AC4138 8004CF98 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC413C 8004CF9C 460A3302 */  mul.s $f12, $f6, $f10
/* AC4140 8004CFA0 00000000 */  nop   
/* AC4144 8004CFA4 46044182 */  mul.s $f6, $f8, $f4
/* AC4148 8004CFA8 44063000 */  mfc1  $a2, $f6
/* AC414C 8004CFAC 0C010E27 */  jal   func_8004389C
/* AC4150 8004CFB0 00000000 */   nop   
/* AC4154 8004CFB4 8FA90038 */  lw    $t1, 0x38($sp)
/* AC4158 8004CFB8 10000003 */  b     .L8004CFC8
/* AC415C 8004CFBC E60000D4 */   swc1  $f0, 0xd4($s0)
.L8004CFC0:
/* AC4160 8004CFC0 AD20000C */  sw    $zero, 0xc($t1)
/* AC4164 8004CFC4 AFAE0030 */  sw    $t6, 0x30($sp)
.L8004CFC8:
/* AC4168 8004CFC8 C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC416C 8004CFCC C6080104 */  lwc1  $f8, 0x104($s0)
/* AC4170 8004CFD0 8FB9003C */  lw    $t9, 0x3c($sp)
/* AC4174 8004CFD4 02002025 */  move  $a0, $s0
/* AC4178 8004CFD8 46085032 */  c.eq.s $f10, $f8
/* AC417C 8004CFDC 252D0008 */  addiu $t5, $t1, 8
/* AC4180 8004CFE0 27AE00C8 */  addiu $t6, $sp, 0xc8
/* AC4184 8004CFE4 00001025 */  move  $v0, $zero
/* AC4188 8004CFE8 4503000F */  bc1tl .L8004D028
/* AC418C 8004CFEC C72A0004 */   lwc1  $f10, 4($t9)
/* AC4190 8004CFF0 8E050090 */  lw    $a1, 0x90($s0)
/* AC4194 8004CFF4 3C018014 */  lui   $at, %hi(D_8013A094)
/* AC4198 8004CFF8 C424A094 */  lwc1  $f4, %lo(D_8013A094)($at)
/* AC419C 8004CFFC C4A6006C */  lwc1  $f6, 0x6c($a1)
/* AC41A0 8004D000 4606203C */  c.lt.s $f4, $f6
/* AC41A4 8004D004 00000000 */  nop   
/* AC41A8 8004D008 45030007 */  bc1tl .L8004D028
/* AC41AC 8004D00C C72A0004 */   lwc1  $f10, 4($t9)
/* AC41B0 8004D010 8CAF067C */  lw    $t7, 0x67c($a1)
/* AC41B4 8004D014 240B0001 */  li    $t3, 1
/* AC41B8 8004D018 000FC280 */  sll   $t8, $t7, 0xa
/* AC41BC 8004D01C 07030006 */  bgezl $t8, .L8004D038
/* AC41C0 8004D020 A7AB0080 */   sh    $t3, 0x80($sp)
/* AC41C4 8004D024 C72A0004 */  lwc1  $f10, 4($t9)
.L8004D028:
/* AC41C8 8004D028 E52A0008 */  swc1  $f10, 8($t1)
/* AC41CC 8004D02C 10000002 */  b     .L8004D038
/* AC41D0 8004D030 A7A00080 */   sh    $zero, 0x80($sp)
/* AC41D4 8004D034 A7AB0080 */  sh    $t3, 0x80($sp)
.L8004D038:
/* AC41D8 8004D038 87AA0080 */  lh    $t2, 0x80($sp)
/* AC41DC 8004D03C 87AC0080 */  lh    $t4, 0x80($sp)
/* AC41E0 8004D040 27A500B8 */  addiu $a1, $sp, 0xb8
/* AC41E4 8004D044 11400003 */  beqz  $t2, .L8004D054
/* AC41E8 8004D048 8FA60030 */   lw    $a2, 0x30($sp)
/* AC41EC 8004D04C 10000002 */  b     .L8004D058
/* AC41F0 8004D050 C6020028 */   lwc1  $f2, 0x28($s0)
.L8004D054:
/* AC41F4 8004D054 C6020000 */  lwc1  $f2, ($s0)
.L8004D058:
/* AC41F8 8004D058 11800003 */  beqz  $t4, .L8004D068
/* AC41FC 8004D05C C7A80104 */   lwc1  $f8, 0x104($sp)
/* AC4200 8004D060 10000001 */  b     .L8004D068
/* AC4204 8004D064 24020080 */   li    $v0, 128
.L8004D068:
/* AC4208 8004D068 E7A80010 */  swc1  $f8, 0x10($sp)
/* AC420C 8004D06C AFAD0014 */  sw    $t5, 0x14($sp)
/* AC4210 8004D070 AFAE0018 */  sw    $t6, 0x18($sp)
/* AC4214 8004D074 860F0030 */  lh    $t7, 0x30($s0)
/* AC4218 8004D078 44071000 */  mfc1  $a3, $f2
/* AC421C 8004D07C AFA90038 */  sw    $t1, 0x38($sp)
/* AC4220 8004D080 004FC025 */  or    $t8, $v0, $t7
/* AC4224 8004D084 0C01182A */  jal   func_800460A8
/* AC4228 8004D088 AFB8001C */   sw    $t8, 0x1c($sp)
/* AC422C 8004D08C 8FB9003C */  lw    $t9, 0x3c($sp)
/* AC4230 8004D090 27A50114 */  addiu $a1, $sp, 0x114
/* AC4234 8004D094 27A400C8 */  addiu $a0, $sp, 0xc8
/* AC4238 8004D098 8F2A0000 */  lw    $t2, ($t9)
/* AC423C 8004D09C ACAA0000 */  sw    $t2, ($a1)
/* AC4240 8004D0A0 8F2B0004 */  lw    $t3, 4($t9)
/* AC4244 8004D0A4 ACAB0004 */  sw    $t3, 4($a1)
/* AC4248 8004D0A8 8F2A0008 */  lw    $t2, 8($t9)
/* AC424C 8004D0AC ACAA0008 */  sw    $t2, 8($a1)
/* AC4250 8004D0B0 C7A40118 */  lwc1  $f4, 0x118($sp)
/* AC4254 8004D0B4 C7A60070 */  lwc1  $f6, 0x70($sp)
/* AC4258 8004D0B8 8FA60030 */  lw    $a2, 0x30($sp)
/* AC425C 8004D0BC 46062280 */  add.s $f10, $f4, $f6
/* AC4260 8004D0C0 0C01F124 */  jal   func_8007C490
/* AC4264 8004D0C4 E7AA0118 */   swc1  $f10, 0x118($sp)
/* AC4268 8004D0C8 C7A000C8 */  lwc1  $f0, 0xc8($sp)
/* AC426C 8004D0CC C7A80104 */  lwc1  $f8, 0x104($sp)
/* AC4270 8004D0D0 8FA90038 */  lw    $t1, 0x38($sp)
/* AC4274 8004D0D4 C7A60104 */  lwc1  $f6, 0x104($sp)
/* AC4278 8004D0D8 4600403C */  c.lt.s $f8, $f0
/* AC427C 8004D0DC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4280 8004D0E0 45020005 */  bc1fl .L8004D0F8
/* AC4284 8004D0E4 46060283 */   div.s $f10, $f0, $f6
/* AC4288 8004D0E8 44812000 */  mtc1  $at, $f4
/* AC428C 8004D0EC 10000003 */  b     .L8004D0FC
/* AC4290 8004D0F0 E7A40084 */   swc1  $f4, 0x84($sp)
/* AC4294 8004D0F4 46060283 */  div.s $f10, $f0, $f6
.L8004D0F8:
/* AC4298 8004D0F8 E7AA0084 */  swc1  $f10, 0x84($sp)
.L8004D0FC:
/* AC429C 8004D0FC 8FA50044 */  lw    $a1, 0x44($sp)
.L8004D100:
/* AC42A0 8004D100 27A400D8 */  addiu $a0, $sp, 0xd8
/* AC42A4 8004D104 8FA60040 */  lw    $a2, 0x40($sp)
/* AC42A8 8004D108 0C01F124 */  jal   func_8007C490
/* AC42AC 8004D10C AFA90038 */   sw    $t1, 0x38($sp)
/* AC42B0 8004D110 C6000004 */  lwc1  $f0, 4($s0)
/* AC42B4 8004D114 C7A800D8 */  lwc1  $f8, 0xd8($sp)
/* AC42B8 8004D118 8FA90038 */  lw    $t1, 0x38($sp)
/* AC42BC 8004D11C 4600403C */  c.lt.s $f8, $f0
/* AC42C0 8004D120 00000000 */  nop   
/* AC42C4 8004D124 45000009 */  bc1f  .L8004D14C
/* AC42C8 8004D128 3C038016 */   lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC42CC 8004D12C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC42D0 8004D130 E7A00104 */  swc1  $f0, 0x104($sp)
/* AC42D4 8004D134 846C01A0 */  lh    $t4, 0x1a0($v1)
/* AC42D8 8004D138 448C2000 */  mtc1  $t4, $f4
/* AC42DC 8004D13C 00000000 */  nop   
/* AC42E0 8004D140 468021A0 */  cvt.s.w $f6, $f4
/* AC42E4 8004D144 10000016 */  b     .L8004D1A0
/* AC42E8 8004D148 E7A600E8 */   swc1  $f6, 0xe8($sp)
.L8004D14C:
/* AC42EC 8004D14C C6000008 */  lwc1  $f0, 8($s0)
/* AC42F0 8004D150 C7AA00D8 */  lwc1  $f10, 0xd8($sp)
/* AC42F4 8004D154 C7A400D8 */  lwc1  $f4, 0xd8($sp)
/* AC42F8 8004D158 3C013F80 */  lui   $at, 0x3f80
/* AC42FC 8004D15C 460A003C */  c.lt.s $f0, $f10
/* AC4300 8004D160 3C038016 */  lui   $v1, %hi(gGameInfo)
/* AC4304 8004D164 4502000B */  bc1fl .L8004D194
/* AC4308 8004D168 44816000 */   mtc1  $at, $f12
/* AC430C 8004D16C 3C038016 */  lui   $v1, %hi(gGameInfo)
/* AC4310 8004D170 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC4314 8004D174 E7A00104 */  swc1  $f0, 0x104($sp)
/* AC4318 8004D178 846D01A0 */  lh    $t5, 0x1a0($v1)
/* AC431C 8004D17C 448D4000 */  mtc1  $t5, $f8
/* AC4320 8004D180 00000000 */  nop   
/* AC4324 8004D184 46804320 */  cvt.s.w $f12, $f8
/* AC4328 8004D188 10000005 */  b     .L8004D1A0
/* AC432C 8004D18C E7AC00E8 */   swc1  $f12, 0xe8($sp)
/* AC4330 8004D190 44816000 */  mtc1  $at, $f12
.L8004D194:
/* AC4334 8004D194 E7A40104 */  swc1  $f4, 0x104($sp)
/* AC4338 8004D198 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC433C 8004D19C E7AC00E8 */  swc1  $f12, 0xe8($sp)
.L8004D1A0:
/* AC4340 8004D1A0 846E01C6 */  lh    $t6, 0x1c6($v1)
/* AC4344 8004D1A4 3C018014 */  lui   $at, %hi(D_8013A098)
/* AC4348 8004D1A8 C428A098 */  lwc1  $f8, %lo(D_8013A098)($at)
/* AC434C 8004D1AC 448E3000 */  mtc1  $t6, $f6
/* AC4350 8004D1B0 C60E00C0 */  lwc1  $f14, 0xc0($s0)
/* AC4354 8004D1B4 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC4358 8004D1B8 468032A0 */  cvt.s.w $f10, $f6
/* AC435C 8004D1BC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC4360 8004D1C0 AFA90038 */  sw    $t1, 0x38($sp)
/* AC4364 8004D1C4 C7AC00E8 */  lwc1  $f12, 0xe8($sp)
/* AC4368 8004D1C8 46085102 */  mul.s $f4, $f10, $f8
/* AC436C 8004D1CC 44062000 */  mfc1  $a2, $f4
/* AC4370 8004D1D0 0C010E27 */  jal   func_8004389C
/* AC4374 8004D1D4 00000000 */   nop   
/* AC4378 8004D1D8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC437C 8004D1DC 44813000 */  mtc1  $at, $f6
/* AC4380 8004D1E0 E60000C0 */  swc1  $f0, 0xc0($s0)
/* AC4384 8004D1E4 3C073E4C */  lui   $a3, (0x3E4CCCCD >> 16) # lui $a3, 0x3e4c
/* AC4388 8004D1E8 46003283 */  div.s $f10, $f6, $f0
/* AC438C 8004D1EC 34E7CCCD */  ori   $a3, (0x3E4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC4390 8004D1F0 C7AC0104 */  lwc1  $f12, 0x104($sp)
/* AC4394 8004D1F4 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC4398 8004D1F8 44065000 */  mfc1  $a2, $f10
/* AC439C 8004D1FC 0C010E27 */  jal   func_8004389C
/* AC43A0 8004D200 00000000 */   nop   
/* AC43A4 8004D204 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC43A8 8004D208 8FAF0030 */  lw    $t7, 0x30($sp)
/* AC43AC 8004D20C E7A000D8 */  swc1  $f0, 0xd8($sp)
/* AC43B0 8004D210 E7A000E8 */  swc1  $f0, 0xe8($sp)
/* AC43B4 8004D214 8DF90000 */  lw    $t9, ($t7)
/* AC43B8 8004D218 27A60108 */  addiu $a2, $sp, 0x108
/* AC43BC 8004D21C 27A400D0 */  addiu $a0, $sp, 0xd0
/* AC43C0 8004D220 ACD90000 */  sw    $t9, ($a2)
/* AC43C4 8004D224 8DF80004 */  lw    $t8, 4($t7)
/* AC43C8 8004D228 ACD80004 */  sw    $t8, 4($a2)
/* AC43CC 8004D22C 8DF90008 */  lw    $t9, 8($t7)
/* AC43D0 8004D230 ACD90008 */  sw    $t9, 8($a2)
/* AC43D4 8004D234 0C01F124 */  jal   func_8007C490
/* AC43D8 8004D238 8FA50044 */   lw    $a1, 0x44($sp)
/* AC43DC 8004D23C C7A000D0 */  lwc1  $f0, 0xd0($sp)
/* AC43E0 8004D240 C7AC00E8 */  lwc1  $f12, 0xe8($sp)
/* AC43E4 8004D244 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC43E8 8004D248 44814000 */  mtc1  $at, $f8
/* AC43EC 8004D24C 460C003E */  c.le.s $f0, $f12
/* AC43F0 8004D250 8FA90038 */  lw    $t1, 0x38($sp)
/* AC43F4 8004D254 45020004 */  bc1fl .L8004D268
/* AC43F8 8004D258 46006086 */   mov.s $f2, $f12
/* AC43FC 8004D25C 10000002 */  b     .L8004D268
/* AC4400 8004D260 46000086 */   mov.s $f2, $f0
/* AC4404 8004D264 46006086 */  mov.s $f2, $f12
.L8004D268:
/* AC4408 8004D268 46081102 */  mul.s $f4, $f2, $f8
/* AC440C 8004D26C 3C018014 */  lui   $at, %hi(D_8013A09C)
/* AC4410 8004D270 C42AA09C */  lwc1  $f10, %lo(D_8013A09C)($at)
/* AC4414 8004D274 C7A80084 */  lwc1  $f8, 0x84($sp)
/* AC4418 8004D278 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC441C 8004D27C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC4420 8004D280 3C018014 */  lui   $at, %hi(D_8013A0A0)
/* AC4424 8004D284 46046181 */  sub.s $f6, $f12, $f4
/* AC4428 8004D288 3C074000 */  lui   $a3, 0x4000
/* AC442C 8004D28C 46085101 */  sub.s $f4, $f10, $f8
/* AC4430 8004D290 E7A600D0 */  swc1  $f6, 0xd0($sp)
/* AC4434 8004D294 C6060010 */  lwc1  $f6, 0x10($s0)
/* AC4438 8004D298 C600000C */  lwc1  $f0, 0xc($s0)
/* AC443C 8004D29C 846B01AE */  lh    $t3, 0x1ae($v1)
/* AC4440 8004D2A0 46003281 */  sub.s $f10, $f6, $f0
/* AC4444 8004D2A4 448B3000 */  mtc1  $t3, $f6
/* AC4448 8004D2A8 46045202 */  mul.s $f8, $f10, $f4
/* AC444C 8004D2AC 468032A0 */  cvt.s.w $f10, $f6
/* AC4450 8004D2B0 46080480 */  add.s $f18, $f0, $f8
/* AC4454 8004D2B4 46125100 */  add.s $f4, $f10, $f18
/* AC4458 8004D2B8 C42AA0A0 */  lwc1  $f10, %lo(D_8013A0A0)($at)
/* AC445C 8004D2BC E7A400F0 */  swc1  $f4, 0xf0($sp)
/* AC4460 8004D2C0 846A01AA */  lh    $t2, 0x1aa($v1)
/* AC4464 8004D2C4 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC4468 8004D2C8 E7B200EC */  swc1  $f18, 0xec($sp)
/* AC446C 8004D2CC 448A4000 */  mtc1  $t2, $f8
/* AC4470 8004D2D0 AFA90038 */  sw    $t1, 0x38($sp)
/* AC4474 8004D2D4 468041A0 */  cvt.s.w $f6, $f8
/* AC4478 8004D2D8 460A3102 */  mul.s $f4, $f6, $f10
/* AC447C 8004D2DC 44062000 */  mfc1  $a2, $f4
/* AC4480 8004D2E0 0C010E27 */  jal   func_8004389C
/* AC4484 8004D2E4 00000000 */   nop   
/* AC4488 8004D2E8 8FA90038 */  lw    $t1, 0x38($sp)
/* AC448C 8004D2EC C7B200EC */  lwc1  $f18, 0xec($sp)
/* AC4490 8004D2F0 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC4494 8004D2F4 87AC00BE */  lh    $t4, 0xbe($sp)
/* AC4498 8004D2F8 87AD00D6 */  lh    $t5, 0xd6($sp)
/* AC449C 8004D2FC E7A000D8 */  swc1  $f0, 0xd8($sp)
/* AC44A0 8004D300 258E8001 */  addiu $t6, $t4, -0x7fff
/* AC44A4 8004D304 000E7C00 */  sll   $t7, $t6, 0x10
/* AC44A8 8004D308 A7AC00DE */  sh    $t4, 0xde($sp)
/* AC44AC 8004D30C 85230016 */  lh    $v1, 0x16($t1)
/* AC44B0 8004D310 000FC403 */  sra   $t8, $t7, 0x10
/* AC44B4 8004D314 01B81023 */  subu  $v0, $t5, $t8
/* AC44B8 8004D318 00022C00 */  sll   $a1, $v0, 0x10
/* AC44BC 8004D31C 1060007E */  beqz  $v1, .L8004D518
/* AC44C0 8004D320 00052C03 */   sra   $a1, $a1, 0x10
/* AC44C4 8004D324 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC44C8 8004D328 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC44CC 8004D32C 27A400C8 */  addiu $a0, $sp, 0xc8
/* AC44D0 8004D330 872201C4 */  lh    $v0, 0x1c4($t9)
/* AC44D4 8004D334 24190001 */  li    $t9, 1
/* AC44D8 8004D338 0062082A */  slt   $at, $v1, $v0
/* AC44DC 8004D33C 14200072 */  bnez  $at, .L8004D508
/* AC44E0 8004D340 00625823 */   subu  $t3, $v1, $v0
/* AC44E4 8004D344 87AA00CE */  lh    $t2, 0xce($sp)
/* AC44E8 8004D348 A7AB0082 */  sh    $t3, 0x82($sp)
/* AC44EC 8004D34C 8FA50044 */  lw    $a1, 0x44($sp)
/* AC44F0 8004D350 8FA60048 */  lw    $a2, 0x48($sp)
/* AC44F4 8004D354 AFA90038 */  sw    $t1, 0x38($sp)
/* AC44F8 8004D358 0C01F124 */  jal   func_8007C490
/* AC44FC 8004D35C A7AA00E2 */   sh    $t2, 0xe2($sp)
/* AC4500 8004D360 87AC00E2 */  lh    $t4, 0xe2($sp)
/* AC4504 8004D364 3C038016 */  lui   $v1, %hi(gGameInfo)
/* AC4508 8004D368 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC450C 8004D36C 25998001 */  addiu $t9, $t4, -0x7fff
/* AC4510 8004D370 A7B900CE */  sh    $t9, 0xce($sp)
/* AC4514 8004D374 846F01C2 */  lh    $t7, 0x1c2($v1)
/* AC4518 8004D378 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC451C 8004D37C 44818000 */  mtc1  $at, $f16
/* AC4520 8004D380 448F4000 */  mtc1  $t7, $f8
/* AC4524 8004D384 8FA90038 */  lw    $t1, 0x38($sp)
/* AC4528 8004D388 C7A400C8 */  lwc1  $f4, 0xc8($sp)
/* AC452C 8004D38C 468041A0 */  cvt.s.w $f6, $f8
/* AC4530 8004D390 852D0012 */  lh    $t5, 0x12($t1)
/* AC4534 8004D394 C52A0000 */  lwc1  $f10, ($t1)
/* AC4538 8004D398 87AF0082 */  lh    $t7, 0x82($sp)
/* AC453C 8004D39C 01B95823 */  subu  $t3, $t5, $t9
/* AC4540 8004D3A0 000B5400 */  sll   $t2, $t3, 0x10
/* AC4544 8004D3A4 46068003 */  div.s $f0, $f16, $f6
/* AC4548 8004D3A8 000A6403 */  sra   $t4, $t2, 0x10
/* AC454C 8004D3AC 448C3000 */  mtc1  $t4, $f6
/* AC4550 8004D3B0 87AD00CC */  lh    $t5, 0xcc($sp)
/* AC4554 8004D3B4 46045201 */  sub.s $f8, $f10, $f4
/* AC4558 8004D3B8 3C018014 */  lui   $at, %hi(D_8013A0A4)
/* AC455C 8004D3BC 44078000 */  mfc1  $a3, $f16
/* AC4560 8004D3C0 468032A0 */  cvt.s.w $f10, $f6
/* AC4564 8004D3C4 C7AE00C0 */  lwc1  $f14, 0xc0($sp)
/* AC4568 8004D3C8 46004082 */  mul.s $f2, $f8, $f0
/* AC456C 8004D3CC 00000000 */  nop   
/* AC4570 8004D3D0 46005202 */  mul.s $f8, $f10, $f0
/* AC4574 8004D3D4 4600418D */  trunc.w.s $f6, $f8
/* AC4578 8004D3D8 440E3000 */  mfc1  $t6, $f6
/* AC457C 8004D3DC 00000000 */  nop   
/* AC4580 8004D3E0 A7AE00E2 */  sh    $t6, 0xe2($sp)
/* AC4584 8004D3E4 85380014 */  lh    $t8, 0x14($t1)
/* AC4588 8004D3E8 846E01CC */  lh    $t6, 0x1cc($v1)
/* AC458C 8004D3EC 030DC823 */  subu  $t9, $t8, $t5
/* AC4590 8004D3F0 00195C00 */  sll   $t3, $t9, 0x10
/* AC4594 8004D3F4 000B5403 */  sra   $t2, $t3, 0x10
/* AC4598 8004D3F8 448A5000 */  mtc1  $t2, $f10
/* AC459C 8004D3FC 00000000 */  nop   
/* AC45A0 8004D400 46805220 */  cvt.s.w $f8, $f10
/* AC45A4 8004D404 46004182 */  mul.s $f6, $f8, $f0
/* AC45A8 8004D408 448F4000 */  mtc1  $t7, $f8
/* AC45AC 8004D40C 4600328D */  trunc.w.s $f10, $f6
/* AC45B0 8004D410 468041A0 */  cvt.s.w $f6, $f8
/* AC45B4 8004D414 44085000 */  mfc1  $t0, $f10
/* AC45B8 8004D418 448E4000 */  mtc1  $t6, $f8
/* AC45BC 8004D41C 00084400 */  sll   $t0, $t0, 0x10
/* AC45C0 8004D420 00084403 */  sra   $t0, $t0, 0x10
/* AC45C4 8004D424 46023282 */  mul.s $f10, $f6, $f2
/* AC45C8 8004D428 A7A800E0 */  sh    $t0, 0xe0($sp)
/* AC45CC 8004D42C 468041A0 */  cvt.s.w $f6, $f8
/* AC45D0 8004D430 46045300 */  add.s $f12, $f10, $f4
/* AC45D4 8004D434 C42AA0A4 */  lwc1  $f10, %lo(D_8013A0A4)($at)
/* AC45D8 8004D438 460A3102 */  mul.s $f4, $f6, $f10
/* AC45DC 8004D43C 44062000 */  mfc1  $a2, $f4
/* AC45E0 8004D440 0C010E27 */  jal   func_8004389C
/* AC45E4 8004D444 00000000 */   nop   
/* AC45E8 8004D448 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC45EC 8004D44C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC45F0 8004D450 E7A000D8 */  swc1  $f0, 0xd8($sp)
/* AC45F4 8004D454 87B800E2 */  lh    $t8, 0xe2($sp)
/* AC45F8 8004D458 854C01CC */  lh    $t4, 0x1cc($t2)
/* AC45FC 8004D45C 87AD0082 */  lh    $t5, 0x82($sp)
/* AC4600 8004D460 3C018014 */  lui   $at, %hi(D_8013A0A8)
/* AC4604 8004D464 448C4000 */  mtc1  $t4, $f8
/* AC4608 8004D468 030D0019 */  multu $t8, $t5
/* AC460C 8004D46C C42AA0A8 */  lwc1  $f10, %lo(D_8013A0A8)($at)
/* AC4610 8004D470 468041A0 */  cvt.s.w $f6, $f8
/* AC4614 8004D474 87AB00CE */  lh    $t3, 0xce($sp)
/* AC4618 8004D478 87A500C6 */  lh    $a1, 0xc6($sp)
/* AC461C 8004D47C 2407000A */  li    $a3, 10
/* AC4620 8004D480 460A3102 */  mul.s $f4, $f6, $f10
/* AC4624 8004D484 0000C812 */  mflo  $t9
/* AC4628 8004D488 01792021 */  addu  $a0, $t3, $t9
/* AC462C 8004D48C 00042400 */  sll   $a0, $a0, 0x10
/* AC4630 8004D490 00042403 */  sra   $a0, $a0, 0x10
/* AC4634 8004D494 44062000 */  mfc1  $a2, $f4
/* AC4638 8004D498 0C010E47 */  jal   func_8004391C
/* AC463C 8004D49C 00000000 */   nop   
/* AC4640 8004D4A0 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC4644 8004D4A4 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC4648 8004D4A8 A7A200DE */  sh    $v0, 0xde($sp)
/* AC464C 8004D4AC 87A800E0 */  lh    $t0, 0xe0($sp)
/* AC4650 8004D4B0 85AB01CC */  lh    $t3, 0x1cc($t5)
/* AC4654 8004D4B4 87AE0082 */  lh    $t6, 0x82($sp)
/* AC4658 8004D4B8 3C018014 */  lui   $at, %hi(D_8013A0AC)
/* AC465C 8004D4BC 448B4000 */  mtc1  $t3, $f8
/* AC4660 8004D4C0 010E0019 */  multu $t0, $t6
/* AC4664 8004D4C4 C42AA0AC */  lwc1  $f10, %lo(D_8013A0AC)($at)
/* AC4668 8004D4C8 468041A0 */  cvt.s.w $f6, $f8
/* AC466C 8004D4CC 87AF00CC */  lh    $t7, 0xcc($sp)
/* AC4670 8004D4D0 87A500C4 */  lh    $a1, 0xc4($sp)
/* AC4674 8004D4D4 2407000A */  li    $a3, 10
/* AC4678 8004D4D8 460A3102 */  mul.s $f4, $f6, $f10
/* AC467C 8004D4DC 0000C012 */  mflo  $t8
/* AC4680 8004D4E0 01F82021 */  addu  $a0, $t7, $t8
/* AC4684 8004D4E4 00042400 */  sll   $a0, $a0, 0x10
/* AC4688 8004D4E8 00042403 */  sra   $a0, $a0, 0x10
/* AC468C 8004D4EC 44062000 */  mfc1  $a2, $f4
/* AC4690 8004D4F0 0C010E47 */  jal   func_8004391C
/* AC4694 8004D4F4 00000000 */   nop   
/* AC4698 8004D4F8 8FA90038 */  lw    $t1, 0x38($sp)
/* AC469C 8004D4FC A7A200DC */  sh    $v0, 0xdc($sp)
/* AC46A0 8004D500 10000002 */  b     .L8004D50C
/* AC46A4 8004D504 85230016 */   lh    $v1, 0x16($t1)
.L8004D508:
/* AC46A8 8004D508 AFB90088 */  sw    $t9, 0x88($sp)
.L8004D50C:
/* AC46AC 8004D50C 246AFFFF */  addiu $t2, $v1, -1
/* AC46B0 8004D510 10000075 */  b     .L8004D6E8
/* AC46B4 8004D514 A52A0016 */   sh    $t2, 0x16($t1)
.L8004D518:
/* AC46B8 8004D518 00022400 */  sll   $a0, $v0, 0x10
/* AC46BC 8004D51C 00042403 */  sra   $a0, $a0, 0x10
/* AC46C0 8004D520 04800003 */  bltz  $a0, .L8004D530
/* AC46C4 8004D524 3C018014 */   lui   $at, %hi(D_8013A0B0)
/* AC46C8 8004D528 10000002 */  b     .L8004D534
/* AC46CC 8004D52C 00801025 */   move  $v0, $a0
.L8004D530:
/* AC46D0 8004D530 00041023 */  negu  $v0, $a0
.L8004D534:
/* AC46D4 8004D534 C428A0B0 */  lwc1  $f8, %lo(D_8013A0B0)($at)
/* AC46D8 8004D538 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC46DC 8004D53C 44815000 */  mtc1  $at, $f10
/* AC46E0 8004D540 46089182 */  mul.s $f6, $f18, $f8
/* AC46E4 8004D544 460A3100 */  add.s $f4, $f6, $f10
/* AC46E8 8004D548 4600220D */  trunc.w.s $f8, $f4
/* AC46EC 8004D54C 44034000 */  mfc1  $v1, $f8
/* AC46F0 8004D550 00000000 */  nop   
/* AC46F4 8004D554 00031C00 */  sll   $v1, $v1, 0x10
/* AC46F8 8004D558 00031C03 */  sra   $v1, $v1, 0x10
/* AC46FC 8004D55C 0062082A */  slt   $at, $v1, $v0
/* AC4700 8004D560 50200049 */  beql  $at, $zero, .L8004D688
/* AC4704 8004D564 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AC4708 8004D568 44853000 */  mtc1  $a1, $f6
/* AC470C 8004D56C 3C018014 */  lui   $at, %hi(D_8013A0B4)
/* AC4710 8004D570 C424A0B4 */  lwc1  $f4, %lo(D_8013A0B4)($at)
/* AC4714 8004D574 468032A0 */  cvt.s.w $f10, $f6
/* AC4718 8004D578 C7AC00D0 */  lwc1  $f12, 0xd0($sp)
/* AC471C 8004D57C C7AE00D8 */  lwc1  $f14, 0xd8($sp)
/* AC4720 8004D580 A7A500E2 */  sh    $a1, 0xe2($sp)
/* AC4724 8004D584 E7B200EC */  swc1  $f18, 0xec($sp)
/* AC4728 8004D588 46045402 */  mul.s $f16, $f10, $f4
/* AC472C 8004D58C 0C01F02A */  jal   func_8007C0A8
/* AC4730 8004D590 E7B000F4 */   swc1  $f16, 0xf4($sp)
/* AC4734 8004D594 C7A800D8 */  lwc1  $f8, 0xd8($sp)
/* AC4738 8004D598 C7B200EC */  lwc1  $f18, 0xec($sp)
/* AC473C 8004D59C C7AA00F0 */  lwc1  $f10, 0xf0($sp)
/* AC4740 8004D5A0 46080183 */  div.s $f6, $f0, $f8
/* AC4744 8004D5A4 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC4748 8004D5A8 C7B000F4 */  lwc1  $f16, 0xf4($sp)
/* AC474C 8004D5AC 87AE00E2 */  lh    $t6, 0xe2($sp)
/* AC4750 8004D5B0 46125101 */  sub.s $f4, $f10, $f18
/* AC4754 8004D5B4 87AD00BE */  lh    $t5, 0xbe($sp)
/* AC4758 8004D5B8 25AA8001 */  addiu $t2, $t5, -0x7fff
/* AC475C 8004D5BC 46043202 */  mul.s $f8, $f6, $f4
/* AC4760 8004D5C0 44813000 */  mtc1  $at, $f6
/* AC4764 8004D5C4 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC4768 8004D5C8 46124080 */  add.s $f2, $f8, $f18
/* AC476C 8004D5CC 44814000 */  mtc1  $at, $f8
/* AC4770 8004D5D0 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC4774 8004D5D4 46021282 */  mul.s $f10, $f2, $f2
/* AC4778 8004D5D8 46065101 */  sub.s $f4, $f10, $f6
/* AC477C 8004D5DC 44813000 */  mtc1  $at, $f6
/* AC4780 8004D5E0 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC4784 8004D5E4 46081281 */  sub.s $f10, $f2, $f8
/* AC4788 8004D5E8 44814000 */  mtc1  $at, $f8
/* AC478C 8004D5EC 3C018014 */  lui   $at, %hi(D_8013A0BC)
/* AC4790 8004D5F0 460A2303 */  div.s $f12, $f4, $f10
/* AC4794 8004D5F4 460C4102 */  mul.s $f4, $f8, $f12
/* AC4798 8004D5F8 46043281 */  sub.s $f10, $f6, $f4
/* AC479C 8004D5FC 46106202 */  mul.s $f8, $f12, $f16
/* AC47A0 8004D600 460A4180 */  add.s $f6, $f8, $f10
/* AC47A4 8004D604 46108102 */  mul.s $f4, $f16, $f16
/* AC47A8 8004D608 05C0000D */  bltz  $t6, .L8004D640
/* AC47AC 8004D60C 46062383 */   div.s $f14, $f4, $f6
/* AC47B0 8004D610 3C018014 */  lui   $at, %hi(D_8013A0B8)
/* AC47B4 8004D614 C428A0B8 */  lwc1  $f8, %lo(D_8013A0B8)($at)
/* AC47B8 8004D618 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC47BC 8004D61C 44812000 */  mtc1  $at, $f4
/* AC47C0 8004D620 46087282 */  mul.s $f10, $f14, $f8
/* AC47C4 8004D624 46045180 */  add.s $f6, $f10, $f4
/* AC47C8 8004D628 4600320D */  trunc.w.s $f8, $f6
/* AC47CC 8004D62C 44084000 */  mfc1  $t0, $f8
/* AC47D0 8004D630 00000000 */  nop   
/* AC47D4 8004D634 00084400 */  sll   $t0, $t0, 0x10
/* AC47D8 8004D638 1000000E */  b     .L8004D674
/* AC47DC 8004D63C 00084403 */   sra   $t0, $t0, 0x10
.L8004D640:
/* AC47E0 8004D640 C42AA0BC */  lwc1  $f10, %lo(D_8013A0BC)($at)
/* AC47E4 8004D644 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC47E8 8004D648 44813000 */  mtc1  $at, $f6
/* AC47EC 8004D64C 460A7102 */  mul.s $f4, $f14, $f10
/* AC47F0 8004D650 46062200 */  add.s $f8, $f4, $f6
/* AC47F4 8004D654 4600428D */  trunc.w.s $f10, $f8
/* AC47F8 8004D658 44085000 */  mfc1  $t0, $f10
/* AC47FC 8004D65C 00000000 */  nop   
/* AC4800 8004D660 00084400 */  sll   $t0, $t0, 0x10
/* AC4804 8004D664 00084403 */  sra   $t0, $t0, 0x10
/* AC4808 8004D668 00084023 */  negu  $t0, $t0
/* AC480C 8004D66C 00084400 */  sll   $t0, $t0, 0x10
/* AC4810 8004D670 00084403 */  sra   $t0, $t0, 0x10
.L8004D674:
/* AC4814 8004D674 01487821 */  addu  $t7, $t2, $t0
/* AC4818 8004D678 25F88001 */  addiu $t8, $t7, -0x7fff
/* AC481C 8004D67C 1000001A */  b     .L8004D6E8
/* AC4820 8004D680 A7B800DE */   sh    $t8, 0xde($sp)
/* AC4824 8004D684 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L8004D688:
/* AC4828 8004D688 44812000 */  mtc1  $at, $f4
/* AC482C 8004D68C C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC4830 8004D690 3C018014 */  lui   $at, %hi(D_8013A0C0)
/* AC4834 8004D694 C42AA0C0 */  lwc1  $f10, %lo(D_8013A0C0)($at)
/* AC4838 8004D698 46062201 */  sub.s $f8, $f4, $f6
/* AC483C 8004D69C 00034023 */  negu  $t0, $v1
/* AC4840 8004D6A0 00084400 */  sll   $t0, $t0, 0x10
/* AC4844 8004D6A4 00084403 */  sra   $t0, $t0, 0x10
/* AC4848 8004D6A8 460A4402 */  mul.s $f16, $f8, $f10
/* AC484C 8004D6AC 04800004 */  bltz  $a0, .L8004D6C0
/* AC4850 8004D6B0 00000000 */   nop   
/* AC4854 8004D6B4 00034400 */  sll   $t0, $v1, 0x10
/* AC4858 8004D6B8 10000001 */  b     .L8004D6C0
/* AC485C 8004D6BC 00084403 */   sra   $t0, $t0, 0x10
.L8004D6C0:
/* AC4860 8004D6C0 01045823 */  subu  $t3, $t0, $a0
/* AC4864 8004D6C4 448B2000 */  mtc1  $t3, $f4
/* AC4868 8004D6C8 87AD00BE */  lh    $t5, 0xbe($sp)
/* AC486C 8004D6CC 468021A0 */  cvt.s.w $f6, $f4
/* AC4870 8004D6D0 46103202 */  mul.s $f8, $f6, $f16
/* AC4874 8004D6D4 4600428D */  trunc.w.s $f10, $f8
/* AC4878 8004D6D8 440E5000 */  mfc1  $t6, $f10
/* AC487C 8004D6DC 00000000 */  nop   
/* AC4880 8004D6E0 01AE7823 */  subu  $t7, $t5, $t6
/* AC4884 8004D6E4 A7AF00DE */  sh    $t7, 0xde($sp)
.L8004D6E8:
/* AC4888 8004D6E8 8FB80088 */  lw    $t8, 0x88($sp)
/* AC488C 8004D6EC 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC4890 8004D6F0 57000099 */  bnezl $t8, .L8004D958
/* AC4894 8004D6F4 C60C0020 */   lwc1  $f12, 0x20($s0)
/* AC4898 8004D6F8 C6000014 */  lwc1  $f0, 0x14($s0)
/* AC489C 8004D6FC C6040018 */  lwc1  $f4, 0x18($s0)
/* AC48A0 8004D700 C7A80084 */  lwc1  $f8, 0x84($sp)
/* AC48A4 8004D704 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC48A8 8004D708 46002181 */  sub.s $f6, $f4, $f0
/* AC48AC 8004D70C 44811000 */  mtc1  $at, $f2
/* AC48B0 8004D710 3C018014 */  lui   $at, %hi(D_8013A0C4)
/* AC48B4 8004D714 87B900CC */  lh    $t9, 0xcc($sp)
/* AC48B8 8004D718 46083282 */  mul.s $f10, $f6, $f8
/* AC48BC 8004D71C C426A0C4 */  lwc1  $f6, %lo(D_8013A0C4)($at)
/* AC48C0 8004D720 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC48C4 8004D724 87AF00D4 */  lh    $t7, 0xd4($sp)
/* AC48C8 8004D728 460A0100 */  add.s $f4, $f0, $f10
/* AC48CC 8004D72C 46062282 */  mul.s $f10, $f4, $f6
/* AC48D0 8004D730 44812000 */  mtc1  $at, $f4
/* AC48D4 8004D734 00000000 */  nop   
/* AC48D8 8004D738 46045180 */  add.s $f6, $f10, $f4
/* AC48DC 8004D73C 44992000 */  mtc1  $t9, $f4
/* AC48E0 8004D740 4600328D */  trunc.w.s $f10, $f6
/* AC48E4 8004D744 468021A0 */  cvt.s.w $f6, $f4
/* AC48E8 8004D748 44045000 */  mfc1  $a0, $f10
/* AC48EC 8004D74C 46024282 */  mul.s $f10, $f8, $f2
/* AC48F0 8004D750 00042400 */  sll   $a0, $a0, 0x10
/* AC48F4 8004D754 00042403 */  sra   $a0, $a0, 0x10
/* AC48F8 8004D758 460A1100 */  add.s $f4, $f2, $f10
/* AC48FC 8004D75C 46043202 */  mul.s $f8, $f6, $f4
/* AC4900 8004D760 448F3000 */  mtc1  $t7, $f6
/* AC4904 8004D764 00000000 */  nop   
/* AC4908 8004D768 46803120 */  cvt.s.w $f4, $f6
/* AC490C 8004D76C 4600428D */  trunc.w.s $f10, $f8
/* AC4910 8004D770 C608001C */  lwc1  $f8, 0x1c($s0)
/* AC4914 8004D774 46082302 */  mul.s $f12, $f4, $f8
/* AC4918 8004D778 440E5000 */  mfc1  $t6, $f10
/* AC491C 8004D77C 00000000 */  nop   
/* AC4920 8004D780 008E2023 */  subu  $a0, $a0, $t6
/* AC4924 8004D784 00042400 */  sll   $a0, $a0, 0x10
/* AC4928 8004D788 00042403 */  sra   $a0, $a0, 0x10
/* AC492C 8004D78C 4600628D */  trunc.w.s $f10, $f12
/* AC4930 8004D790 440A5000 */  mfc1  $t2, $f10
/* AC4934 8004D794 00000000 */  nop   
/* AC4938 8004D798 008A2021 */  addu  $a0, $a0, $t2
/* AC493C 8004D79C 00042400 */  sll   $a0, $a0, 0x10
/* AC4940 8004D7A0 00042403 */  sra   $a0, $a0, 0x10
/* AC4944 8004D7A4 2881CE00 */  slti  $at, $a0, -0x3200
/* AC4948 8004D7A8 50200004 */  beql  $at, $zero, .L8004D7BC
/* AC494C 8004D7AC 28813201 */   slti  $at, $a0, 0x3201
/* AC4950 8004D7B0 10000005 */  b     .L8004D7C8
/* AC4954 8004D7B4 2404CE00 */   li    $a0, -12800
/* AC4958 8004D7B8 28813201 */  slti  $at, $a0, 0x3201
.L8004D7BC:
/* AC495C 8004D7BC 14200002 */  bnez  $at, .L8004D7C8
/* AC4960 8004D7C0 00000000 */   nop   
/* AC4964 8004D7C4 24043200 */  li    $a0, 12800
.L8004D7C8:
/* AC4968 8004D7C8 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC496C 8004D7CC 3C018014 */  lui   $at, %hi(D_8013A0C8)
/* AC4970 8004D7D0 C428A0C8 */  lwc1  $f8, %lo(D_8013A0C8)($at)
/* AC4974 8004D7D4 858D01AC */  lh    $t5, 0x1ac($t4)
/* AC4978 8004D7D8 87A500BC */  lh    $a1, 0xbc($sp)
/* AC497C 8004D7DC 2407000A */  li    $a3, 10
/* AC4980 8004D7E0 448D3000 */  mtc1  $t5, $f6
/* AC4984 8004D7E4 00000000 */  nop   
/* AC4988 8004D7E8 46803120 */  cvt.s.w $f4, $f6
/* AC498C 8004D7EC 46082282 */  mul.s $f10, $f4, $f8
/* AC4990 8004D7F0 44065000 */  mfc1  $a2, $f10
/* AC4994 8004D7F4 0C010E47 */  jal   func_8004391C
/* AC4998 8004D7F8 00000000 */   nop   
/* AC499C 8004D7FC A7A200DC */  sh    $v0, 0xdc($sp)
/* AC49A0 8004D800 8FA40040 */  lw    $a0, 0x40($sp)
/* AC49A4 8004D804 8FA50044 */  lw    $a1, 0x44($sp)
/* AC49A8 8004D808 0C010F0A */  jal   func_80043C28
/* AC49AC 8004D80C 27A600D8 */   addiu $a2, $sp, 0xd8
/* AC49B0 8004D810 8FAE0040 */  lw    $t6, 0x40($sp)
/* AC49B4 8004D814 27A6008C */  addiu $a2, $sp, 0x8c
/* AC49B8 8004D818 24010007 */  li    $at, 7
/* AC49BC 8004D81C 8DD80000 */  lw    $t8, ($t6)
/* AC49C0 8004D820 ACD80000 */  sw    $t8, ($a2)
/* AC49C4 8004D824 8DCF0004 */  lw    $t7, 4($t6)
/* AC49C8 8004D828 ACCF0004 */  sw    $t7, 4($a2)
/* AC49CC 8004D82C 8DD80008 */  lw    $t8, 8($t6)
/* AC49D0 8004D830 ACD80008 */  sw    $t8, 8($a2)
/* AC49D4 8004D834 860B0140 */  lh    $t3, 0x140($s0)
/* AC49D8 8004D838 8FAA0040 */  lw    $t2, 0x40($sp)
/* AC49DC 8004D83C 5561002F */  bnel  $t3, $at, .L8004D8FC
/* AC49E0 8004D840 8FB90048 */   lw    $t9, 0x48($sp)
/* AC49E4 8004D844 8E19008C */  lw    $t9, 0x8c($s0)
/* AC49E8 8004D848 3C0A0001 */  lui   $t2, 1
/* AC49EC 8004D84C 02002025 */  move  $a0, $s0
/* AC49F0 8004D850 01595021 */  addu  $t2, $t2, $t9
/* AC49F4 8004D854 914A0A39 */  lbu   $t2, 0xa39($t2)
/* AC49F8 8004D858 11400005 */  beqz  $t2, .L8004D870
/* AC49FC 8004D85C 00000000 */   nop   
/* AC4A00 8004D860 86020030 */  lh    $v0, 0x30($s0)
/* AC4A04 8004D864 304C0001 */  andi  $t4, $v0, 1
/* AC4A08 8004D868 11800005 */  beqz  $t4, .L8004D880
/* AC4A0C 8004D86C 304D0002 */   andi  $t5, $v0, 2
.L8004D870:
/* AC4A10 8004D870 0C010F46 */  jal   func_80043D18
/* AC4A14 8004D874 8FA50044 */   lw    $a1, 0x44($sp)
/* AC4A18 8004D878 10000017 */  b     .L8004D8D8
/* AC4A1C 8004D87C 27AF008C */   addiu $t7, $sp, 0x8c
.L8004D880:
/* AC4A20 8004D880 11A00006 */  beqz  $t5, .L8004D89C
/* AC4A24 8004D884 27A40120 */   addiu $a0, $sp, 0x120
/* AC4A28 8004D888 02002025 */  move  $a0, $s0
/* AC4A2C 8004D88C 0C010FE5 */  jal   func_80043F94
/* AC4A30 8004D890 8FA50044 */   lw    $a1, 0x44($sp)
/* AC4A34 8004D894 10000010 */  b     .L8004D8D8
/* AC4A38 8004D898 27AF008C */   addiu $t7, $sp, 0x8c
.L8004D89C:
/* AC4A3C 8004D89C 0C01F03E */  jal   func_8007C0F8
/* AC4A40 8004D8A0 8FA50044 */   lw    $a1, 0x44($sp)
/* AC4A44 8004D8A4 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AC4A48 8004D8A8 C7A40120 */  lwc1  $f4, 0x120($sp)
/* AC4A4C 8004D8AC C7AA0090 */  lwc1  $f10, 0x90($sp)
/* AC4A50 8004D8B0 46043201 */  sub.s $f8, $f6, $f4
/* AC4A54 8004D8B4 C7A60124 */  lwc1  $f6, 0x124($sp)
/* AC4A58 8004D8B8 46065101 */  sub.s $f4, $f10, $f6
/* AC4A5C 8004D8BC E7A8008C */  swc1  $f8, 0x8c($sp)
/* AC4A60 8004D8C0 C7A80094 */  lwc1  $f8, 0x94($sp)
/* AC4A64 8004D8C4 C7AA0128 */  lwc1  $f10, 0x128($sp)
/* AC4A68 8004D8C8 E7A40090 */  swc1  $f4, 0x90($sp)
/* AC4A6C 8004D8CC 460A4181 */  sub.s $f6, $f8, $f10
/* AC4A70 8004D8D0 E7A60094 */  swc1  $f6, 0x94($sp)
/* AC4A74 8004D8D4 27AF008C */  addiu $t7, $sp, 0x8c
.L8004D8D8:
/* AC4A78 8004D8D8 8DEB0000 */  lw    $t3, ($t7)
/* AC4A7C 8004D8DC 8FAE0048 */  lw    $t6, 0x48($sp)
/* AC4A80 8004D8E0 ADCB0000 */  sw    $t3, ($t6)
/* AC4A84 8004D8E4 8DF80004 */  lw    $t8, 4($t7)
/* AC4A88 8004D8E8 ADD80004 */  sw    $t8, 4($t6)
/* AC4A8C 8004D8EC 8DEB0008 */  lw    $t3, 8($t7)
/* AC4A90 8004D8F0 10000008 */  b     .L8004D914
/* AC4A94 8004D8F4 ADCB0008 */   sw    $t3, 8($t6)
/* AC4A98 8004D8F8 8FB90048 */  lw    $t9, 0x48($sp)
.L8004D8FC:
/* AC4A9C 8004D8FC 8D4D0000 */  lw    $t5, ($t2)
/* AC4AA0 8004D900 AF2D0000 */  sw    $t5, ($t9)
/* AC4AA4 8004D904 8D4C0004 */  lw    $t4, 4($t2)
/* AC4AA8 8004D908 AF2C0004 */  sw    $t4, 4($t9)
/* AC4AAC 8004D90C 8D4D0008 */  lw    $t5, 8($t2)
/* AC4AB0 8004D910 AF2D0008 */  sw    $t5, 8($t9)
.L8004D914:
/* AC4AB4 8004D914 27A40120 */  addiu $a0, $sp, 0x120
/* AC4AB8 8004D918 8FA50048 */  lw    $a1, 0x48($sp)
/* AC4ABC 8004D91C 0C01F03E */  jal   func_8007C0F8
/* AC4AC0 8004D920 8FA60044 */   lw    $a2, 0x44($sp)
/* AC4AC4 8004D924 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC4AC8 8004D928 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC4ACC 8004D92C 8FA50048 */  lw    $a1, 0x48($sp)
/* AC4AD0 8004D930 27A60120 */  addiu $a2, $sp, 0x120
/* AC4AD4 8004D934 85F80196 */  lh    $t8, 0x196($t7)
/* AC4AD8 8004D938 00A02025 */  move  $a0, $a1
/* AC4ADC 8004D93C 44982000 */  mtc1  $t8, $f4
/* AC4AE0 8004D940 00000000 */  nop   
/* AC4AE4 8004D944 46802120 */  cvt.s.w $f4, $f4
/* AC4AE8 8004D948 44072000 */  mfc1  $a3, $f4
/* AC4AEC 8004D94C 0C010F2B */  jal   func_80043CAC
/* AC4AF0 8004D950 00000000 */   nop   
/* AC4AF4 8004D954 C60C0020 */  lwc1  $f12, 0x20($s0)
.L8004D958:
/* AC4AF8 8004D958 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC4AFC 8004D95C 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC4B00 8004D960 0C010E27 */  jal   func_8004389C
/* AC4B04 8004D964 3C073F80 */   lui   $a3, 0x3f80
/* AC4B08 8004D968 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC4B0C 8004D96C 00002025 */  move  $a0, $zero
/* AC4B10 8004D970 8605015A */  lh    $a1, 0x15a($s0)
/* AC4B14 8004D974 3C063F00 */  lui   $a2, 0x3f00
/* AC4B18 8004D978 0C010E47 */  jal   func_8004391C
/* AC4B1C 8004D97C 2407000A */   li    $a3, 10
/* AC4B20 8004D980 A602015A */  sh    $v0, 0x15a($s0)
/* AC4B24 8004D984 87AB0080 */  lh    $t3, 0x80($sp)
/* AC4B28 8004D988 51600004 */  beql  $t3, $zero, .L8004D99C
/* AC4B2C 8004D98C C6020024 */   lwc1  $f2, 0x24($s0)
/* AC4B30 8004D990 10000002 */  b     .L8004D99C
/* AC4B34 8004D994 C602002C */   lwc1  $f2, 0x2c($s0)
/* AC4B38 8004D998 C6020024 */  lwc1  $f2, 0x24($s0)
.L8004D99C:
/* AC4B3C 8004D99C 44051000 */  mfc1  $a1, $f2
/* AC4B40 8004D9A0 0C011429 */  jal   func_800450A4
/* AC4B44 8004D9A4 02002025 */   move  $a0, $s0
/* AC4B48 8004D9A8 E6000100 */  swc1  $f0, 0x100($s0)
/* AC4B4C 8004D9AC 24020001 */  li    $v0, 1
.L8004D9B0:
/* AC4B50 8004D9B0 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC4B54 8004D9B4 8FB00028 */  lw    $s0, 0x28($sp)
/* AC4B58 8004D9B8 27BD0138 */  addiu $sp, $sp, 0x138
/* AC4B5C 8004D9BC 03E00008 */  jr    $ra
/* AC4B60 8004D9C0 00000000 */   nop   
# SPLIT
/* AC4B64 8004D9C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC4B68 8004D9C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC4B6C 8004D9CC 0C011CE5 */  jal   func_80047394
/* AC4B70 8004D9D0 00000000 */   nop   
/* AC4B74 8004D9D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC4B78 8004D9D8 27BD0018 */  addiu $sp, $sp, 0x18
/* AC4B7C 8004D9DC 03E00008 */  jr    $ra
/* AC4B80 8004D9E0 00000000 */   nop   
# SPLIT
/* AC4B84 8004D9E4 27BDFF18 */  addiu $sp, $sp, -0xe8
/* AC4B88 8004D9E8 AFB30028 */  sw    $s3, 0x28($sp)
/* AC4B8C 8004D9EC 00809825 */  move  $s3, $a0
/* AC4B90 8004D9F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AC4B94 8004D9F4 AFB20024 */  sw    $s2, 0x24($sp)
/* AC4B98 8004D9F8 AFB10020 */  sw    $s1, 0x20($sp)
/* AC4B9C 8004D9FC AFB0001C */  sw    $s0, 0x1c($sp)
/* AC4BA0 8004DA00 0C00B721 */  jal   func_8002DC84
/* AC4BA4 8004DA04 8C840090 */   lw    $a0, 0x90($a0)
/* AC4BA8 8004DA08 E7A00058 */  swc1  $f0, 0x58($sp)
/* AC4BAC 8004DA0C 8E6200A8 */  lw    $v0, 0xa8($s3)
/* AC4BB0 8004DA10 10400004 */  beqz  $v0, .L8004DA24
/* AC4BB4 8004DA14 00000000 */   nop   
/* AC4BB8 8004DA18 8C4E0130 */  lw    $t6, 0x130($v0)
/* AC4BBC 8004DA1C 55C0000C */  bnezl $t6, .L8004DA50
/* AC4BC0 8004DA20 8663015E */   lh    $v1, 0x15e($s3)
.L8004DA24:
/* AC4BC4 8004DA24 14400003 */  bnez  $v0, .L8004DA34
/* AC4BC8 8004DA28 3C048014 */   lui   $a0, %hi(D_80139294) # $a0, 0x8014
/* AC4BCC 8004DA2C 0C00084C */  jal   osSyncPrintf
/* AC4BD0 8004DA30 24849294 */   addiu $a0, %lo(D_80139294) # addiu $a0, $a0, -0x6d6c
.L8004DA34:
/* AC4BD4 8004DA34 AE6000A8 */  sw    $zero, 0xa8($s3)
/* AC4BD8 8004DA38 02602025 */  move  $a0, $s3
/* AC4BDC 8004DA3C 0C016911 */  jal   func_8005A444
/* AC4BE0 8004DA40 24050001 */   li    $a1, 1
/* AC4BE4 8004DA44 1000027F */  b     .L8004E444
/* AC4BE8 8004DA48 24020001 */   li    $v0, 1
/* AC4BEC 8004DA4C 8663015E */  lh    $v1, 0x15e($s3)
.L8004DA50:
/* AC4BF0 8004DA50 2401000A */  li    $at, 10
/* AC4BF4 8004DA54 50600006 */  beql  $v1, $zero, .L8004DA70
/* AC4BF8 8004DA58 8E64008C */   lw    $a0, 0x8c($s3)
/* AC4BFC 8004DA5C 10610003 */  beq   $v1, $at, .L8004DA6C
/* AC4C00 8004DA60 24010014 */   li    $at, 20
/* AC4C04 8004DA64 54610012 */  bnel  $v1, $at, .L8004DAB0
/* AC4C08 8004DA68 866D014C */   lh    $t5, 0x14c($s3)
.L8004DA6C:
/* AC4C0C 8004DA6C 8E64008C */  lw    $a0, 0x8c($s3)
.L8004DA70:
/* AC4C10 8004DA70 8C8F01DC */  lw    $t7, 0x1dc($a0)
/* AC4C14 8004DA74 55E0000A */  bnezl $t7, .L8004DAA0
/* AC4C18 8004DA78 866B014C */   lh    $t3, 0x14c($s3)
/* AC4C1C 8004DA7C 8678014C */  lh    $t8, 0x14c($s3)
/* AC4C20 8004DA80 86690164 */  lh    $t1, 0x164($s3)
/* AC4C24 8004DA84 24020001 */  li    $v0, 1
/* AC4C28 8004DA88 37190020 */  ori   $t9, $t8, 0x20
/* AC4C2C 8004DA8C A679014C */  sh    $t9, 0x14c($s3)
/* AC4C30 8004DA90 352A0050 */  ori   $t2, $t1, 0x50
/* AC4C34 8004DA94 1000026B */  b     .L8004E444
/* AC4C38 8004DA98 AC8A01DC */   sw    $t2, 0x1dc($a0)
/* AC4C3C 8004DA9C 866B014C */  lh    $t3, 0x14c($s3)
.L8004DAA0:
/* AC4C40 8004DAA0 8663015E */  lh    $v1, 0x15e($s3)
/* AC4C44 8004DAA4 316CFFDF */  andi  $t4, $t3, 0xffdf
/* AC4C48 8004DAA8 A66C014C */  sh    $t4, 0x14c($s3)
/* AC4C4C 8004DAAC 866D014C */  lh    $t5, 0x14c($s3)
.L8004DAB0:
/* AC4C50 8004DAB0 2401000A */  li    $at, 10
/* AC4C54 8004DAB4 31AEFFEF */  andi  $t6, $t5, 0xffef
/* AC4C58 8004DAB8 10600008 */  beqz  $v1, .L8004DADC
/* AC4C5C 8004DABC A66E014C */   sh    $t6, 0x14c($s3)
/* AC4C60 8004DAC0 10610006 */  beq   $v1, $at, .L8004DADC
/* AC4C64 8004DAC4 24010014 */   li    $at, 20
/* AC4C68 8004DAC8 10610004 */  beq   $v1, $at, .L8004DADC
/* AC4C6C 8004DACC 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC4C70 8004DAD0 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC4C74 8004DAD4 85E20314 */  lh    $v0, 0x314($t7)
/* AC4C78 8004DAD8 10400058 */  beqz  $v0, .L8004DC3C
.L8004DADC:
/* AC4C7C 8004DADC 3C0D8016 */   lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC4C80 8004DAE0 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC4C84 8004DAE4 3C018014 */  lui   $at, %hi(D_8013A0CC)
/* AC4C88 8004DAE8 C42EA0CC */  lwc1  $f14, %lo(D_8013A0CC)($at)
/* AC4C8C 8004DAEC 85AE01F0 */  lh    $t6, 0x1f0($t5)
/* AC4C90 8004DAF0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4C94 8004DAF4 44814000 */  mtc1  $at, $f8
/* AC4C98 8004DAF8 448E2000 */  mtc1  $t6, $f4
/* AC4C9C 8004DAFC 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC4CA0 8004DB00 86780142 */  lh    $t8, 0x142($s3)
/* AC4CA4 8004DB04 468021A0 */  cvt.s.w $f6, $f4
/* AC4CA8 8004DB08 44812000 */  mtc1  $at, $f4
/* AC4CAC 8004DB0C 3C098012 */  lui   $t1, %hi(D_8011D068)
/* AC4CB0 8004DB10 0018C8C0 */  sll   $t9, $t8, 3
/* AC4CB4 8004DB14 866A0144 */  lh    $t2, 0x144($s3)
/* AC4CB8 8004DB18 01394821 */  addu  $t1, $t1, $t9
/* AC4CBC 8004DB1C 460E3082 */  mul.s $f2, $f6, $f14
/* AC4CC0 8004DB20 46002183 */  div.s $f6, $f4, $f0
/* AC4CC4 8004DB24 8D29D068 */  lw    $t1, %lo(D_8011D068)($t1)
/* AC4CC8 8004DB28 000A58C0 */  sll   $t3, $t2, 3
/* AC4CCC 8004DB2C 012B6021 */  addu  $t4, $t1, $t3
/* AC4CD0 8004DB30 8D820004 */  lw    $v0, 4($t4)
/* AC4CD4 8004DB34 46024280 */  add.s $f10, $f8, $f2
/* AC4CD8 8004DB38 844F0000 */  lh    $t7, ($v0)
/* AC4CDC 8004DB3C 2442002C */  addiu $v0, $v0, 0x2c
/* AC4CE0 8004DB40 448F2000 */  mtc1  $t7, $f4
/* AC4CE4 8004DB44 46061202 */  mul.s $f8, $f2, $f6
/* AC4CE8 8004DB48 468021A0 */  cvt.s.w $f6, $f4
/* AC4CEC 8004DB4C 46085301 */  sub.s $f12, $f10, $f8
/* AC4CF0 8004DB50 460E3282 */  mul.s $f10, $f6, $f14
/* AC4CF4 8004DB54 00000000 */  nop   
/* AC4CF8 8004DB58 46005202 */  mul.s $f8, $f10, $f0
/* AC4CFC 8004DB5C 00000000 */  nop   
/* AC4D00 8004DB60 460C4102 */  mul.s $f4, $f8, $f12
/* AC4D04 8004DB64 E6640000 */  swc1  $f4, ($s3)
/* AC4D08 8004DB68 8458FFD8 */  lh    $t8, -0x28($v0)
/* AC4D0C 8004DB6C 44983000 */  mtc1  $t8, $f6
/* AC4D10 8004DB70 00000000 */  nop   
/* AC4D14 8004DB74 468032A0 */  cvt.s.w $f10, $f6
/* AC4D18 8004DB78 E66A0004 */  swc1  $f10, 4($s3)
/* AC4D1C 8004DB7C 8459FFDC */  lh    $t9, -0x24($v0)
/* AC4D20 8004DB80 44994000 */  mtc1  $t9, $f8
/* AC4D24 8004DB84 00000000 */  nop   
/* AC4D28 8004DB88 46804120 */  cvt.s.w $f4, $f8
/* AC4D2C 8004DB8C E6640008 */  swc1  $f4, 8($s3)
/* AC4D30 8004DB90 844AFFE0 */  lh    $t2, -0x20($v0)
/* AC4D34 8004DB94 448A3000 */  mtc1  $t2, $f6
/* AC4D38 8004DB98 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC4D3C 8004DB9C 468032A0 */  cvt.s.w $f10, $f6
/* AC4D40 8004DBA0 E66A000C */  swc1  $f10, 0xc($s3)
/* AC4D44 8004DBA4 8449FFE4 */  lh    $t1, -0x1c($v0)
/* AC4D48 8004DBA8 44894000 */  mtc1  $t1, $f8
/* AC4D4C 8004DBAC 00000000 */  nop   
/* AC4D50 8004DBB0 46804120 */  cvt.s.w $f4, $f8
/* AC4D54 8004DBB4 E6640010 */  swc1  $f4, 0x10($s3)
/* AC4D58 8004DBB8 844BFFE8 */  lh    $t3, -0x18($v0)
/* AC4D5C 8004DBBC 448B3000 */  mtc1  $t3, $f6
/* AC4D60 8004DBC0 00000000 */  nop   
/* AC4D64 8004DBC4 468032A0 */  cvt.s.w $f10, $f6
/* AC4D68 8004DBC8 E66A0014 */  swc1  $f10, 0x14($s3)
/* AC4D6C 8004DBCC 844CFFEC */  lh    $t4, -0x14($v0)
/* AC4D70 8004DBD0 448C4000 */  mtc1  $t4, $f8
/* AC4D74 8004DBD4 00000000 */  nop   
/* AC4D78 8004DBD8 46804120 */  cvt.s.w $f4, $f8
/* AC4D7C 8004DBDC E6640018 */  swc1  $f4, 0x18($s3)
/* AC4D80 8004DBE0 844DFFF0 */  lh    $t5, -0x10($v0)
/* AC4D84 8004DBE4 448D3000 */  mtc1  $t5, $f6
/* AC4D88 8004DBE8 00000000 */  nop   
/* AC4D8C 8004DBEC 468032A0 */  cvt.s.w $f10, $f6
/* AC4D90 8004DBF0 460E5202 */  mul.s $f8, $f10, $f14
/* AC4D94 8004DBF4 E668001C */  swc1  $f8, 0x1c($s3)
/* AC4D98 8004DBF8 844EFFF4 */  lh    $t6, -0xc($v0)
/* AC4D9C 8004DBFC 448E2000 */  mtc1  $t6, $f4
/* AC4DA0 8004DC00 00000000 */  nop   
/* AC4DA4 8004DC04 468021A0 */  cvt.s.w $f6, $f4
/* AC4DA8 8004DC08 E6660020 */  swc1  $f6, 0x20($s3)
/* AC4DAC 8004DC0C 844FFFF8 */  lh    $t7, -8($v0)
/* AC4DB0 8004DC10 448F5000 */  mtc1  $t7, $f10
/* AC4DB4 8004DC14 00000000 */  nop   
/* AC4DB8 8004DC18 46805220 */  cvt.s.w $f8, $f10
/* AC4DBC 8004DC1C 460E4102 */  mul.s $f4, $f8, $f14
/* AC4DC0 8004DC20 E6640024 */  swc1  $f4, 0x24($s3)
/* AC4DC4 8004DC24 8458FFFC */  lh    $t8, -4($v0)
/* AC4DC8 8004DC28 A6780028 */  sh    $t8, 0x28($s3)
/* AC4DCC 8004DC2C 84590000 */  lh    $t9, ($v0)
/* AC4DD0 8004DC30 A679002A */  sh    $t9, 0x2a($s3)
/* AC4DD4 8004DC34 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC4DD8 8004DC38 85420314 */  lh    $v0, 0x314($t2)
.L8004DC3C:
/* AC4DDC 8004DC3C 50400004 */  beql  $v0, $zero, .L8004DC50
/* AC4DE0 8004DC40 C7A60058 */   lwc1  $f6, 0x58($sp)
/* AC4DE4 8004DC44 0C011495 */  jal   func_80045254
/* AC4DE8 8004DC48 02602025 */   move  $a0, $s3
/* AC4DEC 8004DC4C C7A60058 */  lwc1  $f6, 0x58($sp)
.L8004DC50:
/* AC4DF0 8004DC50 C66A0000 */  lwc1  $f10, ($s3)
/* AC4DF4 8004DC54 26700050 */  addiu $s0, $s3, 0x50
/* AC4DF8 8004DC58 2666005C */  addiu $a2, $s3, 0x5c
/* AC4DFC 8004DC5C 460A3200 */  add.s $f8, $f6, $f10
/* AC4E00 8004DC60 AFA60048 */  sw    $a2, 0x48($sp)
/* AC4E04 8004DC64 02002825 */  move  $a1, $s0
/* AC4E08 8004DC68 27A40094 */  addiu $a0, $sp, 0x94
/* AC4E0C 8004DC6C 0C01F124 */  jal   func_8007C490
/* AC4E10 8004DC70 E7A80058 */   swc1  $f8, 0x58($sp)
/* AC4E14 8004DC74 26720074 */  addiu $s2, $s3, 0x74
/* AC4E18 8004DC78 02403025 */  move  $a2, $s2
/* AC4E1C 8004DC7C 27A4008C */  addiu $a0, $sp, 0x8c
/* AC4E20 8004DC80 0C01F124 */  jal   func_8007C490
/* AC4E24 8004DC84 02002825 */   move  $a1, $s0
/* AC4E28 8004DC88 267100AC */  addiu $s1, $s3, 0xac
/* AC4E2C 8004DC8C 02202025 */  move  $a0, $s1
/* AC4E30 8004DC90 0C00BBB9 */  jal   func_8002EEE4
/* AC4E34 8004DC94 8E6500A8 */   lw    $a1, 0xa8($s3)
/* AC4E38 8004DC98 27A4006C */  addiu $a0, $sp, 0x6c
/* AC4E3C 8004DC9C 0C00BBB9 */  jal   func_8002EEE4
/* AC4E40 8004DCA0 8E650090 */   lw    $a1, 0x90($s3)
/* AC4E44 8004DCA4 26680094 */  addiu $t0, $s3, 0x94
/* AC4E48 8004DCA8 8D0B0000 */  lw    $t3, ($t0)
/* AC4E4C 8004DCAC 27A500D0 */  addiu $a1, $sp, 0xd0
/* AC4E50 8004DCB0 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC4E54 8004DCB4 ACAB0000 */  sw    $t3, ($a1)
/* AC4E58 8004DCB8 8D090004 */  lw    $t1, 4($t0)
/* AC4E5C 8004DCBC 02203025 */  move  $a2, $s1
/* AC4E60 8004DCC0 ACA90004 */  sw    $t1, 4($a1)
/* AC4E64 8004DCC4 8D0B0008 */  lw    $t3, 8($t0)
/* AC4E68 8004DCC8 ACAB0008 */  sw    $t3, 8($a1)
/* AC4E6C 8004DCCC C7A400D4 */  lwc1  $f4, 0xd4($sp)
/* AC4E70 8004DCD0 C7A60058 */  lwc1  $f6, 0x58($sp)
/* AC4E74 8004DCD4 AFA8003C */  sw    $t0, 0x3c($sp)
/* AC4E78 8004DCD8 46062280 */  add.s $f10, $f4, $f6
/* AC4E7C 8004DCDC 0C01F124 */  jal   func_8007C490
/* AC4E80 8004DCE0 E7AA00D4 */   swc1  $f10, 0xd4($sp)
/* AC4E84 8004DCE4 866C002A */  lh    $t4, 0x2a($s3)
/* AC4E88 8004DCE8 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC4E8C 8004DCEC 27A500D0 */  addiu $a1, $sp, 0xd0
/* AC4E90 8004DCF0 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AC4E94 8004DCF4 8663015E */  lh    $v1, 0x15e($s3)
/* AC4E98 8004DCF8 8FA8003C */  lw    $t0, 0x3c($sp)
/* AC4E9C 8004DCFC 2401000A */  li    $at, 10
/* AC4EA0 8004DD00 50600006 */  beql  $v1, $zero, .L8004DD1C
/* AC4EA4 8004DD04 8E6D00A8 */   lw    $t5, 0xa8($s3)
/* AC4EA8 8004DD08 10610003 */  beq   $v1, $at, .L8004DD18
/* AC4EAC 8004DD0C 24010014 */   li    $at, 20
/* AC4EB0 8004DD10 1461012F */  bne   $v1, $at, .L8004E1D0
/* AC4EB4 8004DD14 2662002C */   addiu $v0, $s3, 0x2c
.L8004DD18:
/* AC4EB8 8004DD18 8E6D00A8 */  lw    $t5, 0xa8($s3)
.L8004DD1C:
/* AC4EBC 8004DD1C 2667002C */  addiu $a3, $s3, 0x2c
/* AC4EC0 8004DD20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4EC4 8004DD24 AFAD00AC */  sw    $t5, 0xac($sp)
/* AC4EC8 8004DD28 8E6E0090 */  lw    $t6, 0x90($s3)
/* AC4ECC 8004DD2C AFAE00B0 */  sw    $t6, 0xb0($sp)
/* AC4ED0 8004DD30 866F015E */  lh    $t7, 0x15e($s3)
/* AC4ED4 8004DD34 8E7900A8 */  lw    $t9, 0xa8($s3)
/* AC4ED8 8004DD38 25F80001 */  addiu $t8, $t7, 1
/* AC4EDC 8004DD3C A678015E */  sh    $t8, 0x15e($s3)
/* AC4EE0 8004DD40 ACF9000C */  sw    $t9, 0xc($a3)
/* AC4EE4 8004DD44 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* AC4EE8 8004DD48 C6600008 */  lwc1  $f0, 8($s3)
/* AC4EEC 8004DD4C C7A400A4 */  lwc1  $f4, 0xa4($sp)
/* AC4EF0 8004DD50 4608003C */  c.lt.s $f0, $f8
/* AC4EF4 8004DD54 00000000 */  nop   
/* AC4EF8 8004DD58 45020005 */  bc1fl .L8004DD70
/* AC4EFC 8004DD5C 46002303 */   div.s $f12, $f4, $f0
/* AC4F00 8004DD60 44816000 */  mtc1  $at, $f12
/* AC4F04 8004DD64 10000002 */  b     .L8004DD70
/* AC4F08 8004DD68 00000000 */   nop   
/* AC4F0C 8004DD6C 46002303 */  div.s $f12, $f4, $f0
.L8004DD70:
/* AC4F10 8004DD70 3C018014 */  lui   $at, %hi(D_8013A0D0)
/* AC4F14 8004DD74 C430A0D0 */  lwc1  $f16, %lo(D_8013A0D0)($at)
/* AC4F18 8004DD78 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC4F1C 8004DD7C 44819000 */  mtc1  $at, $f18
/* AC4F20 8004DD80 866A0028 */  lh    $t2, 0x28($s3)
/* AC4F24 8004DD84 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC4F28 8004DD88 44813000 */  mtc1  $at, $f6
/* AC4F2C 8004DD8C A4EA001C */  sh    $t2, 0x1c($a3)
/* AC4F30 8004DD90 84E9001C */  lh    $t1, 0x1c($a3)
/* AC4F34 8004DD94 460C3281 */  sub.s $f10, $f6, $f12
/* AC4F38 8004DD98 C7A800A4 */  lwc1  $f8, 0xa4($sp)
/* AC4F3C 8004DD9C 44893000 */  mtc1  $t1, $f6
/* AC4F40 8004DDA0 87AB00A8 */  lh    $t3, 0xa8($sp)
/* AC4F44 8004DDA4 46085102 */  mul.s $f4, $f10, $f8
/* AC4F48 8004DDA8 87A300AA */  lh    $v1, 0xaa($sp)
/* AC4F4C 8004DDAC 87AD0092 */  lh    $t5, 0x92($sp)
/* AC4F50 8004DDB0 006D7023 */  subu  $t6, $v1, $t5
/* AC4F54 8004DDB4 468032A0 */  cvt.s.w $f10, $f6
/* AC4F58 8004DDB8 000EC400 */  sll   $t8, $t6, 0x10
/* AC4F5C 8004DDBC 0018CC03 */  sra   $t9, $t8, 0x10
/* AC4F60 8004DDC0 460A2203 */  div.s $f8, $f4, $f10
/* AC4F64 8004DDC4 E7A800BC */  swc1  $f8, 0xbc($sp)
/* AC4F68 8004DDC8 C6660018 */  lwc1  $f6, 0x18($s3)
/* AC4F6C 8004DDCC C6600014 */  lwc1  $f0, 0x14($s3)
/* AC4F70 8004DDD0 448B4000 */  mtc1  $t3, $f8
/* AC4F74 8004DDD4 46003101 */  sub.s $f4, $f6, $f0
/* AC4F78 8004DDD8 468041A0 */  cvt.s.w $f6, $f8
/* AC4F7C 8004DDDC 460C2282 */  mul.s $f10, $f4, $f12
/* AC4F80 8004DDE0 C664001C */  lwc1  $f4, 0x1c($s3)
/* AC4F84 8004DDE4 460A0380 */  add.s $f14, $f0, $f10
/* AC4F88 8004DDE8 46043282 */  mul.s $f10, $f6, $f4
/* AC4F8C 8004DDEC 00000000 */  nop   
/* AC4F90 8004DDF0 46107102 */  mul.s $f4, $f14, $f16
/* AC4F94 8004DDF4 46005207 */  neg.s $f8, $f10
/* AC4F98 8004DDF8 4600418D */  trunc.w.s $f6, $f8
/* AC4F9C 8004DDFC 46122280 */  add.s $f10, $f4, $f18
/* AC4FA0 8004DE00 440F3000 */  mfc1  $t7, $f6
/* AC4FA4 8004DE04 4600520D */  trunc.w.s $f8, $f10
/* AC4FA8 8004DE08 44094000 */  mfc1  $t1, $f8
/* AC4FAC 8004DE0C 00000000 */  nop   
/* AC4FB0 8004DE10 012F5821 */  addu  $t3, $t1, $t7
/* AC4FB4 8004DE14 A7AB00A0 */  sh    $t3, 0xa0($sp)
/* AC4FB8 8004DE18 C6660010 */  lwc1  $f6, 0x10($s3)
/* AC4FBC 8004DE1C C662000C */  lwc1  $f2, 0xc($s3)
/* AC4FC0 8004DE20 8662002A */  lh    $v0, 0x2a($s3)
/* AC4FC4 8004DE24 46023101 */  sub.s $f4, $f6, $f2
/* AC4FC8 8004DE28 304C0010 */  andi  $t4, $v0, 0x10
/* AC4FCC 8004DE2C 30490020 */  andi  $t1, $v0, 0x20
/* AC4FD0 8004DE30 460C2282 */  mul.s $f10, $f4, $f12
/* AC4FD4 8004DE34 11800013 */  beqz  $t4, .L8004DE84
/* AC4FD8 8004DE38 460A1380 */   add.s $f14, $f2, $f10
/* AC4FDC 8004DE3C 07210009 */  bgez  $t9, .L8004DE64
/* AC4FE0 8004DE40 00000000 */   nop   
/* AC4FE4 8004DE44 46107202 */  mul.s $f8, $f14, $f16
/* AC4FE8 8004DE48 46124180 */  add.s $f6, $f8, $f18
/* AC4FEC 8004DE4C 4600310D */  trunc.w.s $f4, $f6
/* AC4FF0 8004DE50 440B2000 */  mfc1  $t3, $f4
/* AC4FF4 8004DE54 00000000 */  nop   
/* AC4FF8 8004DE58 006B6021 */  addu  $t4, $v1, $t3
/* AC4FFC 8004DE5C 10000054 */  b     .L8004DFB0
/* AC5000 8004DE60 A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DE64:
/* AC5004 8004DE64 46107282 */  mul.s $f10, $f14, $f16
/* AC5008 8004DE68 46125200 */  add.s $f8, $f10, $f18
/* AC500C 8004DE6C 4600418D */  trunc.w.s $f6, $f8
/* AC5010 8004DE70 44193000 */  mfc1  $t9, $f6
/* AC5014 8004DE74 00000000 */  nop   
/* AC5018 8004DE78 00795023 */  subu  $t2, $v1, $t9
/* AC501C 8004DE7C 1000004C */  b     .L8004DFB0
/* AC5020 8004DE80 A7AA00A2 */   sh    $t2, 0xa2($sp)
.L8004DE84:
/* AC5024 8004DE84 1120001A */  beqz  $t1, .L8004DEF0
/* AC5028 8004DE88 87A300AA */   lh    $v1, 0xaa($sp)
/* AC502C 8004DE8C 87A300AA */  lh    $v1, 0xaa($sp)
/* AC5030 8004DE90 87AF0092 */  lh    $t7, 0x92($sp)
/* AC5034 8004DE94 006F5823 */  subu  $t3, $v1, $t7
/* AC5038 8004DE98 000B6400 */  sll   $t4, $t3, 0x10
/* AC503C 8004DE9C 000C6C03 */  sra   $t5, $t4, 0x10
/* AC5040 8004DEA0 05A1000A */  bgez  $t5, .L8004DECC
/* AC5044 8004DEA4 00000000 */   nop   
/* AC5048 8004DEA8 46107102 */  mul.s $f4, $f14, $f16
/* AC504C 8004DEAC 24798001 */  addiu $t9, $v1, -0x7fff
/* AC5050 8004DEB0 46122280 */  add.s $f10, $f4, $f18
/* AC5054 8004DEB4 4600520D */  trunc.w.s $f8, $f10
/* AC5058 8004DEB8 440B4000 */  mfc1  $t3, $f8
/* AC505C 8004DEBC 00000000 */  nop   
/* AC5060 8004DEC0 032B6023 */  subu  $t4, $t9, $t3
/* AC5064 8004DEC4 1000003A */  b     .L8004DFB0
/* AC5068 8004DEC8 A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DECC:
/* AC506C 8004DECC 46107182 */  mul.s $f6, $f14, $f16
/* AC5070 8004DED0 24788001 */  addiu $t8, $v1, -0x7fff
/* AC5074 8004DED4 46123100 */  add.s $f4, $f6, $f18
/* AC5078 8004DED8 4600228D */  trunc.w.s $f10, $f4
/* AC507C 8004DEDC 44195000 */  mfc1  $t9, $f10
/* AC5080 8004DEE0 00000000 */  nop   
/* AC5084 8004DEE4 03195821 */  addu  $t3, $t8, $t9
/* AC5088 8004DEE8 10000031 */  b     .L8004DFB0
/* AC508C 8004DEEC A7AB00A2 */   sh    $t3, 0xa2($sp)
.L8004DEF0:
/* AC5090 8004DEF0 87AC0092 */  lh    $t4, 0x92($sp)
/* AC5094 8004DEF4 006C1023 */  subu  $v0, $v1, $t4
/* AC5098 8004DEF8 00021400 */  sll   $v0, $v0, 0x10
/* AC509C 8004DEFC 00021403 */  sra   $v0, $v0, 0x10
/* AC50A0 8004DF00 04400003 */  bltz  $v0, .L8004DF10
/* AC50A4 8004DF04 00022023 */   negu  $a0, $v0
/* AC50A8 8004DF08 10000001 */  b     .L8004DF10
/* AC50AC 8004DF0C 00402025 */   move  $a0, $v0
.L8004DF10:
/* AC50B0 8004DF10 28813FFF */  slti  $at, $a0, 0x3fff
/* AC50B4 8004DF14 10200013 */  beqz  $at, .L8004DF64
/* AC50B8 8004DF18 00000000 */   nop   
/* AC50BC 8004DF1C 04410009 */  bgez  $v0, .L8004DF44
/* AC50C0 8004DF20 00000000 */   nop   
/* AC50C4 8004DF24 46107202 */  mul.s $f8, $f14, $f16
/* AC50C8 8004DF28 46124180 */  add.s $f6, $f8, $f18
/* AC50CC 8004DF2C 4600310D */  trunc.w.s $f4, $f6
/* AC50D0 8004DF30 44092000 */  mfc1  $t1, $f4
/* AC50D4 8004DF34 00000000 */  nop   
/* AC50D8 8004DF38 00697821 */  addu  $t7, $v1, $t1
/* AC50DC 8004DF3C 1000001C */  b     .L8004DFB0
/* AC50E0 8004DF40 A7AF00A2 */   sh    $t7, 0xa2($sp)
.L8004DF44:
/* AC50E4 8004DF44 46107282 */  mul.s $f10, $f14, $f16
/* AC50E8 8004DF48 46125200 */  add.s $f8, $f10, $f18
/* AC50EC 8004DF4C 4600418D */  trunc.w.s $f6, $f8
/* AC50F0 8004DF50 440C3000 */  mfc1  $t4, $f6
/* AC50F4 8004DF54 00000000 */  nop   
/* AC50F8 8004DF58 006C6823 */  subu  $t5, $v1, $t4
/* AC50FC 8004DF5C 10000014 */  b     .L8004DFB0
/* AC5100 8004DF60 A7AD00A2 */   sh    $t5, 0xa2($sp)
.L8004DF64:
/* AC5104 8004DF64 0441000A */  bgez  $v0, .L8004DF90
/* AC5108 8004DF68 00000000 */   nop   
/* AC510C 8004DF6C 46107102 */  mul.s $f4, $f14, $f16
/* AC5110 8004DF70 24698001 */  addiu $t1, $v1, -0x7fff
/* AC5114 8004DF74 46122280 */  add.s $f10, $f4, $f18
/* AC5118 8004DF78 4600520D */  trunc.w.s $f8, $f10
/* AC511C 8004DF7C 440B4000 */  mfc1  $t3, $f8
/* AC5120 8004DF80 00000000 */  nop   
/* AC5124 8004DF84 012B6023 */  subu  $t4, $t1, $t3
/* AC5128 8004DF88 10000009 */  b     .L8004DFB0
/* AC512C 8004DF8C A7AC00A2 */   sh    $t4, 0xa2($sp)
.L8004DF90:
/* AC5130 8004DF90 46107182 */  mul.s $f6, $f14, $f16
/* AC5134 8004DF94 246A8001 */  addiu $t2, $v1, -0x7fff
/* AC5138 8004DF98 46123100 */  add.s $f4, $f6, $f18
/* AC513C 8004DF9C 4600228D */  trunc.w.s $f10, $f4
/* AC5140 8004DFA0 44095000 */  mfc1  $t1, $f10
/* AC5144 8004DFA4 00000000 */  nop   
/* AC5148 8004DFA8 01495821 */  addu  $t3, $t2, $t1
/* AC514C 8004DFAC A7AB00A2 */  sh    $t3, 0xa2($sp)
.L8004DFB0:
/* AC5150 8004DFB0 3C018014 */  lui   $at, %hi(D_8013A0D4)
/* AC5154 8004DFB4 C420A0D4 */  lwc1  $f0, %lo(D_8013A0D4)($at)
/* AC5158 8004DFB8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC515C 8004DFBC 44813000 */  mtc1  $at, $f6
/* AC5160 8004DFC0 C7AE00A4 */  lwc1  $f14, 0xa4($sp)
/* AC5164 8004DFC4 87AC00A2 */  lh    $t4, 0xa2($sp)
/* AC5168 8004DFC8 46003101 */  sub.s $f4, $f6, $f0
/* AC516C 8004DFCC C7A600BC */  lwc1  $f6, 0xbc($sp)
/* AC5170 8004DFD0 87AD00A0 */  lh    $t5, 0xa0($sp)
/* AC5174 8004DFD4 A7AC0080 */  sh    $t4, 0x80($sp)
/* AC5178 8004DFD8 46047282 */  mul.s $f10, $f14, $f4
/* AC517C 8004DFDC A7AD0082 */  sh    $t5, 0x82($sp)
/* AC5180 8004DFE0 24F10010 */  addiu $s1, $a3, 0x10
/* AC5184 8004DFE4 46003202 */  mul.s $f8, $f6, $f0
/* AC5188 8004DFE8 02202025 */  move  $a0, $s1
/* AC518C 8004DFEC 27A600A4 */  addiu $a2, $sp, 0xa4
/* AC5190 8004DFF0 460A4100 */  add.s $f4, $f8, $f10
/* AC5194 8004DFF4 E7A400A4 */  swc1  $f4, 0xa4($sp)
/* AC5198 8004DFF8 8D0F0000 */  lw    $t7, ($t0)
/* AC519C 8004DFFC ACAF0000 */  sw    $t7, ($a1)
/* AC51A0 8004E000 8D0E0004 */  lw    $t6, 4($t0)
/* AC51A4 8004E004 ACAE0004 */  sw    $t6, 4($a1)
/* AC51A8 8004E008 8D0F0008 */  lw    $t7, 8($t0)
/* AC51AC 8004E00C ACAF0008 */  sw    $t7, 8($a1)
/* AC51B0 8004E010 C7A600D4 */  lwc1  $f6, 0xd4($sp)
/* AC51B4 8004E014 C7A80058 */  lwc1  $f8, 0x58($sp)
/* AC51B8 8004E018 AFA70038 */  sw    $a3, 0x38($sp)
/* AC51BC 8004E01C E7AE00B8 */  swc1  $f14, 0xb8($sp)
/* AC51C0 8004E020 46083280 */  add.s $f10, $f6, $f8
/* AC51C4 8004E024 0C010F0A */  jal   func_80043C28
/* AC51C8 8004E028 E7AA00D4 */   swc1  $f10, 0xd4($sp)
/* AC51CC 8004E02C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC51D0 8004E030 C7AE00B8 */  lwc1  $f14, 0xb8($sp)
/* AC51D4 8004E034 44813000 */  mtc1  $at, $f6
/* AC51D8 8004E038 2418000E */  li    $t8, 14
/* AC51DC 8004E03C AFB80084 */  sw    $t8, 0x84($sp)
/* AC51E0 8004E040 46067202 */  mul.s $f8, $f14, $f6
/* AC51E4 8004E044 E7AE00A4 */  swc1  $f14, 0xa4($sp)
/* AC51E8 8004E048 C6640004 */  lwc1  $f4, 4($s3)
/* AC51EC 8004E04C C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AC51F0 8004E050 27B200C4 */  addiu $s2, $sp, 0xc4
/* AC51F4 8004E054 00008025 */  move  $s0, $zero
/* AC51F8 8004E058 02402025 */  move  $a0, $s2
/* AC51FC 8004E05C 46082280 */  add.s $f10, $f4, $f8
/* AC5200 8004E060 02202825 */  move  $a1, $s1
/* AC5204 8004E064 27A6009C */  addiu $a2, $sp, 0x9c
/* AC5208 8004E068 46065101 */  sub.s $f4, $f10, $f6
/* AC520C 8004E06C 46062200 */  add.s $f8, $f4, $f6
/* AC5210 8004E070 0C010F0A */  jal   func_80043C28
/* AC5214 8004E074 E7A8009C */   swc1  $f8, 0x9c($sp)
/* AC5218 8004E078 8679002A */  lh    $t9, 0x2a($s3)
/* AC521C 8004E07C 332A0080 */  andi  $t2, $t9, 0x80
/* AC5220 8004E080 15400028 */  bnez  $t2, .L8004E124
/* AC5224 8004E084 00000000 */   nop   
/* AC5228 8004E088 8E64008C */  lw    $a0, 0x8c($s3)
.L8004E08C:
/* AC522C 8004E08C 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* AC5230 8004E090 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* AC5234 8004E094 27A900AC */  addiu $t1, $sp, 0xac
/* AC5238 8004E098 240B0002 */  li    $t3, 2
/* AC523C 8004E09C AFAB0014 */  sw    $t3, 0x14($sp)
/* AC5240 8004E0A0 AFA90010 */  sw    $t1, 0x10($sp)
/* AC5244 8004E0A4 02203025 */  move  $a2, $s1
/* AC5248 8004E0A8 02403825 */  move  $a3, $s2
/* AC524C 8004E0AC 0C0189AC */  jal   func_800626B0
/* AC5250 8004E0B0 00812821 */   addu  $a1, $a0, $at
/* AC5254 8004E0B4 14400005 */  bnez  $v0, .L8004E0CC
/* AC5258 8004E0B8 02602025 */   move  $a0, $s3
/* AC525C 8004E0BC 02202825 */  move  $a1, $s1
/* AC5260 8004E0C0 0C010FCD */  jal   func_80043F34
/* AC5264 8004E0C4 02403025 */   move  $a2, $s2
/* AC5268 8004E0C8 10400016 */  beqz  $v0, .L8004E124
.L8004E0CC:
/* AC526C 8004E0CC 00101040 */   sll   $v0, $s0, 1
/* AC5270 8004E0D0 3C0C8012 */  lui   $t4, %hi(D_8011D3B0)
/* AC5274 8004E0D4 3C0F8012 */  lui   $t7, %hi(D_8011D3CC)
/* AC5278 8004E0D8 01826021 */  addu  $t4, $t4, $v0
/* AC527C 8004E0DC 01E27821 */  addu  $t7, $t7, $v0
/* AC5280 8004E0E0 858CD3B0 */  lh    $t4, %lo(D_8011D3B0)($t4)
/* AC5284 8004E0E4 87AD0080 */  lh    $t5, 0x80($sp)
/* AC5288 8004E0E8 85EFD3CC */  lh    $t7, %lo(D_8011D3CC)($t7)
/* AC528C 8004E0EC 87B80082 */  lh    $t8, 0x82($sp)
/* AC5290 8004E0F0 018D7021 */  addu  $t6, $t4, $t5
/* AC5294 8004E0F4 A7AE00A2 */  sh    $t6, 0xa2($sp)
/* AC5298 8004E0F8 01F8C821 */  addu  $t9, $t7, $t8
/* AC529C 8004E0FC A7B900A0 */  sh    $t9, 0xa0($sp)
/* AC52A0 8004E100 02402025 */  move  $a0, $s2
/* AC52A4 8004E104 02202825 */  move  $a1, $s1
/* AC52A8 8004E108 0C010F0A */  jal   func_80043C28
/* AC52AC 8004E10C 27A6009C */   addiu $a2, $sp, 0x9c
/* AC52B0 8004E110 8FAA0084 */  lw    $t2, 0x84($sp)
/* AC52B4 8004E114 26100001 */  addiu $s0, $s0, 1
/* AC52B8 8004E118 020A082A */  slt   $at, $s0, $t2
/* AC52BC 8004E11C 5420FFDB */  bnezl $at, .L8004E08C
/* AC52C0 8004E120 8E64008C */   lw    $a0, 0x8c($s3)
.L8004E124:
/* AC52C4 8004E124 3C048014 */  lui   $a0, %hi(D_801392DC)
/* AC52C8 8004E128 248492DC */  addiu $a0, %lo(D_801392DC) # addiu $a0, $a0, -0x6d24
/* AC52CC 8004E12C 0C00084C */  jal   osSyncPrintf
/* AC52D0 8004E130 02002825 */   move  $a1, $s0
/* AC52D4 8004E134 8669014C */  lh    $t1, 0x14c($s3)
/* AC52D8 8004E138 8FA50038 */  lw    $a1, 0x38($sp)
/* AC52DC 8004E13C 24020001 */  li    $v0, 1
/* AC52E0 8004E140 312BFFF3 */  andi  $t3, $t1, 0xfff3
/* AC52E4 8004E144 A66B014C */  sh    $t3, 0x14c($s3)
/* AC52E8 8004E148 84A3001C */  lh    $v1, 0x1c($a1)
/* AC52EC 8004E14C 87AE0092 */  lh    $t6, 0x92($sp)
/* AC52F0 8004E150 87AD00A2 */  lh    $t5, 0xa2($sp)
/* AC52F4 8004E154 246C0001 */  addiu $t4, $v1, 1
/* AC52F8 8004E158 01830019 */  multu $t4, $v1
/* AC52FC 8004E15C 01AE7823 */  subu  $t7, $t5, $t6
/* AC5300 8004E160 000FC400 */  sll   $t8, $t7, 0x10
/* AC5304 8004E164 0018CC03 */  sra   $t9, $t8, 0x10
/* AC5308 8004E168 44992000 */  mtc1  $t9, $f4
/* AC530C 8004E16C 00000000 */  nop   
/* AC5310 8004E170 468021A0 */  cvt.s.w $f6, $f4
/* AC5314 8004E174 00002012 */  mflo  $a0
/* AC5318 8004E178 00042043 */  sra   $a0, $a0, 1
/* AC531C 8004E17C 44845000 */  mtc1  $a0, $f10
/* AC5320 8004E180 00000000 */  nop   
/* AC5324 8004E184 46805020 */  cvt.s.w $f0, $f10
/* AC5328 8004E188 46003203 */  div.s $f8, $f6, $f0
/* AC532C 8004E18C E4A80004 */  swc1  $f8, 4($a1)
/* AC5330 8004E190 87A90090 */  lh    $t1, 0x90($sp)
/* AC5334 8004E194 87AA00A0 */  lh    $t2, 0xa0($sp)
/* AC5338 8004E198 01495823 */  subu  $t3, $t2, $t1
/* AC533C 8004E19C 000B6400 */  sll   $t4, $t3, 0x10
/* AC5340 8004E1A0 000C6C03 */  sra   $t5, $t4, 0x10
/* AC5344 8004E1A4 448D5000 */  mtc1  $t5, $f10
/* AC5348 8004E1A8 00000000 */  nop   
/* AC534C 8004E1AC 46805120 */  cvt.s.w $f4, $f10
/* AC5350 8004E1B0 46002183 */  div.s $f6, $f4, $f0
/* AC5354 8004E1B4 E4A60008 */  swc1  $f6, 8($a1)
/* AC5358 8004E1B8 C7AA008C */  lwc1  $f10, 0x8c($sp)
/* AC535C 8004E1BC C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC5360 8004E1C0 460A4101 */  sub.s $f4, $f8, $f10
/* AC5364 8004E1C4 46002183 */  div.s $f6, $f4, $f0
/* AC5368 8004E1C8 1000009E */  b     .L8004E444
/* AC536C 8004E1CC E4A60000 */   swc1  $f6, ($a1)
.L8004E1D0:
/* AC5370 8004E1D0 8443001C */  lh    $v1, 0x1c($v0)
/* AC5374 8004E1D4 50600064 */  beql  $v1, $zero, .L8004E368
/* AC5378 8004E1D8 866B014C */   lh    $t3, 0x14c($s3)
/* AC537C 8004E1DC 44832000 */  mtc1  $v1, $f4
/* AC5380 8004E1E0 C6000000 */  lwc1  $f0, ($s0)
/* AC5384 8004E1E4 C4480010 */  lwc1  $f8, 0x10($v0)
/* AC5388 8004E1E8 468021A0 */  cvt.s.w $f6, $f4
/* AC538C 8004E1EC C6020004 */  lwc1  $f2, 4($s0)
/* AC5390 8004E1F0 C60C0008 */  lwc1  $f12, 8($s0)
/* AC5394 8004E1F4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC5398 8004E1F8 02402025 */  move  $a0, $s2
/* AC539C 8004E1FC 46004281 */  sub.s $f10, $f8, $f0
/* AC53A0 8004E200 02002825 */  move  $a1, $s0
/* AC53A4 8004E204 27A6009C */  addiu $a2, $sp, 0x9c
/* AC53A8 8004E208 46065203 */  div.s $f8, $f10, $f6
/* AC53AC 8004E20C 46080100 */  add.s $f4, $f0, $f8
/* AC53B0 8004E210 E6040000 */  swc1  $f4, ($s0)
/* AC53B4 8004E214 844E001C */  lh    $t6, 0x1c($v0)
/* AC53B8 8004E218 C44A0014 */  lwc1  $f10, 0x14($v0)
/* AC53BC 8004E21C 448E4000 */  mtc1  $t6, $f8
/* AC53C0 8004E220 46025181 */  sub.s $f6, $f10, $f2
/* AC53C4 8004E224 46804120 */  cvt.s.w $f4, $f8
/* AC53C8 8004E228 46043283 */  div.s $f10, $f6, $f4
/* AC53CC 8004E22C 460A1200 */  add.s $f8, $f2, $f10
/* AC53D0 8004E230 E6080004 */  swc1  $f8, 4($s0)
/* AC53D4 8004E234 844F001C */  lh    $t7, 0x1c($v0)
/* AC53D8 8004E238 C4460018 */  lwc1  $f6, 0x18($v0)
/* AC53DC 8004E23C 448F5000 */  mtc1  $t7, $f10
/* AC53E0 8004E240 460C3101 */  sub.s $f4, $f6, $f12
/* AC53E4 8004E244 46805220 */  cvt.s.w $f8, $f10
/* AC53E8 8004E248 46082183 */  div.s $f6, $f4, $f8
/* AC53EC 8004E24C 46066280 */  add.s $f10, $f12, $f6
/* AC53F0 8004E250 E60A0008 */  swc1  $f10, 8($s0)
/* AC53F4 8004E254 8458001C */  lh    $t8, 0x1c($v0)
/* AC53F8 8004E258 C4440000 */  lwc1  $f4, ($v0)
/* AC53FC 8004E25C 87AD0092 */  lh    $t5, 0x92($sp)
/* AC5400 8004E260 44984000 */  mtc1  $t8, $f8
/* AC5404 8004E264 87AB0090 */  lh    $t3, 0x90($sp)
/* AC5408 8004E268 468041A0 */  cvt.s.w $f6, $f8
/* AC540C 8004E26C C7A8008C */  lwc1  $f8, 0x8c($sp)
/* AC5410 8004E270 46062282 */  mul.s $f10, $f4, $f6
/* AC5414 8004E274 44813000 */  mtc1  $at, $f6
/* AC5418 8004E278 46085100 */  add.s $f4, $f10, $f8
/* AC541C 8004E27C 46062280 */  add.s $f10, $f4, $f6
/* AC5420 8004E280 E7AA009C */  swc1  $f10, 0x9c($sp)
/* AC5424 8004E284 8459001C */  lh    $t9, 0x1c($v0)
/* AC5428 8004E288 C4480004 */  lwc1  $f8, 4($v0)
/* AC542C 8004E28C 44992000 */  mtc1  $t9, $f4
/* AC5430 8004E290 00000000 */  nop   
/* AC5434 8004E294 468021A0 */  cvt.s.w $f6, $f4
/* AC5438 8004E298 46064282 */  mul.s $f10, $f8, $f6
/* AC543C 8004E29C 4600510D */  trunc.w.s $f4, $f10
/* AC5440 8004E2A0 440C2000 */  mfc1  $t4, $f4
/* AC5444 8004E2A4 00000000 */  nop   
/* AC5448 8004E2A8 01AC7021 */  addu  $t6, $t5, $t4
/* AC544C 8004E2AC A7AE00A2 */  sh    $t6, 0xa2($sp)
/* AC5450 8004E2B0 844F001C */  lh    $t7, 0x1c($v0)
/* AC5454 8004E2B4 C4480008 */  lwc1  $f8, 8($v0)
/* AC5458 8004E2B8 AFA20038 */  sw    $v0, 0x38($sp)
/* AC545C 8004E2BC 448F3000 */  mtc1  $t7, $f6
/* AC5460 8004E2C0 00000000 */  nop   
/* AC5464 8004E2C4 468032A0 */  cvt.s.w $f10, $f6
/* AC5468 8004E2C8 460A4102 */  mul.s $f4, $f8, $f10
/* AC546C 8004E2CC 4600218D */  trunc.w.s $f6, $f4
/* AC5470 8004E2D0 44093000 */  mfc1  $t1, $f6
/* AC5474 8004E2D4 00000000 */  nop   
/* AC5478 8004E2D8 01696821 */  addu  $t5, $t3, $t1
/* AC547C 8004E2DC 0C010F0A */  jal   func_80043C28
/* AC5480 8004E2E0 A7AD00A0 */   sh    $t5, 0xa0($sp)
/* AC5484 8004E2E4 8FAC0048 */  lw    $t4, 0x48($sp)
/* AC5488 8004E2E8 8E4F0000 */  lw    $t7, ($s2)
/* AC548C 8004E2EC 3C063F00 */  lui   $a2, 0x3f00
/* AC5490 8004E2F0 3C073F80 */  lui   $a3, 0x3f80
/* AC5494 8004E2F4 AD8F0000 */  sw    $t7, ($t4)
/* AC5498 8004E2F8 8E4E0004 */  lw    $t6, 4($s2)
/* AC549C 8004E2FC AD8E0004 */  sw    $t6, 4($t4)
/* AC54A0 8004E300 8E4F0008 */  lw    $t7, 8($s2)
/* AC54A4 8004E304 AD8F0008 */  sw    $t7, 8($t4)
/* AC54A8 8004E308 C66E00FC */  lwc1  $f14, 0xfc($s3)
/* AC54AC 8004E30C 0C010E27 */  jal   func_8004389C
/* AC54B0 8004E310 C66C0020 */   lwc1  $f12, 0x20($s3)
/* AC54B4 8004E314 E66000FC */  swc1  $f0, 0xfc($s3)
/* AC54B8 8004E318 00002025 */  move  $a0, $zero
/* AC54BC 8004E31C 8665015A */  lh    $a1, 0x15a($s3)
/* AC54C0 8004E320 3C063F00 */  lui   $a2, 0x3f00
/* AC54C4 8004E324 0C010E47 */  jal   func_8004391C
/* AC54C8 8004E328 2407000A */   li    $a3, 10
/* AC54CC 8004E32C A662015A */  sh    $v0, 0x15a($s3)
/* AC54D0 8004E330 02602025 */  move  $a0, $s3
/* AC54D4 8004E334 0C011429 */  jal   func_800450A4
/* AC54D8 8004E338 8E650024 */   lw    $a1, 0x24($s3)
/* AC54DC 8004E33C E6600100 */  swc1  $f0, 0x100($s3)
/* AC54E0 8004E340 8FA60048 */  lw    $a2, 0x48($sp)
/* AC54E4 8004E344 02602025 */  move  $a0, $s3
/* AC54E8 8004E348 0C010FCD */  jal   func_80043F34
/* AC54EC 8004E34C 02002825 */   move  $a1, $s0
/* AC54F0 8004E350 8FB80038 */  lw    $t8, 0x38($sp)
/* AC54F4 8004E354 8719001C */  lh    $t9, 0x1c($t8)
/* AC54F8 8004E358 272AFFFF */  addiu $t2, $t9, -1
/* AC54FC 8004E35C 10000004 */  b     .L8004E370
/* AC5500 8004E360 A70A001C */   sh    $t2, 0x1c($t8)
/* AC5504 8004E364 866B014C */  lh    $t3, 0x14c($s3)
.L8004E368:
/* AC5508 8004E368 35690410 */  ori   $t1, $t3, 0x410
/* AC550C 8004E36C A669014C */  sh    $t1, 0x14c($s3)
.L8004E370:
/* AC5510 8004E370 866D014C */  lh    $t5, 0x14c($s3)
/* AC5514 8004E374 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC5518 8004E378 02602025 */  move  $a0, $s3
/* AC551C 8004E37C 31AC0008 */  andi  $t4, $t5, 8
/* AC5520 8004E380 51800030 */  beql  $t4, $zero, .L8004E444
/* AC5524 8004E384 24020001 */   li    $v0, 1
/* AC5528 8004E388 0C010ED8 */  jal   func_80043B60
/* AC552C 8004E38C AC20D3A0 */   sw    $zero, %lo(D_8011D3A0)($at)
/* AC5530 8004E390 44804000 */  mtc1  $zero, $f8
/* AC5534 8004E394 3C018014 */  lui   $at, %hi(D_8013A0D8)
/* AC5538 8004E398 C66400D8 */  lwc1  $f4, 0xd8($s3)
/* AC553C 8004E39C E6680100 */  swc1  $f8, 0x100($s3)
/* AC5540 8004E3A0 C42AA0D8 */  lwc1  $f10, %lo(D_8013A0D8)($at)
/* AC5544 8004E3A4 3C0E8016 */  lui   $t6, %hi(D_8015BD7C) # $t6, 0x8016
/* AC5548 8004E3A8 4604503C */  c.lt.s $f10, $f4
/* AC554C 8004E3AC 00000000 */  nop   
/* AC5550 8004E3B0 4503001E */  bc1tl .L8004E42C
/* AC5554 8004E3B4 866E014C */   lh    $t6, 0x14c($s3)
/* AC5558 8004E3B8 8DCEBD7C */  lw    $t6, %lo(D_8015BD7C)($t6)
/* AC555C 8004E3BC 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* AC5560 8004E3C0 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* AC5564 8004E3C4 95C20020 */  lhu   $v0, 0x20($t6)
/* AC5568 8004E3C8 00417827 */  nor   $t7, $v0, $at
/* AC556C 8004E3CC 11E00016 */  beqz  $t7, .L8004E428
/* AC5570 8004E3D0 2401BFFF */   li    $at, -16385
/* AC5574 8004E3D4 0041C827 */  nor   $t9, $v0, $at
/* AC5578 8004E3D8 13200013 */  beqz  $t9, .L8004E428
/* AC557C 8004E3DC 2401FFFD */   li    $at, -3
/* AC5580 8004E3E0 00415027 */  nor   $t2, $v0, $at
/* AC5584 8004E3E4 11400010 */  beqz  $t2, .L8004E428
/* AC5588 8004E3E8 2401FFFB */   li    $at, -5
/* AC558C 8004E3EC 0041C027 */  nor   $t8, $v0, $at
/* AC5590 8004E3F0 1300000D */  beqz  $t8, .L8004E428
/* AC5594 8004E3F4 2401FFF7 */   li    $at, -9
/* AC5598 8004E3F8 00415827 */  nor   $t3, $v0, $at
/* AC559C 8004E3FC 1160000A */  beqz  $t3, .L8004E428
/* AC55A0 8004E400 2401FFFE */   li    $at, -2
/* AC55A4 8004E404 00414827 */  nor   $t1, $v0, $at
/* AC55A8 8004E408 11200007 */  beqz  $t1, .L8004E428
/* AC55AC 8004E40C 2401FFEF */   li    $at, -17
/* AC55B0 8004E410 00416827 */  nor   $t5, $v0, $at
/* AC55B4 8004E414 11A00004 */  beqz  $t5, .L8004E428
/* AC55B8 8004E418 2401DFFF */   li    $at, -8193
/* AC55BC 8004E41C 00416027 */  nor   $t4, $v0, $at
/* AC55C0 8004E420 55800008 */  bnezl $t4, .L8004E444
/* AC55C4 8004E424 24020001 */   li    $v0, 1
.L8004E428:
/* AC55C8 8004E428 866E014C */  lh    $t6, 0x14c($s3)
.L8004E42C:
/* AC55CC 8004E42C 35CF0004 */  ori   $t7, $t6, 4
/* AC55D0 8004E430 A66F014C */  sh    $t7, 0x14c($s3)
/* AC55D4 8004E434 8679014C */  lh    $t9, 0x14c($s3)
/* AC55D8 8004E438 332AFFF7 */  andi  $t2, $t9, 0xfff7
/* AC55DC 8004E43C A66A014C */  sh    $t2, 0x14c($s3)
/* AC55E0 8004E440 24020001 */  li    $v0, 1
.L8004E444:
/* AC55E4 8004E444 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC55E8 8004E448 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC55EC 8004E44C 8FB10020 */  lw    $s1, 0x20($sp)
/* AC55F0 8004E450 8FB20024 */  lw    $s2, 0x24($sp)
/* AC55F4 8004E454 8FB30028 */  lw    $s3, 0x28($sp)
/* AC55F8 8004E458 03E00008 */  jr    $ra
/* AC55FC 8004E45C 27BD00E8 */   addiu $sp, $sp, 0xe8
# SPLIT
/* AC5600 8004E460 27BDFF20 */  addiu $sp, $sp, -0xe0
/* AC5604 8004E464 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC5608 8004E468 AFB10020 */  sw    $s1, 0x20($sp)
/* AC560C 8004E46C AFB0001C */  sw    $s0, 0x1c($sp)
/* AC5610 8004E470 8C90008C */  lw    $s0, 0x8c($a0)
/* AC5614 8004E474 00808825 */  move  $s1, $a0
/* AC5618 8004E478 2401000A */  li    $at, 10
/* AC561C 8004E47C 8E0E1C44 */  lw    $t6, 0x1c44($s0)
/* AC5620 8004E480 AFAE0084 */  sw    $t6, 0x84($sp)
/* AC5624 8004E484 8482015E */  lh    $v0, 0x15e($a0)
/* AC5628 8004E488 50400006 */  beql  $v0, $zero, .L8004E4A4
/* AC562C 8004E48C 8E0F01DC */   lw    $t7, 0x1dc($s0)
/* AC5630 8004E490 10410003 */  beq   $v0, $at, .L8004E4A0
/* AC5634 8004E494 24010014 */   li    $at, 20
/* AC5638 8004E498 54410015 */  bnel  $v0, $at, .L8004E4F0
/* AC563C 8004E49C 26220020 */   addiu $v0, $s1, 0x20
.L8004E4A0:
/* AC5640 8004E4A0 8E0F01DC */  lw    $t7, 0x1dc($s0)
.L8004E4A4:
/* AC5644 8004E4A4 55E0000D */  bnezl $t7, .L8004E4DC
/* AC5648 8004E4A8 862D014C */   lh    $t5, 0x14c($s1)
/* AC564C 8004E4AC 8638014C */  lh    $t8, 0x14c($s1)
/* AC5650 8004E4B0 862A0164 */  lh    $t2, 0x164($s1)
/* AC5654 8004E4B4 24020001 */  li    $v0, 1
/* AC5658 8004E4B8 37190020 */  ori   $t9, $t8, 0x20
/* AC565C 8004E4BC A639014C */  sh    $t9, 0x14c($s1)
/* AC5660 8004E4C0 8628014C */  lh    $t0, 0x14c($s1)
/* AC5664 8004E4C4 354B0050 */  ori   $t3, $t2, 0x50
/* AC5668 8004E4C8 3109FFF9 */  andi  $t1, $t0, 0xfff9
/* AC566C 8004E4CC A629014C */  sh    $t1, 0x14c($s1)
/* AC5670 8004E4D0 100003AF */  b     .L8004F390
/* AC5674 8004E4D4 AE0B01DC */   sw    $t3, 0x1dc($s0)
/* AC5678 8004E4D8 862D014C */  lh    $t5, 0x14c($s1)
.L8004E4DC:
/* AC567C 8004E4DC 862C012C */  lh    $t4, 0x12c($s1)
/* AC5680 8004E4E0 31AEFFDF */  andi  $t6, $t5, 0xffdf
/* AC5684 8004E4E4 A62E014C */  sh    $t6, 0x14c($s1)
/* AC5688 8004E4E8 A62C0034 */  sh    $t4, 0x34($s1)
/* AC568C 8004E4EC 26220020 */  addiu $v0, $s1, 0x20
.L8004E4F0:
/* AC5690 8004E4F0 2630012C */  addiu $s0, $s1, 0x12c
/* AC5694 8004E4F4 86060000 */  lh    $a2, ($s0)
/* AC5698 8004E4F8 84450014 */  lh    $a1, 0x14($v0)
/* AC569C 8004E4FC 10A60011 */  beq   $a1, $a2, .L8004E544
/* AC56A0 8004E500 3C048014 */   lui   $a0, %hi(D_8013930C) # $a0, 0x8014
/* AC56A4 8004E504 0C00084C */  jal   osSyncPrintf
/* AC56A8 8004E508 2484930C */   addiu $a0, %lo(D_8013930C) # addiu $a0, $a0, -0x6cf4
/* AC56AC 8004E50C 8638014C */  lh    $t8, 0x14c($s1)
/* AC56B0 8004E510 862A0164 */  lh    $t2, 0x164($s1)
/* AC56B4 8004E514 8E2C008C */  lw    $t4, 0x8c($s1)
/* AC56B8 8004E518 37190020 */  ori   $t9, $t8, 0x20
/* AC56BC 8004E51C A639014C */  sh    $t9, 0x14c($s1)
/* AC56C0 8004E520 8628014C */  lh    $t0, 0x14c($s1)
/* AC56C4 8004E524 240F0014 */  li    $t7, 20
/* AC56C8 8004E528 A62F015E */  sh    $t7, 0x15e($s1)
/* AC56CC 8004E52C 3109FFF9 */  andi  $t1, $t0, 0xfff9
/* AC56D0 8004E530 A629014C */  sh    $t1, 0x14c($s1)
/* AC56D4 8004E534 354B0050 */  ori   $t3, $t2, 0x50
/* AC56D8 8004E538 24020001 */  li    $v0, 1
/* AC56DC 8004E53C 10000394 */  b     .L8004F390
/* AC56E0 8004E540 AD8B01DC */   sw    $t3, 0x1dc($t4)
.L8004E544:
/* AC56E4 8004E544 8E240090 */  lw    $a0, 0x90($s1)
/* AC56E8 8004E548 0C00B721 */  jal   func_8002DC84
/* AC56EC 8004E54C AFA20034 */   sw    $v0, 0x34($sp)
/* AC56F0 8004E550 862D014C */  lh    $t5, 0x14c($s1)
/* AC56F4 8004E554 8622015E */  lh    $v0, 0x15e($s1)
/* AC56F8 8004E558 46000386 */  mov.s $f14, $f0
/* AC56FC 8004E55C 31AEFFEF */  andi  $t6, $t5, 0xffef
/* AC5700 8004E560 10400009 */  beqz  $v0, .L8004E588
/* AC5704 8004E564 A62E014C */   sh    $t6, 0x14c($s1)
/* AC5708 8004E568 2401000A */  li    $at, 10
/* AC570C 8004E56C 10410006 */  beq   $v0, $at, .L8004E588
/* AC5710 8004E570 24010014 */   li    $at, 20
/* AC5714 8004E574 10410004 */  beq   $v0, $at, .L8004E588
/* AC5718 8004E578 3C0F8016 */   lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC571C 8004E57C 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC5720 8004E580 85E20314 */  lh    $v0, 0x314($t7)
/* AC5724 8004E584 10400169 */  beqz  $v0, .L8004EB2C
.L8004E588:
/* AC5728 8004E588 3C018014 */   lui   $at, %hi(D_8013A0DC)
/* AC572C 8004E58C C430A0DC */  lwc1  $f16, %lo(D_8013A0DC)($at)
/* AC5730 8004E590 3C01BF00 */  li    $at, 0xBF000000 # 0.000000
/* AC5734 8004E594 44819000 */  mtc1  $at, $f18
/* AC5738 8004E598 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC573C 8004E59C 44812000 */  mtc1  $at, $f4
/* AC5740 8004E5A0 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC5744 8004E5A4 44814000 */  mtc1  $at, $f8
/* AC5748 8004E5A8 86380142 */  lh    $t8, 0x142($s1)
/* AC574C 8004E5AC 3C088012 */  lui   $t0, %hi(D_8011D068)
/* AC5750 8004E5B0 46004283 */  div.s $f10, $f8, $f0
/* AC5754 8004E5B4 0018C8C0 */  sll   $t9, $t8, 3
/* AC5758 8004E5B8 86290144 */  lh    $t1, 0x144($s1)
/* AC575C 8004E5BC 01194021 */  addu  $t0, $t0, $t9
/* AC5760 8004E5C0 8D08D068 */  lw    $t0, %lo(D_8011D068)($t0)
/* AC5764 8004E5C4 000950C0 */  sll   $t2, $t1, 3
/* AC5768 8004E5C8 46122180 */  add.s $f6, $f4, $f18
/* AC576C 8004E5CC 010A5821 */  addu  $t3, $t0, $t2
/* AC5770 8004E5D0 8D620004 */  lw    $v0, 4($t3)
/* AC5774 8004E5D4 3C048014 */  lui   $a0, %hi(D_80139344) # $a0, 0x8014
/* AC5778 8004E5D8 24849344 */  addiu $a0, %lo(D_80139344) # addiu $a0, $a0, -0x6cbc
/* AC577C 8004E5DC 844C0000 */  lh    $t4, ($v0)
/* AC5780 8004E5E0 24420020 */  addiu $v0, $v0, 0x20
/* AC5784 8004E5E4 448C4000 */  mtc1  $t4, $f8
/* AC5788 8004E5E8 46125102 */  mul.s $f4, $f10, $f18
/* AC578C 8004E5EC 468042A0 */  cvt.s.w $f10, $f8
/* AC5790 8004E5F0 46043301 */  sub.s $f12, $f6, $f4
/* AC5794 8004E5F4 46105182 */  mul.s $f6, $f10, $f16
/* AC5798 8004E5F8 00000000 */  nop   
/* AC579C 8004E5FC 46003102 */  mul.s $f4, $f6, $f0
/* AC57A0 8004E600 00000000 */  nop   
/* AC57A4 8004E604 460C2202 */  mul.s $f8, $f4, $f12
/* AC57A8 8004E608 E6280000 */  swc1  $f8, ($s1)
/* AC57AC 8004E60C 844DFFE4 */  lh    $t5, -0x1c($v0)
/* AC57B0 8004E610 448D5000 */  mtc1  $t5, $f10
/* AC57B4 8004E614 00000000 */  nop   
/* AC57B8 8004E618 468051A0 */  cvt.s.w $f6, $f10
/* AC57BC 8004E61C 46103102 */  mul.s $f4, $f6, $f16
/* AC57C0 8004E620 00000000 */  nop   
/* AC57C4 8004E624 46002202 */  mul.s $f8, $f4, $f0
/* AC57C8 8004E628 00000000 */  nop   
/* AC57CC 8004E62C 460C4282 */  mul.s $f10, $f8, $f12
/* AC57D0 8004E630 E62A0004 */  swc1  $f10, 4($s1)
/* AC57D4 8004E634 844EFFE8 */  lh    $t6, -0x18($v0)
/* AC57D8 8004E638 448E3000 */  mtc1  $t6, $f6
/* AC57DC 8004E63C 00000000 */  nop   
/* AC57E0 8004E640 46803120 */  cvt.s.w $f4, $f6
/* AC57E4 8004E644 E6240008 */  swc1  $f4, 8($s1)
/* AC57E8 8004E648 844FFFEC */  lh    $t7, -0x14($v0)
/* AC57EC 8004E64C 448F4000 */  mtc1  $t7, $f8
/* AC57F0 8004E650 00000000 */  nop   
/* AC57F4 8004E654 468042A0 */  cvt.s.w $f10, $f8
/* AC57F8 8004E658 E62A000C */  swc1  $f10, 0xc($s1)
/* AC57FC 8004E65C 8458FFF0 */  lh    $t8, -0x10($v0)
/* AC5800 8004E660 44983000 */  mtc1  $t8, $f6
/* AC5804 8004E664 00000000 */  nop   
/* AC5808 8004E668 46803120 */  cvt.s.w $f4, $f6
/* AC580C 8004E66C E6240010 */  swc1  $f4, 0x10($s1)
/* AC5810 8004E670 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC5814 8004E674 44994000 */  mtc1  $t9, $f8
/* AC5818 8004E678 00000000 */  nop   
/* AC581C 8004E67C 468042A0 */  cvt.s.w $f10, $f8
/* AC5820 8004E680 E62A0018 */  swc1  $f10, 0x18($s1)
/* AC5824 8004E684 8449FFF8 */  lh    $t1, -8($v0)
/* AC5828 8004E688 A629001C */  sh    $t1, 0x1c($s1)
/* AC582C 8004E68C 8448FFFC */  lh    $t0, -4($v0)
/* AC5830 8004E690 44883000 */  mtc1  $t0, $f6
/* AC5834 8004E694 00000000 */  nop   
/* AC5838 8004E698 46803120 */  cvt.s.w $f4, $f6
/* AC583C 8004E69C 46102202 */  mul.s $f8, $f4, $f16
/* AC5840 8004E6A0 E6280014 */  swc1  $f8, 0x14($s1)
/* AC5844 8004E6A4 844A0000 */  lh    $t2, ($v0)
/* AC5848 8004E6A8 A62A001E */  sh    $t2, 0x1e($s1)
/* AC584C 8004E6AC 86050000 */  lh    $a1, ($s0)
/* AC5850 8004E6B0 E7AE0088 */  swc1  $f14, 0x88($sp)
/* AC5854 8004E6B4 0C00084C */  jal   osSyncPrintf
/* AC5858 8004E6B8 E7AC0074 */   swc1  $f12, 0x74($sp)
/* AC585C 8004E6BC 86020000 */  lh    $v0, ($s0)
/* AC5860 8004E6C0 3C01BF00 */  li    $at, 0xBF000000 # 0.000000
/* AC5864 8004E6C4 44819000 */  mtc1  $at, $f18
/* AC5868 8004E6C8 28410052 */  slti  $at, $v0, 0x52
/* AC586C 8004E6CC C7AC0074 */  lwc1  $f12, 0x74($sp)
/* AC5870 8004E6D0 14200008 */  bnez  $at, .L8004E6F4
/* AC5874 8004E6D4 C7AE0088 */   lwc1  $f14, 0x88($sp)
/* AC5878 8004E6D8 2401005A */  li    $at, 90
/* AC587C 8004E6DC 104100B6 */  beq   $v0, $at, .L8004E9B8
/* AC5880 8004E6E0 2401005B */   li    $at, 91
/* AC5884 8004E6E4 104100C2 */  beq   $v0, $at, .L8004E9F0
/* AC5888 8004E6E8 00000000 */   nop   
/* AC588C 8004E6EC 1000010C */  b     .L8004EB20
/* AC5890 8004E6F0 00000000 */   nop   
.L8004E6F4:
/* AC5894 8004E6F4 2841000D */  slti  $at, $v0, 0xd
/* AC5898 8004E6F8 14200006 */  bnez  $at, .L8004E714
/* AC589C 8004E6FC 244BFFFF */   addiu $t3, $v0, -1
/* AC58A0 8004E700 24010051 */  li    $at, 81
/* AC58A4 8004E704 504100D5 */  beql  $v0, $at, .L8004EA5C
/* AC58A8 8004E708 3C0141A0 */   lui   $at, 0x41a0
/* AC58AC 8004E70C 10000104 */  b     .L8004EB20
/* AC58B0 8004E710 00000000 */   nop   
.L8004E714:
/* AC58B4 8004E714 2D61000C */  sltiu $at, $t3, 0xc
/* AC58B8 8004E718 10200101 */  beqz  $at, .L8004EB20
/* AC58BC 8004E71C 000B5880 */   sll   $t3, $t3, 2
/* AC58C0 8004E720 3C018014 */  lui   $at, %hi(jtbl_8013A0E0)
/* AC58C4 8004E724 002B0821 */  addu  $at, $at, $t3
/* AC58C8 8004E728 8C2BA0E0 */  lw    $t3, %lo(jtbl_8013A0E0)($at)
/* AC58CC 8004E72C 01600008 */  jr    $t3
/* AC58D0 8004E730 00000000 */   nop   
/* AC58D4 8004E734 3C018014 */  lui   $at, %hi(D_8013A110)
/* AC58D8 8004E738 C42AA110 */  lwc1  $f10, %lo(D_8013A110)($at)
/* AC58DC 8004E73C 460E7200 */  add.s $f8, $f14, $f14
/* AC58E0 8004E740 3C014120 */  lui   $at, 0x4120
/* AC58E4 8004E744 460A7182 */  mul.s $f6, $f14, $f10
/* AC58E8 8004E748 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC58EC 8004E74C 460C3102 */  mul.s $f4, $f6, $f12
/* AC58F0 8004E750 44813000 */  mtc1  $at, $f6
/* AC58F4 8004E754 460C4282 */  mul.s $f10, $f8, $f12
/* AC58F8 8004E758 E6260008 */  swc1  $f6, 8($s1)
/* AC58FC 8004E75C E6240000 */  swc1  $f4, ($s1)
/* AC5900 8004E760 E62A0004 */  swc1  $f10, 4($s1)
/* AC5904 8004E764 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC5908 8004E768 100000F0 */  b     .L8004EB2C
/* AC590C 8004E76C 85820314 */   lh    $v0, 0x314($t4)
/* AC5910 8004E770 3C01C1A0 */  li    $at, 0xC1A00000 # 0.000000
/* AC5914 8004E774 44812000 */  mtc1  $at, $f4
/* AC5918 8004E778 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* AC591C 8004E77C 44814000 */  mtc1  $at, $f8
/* AC5920 8004E780 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC5924 8004E784 E6240008 */  swc1  $f4, 8($s1)
/* AC5928 8004E788 E6280018 */  swc1  $f8, 0x18($s1)
/* AC592C 8004E78C 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC5930 8004E790 100000E6 */  b     .L8004EB2C
/* AC5934 8004E794 85A20314 */   lh    $v0, 0x314($t5)
/* AC5938 8004E798 3C018014 */  lui   $at, %hi(D_8013A114)
/* AC593C 8004E79C C42AA114 */  lwc1  $f10, %lo(D_8013A114)($at)
/* AC5940 8004E7A0 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AC5944 8004E7A4 44814000 */  mtc1  $at, $f8
/* AC5948 8004E7A8 460A7182 */  mul.s $f6, $f14, $f10
/* AC594C 8004E7AC 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC5950 8004E7B0 E6280008 */  swc1  $f8, 8($s1)
/* AC5954 8004E7B4 460C3102 */  mul.s $f4, $f6, $f12
/* AC5958 8004E7B8 E6240000 */  swc1  $f4, ($s1)
/* AC595C 8004E7BC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC5960 8004E7C0 100000DA */  b     .L8004EB2C
/* AC5964 8004E7C4 85C20314 */   lh    $v0, 0x314($t6)
/* AC5968 8004E7C8 3C018014 */  lui   $at, %hi(D_8013A118)
/* AC596C 8004E7CC C42AA118 */  lwc1  $f10, %lo(D_8013A118)($at)
/* AC5970 8004E7D0 3C018014 */  lui   $at, %hi(D_8013A11C)
/* AC5974 8004E7D4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC5978 8004E7D8 460A7182 */  mul.s $f6, $f14, $f10
/* AC597C 8004E7DC 00000000 */  nop   
/* AC5980 8004E7E0 460C3102 */  mul.s $f4, $f6, $f12
/* AC5984 8004E7E4 E6240000 */  swc1  $f4, ($s1)
/* AC5988 8004E7E8 C428A11C */  lwc1  $f8, %lo(D_8013A11C)($at)
/* AC598C 8004E7EC 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC5990 8004E7F0 44812000 */  mtc1  $at, $f4
/* AC5994 8004E7F4 46087282 */  mul.s $f10, $f14, $f8
/* AC5998 8004E7F8 3C01428C */  li    $at, 0x428C0000 # 0.000000
/* AC599C 8004E7FC 44814000 */  mtc1  $at, $f8
/* AC59A0 8004E800 E6240008 */  swc1  $f4, 8($s1)
/* AC59A4 8004E804 E6280018 */  swc1  $f8, 0x18($s1)
/* AC59A8 8004E808 460C5182 */  mul.s $f6, $f10, $f12
/* AC59AC 8004E80C E6260004 */  swc1  $f6, 4($s1)
/* AC59B0 8004E810 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC59B4 8004E814 100000C5 */  b     .L8004EB2C
/* AC59B8 8004E818 85E20314 */   lh    $v0, 0x314($t7)
/* AC59BC 8004E81C 3C018014 */  lui   $at, %hi(D_8013A120)
/* AC59C0 8004E820 C42AA120 */  lwc1  $f10, %lo(D_8013A120)($at)
/* AC59C4 8004E824 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC59C8 8004E828 44814000 */  mtc1  $at, $f8
/* AC59CC 8004E82C 460A7182 */  mul.s $f6, $f14, $f10
/* AC59D0 8004E830 3C01C1A0 */  li    $at, 0xC1A00000 # 0.000000
/* AC59D4 8004E834 24182540 */  li    $t8, 9536
/* AC59D8 8004E838 A638001C */  sh    $t8, 0x1c($s1)
/* AC59DC 8004E83C 3C198016 */  lui   $t9, %hi(gGameInfo)
/* AC59E0 8004E840 460C3102 */  mul.s $f4, $f6, $f12
/* AC59E4 8004E844 00000000 */  nop   
/* AC59E8 8004E848 46087282 */  mul.s $f10, $f14, $f8
/* AC59EC 8004E84C 44804000 */  mtc1  $zero, $f8
/* AC59F0 8004E850 E6240000 */  swc1  $f4, ($s1)
/* AC59F4 8004E854 44812000 */  mtc1  $at, $f4
/* AC59F8 8004E858 E628000C */  swc1  $f8, 0xc($s1)
/* AC59FC 8004E85C 460C5182 */  mul.s $f6, $f10, $f12
/* AC5A00 8004E860 E6240008 */  swc1  $f4, 8($s1)
/* AC5A04 8004E864 E6260004 */  swc1  $f6, 4($s1)
/* AC5A08 8004E868 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC5A0C 8004E86C 100000AF */  b     .L8004EB2C
/* AC5A10 8004E870 87220314 */   lh    $v0, 0x314($t9)
/* AC5A14 8004E874 3C018014 */  lui   $at, %hi(D_8013A124)
/* AC5A18 8004E878 C42AA124 */  lwc1  $f10, %lo(D_8013A124)($at)
/* AC5A1C 8004E87C 3C01C120 */  li    $at, 0xC1200000 # 0.000000
/* AC5A20 8004E880 44814000 */  mtc1  $at, $f8
/* AC5A24 8004E884 460A7182 */  mul.s $f6, $f14, $f10
/* AC5A28 8004E888 3C014234 */  li    $at, 0x42340000 # 0.000000
/* AC5A2C 8004E88C 44815000 */  mtc1  $at, $f10
/* AC5A30 8004E890 24092002 */  li    $t1, 8194
/* AC5A34 8004E894 A629001C */  sh    $t1, 0x1c($s1)
/* AC5A38 8004E898 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AC5A3C 8004E89C E6280008 */  swc1  $f8, 8($s1)
/* AC5A40 8004E8A0 460C3102 */  mul.s $f4, $f6, $f12
/* AC5A44 8004E8A4 E62A000C */  swc1  $f10, 0xc($s1)
/* AC5A48 8004E8A8 E6240000 */  swc1  $f4, ($s1)
/* AC5A4C 8004E8AC 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC5A50 8004E8B0 1000009E */  b     .L8004EB2C
/* AC5A54 8004E8B4 85020314 */   lh    $v0, 0x314($t0)
/* AC5A58 8004E8B8 46127182 */  mul.s $f6, $f14, $f18
/* AC5A5C 8004E8BC 3C013FC0 */  li    $at, 0x3FC00000 # 0.000000
/* AC5A60 8004E8C0 44814000 */  mtc1  $at, $f8
/* AC5A64 8004E8C4 3C01C170 */  lui   $at, 0xc170
/* AC5A68 8004E8C8 240A2202 */  li    $t2, 8706
/* AC5A6C 8004E8CC 240B003C */  li    $t3, 60
/* AC5A70 8004E8D0 A62A001C */  sh    $t2, 0x1c($s1)
/* AC5A74 8004E8D4 460C3102 */  mul.s $f4, $f6, $f12
/* AC5A78 8004E8D8 A62B001E */  sh    $t3, 0x1e($s1)
/* AC5A7C 8004E8DC 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC5A80 8004E8E0 46087282 */  mul.s $f10, $f14, $f8
/* AC5A84 8004E8E4 E6240000 */  swc1  $f4, ($s1)
/* AC5A88 8004E8E8 44812000 */  mtc1  $at, $f4
/* AC5A8C 8004E8EC 3C01432F */  li    $at, 0x432F0000 # 0.000000
/* AC5A90 8004E8F0 460C5182 */  mul.s $f6, $f10, $f12
/* AC5A94 8004E8F4 44814000 */  mtc1  $at, $f8
/* AC5A98 8004E8F8 3C01428C */  li    $at, 0x428C0000 # 0.000000
/* AC5A9C 8004E8FC 44815000 */  mtc1  $at, $f10
/* AC5AA0 8004E900 E6240008 */  swc1  $f4, 8($s1)
/* AC5AA4 8004E904 E628000C */  swc1  $f8, 0xc($s1)
/* AC5AA8 8004E908 E62A0018 */  swc1  $f10, 0x18($s1)
/* AC5AAC 8004E90C E6260004 */  swc1  $f6, 4($s1)
/* AC5AB0 8004E910 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC5AB4 8004E914 10000085 */  b     .L8004EB2C
/* AC5AB8 8004E918 85820314 */   lh    $v0, 0x314($t4)
/* AC5ABC 8004E91C 3C018014 */  lui   $at, %hi(D_8013A128)
/* AC5AC0 8004E920 C426A128 */  lwc1  $f6, %lo(D_8013A128)($at)
/* AC5AC4 8004E924 3C018014 */  lui   $at, %hi(D_8013A12C)
/* AC5AC8 8004E928 24183212 */  li    $t8, 12818
/* AC5ACC 8004E92C 46067102 */  mul.s $f4, $f14, $f6
/* AC5AD0 8004E930 2419001E */  li    $t9, 30
/* AC5AD4 8004E934 3C098016 */  lui   $t1, %hi(gGameInfo)
/* AC5AD8 8004E938 460C2202 */  mul.s $f8, $f4, $f12
/* AC5ADC 8004E93C E6280000 */  swc1  $f8, ($s1)
/* AC5AE0 8004E940 C42AA12C */  lwc1  $f10, %lo(D_8013A12C)($at)
/* AC5AE4 8004E944 3C01C000 */  li    $at, 0xC0000000 # 0.000000
/* AC5AE8 8004E948 44814000 */  mtc1  $at, $f8
/* AC5AEC 8004E94C 460A7182 */  mul.s $f6, $f14, $f10
/* AC5AF0 8004E950 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AC5AF4 8004E954 44815000 */  mtc1  $at, $f10
/* AC5AF8 8004E958 E6280008 */  swc1  $f8, 8($s1)
/* AC5AFC 8004E95C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AC5B00 8004E960 E62A000C */  swc1  $f10, 0xc($s1)
/* AC5B04 8004E964 460C3102 */  mul.s $f4, $f6, $f12
/* AC5B08 8004E968 E6240004 */  swc1  $f4, 4($s1)
/* AC5B0C 8004E96C 8FAD0084 */  lw    $t5, 0x84($sp)
/* AC5B10 8004E970 8DAE067C */  lw    $t6, 0x67c($t5)
/* AC5B14 8004E974 000E7900 */  sll   $t7, $t6, 4
/* AC5B18 8004E978 05E30005 */  bgezl $t7, .L8004E990
/* AC5B1C 8004E97C 44810000 */   mtc1  $at, $f0
/* AC5B20 8004E980 44803000 */  mtc1  $zero, $f6
/* AC5B24 8004E984 10000004 */  b     .L8004E998
/* AC5B28 8004E988 E6260010 */   swc1  $f6, 0x10($s1)
/* AC5B2C 8004E98C 44810000 */  mtc1  $at, $f0
.L8004E990:
/* AC5B30 8004E990 00000000 */  nop   
/* AC5B34 8004E994 E6200010 */  swc1  $f0, 0x10($s1)
.L8004E998:
/* AC5B38 8004E998 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC5B3C 8004E99C 44812000 */  mtc1  $at, $f4
/* AC5B40 8004E9A0 A638001C */  sh    $t8, 0x1c($s1)
/* AC5B44 8004E9A4 A639001E */  sh    $t9, 0x1e($s1)
/* AC5B48 8004E9A8 E6240018 */  swc1  $f4, 0x18($s1)
/* AC5B4C 8004E9AC 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC5B50 8004E9B0 1000005E */  b     .L8004EB2C
/* AC5B54 8004E9B4 85220314 */   lh    $v0, 0x314($t1)
.L8004E9B8:
/* AC5B58 8004E9B8 3C018014 */  lui   $at, %hi(D_8013A130)
/* AC5B5C 8004E9BC C428A130 */  lwc1  $f8, %lo(D_8013A130)($at)
/* AC5B60 8004E9C0 3C014234 */  li    $at, 0x42340000 # 0.000000
/* AC5B64 8004E9C4 44812000 */  mtc1  $at, $f4
/* AC5B68 8004E9C8 46087282 */  mul.s $f10, $f14, $f8
/* AC5B6C 8004E9CC 24082F02 */  li    $t0, 12034
/* AC5B70 8004E9D0 A628001C */  sh    $t0, 0x1c($s1)
/* AC5B74 8004E9D4 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC5B78 8004E9D8 E6240018 */  swc1  $f4, 0x18($s1)
/* AC5B7C 8004E9DC 460C5182 */  mul.s $f6, $f10, $f12
/* AC5B80 8004E9E0 E6260000 */  swc1  $f6, ($s1)
/* AC5B84 8004E9E4 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC5B88 8004E9E8 10000050 */  b     .L8004EB2C
/* AC5B8C 8004E9EC 85420314 */   lh    $v0, 0x314($t2)
.L8004E9F0:
/* AC5B90 8004E9F0 3C018014 */  lui   $at, %hi(D_8013A134)
/* AC5B94 8004E9F4 C428A134 */  lwc1  $f8, %lo(D_8013A134)($at)
/* AC5B98 8004E9F8 3C013FC0 */  li    $at, 0x3FC00000 # 0.000000
/* AC5B9C 8004E9FC 44812000 */  mtc1  $at, $f4
/* AC5BA0 8004EA00 46087282 */  mul.s $f10, $f14, $f8
/* AC5BA4 8004EA04 3C01C040 */  lui   $at, 0xc040
/* AC5BA8 8004EA08 240B2F08 */  li    $t3, 12040
/* AC5BAC 8004EA0C A62B001C */  sh    $t3, 0x1c($s1)
/* AC5BB0 8004EA10 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC5BB4 8004EA14 460C5182 */  mul.s $f6, $f10, $f12
/* AC5BB8 8004EA18 00000000 */  nop   
/* AC5BBC 8004EA1C 46047202 */  mul.s $f8, $f14, $f4
/* AC5BC0 8004EA20 E6260000 */  swc1  $f6, ($s1)
/* AC5BC4 8004EA24 44813000 */  mtc1  $at, $f6
/* AC5BC8 8004EA28 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC5BCC 8004EA2C 460C4282 */  mul.s $f10, $f8, $f12
/* AC5BD0 8004EA30 44812000 */  mtc1  $at, $f4
/* AC5BD4 8004EA34 3C01425C */  li    $at, 0x425C0000 # 0.000000
/* AC5BD8 8004EA38 44814000 */  mtc1  $at, $f8
/* AC5BDC 8004EA3C E6260008 */  swc1  $f6, 8($s1)
/* AC5BE0 8004EA40 E624000C */  swc1  $f4, 0xc($s1)
/* AC5BE4 8004EA44 E6280018 */  swc1  $f8, 0x18($s1)
/* AC5BE8 8004EA48 E62A0004 */  swc1  $f10, 4($s1)
/* AC5BEC 8004EA4C 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC5BF0 8004EA50 10000036 */  b     .L8004EB2C
/* AC5BF4 8004EA54 85820314 */   lh    $v0, 0x314($t4)
/* AC5BF8 8004EA58 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
.L8004EA5C:
/* AC5BFC 8004EA5C 44810000 */  mtc1  $at, $f0
/* AC5C00 8004EA60 3C018014 */  lui   $at, %hi(D_8013A138)
/* AC5C04 8004EA64 C42AA138 */  lwc1  $f10, %lo(D_8013A138)($at)
/* AC5C08 8004EA68 3C013FC0 */  li    $at, 0x3FC00000 # 0.000000
/* AC5C0C 8004EA6C 44814000 */  mtc1  $at, $f8
/* AC5C10 8004EA70 460A7182 */  mul.s $f6, $f14, $f10
/* AC5C14 8004EA74 3C014000 */  lui   $at, 0x4000
/* AC5C18 8004EA78 240D2280 */  li    $t5, 8832
/* AC5C1C 8004EA7C 240E001E */  li    $t6, 30
/* AC5C20 8004EA80 A62D001C */  sh    $t5, 0x1c($s1)
/* AC5C24 8004EA84 A62E001E */  sh    $t6, 0x1e($s1)
/* AC5C28 8004EA88 3C0F8016 */  lui   $t7, %hi(gGameInfo)
/* AC5C2C 8004EA8C 460C3102 */  mul.s $f4, $f6, $f12
/* AC5C30 8004EA90 E620000C */  swc1  $f0, 0xc($s1)
/* AC5C34 8004EA94 E6200010 */  swc1  $f0, 0x10($s1)
/* AC5C38 8004EA98 46087282 */  mul.s $f10, $f14, $f8
/* AC5C3C 8004EA9C E6240000 */  swc1  $f4, ($s1)
/* AC5C40 8004EAA0 44812000 */  mtc1  $at, $f4
/* AC5C44 8004EAA4 3C014234 */  li    $at, 0x42340000 # 0.000000
/* AC5C48 8004EAA8 460C5182 */  mul.s $f6, $f10, $f12
/* AC5C4C 8004EAAC 44814000 */  mtc1  $at, $f8
/* AC5C50 8004EAB0 E6240008 */  swc1  $f4, 8($s1)
/* AC5C54 8004EAB4 E6280018 */  swc1  $f8, 0x18($s1)
/* AC5C58 8004EAB8 E6260004 */  swc1  $f6, 4($s1)
/* AC5C5C 8004EABC 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC5C60 8004EAC0 1000001A */  b     .L8004EB2C
/* AC5C64 8004EAC4 85E20314 */   lh    $v0, 0x314($t7)
/* AC5C68 8004EAC8 3C018014 */  lui   $at, %hi(D_8013A13C)
/* AC5C6C 8004EACC C42AA13C */  lwc1  $f10, %lo(D_8013A13C)($at)
/* AC5C70 8004EAD0 3C018014 */  lui   $at, %hi(D_8013A140)
/* AC5C74 8004EAD4 24182522 */  li    $t8, 9506
/* AC5C78 8004EAD8 460A7182 */  mul.s $f6, $f14, $f10
/* AC5C7C 8004EADC 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC5C80 8004EAE0 460C3102 */  mul.s $f4, $f6, $f12
/* AC5C84 8004EAE4 E6240000 */  swc1  $f4, ($s1)
/* AC5C88 8004EAE8 C428A140 */  lwc1  $f8, %lo(D_8013A140)($at)
/* AC5C8C 8004EAEC 3C014302 */  li    $at, 0x43020000 # 0.000000
/* AC5C90 8004EAF0 44812000 */  mtc1  $at, $f4
/* AC5C94 8004EAF4 46087282 */  mul.s $f10, $f14, $f8
/* AC5C98 8004EAF8 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC5C9C 8004EAFC 44814000 */  mtc1  $at, $f8
/* AC5CA0 8004EB00 A638001C */  sh    $t8, 0x1c($s1)
/* AC5CA4 8004EB04 E624000C */  swc1  $f4, 0xc($s1)
/* AC5CA8 8004EB08 E6280010 */  swc1  $f8, 0x10($s1)
/* AC5CAC 8004EB0C 460C5182 */  mul.s $f6, $f10, $f12
/* AC5CB0 8004EB10 E6260004 */  swc1  $f6, 4($s1)
/* AC5CB4 8004EB14 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC5CB8 8004EB18 10000004 */  b     .L8004EB2C
/* AC5CBC 8004EB1C 87220314 */   lh    $v0, 0x314($t9)
.L8004EB20:
/* AC5CC0 8004EB20 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AC5CC4 8004EB24 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC5CC8 8004EB28 85220314 */  lh    $v0, 0x314($t1)
.L8004EB2C:
/* AC5CCC 8004EB2C 10400004 */  beqz  $v0, .L8004EB40
/* AC5CD0 8004EB30 02202025 */   move  $a0, $s1
/* AC5CD4 8004EB34 0C011495 */  jal   func_80045254
/* AC5CD8 8004EB38 E7AE0088 */   swc1  $f14, 0x88($sp)
/* AC5CDC 8004EB3C C7AE0088 */  lwc1  $f14, 0x88($sp)
.L8004EB40:
/* AC5CE0 8004EB40 24080001 */  li    $t0, 1
/* AC5CE4 8004EB44 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC5CE8 8004EB48 AC28D3E8 */  sw    $t0, %lo(D_8011D3E8)($at)
/* AC5CEC 8004EB4C 862A001C */  lh    $t2, 0x1c($s1)
/* AC5CF0 8004EB50 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC5CF4 8004EB54 26250050 */  addiu $a1, $s1, 0x50
/* AC5CF8 8004EB58 2626005C */  addiu $a2, $s1, 0x5c
/* AC5CFC 8004EB5C AFA60044 */  sw    $a2, 0x44($sp)
/* AC5D00 8004EB60 AFA50040 */  sw    $a1, 0x40($sp)
/* AC5D04 8004EB64 E7AE0088 */  swc1  $f14, 0x88($sp)
/* AC5D08 8004EB68 27A400B0 */  addiu $a0, $sp, 0xb0
/* AC5D0C 8004EB6C 0C01F124 */  jal   func_8007C490
/* AC5D10 8004EB70 AC2AD3A0 */   sw    $t2, %lo(D_8011D3A0)($at)
/* AC5D14 8004EB74 26260074 */  addiu $a2, $s1, 0x74
/* AC5D18 8004EB78 AFA6003C */  sw    $a2, 0x3c($sp)
/* AC5D1C 8004EB7C 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC5D20 8004EB80 0C01F124 */  jal   func_8007C490
/* AC5D24 8004EB84 8FA50040 */   lw    $a1, 0x40($sp)
/* AC5D28 8004EB88 26230094 */  addiu $v1, $s1, 0x94
/* AC5D2C 8004EB8C 8C6C0000 */  lw    $t4, ($v1)
/* AC5D30 8004EB90 3C078016 */  lui   $a3, %hi(D_8015BD50) # $a3, 0x8016
/* AC5D34 8004EB94 24E7BD50 */  addiu $a3, %lo(D_8015BD50) # addiu $a3, $a3, -0x42b0
/* AC5D38 8004EB98 ACEC0000 */  sw    $t4, ($a3)
/* AC5D3C 8004EB9C 8C6B0004 */  lw    $t3, 4($v1)
/* AC5D40 8004EBA0 3C018016 */  lui   $at, %hi(D_8015BD54)
/* AC5D44 8004EBA4 C7AE0088 */  lwc1  $f14, 0x88($sp)
/* AC5D48 8004EBA8 ACEB0004 */  sw    $t3, 4($a3)
/* AC5D4C 8004EBAC 8C6C0008 */  lw    $t4, 8($v1)
/* AC5D50 8004EBB0 27A500C0 */  addiu $a1, $sp, 0xc0
/* AC5D54 8004EBB4 27A6007C */  addiu $a2, $sp, 0x7c
/* AC5D58 8004EBB8 ACEC0008 */  sw    $t4, 8($a3)
/* AC5D5C 8004EBBC C42ABD54 */  lwc1  $f10, %lo(D_8015BD54)($at)
/* AC5D60 8004EBC0 460E5180 */  add.s $f6, $f10, $f14
/* AC5D64 8004EBC4 E426BD54 */  swc1  $f6, %lo(D_8015BD54)($at)
/* AC5D68 8004EBC8 8E24008C */  lw    $a0, 0x8c($s1)
/* AC5D6C 8004EBCC AFA30038 */  sw    $v1, 0x38($sp)
/* AC5D70 8004EBD0 0C00F329 */  jal   func_8003CCA4
/* AC5D74 8004EBD4 248407C0 */   addiu $a0, $a0, 0x7c0
/* AC5D78 8004EBD8 3C018016 */  lui   $at, %hi(D_8015BD54)
/* AC5D7C 8004EBDC C428BD54 */  lwc1  $f8, %lo(D_8015BD54)($at)
/* AC5D80 8004EBE0 C6240000 */  lwc1  $f4, ($s1)
/* AC5D84 8004EBE4 46082080 */  add.s $f2, $f4, $f8
/* AC5D88 8004EBE8 4600103C */  c.lt.s $f2, $f0
/* AC5D8C 8004EBEC 00000000 */  nop   
/* AC5D90 8004EBF0 45000006 */  bc1f  .L8004EC0C
/* AC5D94 8004EBF4 3C014120 */   li    $at, 0x41200000 # 0.000000
/* AC5D98 8004EBF8 44815000 */  mtc1  $at, $f10
/* AC5D9C 8004EBFC 3C018016 */  lui   $at, %hi(D_8015BD54)
/* AC5DA0 8004EC00 460A0180 */  add.s $f6, $f0, $f10
/* AC5DA4 8004EC04 10000003 */  b     .L8004EC14
/* AC5DA8 8004EC08 E426BD54 */   swc1  $f6, %lo(D_8015BD54)($at)
.L8004EC0C:
/* AC5DAC 8004EC0C 3C018016 */  lui   $at, %hi(D_8015BD54)
/* AC5DB0 8004EC10 E422BD54 */  swc1  $f2, %lo(D_8015BD54)($at)
.L8004EC14:
/* AC5DB4 8004EC14 8622015E */  lh    $v0, 0x15e($s1)
/* AC5DB8 8004EC18 10400006 */  beqz  $v0, .L8004EC34
/* AC5DBC 8004EC1C 2401000A */   li    $at, 10
/* AC5DC0 8004EC20 1041013C */  beq   $v0, $at, .L8004F114
/* AC5DC4 8004EC24 8FA80038 */   lw    $t0, 0x38($sp)
/* AC5DC8 8004EC28 24010014 */  li    $at, 20
/* AC5DCC 8004EC2C 1441013E */  bne   $v0, $at, .L8004F128
/* AC5DD0 8004EC30 00000000 */   nop   
.L8004EC34:
/* AC5DD4 8004EC34 8E2D0090 */  lw    $t5, 0x90($s1)
/* AC5DD8 8004EC38 240E0001 */  li    $t6, 1
/* AC5DDC 8004EC3C A7AE009C */  sh    $t6, 0x9c($sp)
/* AC5DE0 8004EC40 02202025 */  move  $a0, $s1
/* AC5DE4 8004EC44 0C010EAF */  jal   func_80043ABC
/* AC5DE8 8004EC48 AFAD00CC */   sw    $t5, 0xcc($sp)
/* AC5DEC 8004EC4C 862F014C */  lh    $t7, 0x14c($s1)
/* AC5DF0 8004EC50 8639001E */  lh    $t9, 0x1e($s1)
/* AC5DF4 8004EC54 3C018014 */  lui   $at, %hi(D_8013A144)
/* AC5DF8 8004EC58 31F8FFF9 */  andi  $t8, $t7, 0xfff9
/* AC5DFC 8004EC5C A638014C */  sh    $t8, 0x14c($s1)
/* AC5E00 8004EC60 8FA90034 */  lw    $t1, 0x34($sp)
/* AC5E04 8004EC64 A5390010 */  sh    $t9, 0x10($t1)
/* AC5E08 8004EC68 8FA80038 */  lw    $t0, 0x38($sp)
/* AC5E0C 8004EC6C C62800F4 */  lwc1  $f8, 0xf4($s1)
/* AC5E10 8004EC70 8FAA0034 */  lw    $t2, 0x34($sp)
/* AC5E14 8004EC74 C5040004 */  lwc1  $f4, 4($t0)
/* AC5E18 8004EC78 46082281 */  sub.s $f10, $f4, $f8
/* AC5E1C 8004EC7C E54A0008 */  swc1  $f10, 8($t2)
/* AC5E20 8004EC80 8622001C */  lh    $v0, 0x1c($s1)
/* AC5E24 8004EC84 304B0002 */  andi  $t3, $v0, 2
/* AC5E28 8004EC88 11600028 */  beqz  $t3, .L8004ED2C
/* AC5E2C 8004EC8C 30480004 */   andi  $t0, $v0, 4
/* AC5E30 8004EC90 C420A144 */  lwc1  $f0, %lo(D_8013A144)($at)
/* AC5E34 8004EC94 C6260008 */  lwc1  $f6, 8($s1)
/* AC5E38 8004EC98 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC5E3C 8004EC9C 44811000 */  mtc1  $at, $f2
/* AC5E40 8004ECA0 46003102 */  mul.s $f4, $f6, $f0
/* AC5E44 8004ECA4 8FAE0038 */  lw    $t6, 0x38($sp)
/* AC5E48 8004ECA8 87AF00AE */  lh    $t7, 0xae($sp)
/* AC5E4C 8004ECAC 46022200 */  add.s $f8, $f4, $f2
/* AC5E50 8004ECB0 4600428D */  trunc.w.s $f10, $f8
/* AC5E54 8004ECB4 440D5000 */  mfc1  $t5, $f10
/* AC5E58 8004ECB8 00000000 */  nop   
/* AC5E5C 8004ECBC A7AD00A2 */  sh    $t5, 0xa2($sp)
/* AC5E60 8004ECC0 85C2000E */  lh    $v0, 0xe($t6)
/* AC5E64 8004ECC4 24428001 */  addiu $v0, $v0, -0x7fff
/* AC5E68 8004ECC8 00021400 */  sll   $v0, $v0, 0x10
/* AC5E6C 8004ECCC 00021403 */  sra   $v0, $v0, 0x10
/* AC5E70 8004ECD0 004FC023 */  subu  $t8, $v0, $t7
/* AC5E74 8004ECD4 0018CC00 */  sll   $t9, $t8, 0x10
/* AC5E78 8004ECD8 00194C03 */  sra   $t1, $t9, 0x10
/* AC5E7C 8004ECDC 5920000B */  blezl $t1, .L8004ED0C
/* AC5E80 8004ECE0 C626000C */   lwc1  $f6, 0xc($s1)
/* AC5E84 8004ECE4 C626000C */  lwc1  $f6, 0xc($s1)
/* AC5E88 8004ECE8 46003102 */  mul.s $f4, $f6, $f0
/* AC5E8C 8004ECEC 46022200 */  add.s $f8, $f4, $f2
/* AC5E90 8004ECF0 4600428D */  trunc.w.s $f10, $f8
/* AC5E94 8004ECF4 440C5000 */  mfc1  $t4, $f10
/* AC5E98 8004ECF8 00000000 */  nop   
/* AC5E9C 8004ECFC 004C6821 */  addu  $t5, $v0, $t4
/* AC5EA0 8004ED00 1000009A */  b     .L8004EF6C
/* AC5EA4 8004ED04 A7AD00A0 */   sh    $t5, 0xa0($sp)
/* AC5EA8 8004ED08 C626000C */  lwc1  $f6, 0xc($s1)
.L8004ED0C:
/* AC5EAC 8004ED0C 46003102 */  mul.s $f4, $f6, $f0
/* AC5EB0 8004ED10 46022200 */  add.s $f8, $f4, $f2
/* AC5EB4 8004ED14 4600428D */  trunc.w.s $f10, $f8
/* AC5EB8 8004ED18 44195000 */  mfc1  $t9, $f10
/* AC5EBC 8004ED1C 00000000 */  nop   
/* AC5EC0 8004ED20 00594823 */  subu  $t1, $v0, $t9
/* AC5EC4 8004ED24 10000091 */  b     .L8004EF6C
/* AC5EC8 8004ED28 A7A900A0 */   sh    $t1, 0xa0($sp)
.L8004ED2C:
/* AC5ECC 8004ED2C 11000013 */  beqz  $t0, .L8004ED7C
/* AC5ED0 8004ED30 304E0008 */   andi  $t6, $v0, 8
/* AC5ED4 8004ED34 3C018014 */  lui   $at, %hi(D_8013A148)
/* AC5ED8 8004ED38 C420A148 */  lwc1  $f0, %lo(D_8013A148)($at)
/* AC5EDC 8004ED3C C6260008 */  lwc1  $f6, 8($s1)
/* AC5EE0 8004ED40 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC5EE4 8004ED44 44811000 */  mtc1  $at, $f2
/* AC5EE8 8004ED48 46003102 */  mul.s $f4, $f6, $f0
/* AC5EEC 8004ED4C 46022200 */  add.s $f8, $f4, $f2
/* AC5EF0 8004ED50 4600428D */  trunc.w.s $f10, $f8
/* AC5EF4 8004ED54 440B5000 */  mfc1  $t3, $f10
/* AC5EF8 8004ED58 00000000 */  nop   
/* AC5EFC 8004ED5C A7AB00A2 */  sh    $t3, 0xa2($sp)
/* AC5F00 8004ED60 C626000C */  lwc1  $f6, 0xc($s1)
/* AC5F04 8004ED64 46003102 */  mul.s $f4, $f6, $f0
/* AC5F08 8004ED68 46022200 */  add.s $f8, $f4, $f2
/* AC5F0C 8004ED6C 4600428D */  trunc.w.s $f10, $f8
/* AC5F10 8004ED70 440D5000 */  mfc1  $t5, $f10
/* AC5F14 8004ED74 1000007D */  b     .L8004EF6C
/* AC5F18 8004ED78 A7AD00A0 */   sh    $t5, 0xa0($sp)
.L8004ED7C:
/* AC5F1C 8004ED7C 11C00033 */  beqz  $t6, .L8004EE4C
/* AC5F20 8004ED80 30490080 */   andi  $t1, $v0, 0x80
/* AC5F24 8004ED84 8E2500A8 */  lw    $a1, 0xa8($s1)
/* AC5F28 8004ED88 10A00030 */  beqz  $a1, .L8004EE4C
/* AC5F2C 8004ED8C 00000000 */   nop   
/* AC5F30 8004ED90 0C00BBD1 */  jal   func_8002EF44
/* AC5F34 8004ED94 27A40060 */   addiu $a0, $sp, 0x60
/* AC5F38 8004ED98 3C018014 */  lui   $at, %hi(D_8013A14C)
/* AC5F3C 8004ED9C C420A14C */  lwc1  $f0, %lo(D_8013A14C)($at)
/* AC5F40 8004EDA0 C6260008 */  lwc1  $f6, 8($s1)
/* AC5F44 8004EDA4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC5F48 8004EDA8 44811000 */  mtc1  $at, $f2
/* AC5F4C 8004EDAC 46003102 */  mul.s $f4, $f6, $f0
/* AC5F50 8004EDB0 87A3006E */  lh    $v1, 0x6e($sp)
/* AC5F54 8004EDB4 87AB00AE */  lh    $t3, 0xae($sp)
/* AC5F58 8004EDB8 87A8006C */  lh    $t0, 0x6c($sp)
/* AC5F5C 8004EDBC 24638001 */  addiu $v1, $v1, -0x7fff
/* AC5F60 8004EDC0 00031C00 */  sll   $v1, $v1, 0x10
/* AC5F64 8004EDC4 00031C03 */  sra   $v1, $v1, 0x10
/* AC5F68 8004EDC8 46022200 */  add.s $f8, $f4, $f2
/* AC5F6C 8004EDCC 006B6023 */  subu  $t4, $v1, $t3
/* AC5F70 8004EDD0 000C6C00 */  sll   $t5, $t4, 0x10
/* AC5F74 8004EDD4 000D7403 */  sra   $t6, $t5, 0x10
/* AC5F78 8004EDD8 4600428D */  trunc.w.s $f10, $f8
/* AC5F7C 8004EDDC 44095000 */  mfc1  $t1, $f10
/* AC5F80 8004EDE0 00000000 */  nop   
/* AC5F84 8004EDE4 01285023 */  subu  $t2, $t1, $t0
/* AC5F88 8004EDE8 19C0000A */  blez  $t6, .L8004EE14
/* AC5F8C 8004EDEC A7AA00A2 */   sh    $t2, 0xa2($sp)
/* AC5F90 8004EDF0 C626000C */  lwc1  $f6, 0xc($s1)
/* AC5F94 8004EDF4 46003102 */  mul.s $f4, $f6, $f0
/* AC5F98 8004EDF8 46022200 */  add.s $f8, $f4, $f2
/* AC5F9C 8004EDFC 4600428D */  trunc.w.s $f10, $f8
/* AC5FA0 8004EE00 44095000 */  mfc1  $t1, $f10
/* AC5FA4 8004EE04 00000000 */  nop   
/* AC5FA8 8004EE08 00694021 */  addu  $t0, $v1, $t1
/* AC5FAC 8004EE0C 10000009 */  b     .L8004EE34
/* AC5FB0 8004EE10 A7A800A0 */   sh    $t0, 0xa0($sp)
.L8004EE14:
/* AC5FB4 8004EE14 C626000C */  lwc1  $f6, 0xc($s1)
/* AC5FB8 8004EE18 46003102 */  mul.s $f4, $f6, $f0
/* AC5FBC 8004EE1C 46022200 */  add.s $f8, $f4, $f2
/* AC5FC0 8004EE20 4600428D */  trunc.w.s $f10, $f8
/* AC5FC4 8004EE24 440D5000 */  mfc1  $t5, $f10
/* AC5FC8 8004EE28 00000000 */  nop   
/* AC5FCC 8004EE2C 006D7023 */  subu  $t6, $v1, $t5
/* AC5FD0 8004EE30 A7AE00A0 */  sh    $t6, 0xa0($sp)
.L8004EE34:
/* AC5FD4 8004EE34 87B8009C */  lh    $t8, 0x9c($sp)
/* AC5FD8 8004EE38 8E2F00A8 */  lw    $t7, 0xa8($s1)
/* AC5FDC 8004EE3C 27190001 */  addiu $t9, $t8, 1
/* AC5FE0 8004EE40 A7B9009C */  sh    $t9, 0x9c($sp)
/* AC5FE4 8004EE44 10000049 */  b     .L8004EF6C
/* AC5FE8 8004EE48 AFAF00D0 */   sw    $t7, 0xd0($sp)
.L8004EE4C:
/* AC5FEC 8004EE4C 11200035 */  beqz  $t1, .L8004EF24
/* AC5FF0 8004EE50 304C0040 */   andi  $t4, $v0, 0x40
/* AC5FF4 8004EE54 8E2500A8 */  lw    $a1, 0xa8($s1)
/* AC5FF8 8004EE58 27B0004C */  addiu $s0, $sp, 0x4c
/* AC5FFC 8004EE5C 10A00031 */  beqz  $a1, .L8004EF24
/* AC6000 8004EE60 00000000 */   nop   
/* AC6004 8004EE64 0C00BBC5 */  jal   func_8002EF14
/* AC6008 8004EE68 02002025 */   move  $a0, $s0
/* AC600C 8004EE6C 3C018014 */  lui   $at, %hi(D_8013A150)
/* AC6010 8004EE70 C420A150 */  lwc1  $f0, %lo(D_8013A150)($at)
/* AC6014 8004EE74 C6260008 */  lwc1  $f6, 8($s1)
/* AC6018 8004EE78 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC601C 8004EE7C 44811000 */  mtc1  $at, $f2
/* AC6020 8004EE80 46003102 */  mul.s $f4, $f6, $f0
/* AC6024 8004EE84 02002025 */  move  $a0, $s0
/* AC6028 8004EE88 8FA50038 */  lw    $a1, 0x38($sp)
/* AC602C 8004EE8C 46022200 */  add.s $f8, $f4, $f2
/* AC6030 8004EE90 4600428D */  trunc.w.s $f10, $f8
/* AC6034 8004EE94 440A5000 */  mfc1  $t2, $f10
/* AC6038 8004EE98 0C01129D */  jal   func_80044A74
/* AC603C 8004EE9C A7AA00A2 */   sh    $t2, 0xa2($sp)
/* AC6040 8004EEA0 87AB00AE */  lh    $t3, 0xae($sp)
/* AC6044 8004EEA4 3C018014 */  lui   $at, %hi(D_8013A154)
/* AC6048 8004EEA8 C420A154 */  lwc1  $f0, %lo(D_8013A154)($at)
/* AC604C 8004EEAC 004B6023 */  subu  $t4, $v0, $t3
/* AC6050 8004EEB0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC6054 8004EEB4 000C6C00 */  sll   $t5, $t4, 0x10
/* AC6058 8004EEB8 44811000 */  mtc1  $at, $f2
/* AC605C 8004EEBC 000D7403 */  sra   $t6, $t5, 0x10
/* AC6060 8004EEC0 59C0000B */  blezl $t6, .L8004EEF0
/* AC6064 8004EEC4 C626000C */   lwc1  $f6, 0xc($s1)
/* AC6068 8004EEC8 C626000C */  lwc1  $f6, 0xc($s1)
/* AC606C 8004EECC 46003102 */  mul.s $f4, $f6, $f0
/* AC6070 8004EED0 46022200 */  add.s $f8, $f4, $f2
/* AC6074 8004EED4 4600428D */  trunc.w.s $f10, $f8
/* AC6078 8004EED8 440A5000 */  mfc1  $t2, $f10
/* AC607C 8004EEDC 00000000 */  nop   
/* AC6080 8004EEE0 004A5821 */  addu  $t3, $v0, $t2
/* AC6084 8004EEE4 10000009 */  b     .L8004EF0C
/* AC6088 8004EEE8 A7AB00A0 */   sh    $t3, 0xa0($sp)
/* AC608C 8004EEEC C626000C */  lwc1  $f6, 0xc($s1)
.L8004EEF0:
/* AC6090 8004EEF0 46003102 */  mul.s $f4, $f6, $f0
/* AC6094 8004EEF4 46022200 */  add.s $f8, $f4, $f2
/* AC6098 8004EEF8 4600428D */  trunc.w.s $f10, $f8
/* AC609C 8004EEFC 44095000 */  mfc1  $t1, $f10
/* AC60A0 8004EF00 00000000 */  nop   
/* AC60A4 8004EF04 00494023 */  subu  $t0, $v0, $t1
/* AC60A8 8004EF08 A7A800A0 */  sh    $t0, 0xa0($sp)
.L8004EF0C:
/* AC60AC 8004EF0C 87AA009C */  lh    $t2, 0x9c($sp)
/* AC60B0 8004EF10 8E3800A8 */  lw    $t8, 0xa8($s1)
/* AC60B4 8004EF14 254B0001 */  addiu $t3, $t2, 1
/* AC60B8 8004EF18 A7AB009C */  sh    $t3, 0x9c($sp)
/* AC60BC 8004EF1C 10000013 */  b     .L8004EF6C
/* AC60C0 8004EF20 AFB800D0 */   sw    $t8, 0xd0($sp)
.L8004EF24:
/* AC60C4 8004EF24 1180000E */  beqz  $t4, .L8004EF60
/* AC60C8 8004EF28 87AD00AC */   lh    $t5, 0xac($sp)
/* AC60CC 8004EF2C 3C018014 */  lui   $at, %hi(D_8013A158)
/* AC60D0 8004EF30 C420A158 */  lwc1  $f0, %lo(D_8013A158)($at)
/* AC60D4 8004EF34 C6260008 */  lwc1  $f6, 8($s1)
/* AC60D8 8004EF38 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC60DC 8004EF3C 44811000 */  mtc1  $at, $f2
/* AC60E0 8004EF40 46003102 */  mul.s $f4, $f6, $f0
/* AC60E4 8004EF44 87B900AE */  lh    $t9, 0xae($sp)
/* AC60E8 8004EF48 A7B900A0 */  sh    $t9, 0xa0($sp)
/* AC60EC 8004EF4C 46022200 */  add.s $f8, $f4, $f2
/* AC60F0 8004EF50 4600428D */  trunc.w.s $f10, $f8
/* AC60F4 8004EF54 440F5000 */  mfc1  $t7, $f10
/* AC60F8 8004EF58 10000004 */  b     .L8004EF6C
/* AC60FC 8004EF5C A7AF00A2 */   sh    $t7, 0xa2($sp)
.L8004EF60:
/* AC6100 8004EF60 87A900AE */  lh    $t1, 0xae($sp)
/* AC6104 8004EF64 A7AD00A2 */  sh    $t5, 0xa2($sp)
/* AC6108 8004EF68 A7A900A0 */  sh    $t1, 0xa0($sp)
.L8004EF6C:
/* AC610C 8004EF6C 87A800A2 */  lh    $t0, 0xa2($sp)
/* AC6110 8004EF70 87B800A0 */  lh    $t8, 0xa0($sp)
/* AC6114 8004EF74 3C048016 */  lui   $a0, %hi(D_8015BD70) # $a0, 0x8016
/* AC6118 8004EF78 A7A800BC */  sh    $t0, 0xbc($sp)
/* AC611C 8004EF7C A7B800BE */  sh    $t8, 0xbe($sp)
/* AC6120 8004EF80 C6260004 */  lwc1  $f6, 4($s1)
/* AC6124 8004EF84 3C058016 */  lui   $a1, %hi(D_8015BD50) # $a1, 0x8016
/* AC6128 8004EF88 24A5BD50 */  addiu $a1, %lo(D_8015BD50) # addiu $a1, $a1, -0x42b0
/* AC612C 8004EF8C 2484BD70 */  addiu $a0, %lo(D_8015BD70) # addiu $a0, $a0, -0x4290
/* AC6130 8004EF90 27A600B8 */  addiu $a2, $sp, 0xb8
/* AC6134 8004EF94 0C010F0A */  jal   func_80043C28
/* AC6138 8004EF98 E7A600B8 */   swc1  $f6, 0xb8($sp)
/* AC613C 8004EF9C 862A001C */  lh    $t2, 0x1c($s1)
/* AC6140 8004EFA0 240C000E */  li    $t4, 14
/* AC6144 8004EFA4 314B0001 */  andi  $t3, $t2, 1
/* AC6148 8004EFA8 5560003A */  bnezl $t3, .L8004F094
/* AC614C 8004EFAC 8FA20034 */   lw    $v0, 0x34($sp)
/* AC6150 8004EFB0 A7AC0082 */  sh    $t4, 0x82($sp)
/* AC6154 8004EFB4 AFA0007C */  sw    $zero, 0x7c($sp)
.L8004EFB8:
/* AC6158 8004EFB8 8E30008C */  lw    $s0, 0x8c($s1)
/* AC615C 8004EFBC 87AF009C */  lh    $t7, 0x9c($sp)
/* AC6160 8004EFC0 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* AC6164 8004EFC4 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* AC6168 8004EFC8 3C068016 */  lui   $a2, %hi(D_8015BD50) # $a2, 0x8016
/* AC616C 8004EFCC 3C078016 */  lui   $a3, %hi(D_8015BD70) # $a3, 0x8016
/* AC6170 8004EFD0 27AE00CC */  addiu $t6, $sp, 0xcc
/* AC6174 8004EFD4 AFAE0010 */  sw    $t6, 0x10($sp)
/* AC6178 8004EFD8 24E7BD70 */  addiu $a3, %lo(D_8015BD70) # addiu $a3, $a3, -0x4290
/* AC617C 8004EFDC 24C6BD50 */  addiu $a2, %lo(D_8015BD50) # addiu $a2, $a2, -0x42b0
/* AC6180 8004EFE0 02012821 */  addu  $a1, $s0, $at
/* AC6184 8004EFE4 02002025 */  move  $a0, $s0
/* AC6188 8004EFE8 0C0189AC */  jal   func_800626B0
/* AC618C 8004EFEC AFAF0014 */   sw    $t7, 0x14($sp)
/* AC6190 8004EFF0 14400008 */  bnez  $v0, .L8004F014
/* AC6194 8004EFF4 02202025 */   move  $a0, $s1
/* AC6198 8004EFF8 3C058016 */  lui   $a1, %hi(D_8015BD50) # $a1, 0x8016
/* AC619C 8004EFFC 3C068016 */  lui   $a2, %hi(D_8015BD70) # $a2, 0x8016
/* AC61A0 8004F000 24C6BD70 */  addiu $a2, %lo(D_8015BD70) # addiu $a2, $a2, -0x4290
/* AC61A4 8004F004 0C010FCD */  jal   func_80043F34
/* AC61A8 8004F008 24A5BD50 */   addiu $a1, %lo(D_8015BD50) # addiu $a1, $a1, -0x42b0
/* AC61AC 8004F00C 1040001C */  beqz  $v0, .L8004F080
/* AC61B0 8004F010 00000000 */   nop   
.L8004F014:
/* AC61B4 8004F014 8FB0007C */  lw    $s0, 0x7c($sp)
/* AC61B8 8004F018 3C198012 */  lui   $t9, %hi(D_8011D3B0)
/* AC61BC 8004F01C 3C088012 */  lui   $t0, %hi(D_8011D3CC)
/* AC61C0 8004F020 00101040 */  sll   $v0, $s0, 1
/* AC61C4 8004F024 0322C821 */  addu  $t9, $t9, $v0
/* AC61C8 8004F028 01024021 */  addu  $t0, $t0, $v0
/* AC61CC 8004F02C 8739D3B0 */  lh    $t9, %lo(D_8011D3B0)($t9)
/* AC61D0 8004F030 87AD00A0 */  lh    $t5, 0xa0($sp)
/* AC61D4 8004F034 8508D3CC */  lh    $t0, %lo(D_8011D3CC)($t0)
/* AC61D8 8004F038 87B800A2 */  lh    $t8, 0xa2($sp)
/* AC61DC 8004F03C 3C048016 */  lui   $a0, %hi(D_8015BD70) # $a0, 0x8016
/* AC61E0 8004F040 3C058016 */  lui   $a1, %hi(D_8015BD50)
/* AC61E4 8004F044 032D4821 */  addu  $t1, $t9, $t5
/* AC61E8 8004F048 01185021 */  addu  $t2, $t0, $t8
/* AC61EC 8004F04C A7A900BE */  sh    $t1, 0xbe($sp)
/* AC61F0 8004F050 A7AA00BC */  sh    $t2, 0xbc($sp)
/* AC61F4 8004F054 24A5BD50 */  addiu $a1, %lo(D_8015BD50) # addiu $a1, $a1, -0x42b0
/* AC61F8 8004F058 2484BD70 */  addiu $a0, %lo(D_8015BD70) # addiu $a0, $a0, -0x4290
/* AC61FC 8004F05C 0C010F0A */  jal   func_80043C28
/* AC6200 8004F060 27A600B8 */   addiu $a2, $sp, 0xb8
/* AC6204 8004F064 8FB0007C */  lw    $s0, 0x7c($sp)
/* AC6208 8004F068 87AB0082 */  lh    $t3, 0x82($sp)
/* AC620C 8004F06C 26100001 */  addiu $s0, $s0, 1
/* AC6210 8004F070 020B082A */  slt   $at, $s0, $t3
/* AC6214 8004F074 1420FFD0 */  bnez  $at, .L8004EFB8
/* AC6218 8004F078 AFB0007C */   sw    $s0, 0x7c($sp)
/* AC621C 8004F07C AFB0007C */  sw    $s0, 0x7c($sp)
.L8004F080:
/* AC6220 8004F080 3C048014 */  lui   $a0, %hi(D_8013935C)
/* AC6224 8004F084 8FA5007C */  lw    $a1, 0x7c($sp)
/* AC6228 8004F088 0C00084C */  jal   osSyncPrintf
/* AC622C 8004F08C 2484935C */   addiu $a0, %lo(D_8013935C) # addiu $a0, $a0, -0x6ca4
/* AC6230 8004F090 8FA20034 */  lw    $v0, 0x34($sp)
.L8004F094:
/* AC6234 8004F094 87AE00BC */  lh    $t6, 0xbc($sp)
/* AC6238 8004F098 87AF00AC */  lh    $t7, 0xac($sp)
/* AC623C 8004F09C 844C0010 */  lh    $t4, 0x10($v0)
/* AC6240 8004F0A0 01CFC823 */  subu  $t9, $t6, $t7
/* AC6244 8004F0A4 00196C00 */  sll   $t5, $t9, 0x10
/* AC6248 8004F0A8 000D4C03 */  sra   $t1, $t5, 0x10
/* AC624C 8004F0AC 44894000 */  mtc1  $t1, $f8
/* AC6250 8004F0B0 448C2000 */  mtc1  $t4, $f4
/* AC6254 8004F0B4 24090001 */  li    $t1, 1
/* AC6258 8004F0B8 468042A0 */  cvt.s.w $f10, $f8
/* AC625C 8004F0BC 46802020 */  cvt.s.w $f0, $f4
/* AC6260 8004F0C0 46005183 */  div.s $f6, $f10, $f0
/* AC6264 8004F0C4 E4460004 */  swc1  $f6, 4($v0)
/* AC6268 8004F0C8 87B800AE */  lh    $t8, 0xae($sp)
/* AC626C 8004F0CC 87A800BE */  lh    $t0, 0xbe($sp)
/* AC6270 8004F0D0 01185023 */  subu  $t2, $t0, $t8
/* AC6274 8004F0D4 000A5C00 */  sll   $t3, $t2, 0x10
/* AC6278 8004F0D8 000B6403 */  sra   $t4, $t3, 0x10
/* AC627C 8004F0DC 448C2000 */  mtc1  $t4, $f4
/* AC6280 8004F0E0 00000000 */  nop   
/* AC6284 8004F0E4 46802220 */  cvt.s.w $f8, $f4
/* AC6288 8004F0E8 46004283 */  div.s $f10, $f8, $f0
/* AC628C 8004F0EC E44A0000 */  swc1  $f10, ($v0)
/* AC6290 8004F0F0 87AE00AE */  lh    $t6, 0xae($sp)
/* AC6294 8004F0F4 A44E000C */  sh    $t6, 0xc($v0)
/* AC6298 8004F0F8 87AF00AC */  lh    $t7, 0xac($sp)
/* AC629C 8004F0FC A44F000E */  sh    $t7, 0xe($v0)
/* AC62A0 8004F100 8639015E */  lh    $t9, 0x15e($s1)
/* AC62A4 8004F104 272D0001 */  addiu $t5, $t9, 1
/* AC62A8 8004F108 A62D015E */  sh    $t5, 0x15e($s1)
/* AC62AC 8004F10C 10000006 */  b     .L8004F128
/* AC62B0 8004F110 A4490012 */   sh    $t1, 0x12($v0)
.L8004F114:
/* AC62B4 8004F114 C5060004 */  lwc1  $f6, 4($t0)
/* AC62B8 8004F118 C62400F4 */  lwc1  $f4, 0xf4($s1)
/* AC62BC 8004F11C 8FB80034 */  lw    $t8, 0x34($sp)
/* AC62C0 8004F120 46043201 */  sub.s $f8, $f6, $f4
/* AC62C4 8004F124 E7080008 */  swc1  $f8, 8($t8)
.L8004F128:
/* AC62C8 8004F128 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* AC62CC 8004F12C 44810000 */  mtc1  $at, $f0
/* AC62D0 8004F130 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC62D4 8004F134 44811000 */  mtc1  $at, $f2
/* AC62D8 8004F138 3C013F40 */  li    $at, 0x3F400000 # 0.000000
/* AC62DC 8004F13C 44815000 */  mtc1  $at, $f10
/* AC62E0 8004F140 3C018014 */  lui   $at, %hi(D_8013A15C)
/* AC62E4 8004F144 E62000CC */  swc1  $f0, 0xcc($s1)
/* AC62E8 8004F148 E62000D0 */  swc1  $f0, 0xd0($s1)
/* AC62EC 8004F14C E62A0100 */  swc1  $f10, 0x100($s1)
/* AC62F0 8004F150 C426A15C */  lwc1  $f6, %lo(D_8013A15C)($at)
/* AC62F4 8004F154 3C048016 */  lui   $a0, %hi(D_8015BD50)
/* AC62F8 8004F158 44061000 */  mfc1  $a2, $f2
/* AC62FC 8004F15C 44071000 */  mfc1  $a3, $f2
/* AC6300 8004F160 2484BD50 */  addiu $a0, %lo(D_8015BD50) # addiu $a0, $a0, -0x42b0
/* AC6304 8004F164 8FA50040 */  lw    $a1, 0x40($sp)
/* AC6308 8004F168 0C010E8F */  jal   func_80043A3C
/* AC630C 8004F16C E7A60010 */   swc1  $f6, 0x10($sp)
/* AC6310 8004F170 C6200010 */  lwc1  $f0, 0x10($s1)
/* AC6314 8004F174 44802000 */  mtc1  $zero, $f4
/* AC6318 8004F178 8FA40040 */  lw    $a0, 0x40($sp)
/* AC631C 8004F17C 46002032 */  c.eq.s $f4, $f0
/* AC6320 8004F180 00802825 */  move  $a1, $a0
/* AC6324 8004F184 45030009 */  bc1tl .L8004F1AC
/* AC6328 8004F188 44804000 */   mtc1  $zero, $f8
/* AC632C 8004F18C 8FAA0038 */  lw    $t2, 0x38($sp)
/* AC6330 8004F190 E7A000B8 */  swc1  $f0, 0xb8($sp)
/* AC6334 8004F194 A7A000BC */  sh    $zero, 0xbc($sp)
/* AC6338 8004F198 854B000E */  lh    $t3, 0xe($t2)
/* AC633C 8004F19C 27A600B8 */  addiu $a2, $sp, 0xb8
/* AC6340 8004F1A0 0C010F0A */  jal   func_80043C28
/* AC6344 8004F1A4 A7AB00BE */   sh    $t3, 0xbe($sp)
/* AC6348 8004F1A8 44804000 */  mtc1  $zero, $f8
.L8004F1AC:
/* AC634C 8004F1AC C62C0004 */  lwc1  $f12, 4($s1)
/* AC6350 8004F1B0 C62E00DC */  lwc1  $f14, 0xdc($s1)
/* AC6354 8004F1B4 3C063E80 */  lui   $a2, 0x3e80
/* AC6358 8004F1B8 3C074000 */  lui   $a3, 0x4000
/* AC635C 8004F1BC 0C010E27 */  jal   func_8004389C
/* AC6360 8004F1C0 E6280100 */   swc1  $f8, 0x100($s1)
/* AC6364 8004F1C4 8FA30034 */  lw    $v1, 0x34($sp)
/* AC6368 8004F1C8 E62000DC */  swc1  $f0, 0xdc($s1)
/* AC636C 8004F1CC E7A000B8 */  swc1  $f0, 0xb8($sp)
/* AC6370 8004F1D0 846C0010 */  lh    $t4, 0x10($v1)
/* AC6374 8004F1D4 51800015 */  beql  $t4, $zero, .L8004F22C
/* AC6378 8004F1D8 8638001C */   lh    $t8, 0x1c($s1)
/* AC637C 8004F1DC 862E014C */  lh    $t6, 0x14c($s1)
/* AC6380 8004F1E0 35CF0020 */  ori   $t7, $t6, 0x20
/* AC6384 8004F1E4 A62F014C */  sh    $t7, 0x14c($s1)
/* AC6388 8004F1E8 C46A0000 */  lwc1  $f10, ($v1)
/* AC638C 8004F1EC C4640004 */  lwc1  $f4, 4($v1)
/* AC6390 8004F1F0 8479000C */  lh    $t9, 0xc($v1)
/* AC6394 8004F1F4 4600518D */  trunc.w.s $f6, $f10
/* AC6398 8004F1F8 846B000E */  lh    $t3, 0xe($v1)
/* AC639C 8004F1FC 84680010 */  lh    $t0, 0x10($v1)
/* AC63A0 8004F200 4600220D */  trunc.w.s $f8, $f4
/* AC63A4 8004F204 44183000 */  mfc1  $t8, $f6
/* AC63A8 8004F208 440D4000 */  mfc1  $t5, $f8
/* AC63AC 8004F20C 03385021 */  addu  $t2, $t9, $t8
/* AC63B0 8004F210 2519FFFF */  addiu $t9, $t0, -1
/* AC63B4 8004F214 016D4821 */  addu  $t1, $t3, $t5
/* AC63B8 8004F218 A46A000C */  sh    $t2, 0xc($v1)
/* AC63BC 8004F21C A469000E */  sh    $t1, 0xe($v1)
/* AC63C0 8004F220 10000033 */  b     .L8004F2F0
/* AC63C4 8004F224 A4790010 */   sh    $t9, 0x10($v1)
/* AC63C8 8004F228 8638001C */  lh    $t8, 0x1c($s1)
.L8004F22C:
/* AC63CC 8004F22C 330A0010 */  andi  $t2, $t8, 0x10
/* AC63D0 8004F230 51400010 */  beql  $t2, $zero, .L8004F274
/* AC63D4 8004F234 8639014C */   lh    $t9, 0x14c($s1)
/* AC63D8 8004F238 862C014C */  lh    $t4, 0x14c($s1)
/* AC63DC 8004F23C 86220160 */  lh    $v0, 0x160($s1)
/* AC63E0 8004F240 358E0410 */  ori   $t6, $t4, 0x410
/* AC63E4 8004F244 A62E014C */  sh    $t6, 0x14c($s1)
/* AC63E8 8004F248 862F014C */  lh    $t7, 0x14c($s1)
/* AC63EC 8004F24C 2448FFFF */  addiu $t0, $v0, -1
/* AC63F0 8004F250 35EB0006 */  ori   $t3, $t7, 6
/* AC63F4 8004F254 A62B014C */  sh    $t3, 0x14c($s1)
/* AC63F8 8004F258 862D014C */  lh    $t5, 0x14c($s1)
/* AC63FC 8004F25C 31A9FFF7 */  andi  $t1, $t5, 0xfff7
/* AC6400 8004F260 18400023 */  blez  $v0, .L8004F2F0
/* AC6404 8004F264 A629014C */   sh    $t1, 0x14c($s1)
/* AC6408 8004F268 10000021 */  b     .L8004F2F0
/* AC640C 8004F26C A6280160 */   sh    $t0, 0x160($s1)
/* AC6410 8004F270 8639014C */  lh    $t9, 0x14c($s1)
.L8004F274:
/* AC6414 8004F274 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC6418 8004F278 37380410 */  ori   $t8, $t9, 0x410
/* AC641C 8004F27C A638014C */  sh    $t8, 0x14c($s1)
/* AC6420 8004F280 862A014C */  lh    $t2, 0x14c($s1)
/* AC6424 8004F284 314C0008 */  andi  $t4, $t2, 8
/* AC6428 8004F288 15800005 */  bnez  $t4, .L8004F2A0
/* AC642C 8004F28C 00000000 */   nop   
/* AC6430 8004F290 862E001C */  lh    $t6, 0x1c($s1)
/* AC6434 8004F294 31CF0080 */  andi  $t7, $t6, 0x80
/* AC6438 8004F298 51E00016 */  beql  $t7, $zero, .L8004F2F4
/* AC643C 8004F29C 8464000C */   lh    $a0, 0xc($v1)
.L8004F2A0:
/* AC6440 8004F2A0 AC20D3A0 */  sw    $zero, %lo(D_8011D3A0)($at)
/* AC6444 8004F2A4 862B014C */  lh    $t3, 0x14c($s1)
/* AC6448 8004F2A8 86250166 */  lh    $a1, 0x166($s1)
/* AC644C 8004F2AC 02202025 */  move  $a0, $s1
/* AC6450 8004F2B0 356D0006 */  ori   $t5, $t3, 6
/* AC6454 8004F2B4 A62D014C */  sh    $t5, 0x14c($s1)
/* AC6458 8004F2B8 8629014C */  lh    $t1, 0x14c($s1)
/* AC645C 8004F2BC 24060002 */  li    $a2, 2
/* AC6460 8004F2C0 3128FFF7 */  andi  $t0, $t1, 0xfff7
/* AC6464 8004F2C4 04A10005 */  bgez  $a1, .L8004F2DC
/* AC6468 8004F2C8 A628014C */   sh    $t0, 0x14c($s1)
/* AC646C 8004F2CC 0C016952 */  jal   func_8005A548
/* AC6470 8004F2D0 86250154 */   lh    $a1, 0x154($s1)
/* AC6474 8004F2D4 10000006 */  b     .L8004F2F0
/* AC6478 8004F2D8 8FA30034 */   lw    $v1, 0x34($sp)
.L8004F2DC:
/* AC647C 8004F2DC 0C0169EA */  jal   func_8005A7A8
/* AC6480 8004F2E0 02202025 */   move  $a0, $s1
/* AC6484 8004F2E4 2419FFFF */  li    $t9, -1
/* AC6488 8004F2E8 A6390166 */  sh    $t9, 0x166($s1)
/* AC648C 8004F2EC 8FA30034 */  lw    $v1, 0x34($sp)
.L8004F2F0:
/* AC6490 8004F2F0 8464000C */  lh    $a0, 0xc($v1)
.L8004F2F4:
/* AC6494 8004F2F4 87A500AE */  lh    $a1, 0xae($sp)
/* AC6498 8004F2F8 8E260014 */  lw    $a2, 0x14($s1)
/* AC649C 8004F2FC 0C010E47 */  jal   func_8004391C
/* AC64A0 8004F300 24070004 */   li    $a3, 4
/* AC64A4 8004F304 8FB80034 */  lw    $t8, 0x34($sp)
/* AC64A8 8004F308 A7A200BE */  sh    $v0, 0xbe($sp)
/* AC64AC 8004F30C 8E260014 */  lw    $a2, 0x14($s1)
/* AC64B0 8004F310 87A500AC */  lh    $a1, 0xac($sp)
/* AC64B4 8004F314 24070004 */  li    $a3, 4
/* AC64B8 8004F318 0C010E47 */  jal   func_8004391C
/* AC64BC 8004F31C 8704000E */   lh    $a0, 0xe($t8)
/* AC64C0 8004F320 A7A200BC */  sh    $v0, 0xbc($sp)
/* AC64C4 8004F324 8FA4003C */  lw    $a0, 0x3c($sp)
/* AC64C8 8004F328 8FA50040 */  lw    $a1, 0x40($sp)
/* AC64CC 8004F32C 0C010F0A */  jal   func_80043C28
/* AC64D0 8004F330 27A600B8 */   addiu $a2, $sp, 0xb8
/* AC64D4 8004F334 8FAA003C */  lw    $t2, 0x3c($sp)
/* AC64D8 8004F338 8FA60044 */  lw    $a2, 0x44($sp)
/* AC64DC 8004F33C 02202025 */  move  $a0, $s1
/* AC64E0 8004F340 8D4E0000 */  lw    $t6, ($t2)
/* AC64E4 8004F344 ACCE0000 */  sw    $t6, ($a2)
/* AC64E8 8004F348 8D4C0004 */  lw    $t4, 4($t2)
/* AC64EC 8004F34C ACCC0004 */  sw    $t4, 4($a2)
/* AC64F0 8004F350 8D4E0008 */  lw    $t6, 8($t2)
/* AC64F4 8004F354 ACCE0008 */  sw    $t6, 8($a2)
/* AC64F8 8004F358 0C010FCD */  jal   func_80043F34
/* AC64FC 8004F35C 8FA50040 */   lw    $a1, 0x40($sp)
/* AC6500 8004F360 C62C0018 */  lwc1  $f12, 0x18($s1)
/* AC6504 8004F364 C62E00FC */  lwc1  $f14, 0xfc($s1)
/* AC6508 8004F368 8E2600D4 */  lw    $a2, 0xd4($s1)
/* AC650C 8004F36C 0C010E27 */  jal   func_8004389C
/* AC6510 8004F370 3C073F80 */   lui   $a3, 0x3f80
/* AC6514 8004F374 E62000FC */  swc1  $f0, 0xfc($s1)
/* AC6518 8004F378 00002025 */  move  $a0, $zero
/* AC651C 8004F37C 8625015A */  lh    $a1, 0x15a($s1)
/* AC6520 8004F380 3C063F00 */  lui   $a2, 0x3f00
/* AC6524 8004F384 0C010E47 */  jal   func_8004391C
/* AC6528 8004F388 2407000A */   li    $a3, 10
/* AC652C 8004F38C A622015A */  sh    $v0, 0x15a($s1)
.L8004F390:
/* AC6530 8004F390 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC6534 8004F394 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC6538 8004F398 8FB10020 */  lw    $s1, 0x20($sp)
/* AC653C 8004F39C 03E00008 */  jr    $ra
/* AC6540 8004F3A0 27BD00E0 */   addiu $sp, $sp, 0xe0
# SPLIT
/* AC6544 8004F3A4 27BDFF90 */  addiu $sp, $sp, -0x70
/* AC6548 8004F3A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC654C 8004F3AC AFB00018 */  sw    $s0, 0x18($sp)
/* AC6550 8004F3B0 848E014C */  lh    $t6, 0x14c($a0)
/* AC6554 8004F3B4 8483015E */  lh    $v1, 0x15e($a0)
/* AC6558 8004F3B8 00808025 */  move  $s0, $a0
/* AC655C 8004F3BC 31CFFFEF */  andi  $t7, $t6, 0xffef
/* AC6560 8004F3C0 1060000A */  beqz  $v1, .L8004F3EC
/* AC6564 8004F3C4 A48F014C */   sh    $t7, 0x14c($a0)
/* AC6568 8004F3C8 2401000A */  li    $at, 10
/* AC656C 8004F3CC 10610007 */  beq   $v1, $at, .L8004F3EC
/* AC6570 8004F3D0 24010014 */   li    $at, 20
/* AC6574 8004F3D4 10610005 */  beq   $v1, $at, .L8004F3EC
/* AC6578 8004F3D8 3C188016 */   lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC657C 8004F3DC 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC6580 8004F3E0 87030314 */  lh    $v1, 0x314($t8)
/* AC6584 8004F3E4 10600022 */  beqz  $v1, .L8004F470
/* AC6588 8004F3E8 00000000 */   nop   
.L8004F3EC:
/* AC658C 8004F3EC 86190142 */  lh    $t9, 0x142($s0)
/* AC6590 8004F3F0 3C0A8012 */  lui   $t2, %hi(D_8011D068)
/* AC6594 8004F3F4 860B0144 */  lh    $t3, 0x144($s0)
/* AC6598 8004F3F8 001948C0 */  sll   $t1, $t9, 3
/* AC659C 8004F3FC 01495021 */  addu  $t2, $t2, $t1
/* AC65A0 8004F400 8D4AD068 */  lw    $t2, %lo(D_8011D068)($t2)
/* AC65A4 8004F404 000B60C0 */  sll   $t4, $t3, 3
/* AC65A8 8004F408 3C018014 */  lui   $at, %hi(D_8013A160)
/* AC65AC 8004F40C 014C6821 */  addu  $t5, $t2, $t4
/* AC65B0 8004F410 8DA20004 */  lw    $v0, 4($t5)
/* AC65B4 8004F414 C428A160 */  lwc1  $f8, %lo(D_8013A160)($at)
/* AC65B8 8004F418 3C018014 */  lui   $at, %hi(D_8013A164)
/* AC65BC 8004F41C 844E0000 */  lh    $t6, ($v0)
/* AC65C0 8004F420 3C098016 */  lui   $t1, %hi(gGameInfo)
/* AC65C4 8004F424 2442000C */  addiu $v0, $v0, 0xc
/* AC65C8 8004F428 448E2000 */  mtc1  $t6, $f4
/* AC65CC 8004F42C 00000000 */  nop   
/* AC65D0 8004F430 468021A0 */  cvt.s.w $f6, $f4
/* AC65D4 8004F434 46083282 */  mul.s $f10, $f6, $f8
/* AC65D8 8004F438 E60A0000 */  swc1  $f10, ($s0)
/* AC65DC 8004F43C 844FFFF8 */  lh    $t7, -8($v0)
/* AC65E0 8004F440 C424A164 */  lwc1  $f4, %lo(D_8013A164)($at)
/* AC65E4 8004F444 448F8000 */  mtc1  $t7, $f16
/* AC65E8 8004F448 00000000 */  nop   
/* AC65EC 8004F44C 468084A0 */  cvt.s.w $f18, $f16
/* AC65F0 8004F450 46049182 */  mul.s $f6, $f18, $f4
/* AC65F4 8004F454 E6060004 */  swc1  $f6, 4($s0)
/* AC65F8 8004F458 8458FFFC */  lh    $t8, -4($v0)
/* AC65FC 8004F45C A6180008 */  sh    $t8, 8($s0)
/* AC6600 8004F460 84590000 */  lh    $t9, ($v0)
/* AC6604 8004F464 A619000A */  sh    $t9, 0xa($s0)
/* AC6608 8004F468 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC660C 8004F46C 85230314 */  lh    $v1, 0x314($t1)
.L8004F470:
/* AC6610 8004F470 10600003 */  beqz  $v1, .L8004F480
/* AC6614 8004F474 00000000 */   nop   
/* AC6618 8004F478 0C011495 */  jal   func_80045254
/* AC661C 8004F47C 02002025 */   move  $a0, $s0
.L8004F480:
/* AC6620 8004F480 0C0111DB */  jal   func_8004476C
/* AC6624 8004F484 02002025 */   move  $a0, $s0
/* AC6628 8004F488 26040074 */  addiu $a0, $s0, 0x74
/* AC662C 8004F48C AFA4002C */  sw    $a0, 0x2c($sp)
/* AC6630 8004F490 00402825 */  move  $a1, $v0
/* AC6634 8004F494 0C010EF1 */  jal   func_80043BC4
/* AC6638 8004F498 AFA20044 */   sw    $v0, 0x44($sp)
/* AC663C 8004F49C 8FA4002C */  lw    $a0, 0x2c($sp)
/* AC6640 8004F4A0 8FA30044 */  lw    $v1, 0x44($sp)
/* AC6644 8004F4A4 2606005C */  addiu $a2, $s0, 0x5c
/* AC6648 8004F4A8 8C8A0000 */  lw    $t2, ($a0)
/* AC664C 8004F4AC 27AC003C */  addiu $t4, $sp, 0x3c
/* AC6650 8004F4B0 2401FFFF */  li    $at, -1
/* AC6654 8004F4B4 ACCA0000 */  sw    $t2, ($a2)
/* AC6658 8004F4B8 8C8B0004 */  lw    $t3, 4($a0)
/* AC665C 8004F4BC ACCB0004 */  sw    $t3, 4($a2)
/* AC6660 8004F4C0 8C8A0008 */  lw    $t2, 8($a0)
/* AC6664 8004F4C4 ACCA0008 */  sw    $t2, 8($a2)
/* AC6668 8004F4C8 886E0006 */  lwl   $t6, 6($v1)
/* AC666C 8004F4CC 986E0009 */  lwr   $t6, 9($v1)
/* AC6670 8004F4D0 AD8E0000 */  sw    $t6, ($t4)
/* AC6674 8004F4D4 946E000A */  lhu   $t6, 0xa($v1)
/* AC6678 8004F4D8 A58E0004 */  sh    $t6, 4($t4)
/* AC667C 8004F4DC 8467000C */  lh    $a3, 0xc($v1)
/* AC6680 8004F4E0 54E10003 */  bnel  $a3, $at, .L8004F4F0
/* AC6684 8004F4E4 8E0500A8 */   lw    $a1, 0xa8($s0)
/* AC6688 8004F4E8 24071770 */  li    $a3, 6000
/* AC668C 8004F4EC 8E0500A8 */  lw    $a1, 0xa8($s0)
.L8004F4F0:
/* AC6690 8004F4F0 10A00005 */  beqz  $a1, .L8004F508
/* AC6694 8004F4F4 00000000 */   nop   
/* AC6698 8004F4F8 8CAF0130 */  lw    $t7, 0x130($a1)
/* AC669C 8004F4FC 260400AC */  addiu $a0, $s0, 0xac
/* AC66A0 8004F500 55E0000C */  bnezl $t7, .L8004F534
/* AC66A4 8004F504 AFA40028 */   sw    $a0, 0x28($sp)
.L8004F508:
/* AC66A8 8004F508 14A00003 */  bnez  $a1, .L8004F518
/* AC66AC 8004F50C 3C048014 */   lui   $a0, %hi(D_8013938C) # $a0, 0x8014
/* AC66B0 8004F510 0C00084C */  jal   osSyncPrintf
/* AC66B4 8004F514 2484938C */   addiu $a0, %lo(D_8013938C) # addiu $a0, $a0, -0x6c74
.L8004F518:
/* AC66B8 8004F518 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC66BC 8004F51C 02002025 */  move  $a0, $s0
/* AC66C0 8004F520 0C016911 */  jal   func_8005A444
/* AC66C4 8004F524 00002825 */   move  $a1, $zero
/* AC66C8 8004F528 10000059 */  b     .L8004F690
/* AC66CC 8004F52C 24020001 */   li    $v0, 1
/* AC66D0 8004F530 AFA40028 */  sw    $a0, 0x28($sp)
.L8004F534:
/* AC66D4 8004F534 AFA60030 */  sw    $a2, 0x30($sp)
/* AC66D8 8004F538 0C00BBB9 */  jal   func_8002EEE4
/* AC66DC 8004F53C A7A7003A */   sh    $a3, 0x3a($sp)
/* AC66E0 8004F540 26060050 */  addiu $a2, $s0, 0x50
/* AC66E4 8004F544 AFA6002C */  sw    $a2, 0x2c($sp)
/* AC66E8 8004F548 27A40054 */  addiu $a0, $sp, 0x54
/* AC66EC 8004F54C 0C01F124 */  jal   func_8007C490
/* AC66F0 8004F550 8FA50030 */   lw    $a1, 0x30($sp)
/* AC66F4 8004F554 27A4005C */  addiu $a0, $sp, 0x5c
/* AC66F8 8004F558 8FA50030 */  lw    $a1, 0x30($sp)
/* AC66FC 8004F55C 0C01F124 */  jal   func_8007C490
/* AC6700 8004F560 8FA60028 */   lw    $a2, 0x28($sp)
/* AC6704 8004F564 8618000A */  lh    $t8, 0xa($s0)
/* AC6708 8004F568 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC670C 8004F56C 87A7003A */  lh    $a3, 0x3a($sp)
/* AC6710 8004F570 AC38D3A0 */  sw    $t8, %lo(D_8011D3A0)($at)
/* AC6714 8004F574 8603015E */  lh    $v1, 0x15e($s0)
/* AC6718 8004F578 54600015 */  bnezl $v1, .L8004F5D0
/* AC671C 8004F57C 2608000C */   addiu $t0, $s0, 0xc
/* AC6720 8004F580 44874000 */  mtc1  $a3, $f8
/* AC6724 8004F584 24790001 */  addiu $t9, $v1, 1
/* AC6728 8004F588 A619015E */  sh    $t9, 0x15e($s0)
/* AC672C 8004F58C 468042A0 */  cvt.s.w $f10, $f8
/* AC6730 8004F590 3C018014 */  lui   $at, %hi(D_8013A168)
/* AC6734 8004F594 C430A168 */  lwc1  $f16, %lo(D_8013A168)($at)
/* AC6738 8004F598 44802000 */  mtc1  $zero, $f4
/* AC673C 8004F59C 86090008 */  lh    $t1, 8($s0)
/* AC6740 8004F5A0 A600015A */  sh    $zero, 0x15a($s0)
/* AC6744 8004F5A4 46105482 */  mul.s $f18, $f10, $f16
/* AC6748 8004F5A8 2608000C */  addiu $t0, $s0, 0xc
/* AC674C 8004F5AC E6040100 */  swc1  $f4, 0x100($s0)
/* AC6750 8004F5B0 E61200FC */  swc1  $f18, 0xfc($s0)
/* AC6754 8004F5B4 A5090004 */  sh    $t1, 4($t0)
/* AC6758 8004F5B8 C6060000 */  lwc1  $f6, ($s0)
/* AC675C 8004F5BC C60000FC */  lwc1  $f0, 0xfc($s0)
/* AC6760 8004F5C0 46060202 */  mul.s $f8, $f0, $f6
/* AC6764 8004F5C4 46080281 */  sub.s $f10, $f0, $f8
/* AC6768 8004F5C8 E50A0000 */  swc1  $f10, ($t0)
/* AC676C 8004F5CC 2608000C */  addiu $t0, $s0, 0xc
.L8004F5D0:
/* AC6770 8004F5D0 85020004 */  lh    $v0, 4($t0)
/* AC6774 8004F5D4 87AB0062 */  lh    $t3, 0x62($sp)
/* AC6778 8004F5D8 87AA005A */  lh    $t2, 0x5a($sp)
/* AC677C 8004F5DC 10400022 */  beqz  $v0, .L8004F668
/* AC6780 8004F5E0 016A6023 */   subu  $t4, $t3, $t2
/* AC6784 8004F5E4 000C6C00 */  sll   $t5, $t4, 0x10
/* AC6788 8004F5E8 000D7403 */  sra   $t6, $t5, 0x10
/* AC678C 8004F5EC 01C2001A */  div   $zero, $t6, $v0
/* AC6790 8004F5F0 00007812 */  mflo  $t7
/* AC6794 8004F5F4 448F8000 */  mtc1  $t7, $f16
/* AC6798 8004F5F8 C6040004 */  lwc1  $f4, 4($s0)
/* AC679C 8004F5FC 448A4000 */  mtc1  $t2, $f8
/* AC67A0 8004F600 468084A0 */  cvt.s.w $f18, $f16
/* AC67A4 8004F604 14400002 */  bnez  $v0, .L8004F610
/* AC67A8 8004F608 00000000 */   nop   
/* AC67AC 8004F60C 0007000D */  break 7
.L8004F610:
/* AC67B0 8004F610 2401FFFF */  li    $at, -1
/* AC67B4 8004F614 14410004 */  bne   $v0, $at, .L8004F628
/* AC67B8 8004F618 3C018000 */   lui   $at, 0x8000
/* AC67BC 8004F61C 15C10002 */  bne   $t6, $at, .L8004F628
/* AC67C0 8004F620 00000000 */   nop   
/* AC67C4 8004F624 0006000D */  break 6
.L8004F628:
/* AC67C8 8004F628 46049182 */  mul.s $f6, $f18, $f4
/* AC67CC 8004F62C AFA80028 */  sw    $t0, 0x28($sp)
/* AC67D0 8004F630 8FA4002C */  lw    $a0, 0x2c($sp)
/* AC67D4 8004F634 8FA50030 */  lw    $a1, 0x30($sp)
/* AC67D8 8004F638 27A60054 */  addiu $a2, $sp, 0x54
/* AC67DC 8004F63C 468042A0 */  cvt.s.w $f10, $f8
/* AC67E0 8004F640 46065400 */  add.s $f16, $f10, $f6
/* AC67E4 8004F644 4600848D */  trunc.w.s $f18, $f16
/* AC67E8 8004F648 44199000 */  mfc1  $t9, $f18
/* AC67EC 8004F64C 0C010F0A */  jal   func_80043C28
/* AC67F0 8004F650 A7B9005A */   sh    $t9, 0x5a($sp)
/* AC67F4 8004F654 8FA80028 */  lw    $t0, 0x28($sp)
/* AC67F8 8004F658 85090004 */  lh    $t1, 4($t0)
/* AC67FC 8004F65C 252BFFFF */  addiu $t3, $t1, -1
/* AC6800 8004F660 10000004 */  b     .L8004F674
/* AC6804 8004F664 A50B0004 */   sh    $t3, 4($t0)
.L8004F668:
/* AC6808 8004F668 860C014C */  lh    $t4, 0x14c($s0)
/* AC680C 8004F66C 358D0410 */  ori   $t5, $t4, 0x410
/* AC6810 8004F670 A60D014C */  sh    $t5, 0x14c($s0)
.L8004F674:
/* AC6814 8004F674 C50C0000 */  lwc1  $f12, ($t0)
/* AC6818 8004F678 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC681C 8004F67C 3C063F00 */  lui   $a2, 0x3f00
/* AC6820 8004F680 0C010E27 */  jal   func_8004389C
/* AC6824 8004F684 3C074120 */   lui   $a3, 0x4120
/* AC6828 8004F688 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC682C 8004F68C 24020001 */  li    $v0, 1
.L8004F690:
/* AC6830 8004F690 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC6834 8004F694 8FB00018 */  lw    $s0, 0x18($sp)
/* AC6838 8004F698 27BD0070 */  addiu $sp, $sp, 0x70
/* AC683C 8004F69C 03E00008 */  jr    $ra
/* AC6840 8004F6A0 00000000 */   nop   
# SPLIT
/* AC6844 8004F6A4 27BDFF80 */  addiu $sp, $sp, -0x80
/* AC6848 8004F6A8 AFB0001C */  sw    $s0, 0x1c($sp)
/* AC684C 8004F6AC 00808025 */  move  $s0, $a0
/* AC6850 8004F6B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC6854 8004F6B4 AFB10020 */  sw    $s1, 0x20($sp)
/* AC6858 8004F6B8 0C00B721 */  jal   func_8002DC84
/* AC685C 8004F6BC 8C840090 */   lw    $a0, 0x90($a0)
/* AC6860 8004F6C0 E7A00040 */  swc1  $f0, 0x40($sp)
/* AC6864 8004F6C4 8602015E */  lh    $v0, 0x15e($s0)
/* AC6868 8004F6C8 10400009 */  beqz  $v0, .L8004F6F0
/* AC686C 8004F6CC 2401000A */   li    $at, 10
/* AC6870 8004F6D0 10410007 */  beq   $v0, $at, .L8004F6F0
/* AC6874 8004F6D4 24010014 */   li    $at, 20
/* AC6878 8004F6D8 10410005 */  beq   $v0, $at, .L8004F6F0
/* AC687C 8004F6DC 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC6880 8004F6E0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC6884 8004F6E4 85C40314 */  lh    $a0, 0x314($t6)
/* AC6888 8004F6E8 10800039 */  beqz  $a0, .L8004F7D0
/* AC688C 8004F6EC 00000000 */   nop   
.L8004F6F0:
/* AC6890 8004F6F0 860F0142 */  lh    $t7, 0x142($s0)
/* AC6894 8004F6F4 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC6898 8004F6F8 86080144 */  lh    $t0, 0x144($s0)
/* AC689C 8004F6FC 000FC0C0 */  sll   $t8, $t7, 3
/* AC68A0 8004F700 0338C821 */  addu  $t9, $t9, $t8
/* AC68A4 8004F704 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC68A8 8004F708 000848C0 */  sll   $t1, $t0, 3
/* AC68AC 8004F70C 02002025 */  move  $a0, $s0
/* AC68B0 8004F710 03295021 */  addu  $t2, $t9, $t1
/* AC68B4 8004F714 8D430004 */  lw    $v1, 4($t2)
/* AC68B8 8004F718 0C0111DB */  jal   func_8004476C
/* AC68BC 8004F71C AFA3003C */   sw    $v1, 0x3c($sp)
/* AC68C0 8004F720 26110010 */  addiu $s1, $s0, 0x10
/* AC68C4 8004F724 02202025 */  move  $a0, $s1
/* AC68C8 8004F728 00402825 */  move  $a1, $v0
/* AC68CC 8004F72C 0C010EF1 */  jal   func_80043BC4
/* AC68D0 8004F730 AFA20050 */   sw    $v0, 0x50($sp)
/* AC68D4 8004F734 8FA60050 */  lw    $a2, 0x50($sp)
/* AC68D8 8004F738 8FA3003C */  lw    $v1, 0x3c($sp)
/* AC68DC 8004F73C 3C018014 */  lui   $at, %hi(D_8013A16C)
/* AC68E0 8004F740 88CC0006 */  lwl   $t4, 6($a2)
/* AC68E4 8004F744 98CC0009 */  lwr   $t4, 9($a2)
/* AC68E8 8004F748 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC68EC 8004F74C 2463000C */  addiu $v1, $v1, 0xc
/* AC68F0 8004F750 AA2C000C */  swl   $t4, 0xc($s1)
/* AC68F4 8004F754 BA2C000F */  swr   $t4, 0xf($s1)
/* AC68F8 8004F758 94CC000A */  lhu   $t4, 0xa($a2)
/* AC68FC 8004F75C A62C0010 */  sh    $t4, 0x10($s1)
/* AC6900 8004F760 84CD000C */  lh    $t5, 0xc($a2)
/* AC6904 8004F764 A62D0014 */  sh    $t5, 0x14($s1)
/* AC6908 8004F768 846EFFF4 */  lh    $t6, -0xc($v1)
/* AC690C 8004F76C C428A16C */  lwc1  $f8, %lo(D_8013A16C)($at)
/* AC6910 8004F770 C7B00040 */  lwc1  $f16, 0x40($sp)
/* AC6914 8004F774 448E2000 */  mtc1  $t6, $f4
/* AC6918 8004F778 3C018014 */  lui   $at, %hi(D_8013A170)
/* AC691C 8004F77C 468021A0 */  cvt.s.w $f6, $f4
/* AC6920 8004F780 46083282 */  mul.s $f10, $f6, $f8
/* AC6924 8004F784 00000000 */  nop   
/* AC6928 8004F788 46105482 */  mul.s $f18, $f10, $f16
/* AC692C 8004F78C E6120000 */  swc1  $f18, ($s0)
/* AC6930 8004F790 846FFFF8 */  lh    $t7, -8($v1)
/* AC6934 8004F794 C428A170 */  lwc1  $f8, %lo(D_8013A170)($at)
/* AC6938 8004F798 448F2000 */  mtc1  $t7, $f4
/* AC693C 8004F79C 00000000 */  nop   
/* AC6940 8004F7A0 468021A0 */  cvt.s.w $f6, $f4
/* AC6944 8004F7A4 46083282 */  mul.s $f10, $f6, $f8
/* AC6948 8004F7A8 E60A0004 */  swc1  $f10, 4($s0)
/* AC694C 8004F7AC 8478FFFC */  lh    $t8, -4($v1)
/* AC6950 8004F7B0 44988000 */  mtc1  $t8, $f16
/* AC6954 8004F7B4 00000000 */  nop   
/* AC6958 8004F7B8 468084A0 */  cvt.s.w $f18, $f16
/* AC695C 8004F7BC E6120008 */  swc1  $f18, 8($s0)
/* AC6960 8004F7C0 84680000 */  lh    $t0, ($v1)
/* AC6964 8004F7C4 A608000C */  sh    $t0, 0xc($s0)
/* AC6968 8004F7C8 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC696C 8004F7CC 87240314 */  lh    $a0, 0x314($t9)
.L8004F7D0:
/* AC6970 8004F7D0 10800003 */  beqz  $a0, .L8004F7E0
/* AC6974 8004F7D4 26110010 */   addiu $s1, $s0, 0x10
/* AC6978 8004F7D8 0C011495 */  jal   func_80045254
/* AC697C 8004F7DC 02002025 */   move  $a0, $s0
.L8004F7E0:
/* AC6980 8004F7E0 86220014 */  lh    $v0, 0x14($s1)
/* AC6984 8004F7E4 2401FFFF */  li    $at, -1
/* AC6988 8004F7E8 14410008 */  bne   $v0, $at, .L8004F80C
/* AC698C 8004F7EC 3C0142C8 */   li    $at, 0x42C80000 # 0.000000
/* AC6990 8004F7F0 44813000 */  mtc1  $at, $f6
/* AC6994 8004F7F4 C6040008 */  lwc1  $f4, 8($s0)
/* AC6998 8004F7F8 46062202 */  mul.s $f8, $f4, $f6
/* AC699C 8004F7FC 4600428D */  trunc.w.s $f10, $f8
/* AC69A0 8004F800 440A5000 */  mfc1  $t2, $f10
/* AC69A4 8004F804 10000009 */  b     .L8004F82C
/* AC69A8 8004F808 A62A0014 */   sh    $t2, 0x14($s1)
.L8004F80C:
/* AC69AC 8004F80C 28410169 */  slti  $at, $v0, 0x169
/* AC69B0 8004F810 10200006 */  beqz  $at, .L8004F82C
/* AC69B4 8004F814 00025880 */   sll   $t3, $v0, 2
/* AC69B8 8004F818 01625823 */  subu  $t3, $t3, $v0
/* AC69BC 8004F81C 000B58C0 */  sll   $t3, $t3, 3
/* AC69C0 8004F820 01625821 */  addu  $t3, $t3, $v0
/* AC69C4 8004F824 000B5880 */  sll   $t3, $t3, 2
/* AC69C8 8004F828 A62B0014 */  sh    $t3, 0x14($s1)
.L8004F82C:
/* AC69CC 8004F82C 860C000C */  lh    $t4, 0xc($s0)
/* AC69D0 8004F830 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC69D4 8004F834 02002025 */  move  $a0, $s0
/* AC69D8 8004F838 AC2CD3A0 */  sw    $t4, %lo(D_8011D3A0)($at)
/* AC69DC 8004F83C 8602015E */  lh    $v0, 0x15e($s0)
/* AC69E0 8004F840 1440000D */  bnez  $v0, .L8004F878
/* AC69E4 8004F844 244D0001 */   addiu $t5, $v0, 1
/* AC69E8 8004F848 0C010ED8 */  jal   func_80043B60
/* AC69EC 8004F84C A60D015E */   sh    $t5, 0x15e($s0)
/* AC69F0 8004F850 86220014 */  lh    $v0, 0x14($s1)
/* AC69F4 8004F854 2401FFFF */  li    $at, -1
/* AC69F8 8004F858 50410008 */  beql  $v0, $at, .L8004F87C
/* AC69FC 8004F85C 2605005C */   addiu $a1, $s0, 0x5c
/* AC6A00 8004F860 44828000 */  mtc1  $v0, $f16
/* AC6A04 8004F864 3C018014 */  lui   $at, %hi(D_8013A174)
/* AC6A08 8004F868 C424A174 */  lwc1  $f4, %lo(D_8013A174)($at)
/* AC6A0C 8004F86C 468084A0 */  cvt.s.w $f18, $f16
/* AC6A10 8004F870 46049182 */  mul.s $f6, $f18, $f4
/* AC6A14 8004F874 E6060008 */  swc1  $f6, 8($s0)
.L8004F878:
/* AC6A18 8004F878 2605005C */  addiu $a1, $s0, 0x5c
.L8004F87C:
/* AC6A1C 8004F87C 26060050 */  addiu $a2, $s0, 0x50
/* AC6A20 8004F880 AFA60030 */  sw    $a2, 0x30($sp)
/* AC6A24 8004F884 AFA50034 */  sw    $a1, 0x34($sp)
/* AC6A28 8004F888 0C01F124 */  jal   func_8007C490
/* AC6A2C 8004F88C 27A40064 */   addiu $a0, $sp, 0x64
/* AC6A30 8004F890 3C018014 */  lui   $at, %hi(D_8013A178)
/* AC6A34 8004F894 C420A178 */  lwc1  $f0, %lo(D_8013A178)($at)
/* AC6A38 8004F898 3C018014 */  lui   $at, %hi(D_8013A17C)
/* AC6A3C 8004F89C C428A17C */  lwc1  $f8, %lo(D_8013A17C)($at)
/* AC6A40 8004F8A0 44060000 */  mfc1  $a2, $f0
/* AC6A44 8004F8A4 44070000 */  mfc1  $a3, $f0
/* AC6A48 8004F8A8 02202025 */  move  $a0, $s1
/* AC6A4C 8004F8AC 8FA50034 */  lw    $a1, 0x34($sp)
/* AC6A50 8004F8B0 0C010E8F */  jal   func_80043A3C
/* AC6A54 8004F8B4 E7A80010 */   swc1  $f8, 0x10($sp)
/* AC6A58 8004F8B8 26020094 */  addiu $v0, $s0, 0x94
/* AC6A5C 8004F8BC 8C4F0000 */  lw    $t7, ($v0)
/* AC6A60 8004F8C0 27A40054 */  addiu $a0, $sp, 0x54
/* AC6A64 8004F8C4 AC8F0000 */  sw    $t7, ($a0)
/* AC6A68 8004F8C8 8C4E0004 */  lw    $t6, 4($v0)
/* AC6A6C 8004F8CC AC8E0004 */  sw    $t6, 4($a0)
/* AC6A70 8004F8D0 8C4F0008 */  lw    $t7, 8($v0)
/* AC6A74 8004F8D4 AC8F0008 */  sw    $t7, 8($a0)
/* AC6A78 8004F8D8 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* AC6A7C 8004F8DC C7B00040 */  lwc1  $f16, 0x40($sp)
/* AC6A80 8004F8E0 AFA2002C */  sw    $v0, 0x2c($sp)
/* AC6A84 8004F8E4 8FA50034 */  lw    $a1, 0x34($sp)
/* AC6A88 8004F8E8 46105480 */  add.s $f18, $f10, $f16
/* AC6A8C 8004F8EC 0C01EFE4 */  jal   func_8007BF90
/* AC6A90 8004F8F0 E7B20058 */   swc1  $f18, 0x58($sp)
/* AC6A94 8004F8F4 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC6A98 8004F8F8 E7A0006C */  swc1  $f0, 0x6c($sp)
/* AC6A9C 8004F8FC 8624000C */  lh    $a0, 0xc($s1)
/* AC6AA0 8004F900 8E060004 */  lw    $a2, 4($s0)
/* AC6AA4 8004F904 87A50068 */  lh    $a1, 0x68($sp)
/* AC6AA8 8004F908 00042023 */  negu  $a0, $a0
/* AC6AAC 8004F90C 00042400 */  sll   $a0, $a0, 0x10
/* AC6AB0 8004F910 00042403 */  sra   $a0, $a0, 0x10
/* AC6AB4 8004F914 0C010E47 */  jal   func_8004391C
/* AC6AB8 8004F918 24070005 */   li    $a3, 5
/* AC6ABC 8004F91C A7A20070 */  sh    $v0, 0x70($sp)
/* AC6AC0 8004F920 8E060004 */  lw    $a2, 4($s0)
/* AC6AC4 8004F924 8624000E */  lh    $a0, 0xe($s1)
/* AC6AC8 8004F928 87A5006A */  lh    $a1, 0x6a($sp)
/* AC6ACC 8004F92C 0C010E47 */  jal   func_8004391C
/* AC6AD0 8004F930 24070005 */   li    $a3, 5
/* AC6AD4 8004F934 A7A20072 */  sh    $v0, 0x72($sp)
/* AC6AD8 8004F938 8FA40030 */  lw    $a0, 0x30($sp)
/* AC6ADC 8004F93C 8FA50034 */  lw    $a1, 0x34($sp)
/* AC6AE0 8004F940 0C010F0A */  jal   func_80043C28
/* AC6AE4 8004F944 27A6006C */   addiu $a2, $sp, 0x6c
/* AC6AE8 8004F948 8FB80034 */  lw    $t8, 0x34($sp)
/* AC6AEC 8004F94C 3C073C23 */  li    $a3, 0x3C230000 # 0.000000
/* AC6AF0 8004F950 34E7D70A */  ori   $a3, (0x3C23D70A & 0xFFFF) # ori $a3, $a3, 0xd70a
/* AC6AF4 8004F954 8F190000 */  lw    $t9, ($t8)
/* AC6AF8 8004F958 C60C0008 */  lwc1  $f12, 8($s0)
/* AC6AFC 8004F95C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC6B00 8004F960 AE190074 */  sw    $t9, 0x74($s0)
/* AC6B04 8004F964 8F080004 */  lw    $t0, 4($t8)
/* AC6B08 8004F968 8E060004 */  lw    $a2, 4($s0)
/* AC6B0C 8004F96C AE080078 */  sw    $t0, 0x78($s0)
/* AC6B10 8004F970 8F190008 */  lw    $t9, 8($t8)
/* AC6B14 8004F974 0C010E27 */  jal   func_8004389C
/* AC6B18 8004F978 AE19007C */   sw    $t9, 0x7c($s0)
/* AC6B1C 8004F97C 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC6B20 8004F980 44802000 */  mtc1  $zero, $f4
/* AC6B24 8004F984 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC6B28 8004F988 A600015A */  sh    $zero, 0x15a($s0)
/* AC6B2C 8004F98C E6040100 */  swc1  $f4, 0x100($s0)
/* AC6B30 8004F990 C6060050 */  lwc1  $f6, 0x50($s0)
/* AC6B34 8004F994 C4680000 */  lwc1  $f8, ($v1)
/* AC6B38 8004F998 C6100054 */  lwc1  $f16, 0x54($s0)
/* AC6B3C 8004F99C 24020001 */  li    $v0, 1
/* AC6B40 8004F9A0 46083281 */  sub.s $f10, $f6, $f8
/* AC6B44 8004F9A4 C6060058 */  lwc1  $f6, 0x58($s0)
/* AC6B48 8004F9A8 E60A00E4 */  swc1  $f10, 0xe4($s0)
/* AC6B4C 8004F9AC C4720004 */  lwc1  $f18, 4($v1)
/* AC6B50 8004F9B0 46128101 */  sub.s $f4, $f16, $f18
/* AC6B54 8004F9B4 E60400E8 */  swc1  $f4, 0xe8($s0)
/* AC6B58 8004F9B8 C4680008 */  lwc1  $f8, 8($v1)
/* AC6B5C 8004F9BC 46083281 */  sub.s $f10, $f6, $f8
/* AC6B60 8004F9C0 E60A00EC */  swc1  $f10, 0xec($s0)
/* AC6B64 8004F9C4 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC6B68 8004F9C8 8FB10020 */  lw    $s1, 0x20($sp)
/* AC6B6C 8004F9CC 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC6B70 8004F9D0 03E00008 */  jr    $ra
/* AC6B74 8004F9D4 27BD0080 */   addiu $sp, $sp, 0x80
# SPLIT
/* AC6B78 8004F9D8 27BDFF70 */  addiu $sp, $sp, -0x90
/* AC6B7C 8004F9DC AFB0001C */  sw    $s0, 0x1c($sp)
/* AC6B80 8004F9E0 00808025 */  move  $s0, $a0
/* AC6B84 8004F9E4 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC6B88 8004F9E8 AFB10020 */  sw    $s1, 0x20($sp)
/* AC6B8C 8004F9EC 0C00B721 */  jal   func_8002DC84
/* AC6B90 8004F9F0 8C840090 */   lw    $a0, 0x90($a0)
/* AC6B94 8004F9F4 E7A00054 */  swc1  $f0, 0x54($sp)
/* AC6B98 8004F9F8 8602015E */  lh    $v0, 0x15e($s0)
/* AC6B9C 8004F9FC 2401000A */  li    $at, 10
/* AC6BA0 8004FA00 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC6BA4 8004FA04 10400008 */  beqz  $v0, .L8004FA28
/* AC6BA8 8004FA08 00000000 */   nop   
/* AC6BAC 8004FA0C 10410006 */  beq   $v0, $at, .L8004FA28
/* AC6BB0 8004FA10 24010014 */   li    $at, 20
/* AC6BB4 8004FA14 10410004 */  beq   $v0, $at, .L8004FA28
/* AC6BB8 8004FA18 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC6BBC 8004FA1C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC6BC0 8004FA20 85CF0314 */  lh    $t7, 0x314($t6)
/* AC6BC4 8004FA24 11E0005A */  beqz  $t7, .L8004FB90
.L8004FA28:
/* AC6BC8 8004FA28 3C018014 */   lui   $at, %hi(D_8013A180)
/* AC6BCC 8004FA2C C42EA180 */  lwc1  $f14, %lo(D_8013A180)($at)
/* AC6BD0 8004FA30 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC6BD4 8004FA34 44814000 */  mtc1  $at, $f8
/* AC6BD8 8004FA38 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC6BDC 8004FA3C 44818000 */  mtc1  $at, $f16
/* AC6BE0 8004FA40 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC6BE4 8004FA44 86180142 */  lh    $t8, 0x142($s0)
/* AC6BE8 8004FA48 46008483 */  div.s $f18, $f16, $f0
/* AC6BEC 8004FA4C 858D01F0 */  lh    $t5, 0x1f0($t4)
/* AC6BF0 8004FA50 3C088012 */  lui   $t0, %hi(D_8011D068)
/* AC6BF4 8004FA54 0018C8C0 */  sll   $t9, $t8, 3
/* AC6BF8 8004FA58 448D2000 */  mtc1  $t5, $f4
/* AC6BFC 8004FA5C 86090144 */  lh    $t1, 0x144($s0)
/* AC6C00 8004FA60 01194021 */  addu  $t0, $t0, $t9
/* AC6C04 8004FA64 468021A0 */  cvt.s.w $f6, $f4
/* AC6C08 8004FA68 8D08D068 */  lw    $t0, %lo(D_8011D068)($t0)
/* AC6C0C 8004FA6C 000950C0 */  sll   $t2, $t1, 3
/* AC6C10 8004FA70 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC6C14 8004FA74 010A5821 */  addu  $t3, $t0, $t2
/* AC6C18 8004FA78 8D620004 */  lw    $v0, 4($t3)
/* AC6C1C 8004FA7C 26110014 */  addiu $s1, $s0, 0x14
/* AC6C20 8004FA80 02002025 */  move  $a0, $s0
/* AC6C24 8004FA84 844E0000 */  lh    $t6, ($v0)
/* AC6C28 8004FA88 24420010 */  addiu $v0, $v0, 0x10
/* AC6C2C 8004FA8C 460E3082 */  mul.s $f2, $f6, $f14
/* AC6C30 8004FA90 448E3000 */  mtc1  $t6, $f6
/* AC6C34 8004FA94 46024280 */  add.s $f10, $f8, $f2
/* AC6C38 8004FA98 46121102 */  mul.s $f4, $f2, $f18
/* AC6C3C 8004FA9C 46803220 */  cvt.s.w $f8, $f6
/* AC6C40 8004FAA0 46045301 */  sub.s $f12, $f10, $f4
/* AC6C44 8004FAA4 460E4402 */  mul.s $f16, $f8, $f14
/* AC6C48 8004FAA8 00000000 */  nop   
/* AC6C4C 8004FAAC 46008482 */  mul.s $f18, $f16, $f0
/* AC6C50 8004FAB0 00000000 */  nop   
/* AC6C54 8004FAB4 460C9282 */  mul.s $f10, $f18, $f12
/* AC6C58 8004FAB8 E60A0000 */  swc1  $f10, ($s0)
/* AC6C5C 8004FABC 844FFFF4 */  lh    $t7, -0xc($v0)
/* AC6C60 8004FAC0 448F2000 */  mtc1  $t7, $f4
/* AC6C64 8004FAC4 00000000 */  nop   
/* AC6C68 8004FAC8 468021A0 */  cvt.s.w $f6, $f4
/* AC6C6C 8004FACC 460E3202 */  mul.s $f8, $f6, $f14
/* AC6C70 8004FAD0 E6080004 */  swc1  $f8, 4($s0)
/* AC6C74 8004FAD4 8458FFF8 */  lh    $t8, -8($v0)
/* AC6C78 8004FAD8 44988000 */  mtc1  $t8, $f16
/* AC6C7C 8004FADC 00000000 */  nop   
/* AC6C80 8004FAE0 468084A0 */  cvt.s.w $f18, $f16
/* AC6C84 8004FAE4 44818000 */  mtc1  $at, $f16
/* AC6C88 8004FAE8 460E9282 */  mul.s $f10, $f18, $f14
/* AC6C8C 8004FAEC E60A0008 */  swc1  $f10, 8($s0)
/* AC6C90 8004FAF0 8459FFFC */  lh    $t9, -4($v0)
/* AC6C94 8004FAF4 44992000 */  mtc1  $t9, $f4
/* AC6C98 8004FAF8 00000000 */  nop   
/* AC6C9C 8004FAFC 468021A0 */  cvt.s.w $f6, $f4
/* AC6CA0 8004FB00 E606000C */  swc1  $f6, 0xc($s0)
/* AC6CA4 8004FB04 C608000C */  lwc1  $f8, 0xc($s0)
/* AC6CA8 8004FB08 84490000 */  lh    $t1, ($v0)
/* AC6CAC 8004FB0C 46104482 */  mul.s $f18, $f8, $f16
/* AC6CB0 8004FB10 A6090010 */  sh    $t1, 0x10($s0)
/* AC6CB4 8004FB14 4600928D */  trunc.w.s $f10, $f18
/* AC6CB8 8004FB18 440A5000 */  mfc1  $t2, $f10
/* AC6CBC 8004FB1C 0C0111DB */  jal   func_8004476C
/* AC6CC0 8004FB20 A62A000C */   sh    $t2, 0xc($s1)
/* AC6CC4 8004FB24 1040000B */  beqz  $v0, .L8004FB54
/* AC6CC8 8004FB28 00402825 */   move  $a1, $v0
/* AC6CCC 8004FB2C 02202025 */  move  $a0, $s1
/* AC6CD0 8004FB30 0C010EF1 */  jal   func_80043BC4
/* AC6CD4 8004FB34 AFA20064 */   sw    $v0, 0x64($sp)
/* AC6CD8 8004FB38 8FA50064 */  lw    $a1, 0x64($sp)
/* AC6CDC 8004FB3C 2401FFFF */  li    $at, -1
/* AC6CE0 8004FB40 84A3000C */  lh    $v1, 0xc($a1)
/* AC6CE4 8004FB44 5061000A */  beql  $v1, $at, .L8004FB70
/* AC6CE8 8004FB48 8622000C */   lh    $v0, 0xc($s1)
/* AC6CEC 8004FB4C 10000007 */  b     .L8004FB6C
/* AC6CF0 8004FB50 A623000C */   sh    $v1, 0xc($s1)
.L8004FB54:
/* AC6CF4 8004FB54 8E0C005C */  lw    $t4, 0x5c($s0)
/* AC6CF8 8004FB58 AE2C0000 */  sw    $t4, ($s1)
/* AC6CFC 8004FB5C 8E0B0060 */  lw    $t3, 0x60($s0)
/* AC6D00 8004FB60 AE2B0004 */  sw    $t3, 4($s1)
/* AC6D04 8004FB64 8E0C0064 */  lw    $t4, 0x64($s0)
/* AC6D08 8004FB68 AE2C0008 */  sw    $t4, 8($s1)
.L8004FB6C:
/* AC6D0C 8004FB6C 8622000C */  lh    $v0, 0xc($s1)
.L8004FB70:
/* AC6D10 8004FB70 28410169 */  slti  $at, $v0, 0x169
/* AC6D14 8004FB74 10200006 */  beqz  $at, .L8004FB90
/* AC6D18 8004FB78 00026880 */   sll   $t5, $v0, 2
/* AC6D1C 8004FB7C 01A26823 */  subu  $t5, $t5, $v0
/* AC6D20 8004FB80 000D68C0 */  sll   $t5, $t5, 3
/* AC6D24 8004FB84 01A26821 */  addu  $t5, $t5, $v0
/* AC6D28 8004FB88 000D6880 */  sll   $t5, $t5, 2
/* AC6D2C 8004FB8C A62D000C */  sh    $t5, 0xc($s1)
.L8004FB90:
/* AC6D30 8004FB90 3C0F8016 */  lui   $t7, %hi(gGameInfo)
/* AC6D34 8004FB94 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC6D38 8004FB98 260E005C */  addiu $t6, $s0, 0x5c
/* AC6D3C 8004FB9C AFAE003C */  sw    $t6, 0x3c($sp)
/* AC6D40 8004FBA0 85F80314 */  lh    $t8, 0x314($t7)
/* AC6D44 8004FBA4 26110014 */  addiu $s1, $s0, 0x14
/* AC6D48 8004FBA8 53000004 */  beql  $t8, $zero, .L8004FBBC
/* AC6D4C 8004FBAC 44801000 */   mtc1  $zero, $f2
/* AC6D50 8004FBB0 0C011495 */  jal   func_80045254
/* AC6D54 8004FBB4 02002025 */   move  $a0, $s0
/* AC6D58 8004FBB8 44801000 */  mtc1  $zero, $f2
.L8004FBBC:
/* AC6D5C 8004FBBC 86190010 */  lh    $t9, 0x10($s0)
/* AC6D60 8004FBC0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC6D64 8004FBC4 E7A2006C */  swc1  $f2, 0x6c($sp)
/* AC6D68 8004FBC8 AC39D3A0 */  sw    $t9, %lo(D_8011D3A0)($at)
/* AC6D6C 8004FBCC C6040000 */  lwc1  $f4, ($s0)
/* AC6D70 8004FBD0 C7A60054 */  lwc1  $f6, 0x54($sp)
/* AC6D74 8004FBD4 E7A20074 */  swc1  $f2, 0x74($sp)
/* AC6D78 8004FBD8 3C018014 */  lui   $at, %hi(D_8013A184)
/* AC6D7C 8004FBDC 46062200 */  add.s $f8, $f4, $f6
/* AC6D80 8004FBE0 C430A184 */  lwc1  $f16, %lo(D_8013A184)($at)
/* AC6D84 8004FBE4 27A4006C */  addiu $a0, $sp, 0x6c
/* AC6D88 8004FBE8 260500E4 */  addiu $a1, $s0, 0xe4
/* AC6D8C 8004FBEC E7A80070 */  swc1  $f8, 0x70($sp)
/* AC6D90 8004FBF0 C6000008 */  lwc1  $f0, 8($s0)
/* AC6D94 8004FBF4 E7B00010 */  swc1  $f16, 0x10($sp)
/* AC6D98 8004FBF8 44060000 */  mfc1  $a2, $f0
/* AC6D9C 8004FBFC 44070000 */  mfc1  $a3, $f0
/* AC6DA0 8004FC00 0C010E8F */  jal   func_80043A3C
/* AC6DA4 8004FC04 00000000 */   nop   
/* AC6DA8 8004FC08 26030094 */  addiu $v1, $s0, 0x94
/* AC6DAC 8004FC0C C4720000 */  lwc1  $f18, ($v1)
/* AC6DB0 8004FC10 C60A00E4 */  lwc1  $f10, 0xe4($s0)
/* AC6DB4 8004FC14 02002025 */  move  $a0, $s0
/* AC6DB8 8004FC18 460A9100 */  add.s $f4, $f18, $f10
/* AC6DBC 8004FC1C E7A40078 */  swc1  $f4, 0x78($sp)
/* AC6DC0 8004FC20 C60800E8 */  lwc1  $f8, 0xe8($s0)
/* AC6DC4 8004FC24 C4660004 */  lwc1  $f6, 4($v1)
/* AC6DC8 8004FC28 46083400 */  add.s $f16, $f6, $f8
/* AC6DCC 8004FC2C E7B0007C */  swc1  $f16, 0x7c($sp)
/* AC6DD0 8004FC30 C60A00EC */  lwc1  $f10, 0xec($s0)
/* AC6DD4 8004FC34 C4720008 */  lwc1  $f18, 8($v1)
/* AC6DD8 8004FC38 460A9100 */  add.s $f4, $f18, $f10
/* AC6DDC 8004FC3C E7A40080 */  swc1  $f4, 0x80($sp)
/* AC6DE0 8004FC40 8602015E */  lh    $v0, 0x15e($s0)
/* AC6DE4 8004FC44 14400024 */  bnez  $v0, .L8004FCD8
/* AC6DE8 8004FC48 24490001 */   addiu $t1, $v0, 1
/* AC6DEC 8004FC4C A609015E */  sh    $t1, 0x15e($s0)
/* AC6DF0 8004FC50 0C010ED8 */  jal   func_80043B60
/* AC6DF4 8004FC54 AFA30030 */   sw    $v1, 0x30($sp)
/* AC6DF8 8004FC58 86080010 */  lh    $t0, 0x10($s0)
/* AC6DFC 8004FC5C 8FA30030 */  lw    $v1, 0x30($sp)
/* AC6E00 8004FC60 310A0001 */  andi  $t2, $t0, 1
/* AC6E04 8004FC64 5540001D */  bnezl $t2, .L8004FCDC
/* AC6E08 8004FC68 C6000008 */   lwc1  $f0, 8($s0)
/* AC6E0C 8004FC6C 8E2C0000 */  lw    $t4, ($s1)
/* AC6E10 8004FC70 27A20040 */  addiu $v0, $sp, 0x40
/* AC6E14 8004FC74 27A90078 */  addiu $t1, $sp, 0x78
/* AC6E18 8004FC78 AC4C0000 */  sw    $t4, ($v0)
/* AC6E1C 8004FC7C 8E2B0004 */  lw    $t3, 4($s1)
/* AC6E20 8004FC80 8C4E0000 */  lw    $t6, ($v0)
/* AC6E24 8004FC84 AC4B0004 */  sw    $t3, 4($v0)
/* AC6E28 8004FC88 8E2C0008 */  lw    $t4, 8($s1)
/* AC6E2C 8004FC8C AC4C0008 */  sw    $t4, 8($v0)
/* AC6E30 8004FC90 AE0E0074 */  sw    $t6, 0x74($s0)
/* AC6E34 8004FC94 8C4D0004 */  lw    $t5, 4($v0)
/* AC6E38 8004FC98 AE0D0078 */  sw    $t5, 0x78($s0)
/* AC6E3C 8004FC9C 8C4E0008 */  lw    $t6, 8($v0)
/* AC6E40 8004FCA0 AE0E007C */  sw    $t6, 0x7c($s0)
/* AC6E44 8004FCA4 8C590000 */  lw    $t9, ($v0)
/* AC6E48 8004FCA8 8FAF003C */  lw    $t7, 0x3c($sp)
/* AC6E4C 8004FCAC ADF90000 */  sw    $t9, ($t7)
/* AC6E50 8004FCB0 8C580004 */  lw    $t8, 4($v0)
/* AC6E54 8004FCB4 ADF80004 */  sw    $t8, 4($t7)
/* AC6E58 8004FCB8 8C590008 */  lw    $t9, 8($v0)
/* AC6E5C 8004FCBC ADF90008 */  sw    $t9, 8($t7)
/* AC6E60 8004FCC0 8D2A0000 */  lw    $t2, ($t1)
/* AC6E64 8004FCC4 AE0A0050 */  sw    $t2, 0x50($s0)
/* AC6E68 8004FCC8 8D280004 */  lw    $t0, 4($t1)
/* AC6E6C 8004FCCC AE080054 */  sw    $t0, 0x54($s0)
/* AC6E70 8004FCD0 8D2A0008 */  lw    $t2, 8($t1)
/* AC6E74 8004FCD4 AE0A0058 */  sw    $t2, 0x58($s0)
.L8004FCD8:
/* AC6E78 8004FCD8 C6000008 */  lwc1  $f0, 8($s0)
.L8004FCDC:
/* AC6E7C 8004FCDC 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC6E80 8004FCE0 44813000 */  mtc1  $at, $f6
/* AC6E84 8004FCE4 26050050 */  addiu $a1, $s0, 0x50
/* AC6E88 8004FCE8 260B0074 */  addiu $t3, $s0, 0x74
/* AC6E8C 8004FCEC 44060000 */  mfc1  $a2, $f0
/* AC6E90 8004FCF0 44070000 */  mfc1  $a3, $f0
/* AC6E94 8004FCF4 AFAB0034 */  sw    $t3, 0x34($sp)
/* AC6E98 8004FCF8 AFA50038 */  sw    $a1, 0x38($sp)
/* AC6E9C 8004FCFC AFA30030 */  sw    $v1, 0x30($sp)
/* AC6EA0 8004FD00 27A40078 */  addiu $a0, $sp, 0x78
/* AC6EA4 8004FD04 0C010E8F */  jal   func_80043A3C
/* AC6EA8 8004FD08 E7A60010 */   swc1  $f6, 0x10($sp)
/* AC6EAC 8004FD0C C6000004 */  lwc1  $f0, 4($s0)
/* AC6EB0 8004FD10 3C018014 */  lui   $at, %hi(D_8013A188)
/* AC6EB4 8004FD14 C428A188 */  lwc1  $f8, %lo(D_8013A188)($at)
/* AC6EB8 8004FD18 44060000 */  mfc1  $a2, $f0
/* AC6EBC 8004FD1C 44070000 */  mfc1  $a3, $f0
/* AC6EC0 8004FD20 02202025 */  move  $a0, $s1
/* AC6EC4 8004FD24 8FA50034 */  lw    $a1, 0x34($sp)
/* AC6EC8 8004FD28 0C010E8F */  jal   func_80043A3C
/* AC6ECC 8004FD2C E7A80010 */   swc1  $f8, 0x10($sp)
/* AC6ED0 8004FD30 8FAD0034 */  lw    $t5, 0x34($sp)
/* AC6ED4 8004FD34 8FAC003C */  lw    $t4, 0x3c($sp)
/* AC6ED8 8004FD38 8DAF0000 */  lw    $t7, ($t5)
/* AC6EDC 8004FD3C AD8F0000 */  sw    $t7, ($t4)
/* AC6EE0 8004FD40 8DAE0004 */  lw    $t6, 4($t5)
/* AC6EE4 8004FD44 AD8E0004 */  sw    $t6, 4($t4)
/* AC6EE8 8004FD48 8DAF0008 */  lw    $t7, 8($t5)
/* AC6EEC 8004FD4C AD8F0008 */  sw    $t7, 8($t4)
/* AC6EF0 8004FD50 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC6EF4 8004FD54 0C01EFE4 */  jal   func_8007BF90
/* AC6EF8 8004FD58 8FA40038 */   lw    $a0, 0x38($sp)
/* AC6EFC 8004FD5C 44808000 */  mtc1  $zero, $f16
/* AC6F00 8004FD60 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC6F04 8004FD64 A600015A */  sh    $zero, 0x15a($s0)
/* AC6F08 8004FD68 E61000D8 */  swc1  $f16, 0xd8($s0)
/* AC6F0C 8004FD6C 8638000C */  lh    $t8, 0xc($s1)
/* AC6F10 8004FD70 3C018014 */  lui   $at, %hi(D_8013A18C)
/* AC6F14 8004FD74 C424A18C */  lwc1  $f4, %lo(D_8013A18C)($at)
/* AC6F18 8004FD78 44989000 */  mtc1  $t8, $f18
/* AC6F1C 8004FD7C 02002025 */  move  $a0, $s0
/* AC6F20 8004FD80 3C053F80 */  lui   $a1, 0x3f80
/* AC6F24 8004FD84 468092A0 */  cvt.s.w $f10, $f18
/* AC6F28 8004FD88 46045182 */  mul.s $f6, $f10, $f4
/* AC6F2C 8004FD8C 0C011429 */  jal   func_800450A4
/* AC6F30 8004FD90 E60600FC */   swc1  $f6, 0xfc($s0)
/* AC6F34 8004FD94 8FA30030 */  lw    $v1, 0x30($sp)
/* AC6F38 8004FD98 E6000100 */  swc1  $f0, 0x100($s0)
/* AC6F3C 8004FD9C C6080050 */  lwc1  $f8, 0x50($s0)
/* AC6F40 8004FDA0 C4700000 */  lwc1  $f16, ($v1)
/* AC6F44 8004FDA4 C60A0054 */  lwc1  $f10, 0x54($s0)
/* AC6F48 8004FDA8 24020001 */  li    $v0, 1
/* AC6F4C 8004FDAC 46104481 */  sub.s $f18, $f8, $f16
/* AC6F50 8004FDB0 C6080058 */  lwc1  $f8, 0x58($s0)
/* AC6F54 8004FDB4 E61200E4 */  swc1  $f18, 0xe4($s0)
/* AC6F58 8004FDB8 C4640004 */  lwc1  $f4, 4($v1)
/* AC6F5C 8004FDBC 46045181 */  sub.s $f6, $f10, $f4
/* AC6F60 8004FDC0 E60600E8 */  swc1  $f6, 0xe8($s0)
/* AC6F64 8004FDC4 C4700008 */  lwc1  $f16, 8($v1)
/* AC6F68 8004FDC8 46104481 */  sub.s $f18, $f8, $f16
/* AC6F6C 8004FDCC E61200EC */  swc1  $f18, 0xec($s0)
/* AC6F70 8004FDD0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC6F74 8004FDD4 8FB10020 */  lw    $s1, 0x20($sp)
/* AC6F78 8004FDD8 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC6F7C 8004FDDC 03E00008 */  jr    $ra
/* AC6F80 8004FDE0 27BD0090 */   addiu $sp, $sp, 0x90
# SPLIT
/* AC6F84 8004FDE4 27BDFF98 */  addiu $sp, $sp, -0x68
/* AC6F88 8004FDE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC6F8C 8004FDEC AFB00018 */  sw    $s0, 0x18($sp)
/* AC6F90 8004FDF0 0C0111DB */  jal   func_8004476C
/* AC6F94 8004FDF4 00808025 */   move  $s0, $a0
/* AC6F98 8004FDF8 2605005C */  addiu $a1, $s0, 0x5c
/* AC6F9C 8004FDFC 26060050 */  addiu $a2, $s0, 0x50
/* AC6FA0 8004FE00 AFA60030 */  sw    $a2, 0x30($sp)
/* AC6FA4 8004FE04 AFA50034 */  sw    $a1, 0x34($sp)
/* AC6FA8 8004FE08 27A40048 */  addiu $a0, $sp, 0x48
/* AC6FAC 8004FE0C 0C01F124 */  jal   func_8007C490
/* AC6FB0 8004FE10 AFA20050 */   sw    $v0, 0x50($sp)
/* AC6FB4 8004FE14 8603015E */  lh    $v1, 0x15e($s0)
/* AC6FB8 8004FE18 8FA70050 */  lw    $a3, 0x50($sp)
/* AC6FBC 8004FE1C 2401000A */  li    $at, 10
/* AC6FC0 8004FE20 5060000A */  beql  $v1, $zero, .L8004FE4C
/* AC6FC4 8004FE24 86180142 */   lh    $t8, 0x142($s0)
/* AC6FC8 8004FE28 10610007 */  beq   $v1, $at, .L8004FE48
/* AC6FCC 8004FE2C 24010014 */   li    $at, 20
/* AC6FD0 8004FE30 10610005 */  beq   $v1, $at, .L8004FE48
/* AC6FD4 8004FE34 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC6FD8 8004FE38 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC6FDC 8004FE3C 85CF0314 */  lh    $t7, 0x314($t6)
/* AC6FE0 8004FE40 11E00034 */  beqz  $t7, .L8004FF14
/* AC6FE4 8004FE44 00000000 */   nop   
.L8004FE48:
/* AC6FE8 8004FE48 86180142 */  lh    $t8, 0x142($s0)
.L8004FE4C:
/* AC6FEC 8004FE4C 3C088012 */  lui   $t0, %hi(D_8011D068)
/* AC6FF0 8004FE50 86090144 */  lh    $t1, 0x144($s0)
/* AC6FF4 8004FE54 0018C8C0 */  sll   $t9, $t8, 3
/* AC6FF8 8004FE58 01194021 */  addu  $t0, $t0, $t9
/* AC6FFC 8004FE5C 8D08D068 */  lw    $t0, %lo(D_8011D068)($t0)
/* AC7000 8004FE60 000950C0 */  sll   $t2, $t1, 3
/* AC7004 8004FE64 26060074 */  addiu $a2, $s0, 0x74
/* AC7008 8004FE68 010A5821 */  addu  $t3, $t0, $t2
/* AC700C 8004FE6C 8D620004 */  lw    $v0, 4($t3)
/* AC7010 8004FE70 00C02025 */  move  $a0, $a2
/* AC7014 8004FE74 00E02825 */  move  $a1, $a3
/* AC7018 8004FE78 844C0000 */  lh    $t4, ($v0)
/* AC701C 8004FE7C A60C0000 */  sh    $t4, ($s0)
/* AC7020 8004FE80 AFA70050 */  sw    $a3, 0x50($sp)
/* AC7024 8004FE84 0C010EF1 */  jal   func_80043BC4
/* AC7028 8004FE88 AFA6002C */   sw    $a2, 0x2c($sp)
/* AC702C 8004FE8C 8FA6002C */  lw    $a2, 0x2c($sp)
/* AC7030 8004FE90 8FAD0034 */  lw    $t5, 0x34($sp)
/* AC7034 8004FE94 8FA70050 */  lw    $a3, 0x50($sp)
/* AC7038 8004FE98 8CCF0000 */  lw    $t7, ($a2)
/* AC703C 8004FE9C 26030002 */  addiu $v1, $s0, 2
/* AC7040 8004FEA0 2401FFFF */  li    $at, -1
/* AC7044 8004FEA4 ADAF0000 */  sw    $t7, ($t5)
/* AC7048 8004FEA8 8CCE0004 */  lw    $t6, 4($a2)
/* AC704C 8004FEAC 240A1770 */  li    $t2, 6000
/* AC7050 8004FEB0 ADAE0004 */  sw    $t6, 4($t5)
/* AC7054 8004FEB4 8CCF0008 */  lw    $t7, 8($a2)
/* AC7058 8004FEB8 ADAF0008 */  sw    $t7, 8($t5)
/* AC705C 8004FEBC 88F90006 */  lwl   $t9, 6($a3)
/* AC7060 8004FEC0 98F90009 */  lwr   $t9, 9($a3)
/* AC7064 8004FEC4 A8790000 */  swl   $t9, ($v1)
/* AC7068 8004FEC8 B8790003 */  swr   $t9, 3($v1)
/* AC706C 8004FECC 94F9000A */  lhu   $t9, 0xa($a3)
/* AC7070 8004FED0 A4790004 */  sh    $t9, 4($v1)
/* AC7074 8004FED4 84E9000C */  lh    $t1, 0xc($a3)
/* AC7078 8004FED8 A4690006 */  sh    $t1, 6($v1)
/* AC707C 8004FEDC 84640006 */  lh    $a0, 6($v1)
/* AC7080 8004FEE0 84E8000E */  lh    $t0, 0xe($a3)
/* AC7084 8004FEE4 14810003 */  bne   $a0, $at, .L8004FEF4
/* AC7088 8004FEE8 A468000A */   sh    $t0, 0xa($v1)
/* AC708C 8004FEEC A46A0006 */  sh    $t2, 6($v1)
/* AC7090 8004FEF0 84640006 */  lh    $a0, 6($v1)
.L8004FEF4:
/* AC7094 8004FEF4 28810169 */  slti  $at, $a0, 0x169
/* AC7098 8004FEF8 10200006 */  beqz  $at, .L8004FF14
/* AC709C 8004FEFC 00045880 */   sll   $t3, $a0, 2
/* AC70A0 8004FF00 01645823 */  subu  $t3, $t3, $a0
/* AC70A4 8004FF04 000B58C0 */  sll   $t3, $t3, 3
/* AC70A8 8004FF08 01645821 */  addu  $t3, $t3, $a0
/* AC70AC 8004FF0C 000B5880 */  sll   $t3, $t3, 2
/* AC70B0 8004FF10 A46B0006 */  sh    $t3, 6($v1)
.L8004FF14:
/* AC70B4 8004FF14 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC70B8 8004FF18 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC70BC 8004FF1C 26030002 */  addiu $v1, $s0, 2
/* AC70C0 8004FF20 02002025 */  move  $a0, $s0
/* AC70C4 8004FF24 858D0314 */  lh    $t5, 0x314($t4)
/* AC70C8 8004FF28 51A00007 */  beql  $t5, $zero, .L8004FF48
/* AC70CC 8004FF2C 860E015E */   lh    $t6, 0x15e($s0)
/* AC70D0 8004FF30 AFA30028 */  sw    $v1, 0x28($sp)
/* AC70D4 8004FF34 0C011495 */  jal   func_80045254
/* AC70D8 8004FF38 AFA70050 */   sw    $a3, 0x50($sp)
/* AC70DC 8004FF3C 8FA30028 */  lw    $v1, 0x28($sp)
/* AC70E0 8004FF40 8FA70050 */  lw    $a3, 0x50($sp)
/* AC70E4 8004FF44 860E015E */  lh    $t6, 0x15e($s0)
.L8004FF48:
/* AC70E8 8004FF48 240F0005 */  li    $t7, 5
/* AC70EC 8004FF4C 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC70F0 8004FF50 15C00008 */  bnez  $t6, .L8004FF74
/* AC70F4 8004FF54 3C048014 */   lui   $a0, %hi(D_801393DC) # $a0, 0x8014
/* AC70F8 8004FF58 A46F0008 */  sh    $t7, 8($v1)
/* AC70FC 8004FF5C 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC7100 8004FF60 84780006 */  lh    $t8, 6($v1)
/* AC7104 8004FF64 A7380262 */  sh    $t8, 0x262($t9)
/* AC7108 8004FF68 8609015E */  lh    $t1, 0x15e($s0)
/* AC710C 8004FF6C 25280001 */  addiu $t0, $t1, 1
/* AC7110 8004FF70 A608015E */  sh    $t0, 0x15e($s0)
.L8004FF74:
/* AC7114 8004FF74 8465000A */  lh    $a1, 0xa($v1)
/* AC7118 8004FF78 84EA000E */  lh    $t2, 0xe($a3)
/* AC711C 8004FF7C 248493DC */  addiu $a0, %lo(D_801393DC) # addiu $a0, $a0, -0x6c24
/* AC7120 8004FF80 50AA000B */  beql  $a1, $t2, .L8004FFB0
/* AC7124 8004FF84 84620008 */   lh    $v0, 8($v1)
/* AC7128 8004FF88 AFA30028 */  sw    $v1, 0x28($sp)
/* AC712C 8004FF8C 0C00084C */  jal   osSyncPrintf
/* AC7130 8004FF90 AFA70050 */   sw    $a3, 0x50($sp)
/* AC7134 8004FF94 8FA70050 */  lw    $a3, 0x50($sp)
/* AC7138 8004FF98 8FA30028 */  lw    $v1, 0x28($sp)
/* AC713C 8004FF9C 240C0005 */  li    $t4, 5
/* AC7140 8004FFA0 84EB000E */  lh    $t3, 0xe($a3)
/* AC7144 8004FFA4 A46C0008 */  sh    $t4, 8($v1)
/* AC7148 8004FFA8 A46B000A */  sh    $t3, 0xa($v1)
/* AC714C 8004FFAC 84620008 */  lh    $v0, 8($v1)
.L8004FFB0:
/* AC7150 8004FFB0 240E0001 */  li    $t6, 1
/* AC7154 8004FFB4 3C018012 */  lui   $at, %hi(D_8011D3E8)
/* AC7158 8004FFB8 18400005 */  blez  $v0, .L8004FFD0
/* AC715C 8004FFBC 244DFFFF */   addiu $t5, $v0, -1
/* AC7160 8004FFC0 A46D0008 */  sh    $t5, 8($v1)
/* AC7164 8004FFC4 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC7168 8004FFC8 10000002 */  b     .L8004FFD4
/* AC716C 8004FFCC AC2ED3E8 */   sw    $t6, %lo(D_8011D3E8)($at)
.L8004FFD0:
/* AC7170 8004FFD0 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
.L8004FFD4:
/* AC7174 8004FFD4 3C014316 */  li    $at, 0x43160000 # 0.000000
/* AC7178 8004FFD8 44812000 */  mtc1  $at, $f4
/* AC717C 8004FFDC 8FA40030 */  lw    $a0, 0x30($sp)
/* AC7180 8004FFE0 8FA50034 */  lw    $a1, 0x34($sp)
/* AC7184 8004FFE4 E7A40054 */  swc1  $f4, 0x54($sp)
/* AC7188 8004FFE8 846F0002 */  lh    $t7, 2($v1)
/* AC718C 8004FFEC 27A60054 */  addiu $a2, $sp, 0x54
/* AC7190 8004FFF0 A7AF005A */  sh    $t7, 0x5a($sp)
/* AC7194 8004FFF4 84780000 */  lh    $t8, ($v1)
/* AC7198 8004FFF8 AFA30028 */  sw    $v1, 0x28($sp)
/* AC719C 8004FFFC 0018C823 */  negu  $t9, $t8
/* AC71A0 80050000 0C010F0A */  jal   func_80043C28
/* AC71A4 80050004 A7B90058 */   sh    $t9, 0x58($sp)
/* AC71A8 80050008 86090000 */  lh    $t1, ($s0)
/* AC71AC 8005000C 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AC71B0 80050010 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC71B4 80050014 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC71B8 80050018 AC29D3A0 */  sw    $t1, %lo(D_8011D3A0)($at)
/* AC71BC 8005001C 8FA30028 */  lw    $v1, 0x28($sp)
/* AC71C0 80050020 850A0262 */  lh    $t2, 0x262($t0)
/* AC71C4 80050024 3C018014 */  lui   $at, %hi(D_8013A190)
/* AC71C8 80050028 44809000 */  mtc1  $zero, $f18
/* AC71CC 8005002C A46A0006 */  sh    $t2, 6($v1)
/* AC71D0 80050030 A600015A */  sh    $zero, 0x15a($s0)
/* AC71D4 80050034 846B0006 */  lh    $t3, 6($v1)
/* AC71D8 80050038 C42AA190 */  lwc1  $f10, %lo(D_8013A190)($at)
/* AC71DC 8005003C E6120100 */  swc1  $f18, 0x100($s0)
/* AC71E0 80050040 448B3000 */  mtc1  $t3, $f6
/* AC71E4 80050044 24020001 */  li    $v0, 1
/* AC71E8 80050048 46803220 */  cvt.s.w $f8, $f6
/* AC71EC 8005004C 460A4402 */  mul.s $f16, $f8, $f10
/* AC71F0 80050050 E61000FC */  swc1  $f16, 0xfc($s0)
/* AC71F4 80050054 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC71F8 80050058 8FB00018 */  lw    $s0, 0x18($sp)
/* AC71FC 8005005C 27BD0068 */  addiu $sp, $sp, 0x68
/* AC7200 80050060 03E00008 */  jr    $ra
/* AC7204 80050064 00000000 */   nop   
# SPLIT
/* AC7208 80050068 27BDFF58 */  addiu $sp, $sp, -0xa8
/* AC720C 8005006C AFB00020 */  sw    $s0, 0x20($sp)
/* AC7210 80050070 00808025 */  move  $s0, $a0
/* AC7214 80050074 AFBF002C */  sw    $ra, 0x2c($sp)
/* AC7218 80050078 AFB20028 */  sw    $s2, 0x28($sp)
/* AC721C 8005007C AFB10024 */  sw    $s1, 0x24($sp)
/* AC7220 80050080 0C00B721 */  jal   func_8002DC84
/* AC7224 80050084 8C840090 */   lw    $a0, 0x90($a0)
/* AC7228 80050088 E7A00050 */  swc1  $f0, 0x50($sp)
/* AC722C 8005008C 8602015E */  lh    $v0, 0x15e($s0)
/* AC7230 80050090 10400008 */  beqz  $v0, .L800500B4
/* AC7234 80050094 2401000A */   li    $at, 10
/* AC7238 80050098 10410006 */  beq   $v0, $at, .L800500B4
/* AC723C 8005009C 24010014 */   li    $at, 20
/* AC7240 800500A0 10410004 */  beq   $v0, $at, .L800500B4
/* AC7244 800500A4 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC7248 800500A8 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC724C 800500AC 85C30314 */  lh    $v1, 0x314($t6)
/* AC7250 800500B0 10600049 */  beqz  $v1, .L800501D8
.L800500B4:
/* AC7254 800500B4 3C0B8016 */   lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC7258 800500B8 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC725C 800500BC 3C018014 */  lui   $at, %hi(D_8013A194)
/* AC7260 800500C0 C42CA194 */  lwc1  $f12, %lo(D_8013A194)($at)
/* AC7264 800500C4 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC7268 800500C8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC726C 800500CC 44814000 */  mtc1  $at, $f8
/* AC7270 800500D0 448C2000 */  mtc1  $t4, $f4
/* AC7274 800500D4 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC7278 800500D8 860F0142 */  lh    $t7, 0x142($s0)
/* AC727C 800500DC 468021A0 */  cvt.s.w $f6, $f4
/* AC7280 800500E0 44812000 */  mtc1  $at, $f4
/* AC7284 800500E4 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC7288 800500E8 000FC0C0 */  sll   $t8, $t7, 3
/* AC728C 800500EC 86080144 */  lh    $t0, 0x144($s0)
/* AC7290 800500F0 0338C821 */  addu  $t9, $t9, $t8
/* AC7294 800500F4 460C3082 */  mul.s $f2, $f6, $f12
/* AC7298 800500F8 46002183 */  div.s $f6, $f4, $f0
/* AC729C 800500FC 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC72A0 80050100 000848C0 */  sll   $t1, $t0, 3
/* AC72A4 80050104 02002025 */  move  $a0, $s0
/* AC72A8 80050108 03295021 */  addu  $t2, $t9, $t1
/* AC72AC 8005010C 8D420004 */  lw    $v0, 4($t2)
/* AC72B0 80050110 46024280 */  add.s $f10, $f8, $f2
/* AC72B4 80050114 844D0000 */  lh    $t5, ($v0)
/* AC72B8 80050118 24420010 */  addiu $v0, $v0, 0x10
/* AC72BC 8005011C 448D2000 */  mtc1  $t5, $f4
/* AC72C0 80050120 46061202 */  mul.s $f8, $f2, $f6
/* AC72C4 80050124 468021A0 */  cvt.s.w $f6, $f4
/* AC72C8 80050128 46085381 */  sub.s $f14, $f10, $f8
/* AC72CC 8005012C 460C3282 */  mul.s $f10, $f6, $f12
/* AC72D0 80050130 00000000 */  nop   
/* AC72D4 80050134 46005202 */  mul.s $f8, $f10, $f0
/* AC72D8 80050138 00000000 */  nop   
/* AC72DC 8005013C 460E4102 */  mul.s $f4, $f8, $f14
/* AC72E0 80050140 E6040000 */  swc1  $f4, ($s0)
/* AC72E4 80050144 844EFFF4 */  lh    $t6, -0xc($v0)
/* AC72E8 80050148 448E3000 */  mtc1  $t6, $f6
/* AC72EC 8005014C 00000000 */  nop   
/* AC72F0 80050150 468032A0 */  cvt.s.w $f10, $f6
/* AC72F4 80050154 460C5202 */  mul.s $f8, $f10, $f12
/* AC72F8 80050158 E6080004 */  swc1  $f8, 4($s0)
/* AC72FC 8005015C 844FFFF8 */  lh    $t7, -8($v0)
/* AC7300 80050160 448F2000 */  mtc1  $t7, $f4
/* AC7304 80050164 00000000 */  nop   
/* AC7308 80050168 468021A0 */  cvt.s.w $f6, $f4
/* AC730C 8005016C 460C3282 */  mul.s $f10, $f6, $f12
/* AC7310 80050170 E60A0008 */  swc1  $f10, 8($s0)
/* AC7314 80050174 8458FFFC */  lh    $t8, -4($v0)
/* AC7318 80050178 44984000 */  mtc1  $t8, $f8
/* AC731C 8005017C 00000000 */  nop   
/* AC7320 80050180 46804120 */  cvt.s.w $f4, $f8
/* AC7324 80050184 E604000C */  swc1  $f4, 0xc($s0)
/* AC7328 80050188 84480000 */  lh    $t0, ($v0)
/* AC732C 8005018C 0C0111DB */  jal   func_8004476C
/* AC7330 80050190 A6080010 */   sh    $t0, 0x10($s0)
/* AC7334 80050194 10400007 */  beqz  $v0, .L800501B4
/* AC7338 80050198 00402825 */   move  $a1, $v0
/* AC733C 8005019C 0C010EF1 */  jal   func_80043BC4
/* AC7340 800501A0 26040014 */   addiu $a0, $s0, 0x14
/* AC7344 800501A4 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC7348 800501A8 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC734C 800501AC 1000000A */  b     .L800501D8
/* AC7350 800501B0 87230314 */   lh    $v1, 0x314($t9)
.L800501B4:
/* AC7354 800501B4 8E0A005C */  lw    $t2, 0x5c($s0)
/* AC7358 800501B8 8E090060 */  lw    $t1, 0x60($s0)
/* AC735C 800501BC 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC7360 800501C0 AE0A0014 */  sw    $t2, 0x14($s0)
/* AC7364 800501C4 8E0A0064 */  lw    $t2, 0x64($s0)
/* AC7368 800501C8 AE090018 */  sw    $t1, 0x18($s0)
/* AC736C 800501CC AE0A001C */  sw    $t2, 0x1c($s0)
/* AC7370 800501D0 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC7374 800501D4 85630314 */  lh    $v1, 0x314($t3)
.L800501D8:
/* AC7378 800501D8 260C005C */  addiu $t4, $s0, 0x5c
/* AC737C 800501DC AFAC0044 */  sw    $t4, 0x44($sp)
/* AC7380 800501E0 10600003 */  beqz  $v1, .L800501F0
/* AC7384 800501E4 26120014 */   addiu $s2, $s0, 0x14
/* AC7388 800501E8 0C011495 */  jal   func_80045254
/* AC738C 800501EC 02002025 */   move  $a0, $s0
.L800501F0:
/* AC7390 800501F0 860D0010 */  lh    $t5, 0x10($s0)
/* AC7394 800501F4 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC7398 800501F8 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* AC739C 800501FC 8602015E */  lh    $v0, 0x15e($s0)
/* AC73A0 80050200 5440000C */  bnezl $v0, .L80050234
/* AC73A4 80050204 26110074 */   addiu $s1, $s0, 0x74
/* AC73A8 80050208 860F0010 */  lh    $t7, 0x10($s0)
/* AC73AC 8005020C 244E0001 */  addiu $t6, $v0, 1
/* AC73B0 80050210 A60E015E */  sh    $t6, 0x15e($s0)
/* AC73B4 80050214 31F80004 */  andi  $t8, $t7, 4
/* AC73B8 80050218 57000004 */  bnezl $t8, .L8005022C
/* AC73BC 8005021C C6060008 */   lwc1  $f6, 8($s0)
/* AC73C0 80050220 0C010ED8 */  jal   func_80043B60
/* AC73C4 80050224 02002025 */   move  $a0, $s0
/* AC73C8 80050228 C6060008 */  lwc1  $f6, 8($s0)
.L8005022C:
/* AC73CC 8005022C E646000C */  swc1  $f6, 0xc($s2)
/* AC73D0 80050230 26110074 */  addiu $s1, $s0, 0x74
.L80050234:
/* AC73D4 80050234 C6200000 */  lwc1  $f0, ($s1)
/* AC73D8 80050238 C64A0000 */  lwc1  $f10, ($s2)
/* AC73DC 8005023C C6040004 */  lwc1  $f4, 4($s0)
/* AC73E0 80050240 3C018014 */  lui   $at, %hi(D_8013A198)
/* AC73E4 80050244 46005201 */  sub.s $f8, $f10, $f0
/* AC73E8 80050248 C42EA198 */  lwc1  $f14, %lo(D_8013A198)($at)
/* AC73EC 8005024C C6220004 */  lwc1  $f2, 4($s1)
/* AC73F0 80050250 C62C0008 */  lwc1  $f12, 8($s1)
/* AC73F4 80050254 46044182 */  mul.s $f6, $f8, $f4
/* AC73F8 80050258 44808000 */  mtc1  $zero, $f16
/* AC73FC 8005025C 44067000 */  mfc1  $a2, $f14
/* AC7400 80050260 44077000 */  mfc1  $a3, $f14
/* AC7404 80050264 27A40078 */  addiu $a0, $sp, 0x78
/* AC7408 80050268 260500E4 */  addiu $a1, $s0, 0xe4
/* AC740C 8005026C 46060280 */  add.s $f10, $f0, $f6
/* AC7410 80050270 E62A0000 */  swc1  $f10, ($s1)
/* AC7414 80050274 C6480004 */  lwc1  $f8, 4($s2)
/* AC7418 80050278 C6060004 */  lwc1  $f6, 4($s0)
/* AC741C 8005027C 8E290000 */  lw    $t1, ($s1)
/* AC7420 80050280 46024101 */  sub.s $f4, $f8, $f2
/* AC7424 80050284 46062282 */  mul.s $f10, $f4, $f6
/* AC7428 80050288 460A1200 */  add.s $f8, $f2, $f10
/* AC742C 8005028C E6280004 */  swc1  $f8, 4($s1)
/* AC7430 80050290 C6440008 */  lwc1  $f4, 8($s2)
/* AC7434 80050294 C60A0004 */  lwc1  $f10, 4($s0)
/* AC7438 80050298 460C2181 */  sub.s $f6, $f4, $f12
/* AC743C 8005029C 460A3202 */  mul.s $f8, $f6, $f10
/* AC7440 800502A0 46086100 */  add.s $f4, $f12, $f8
/* AC7444 800502A4 E6240008 */  swc1  $f4, 8($s1)
/* AC7448 800502A8 8FA80044 */  lw    $t0, 0x44($sp)
/* AC744C 800502AC AD090000 */  sw    $t1, ($t0)
/* AC7450 800502B0 8E390004 */  lw    $t9, 4($s1)
/* AC7454 800502B4 AD190004 */  sw    $t9, 4($t0)
/* AC7458 800502B8 8E290008 */  lw    $t1, 8($s1)
/* AC745C 800502BC AD090008 */  sw    $t1, 8($t0)
/* AC7460 800502C0 E7B00078 */  swc1  $f16, 0x78($sp)
/* AC7464 800502C4 C6060000 */  lwc1  $f6, ($s0)
/* AC7468 800502C8 C7AA0050 */  lwc1  $f10, 0x50($sp)
/* AC746C 800502CC E7AE0010 */  swc1  $f14, 0x10($sp)
/* AC7470 800502D0 E7B00080 */  swc1  $f16, 0x80($sp)
/* AC7474 800502D4 460A3200 */  add.s $f8, $f6, $f10
/* AC7478 800502D8 0C010E8F */  jal   func_80043A3C
/* AC747C 800502DC E7A8007C */   swc1  $f8, 0x7c($sp)
/* AC7480 800502E0 26020094 */  addiu $v0, $s0, 0x94
/* AC7484 800502E4 C4440000 */  lwc1  $f4, ($v0)
/* AC7488 800502E8 C60600E4 */  lwc1  $f6, 0xe4($s0)
/* AC748C 800502EC C44A0004 */  lwc1  $f10, 4($v0)
/* AC7490 800502F0 C60800E8 */  lwc1  $f8, 0xe8($s0)
/* AC7494 800502F4 46062380 */  add.s $f14, $f4, $f6
/* AC7498 800502F8 26060050 */  addiu $a2, $s0, 0x50
/* AC749C 800502FC C4C00000 */  lwc1  $f0, ($a2)
/* AC74A0 80050300 46085400 */  add.s $f16, $f10, $f8
/* AC74A4 80050304 C60600EC */  lwc1  $f6, 0xec($s0)
/* AC74A8 80050308 C4440008 */  lwc1  $f4, 8($v0)
/* AC74AC 8005030C 46007281 */  sub.s $f10, $f14, $f0
/* AC74B0 80050310 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC74B4 80050314 44814000 */  mtc1  $at, $f8
/* AC74B8 80050318 46062480 */  add.s $f18, $f4, $f6
/* AC74BC 8005031C 27A40070 */  addiu $a0, $sp, 0x70
/* AC74C0 80050320 46085102 */  mul.s $f4, $f10, $f8
/* AC74C4 80050324 44814000 */  mtc1  $at, $f8
/* AC74C8 80050328 02202825 */  move  $a1, $s1
/* AC74CC 8005032C 46040180 */  add.s $f6, $f0, $f4
/* AC74D0 80050330 E7A60084 */  swc1  $f6, 0x84($sp)
/* AC74D4 80050334 C4C20004 */  lwc1  $f2, 4($a2)
/* AC74D8 80050338 46028281 */  sub.s $f10, $f16, $f2
/* AC74DC 8005033C 46085102 */  mul.s $f4, $f10, $f8
/* AC74E0 80050340 44814000 */  mtc1  $at, $f8
/* AC74E4 80050344 46041180 */  add.s $f6, $f2, $f4
/* AC74E8 80050348 E7A60088 */  swc1  $f6, 0x88($sp)
/* AC74EC 8005034C C4CC0008 */  lwc1  $f12, 8($a2)
/* AC74F0 80050350 AFA60040 */  sw    $a2, 0x40($sp)
/* AC74F4 80050354 460C9281 */  sub.s $f10, $f18, $f12
/* AC74F8 80050358 46085102 */  mul.s $f4, $f10, $f8
/* AC74FC 8005035C 46046180 */  add.s $f6, $f12, $f4
/* AC7500 80050360 0C01F124 */  jal   func_8007C490
/* AC7504 80050364 E7A6008C */   swc1  $f6, 0x8c($sp)
/* AC7508 80050368 27A40068 */  addiu $a0, $sp, 0x68
/* AC750C 8005036C 02202825 */  move  $a1, $s1
/* AC7510 80050370 0C01F124 */  jal   func_8007C490
/* AC7514 80050374 27A60084 */   addiu $a2, $sp, 0x84
/* AC7518 80050378 C7AA0068 */  lwc1  $f10, 0x68($sp)
/* AC751C 8005037C C7A80070 */  lwc1  $f8, 0x70($sp)
/* AC7520 80050380 C646000C */  lwc1  $f6, 0xc($s2)
/* AC7524 80050384 87A4006C */  lh    $a0, 0x6c($sp)
/* AC7528 80050388 46085101 */  sub.s $f4, $f10, $f8
/* AC752C 8005038C 87A50074 */  lh    $a1, 0x74($sp)
/* AC7530 80050390 2407000A */  li    $a3, 10
/* AC7534 80050394 46062282 */  mul.s $f10, $f4, $f6
/* AC7538 80050398 460A4100 */  add.s $f4, $f8, $f10
/* AC753C 8005039C E7A40070 */  swc1  $f4, 0x70($sp)
/* AC7540 800503A0 C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC7544 800503A4 C646000C */  lwc1  $f6, 0xc($s2)
/* AC7548 800503A8 46083282 */  mul.s $f10, $f6, $f8
/* AC754C 800503AC 44065000 */  mfc1  $a2, $f10
/* AC7550 800503B0 0C010E47 */  jal   func_8004391C
/* AC7554 800503B4 00000000 */   nop   
/* AC7558 800503B8 A7A20074 */  sh    $v0, 0x74($sp)
/* AC755C 800503BC C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC7560 800503C0 C644000C */  lwc1  $f4, 0xc($s2)
/* AC7564 800503C4 87A4006E */  lh    $a0, 0x6e($sp)
/* AC7568 800503C8 87A50076 */  lh    $a1, 0x76($sp)
/* AC756C 800503CC 46062202 */  mul.s $f8, $f4, $f6
/* AC7570 800503D0 2407000A */  li    $a3, 10
/* AC7574 800503D4 44064000 */  mfc1  $a2, $f8
/* AC7578 800503D8 0C010E47 */  jal   func_8004391C
/* AC757C 800503DC 00000000 */   nop   
/* AC7580 800503E0 A7A20076 */  sh    $v0, 0x76($sp)
/* AC7584 800503E4 8FA40040 */  lw    $a0, 0x40($sp)
/* AC7588 800503E8 02202825 */  move  $a1, $s1
/* AC758C 800503EC 0C010F0A */  jal   func_80043C28
/* AC7590 800503F0 27A60070 */   addiu $a2, $sp, 0x70
/* AC7594 800503F4 8FA40040 */  lw    $a0, 0x40($sp)
/* AC7598 800503F8 0C01EFE4 */  jal   func_8007BF90
/* AC759C 800503FC 8FA50044 */   lw    $a1, 0x44($sp)
/* AC75A0 80050400 C60A000C */  lwc1  $f10, 0xc($s0)
/* AC75A4 80050404 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC75A8 80050408 A600015A */  sh    $zero, 0x15a($s0)
/* AC75AC 8005040C 02002025 */  move  $a0, $s0
/* AC75B0 80050410 3C053F80 */  lui   $a1, 0x3f80
/* AC75B4 80050414 0C011429 */  jal   func_800450A4
/* AC75B8 80050418 E60A00FC */   swc1  $f10, 0xfc($s0)
/* AC75BC 8005041C E6000100 */  swc1  $f0, 0x100($s0)
/* AC75C0 80050420 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC75C4 80050424 8FB20028 */  lw    $s2, 0x28($sp)
/* AC75C8 80050428 8FB10024 */  lw    $s1, 0x24($sp)
/* AC75CC 8005042C 8FB00020 */  lw    $s0, 0x20($sp)
/* AC75D0 80050430 27BD00A8 */  addiu $sp, $sp, 0xa8
/* AC75D4 80050434 03E00008 */  jr    $ra
/* AC75D8 80050438 24020001 */   li    $v0, 1
# SPLIT
/* AC75DC 8005043C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC75E0 80050440 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC75E4 80050444 0C011CE5 */  jal   func_80047394
/* AC75E8 80050448 00000000 */   nop   
/* AC75EC 8005044C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC75F0 80050450 27BD0018 */  addiu $sp, $sp, 0x18
/* AC75F4 80050454 03E00008 */  jr    $ra
/* AC75F8 80050458 00000000 */   nop   
# SPLIT
/* AC75FC 8005045C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC7600 80050460 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC7604 80050464 0C011CE5 */  jal   func_80047394
/* AC7608 80050468 00000000 */   nop   
/* AC760C 8005046C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC7610 80050470 27BD0018 */  addiu $sp, $sp, 0x18
/* AC7614 80050474 03E00008 */  jr    $ra
/* AC7618 80050478 00000000 */   nop   
# SPLIT
/* AC761C 8005047C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC7620 80050480 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC7624 80050484 0C011CE5 */  jal   func_80047394
/* AC7628 80050488 00000000 */   nop   
/* AC762C 8005048C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC7630 80050490 27BD0018 */  addiu $sp, $sp, 0x18
/* AC7634 80050494 03E00008 */  jr    $ra
/* AC7638 80050498 00000000 */   nop   
# SPLIT
/* AC763C 8005049C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* AC7640 800504A0 AFB10018 */  sw    $s1, 0x18($sp)
/* AC7644 800504A4 AFB00014 */  sw    $s0, 0x14($sp)
/* AC7648 800504A8 00808025 */  move  $s0, $a0
/* AC764C 800504AC 27B10060 */  addiu $s1, $sp, 0x60
/* AC7650 800504B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC7654 800504B4 8E050090 */  lw    $a1, 0x90($s0)
/* AC7658 800504B8 0C00BBB9 */  jal   func_8002EEE4
/* AC765C 800504BC 02202025 */   move  $a0, $s1
/* AC7660 800504C0 0C00B721 */  jal   func_8002DC84
/* AC7664 800504C4 8E040090 */   lw    $a0, 0x90($s0)
/* AC7668 800504C8 E7A0003C */  swc1  $f0, 0x3c($sp)
/* AC766C 800504CC 8E03008C */  lw    $v1, 0x8c($s0)
/* AC7670 800504D0 8C6E01DC */  lw    $t6, 0x1dc($v1)
/* AC7674 800504D4 15C00006 */  bnez  $t6, .L800504F0
/* AC7678 800504D8 00000000 */   nop   
/* AC767C 800504DC 860F0164 */  lh    $t7, 0x164($s0)
/* AC7680 800504E0 24020001 */  li    $v0, 1
/* AC7684 800504E4 35F80050 */  ori   $t8, $t7, 0x50
/* AC7688 800504E8 10000189 */  b     .L80050B10
/* AC768C 800504EC AC7801DC */   sw    $t8, 0x1dc($v1)
.L800504F0:
/* AC7690 800504F0 0C010EAF */  jal   func_80043ABC
/* AC7694 800504F4 02002025 */   move  $a0, $s0
/* AC7698 800504F8 0C011495 */  jal   func_80045254
/* AC769C 800504FC 02002025 */   move  $a0, $s0
/* AC76A0 80050500 86190142 */  lh    $t9, 0x142($s0)
/* AC76A4 80050504 3C0B8012 */  lui   $t3, %hi(D_8011D068)
/* AC76A8 80050508 860C0144 */  lh    $t4, 0x144($s0)
/* AC76AC 8005050C 001950C0 */  sll   $t2, $t9, 3
/* AC76B0 80050510 016A5821 */  addu  $t3, $t3, $t2
/* AC76B4 80050514 8D6BD068 */  lw    $t3, %lo(D_8011D068)($t3)
/* AC76B8 80050518 000C68C0 */  sll   $t5, $t4, 3
/* AC76BC 8005051C 3C018014 */  lui   $at, %hi(D_8013A19C)
/* AC76C0 80050520 016D7021 */  addu  $t6, $t3, $t5
/* AC76C4 80050524 8DC30004 */  lw    $v1, 4($t6)
/* AC76C8 80050528 C420A19C */  lwc1  $f0, %lo(D_8013A19C)($at)
/* AC76CC 8005052C 3C018014 */  lui   $at, %hi(D_8013A1A0)
/* AC76D0 80050530 846F0000 */  lh    $t7, ($v1)
/* AC76D4 80050534 C428A1A0 */  lwc1  $f8, %lo(D_8013A1A0)($at)
/* AC76D8 80050538 27A50098 */  addiu $a1, $sp, 0x98
/* AC76DC 8005053C 448F2000 */  mtc1  $t7, $f4
/* AC76E0 80050540 27A4008C */  addiu $a0, $sp, 0x8c
/* AC76E4 80050544 27A60084 */  addiu $a2, $sp, 0x84
/* AC76E8 80050548 468021A0 */  cvt.s.w $f6, $f4
/* AC76EC 8005054C C7A4003C */  lwc1  $f4, 0x3c($sp)
/* AC76F0 80050550 24630020 */  addiu $v1, $v1, 0x20
/* AC76F4 80050554 46083282 */  mul.s $f10, $f6, $f8
/* AC76F8 80050558 00000000 */  nop   
/* AC76FC 8005055C 46045182 */  mul.s $f6, $f10, $f4
/* AC7700 80050560 E6060000 */  swc1  $f6, ($s0)
/* AC7704 80050564 8478FFE4 */  lh    $t8, -0x1c($v1)
/* AC7708 80050568 44984000 */  mtc1  $t8, $f8
/* AC770C 8005056C 00000000 */  nop   
/* AC7710 80050570 468042A0 */  cvt.s.w $f10, $f8
/* AC7714 80050574 E60A0004 */  swc1  $f10, 4($s0)
/* AC7718 80050578 8479FFE8 */  lh    $t9, -0x18($v1)
/* AC771C 8005057C 44992000 */  mtc1  $t9, $f4
/* AC7720 80050580 00000000 */  nop   
/* AC7724 80050584 468021A0 */  cvt.s.w $f6, $f4
/* AC7728 80050588 E6060008 */  swc1  $f6, 8($s0)
/* AC772C 8005058C 846AFFEC */  lh    $t2, -0x14($v1)
/* AC7730 80050590 448A4000 */  mtc1  $t2, $f8
/* AC7734 80050594 00000000 */  nop   
/* AC7738 80050598 468042A0 */  cvt.s.w $f10, $f8
/* AC773C 8005059C E60A000C */  swc1  $f10, 0xc($s0)
/* AC7740 800505A0 846CFFF0 */  lh    $t4, -0x10($v1)
/* AC7744 800505A4 448C2000 */  mtc1  $t4, $f4
/* AC7748 800505A8 00000000 */  nop   
/* AC774C 800505AC 468021A0 */  cvt.s.w $f6, $f4
/* AC7750 800505B0 46003202 */  mul.s $f8, $f6, $f0
/* AC7754 800505B4 E6080010 */  swc1  $f8, 0x10($s0)
/* AC7758 800505B8 846BFFF4 */  lh    $t3, -0xc($v1)
/* AC775C 800505BC 448B5000 */  mtc1  $t3, $f10
/* AC7760 800505C0 00000000 */  nop   
/* AC7764 800505C4 46805120 */  cvt.s.w $f4, $f10
/* AC7768 800505C8 46002182 */  mul.s $f6, $f4, $f0
/* AC776C 800505CC E6060014 */  swc1  $f6, 0x14($s0)
/* AC7770 800505D0 846DFFF8 */  lh    $t5, -8($v1)
/* AC7774 800505D4 448D4000 */  mtc1  $t5, $f8
/* AC7778 800505D8 00000000 */  nop   
/* AC777C 800505DC 468042A0 */  cvt.s.w $f10, $f8
/* AC7780 800505E0 46005102 */  mul.s $f4, $f10, $f0
/* AC7784 800505E4 C60A0008 */  lwc1  $f10, 8($s0)
/* AC7788 800505E8 E6040018 */  swc1  $f4, 0x18($s0)
/* AC778C 800505EC 846EFFFC */  lh    $t6, -4($v1)
/* AC7790 800505F0 448E3000 */  mtc1  $t6, $f6
/* AC7794 800505F4 00000000 */  nop   
/* AC7798 800505F8 46803220 */  cvt.s.w $f8, $f6
/* AC779C 800505FC E608001C */  swc1  $f8, 0x1c($s0)
/* AC77A0 80050600 846F0000 */  lh    $t7, ($v1)
/* AC77A4 80050604 A60F0020 */  sh    $t7, 0x20($s0)
/* AC77A8 80050608 87B8006E */  lh    $t8, 0x6e($sp)
/* AC77AC 8005060C 87AA006C */  lh    $t2, 0x6c($sp)
/* AC77B0 80050610 E7AA0084 */  swc1  $f10, 0x84($sp)
/* AC77B4 80050614 27198001 */  addiu $t9, $t8, -0x7fff
/* AC77B8 80050618 A7B9008A */  sh    $t9, 0x8a($sp)
/* AC77BC 8005061C A7AA0088 */  sh    $t2, 0x88($sp)
/* AC77C0 80050620 8E2B0000 */  lw    $t3, ($s1)
/* AC77C4 80050624 8E2C0004 */  lw    $t4, 4($s1)
/* AC77C8 80050628 ACAB0000 */  sw    $t3, ($a1)
/* AC77CC 8005062C 8E2B0008 */  lw    $t3, 8($s1)
/* AC77D0 80050630 ACAC0004 */  sw    $t4, 4($a1)
/* AC77D4 80050634 ACAB0008 */  sw    $t3, 8($a1)
/* AC77D8 80050638 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* AC77DC 8005063C C6060000 */  lwc1  $f6, ($s0)
/* AC77E0 80050640 46062200 */  add.s $f8, $f4, $f6
/* AC77E4 80050644 0C010F0A */  jal   func_80043C28
/* AC77E8 80050648 E7A8009C */   swc1  $f8, 0x9c($sp)
/* AC77EC 8005064C 26110050 */  addiu $s1, $s0, 0x50
/* AC77F0 80050650 2606005C */  addiu $a2, $s0, 0x5c
/* AC77F4 80050654 AFA60038 */  sw    $a2, 0x38($sp)
/* AC77F8 80050658 02202825 */  move  $a1, $s1
/* AC77FC 8005065C 0C01F124 */  jal   func_8007C490
/* AC7800 80050660 27A4007C */   addiu $a0, $sp, 0x7c
/* AC7804 80050664 860D0020 */  lh    $t5, 0x20($s0)
/* AC7808 80050668 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC780C 8005066C C7AA007C */  lwc1  $f10, 0x7c($sp)
/* AC7810 80050670 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* AC7814 80050674 8603015E */  lh    $v1, 0x15e($s0)
/* AC7818 80050678 2401000A */  li    $at, 10
/* AC781C 8005067C 50600005 */  beql  $v1, $zero, .L80050694
/* AC7820 80050680 26030024 */   addiu $v1, $s0, 0x24
/* AC7824 80050684 10610002 */  beq   $v1, $at, .L80050690
/* AC7828 80050688 24010014 */   li    $at, 20
/* AC782C 8005068C 14610014 */  bne   $v1, $at, .L800506E0
.L80050690:
/* AC7830 80050690 26030024 */   addiu $v1, $s0, 0x24
.L80050694:
/* AC7834 80050694 E46A0000 */  swc1  $f10, ($v1)
/* AC7838 80050698 87AE0082 */  lh    $t6, 0x82($sp)
/* AC783C 8005069C 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC7840 800506A0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC7844 800506A4 A46E0004 */  sh    $t6, 4($v1)
/* AC7848 800506A8 87AF0080 */  lh    $t7, 0x80($sp)
/* AC784C 800506AC 44813000 */  mtc1  $at, $f6
/* AC7850 800506B0 A46F0006 */  sh    $t7, 6($v1)
/* AC7854 800506B4 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC7858 800506B8 871901C2 */  lh    $t9, 0x1c2($t8)
/* AC785C 800506BC A4790008 */  sh    $t9, 8($v1)
/* AC7860 800506C0 C6040008 */  lwc1  $f4, 8($s0)
/* AC7864 800506C4 860A015E */  lh    $t2, 0x15e($s0)
/* AC7868 800506C8 C6080008 */  lwc1  $f8, 8($s0)
/* AC786C 800506CC E60400DC */  swc1  $f4, 0xdc($s0)
/* AC7870 800506D0 254C0001 */  addiu $t4, $t2, 1
/* AC7874 800506D4 A60C015E */  sh    $t4, 0x15e($s0)
/* AC7878 800506D8 E60600C0 */  swc1  $f6, 0xc0($s0)
/* AC787C 800506DC E60800DC */  swc1  $f8, 0xdc($s0)
.L800506E0:
/* AC7880 800506E0 26030024 */  addiu $v1, $s0, 0x24
/* AC7884 800506E4 84640008 */  lh    $a0, 8($v1)
/* AC7888 800506E8 C4720000 */  lwc1  $f18, ($v1)
/* AC788C 800506EC 84650004 */  lh    $a1, 4($v1)
/* AC7890 800506F0 1080009D */  beqz  $a0, .L80050968
/* AC7894 800506F4 84680006 */   lh    $t0, 6($v1)
/* AC7898 800506F8 44842000 */  mtc1  $a0, $f4
/* AC789C 800506FC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC78A0 80050700 44815000 */  mtc1  $at, $f10
/* AC78A4 80050704 468021A0 */  cvt.s.w $f6, $f4
/* AC78A8 80050708 C6220000 */  lwc1  $f2, ($s1)
/* AC78AC 8005070C C7A80098 */  lwc1  $f8, 0x98($sp)
/* AC78B0 80050710 C62C0004 */  lwc1  $f12, 4($s1)
/* AC78B4 80050714 C62E0008 */  lwc1  $f14, 8($s1)
/* AC78B8 80050718 46024101 */  sub.s $f4, $f8, $f2
/* AC78BC 8005071C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC78C0 80050720 3C073F80 */  li    $a3, 0x3F800000 # 0.000000
/* AC78C4 80050724 46065003 */  div.s $f0, $f10, $f6
/* AC78C8 80050728 46002282 */  mul.s $f10, $f4, $f0
/* AC78CC 8005072C 460A1180 */  add.s $f6, $f2, $f10
/* AC78D0 80050730 E6260000 */  swc1  $f6, ($s1)
/* AC78D4 80050734 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC78D8 80050738 460C4101 */  sub.s $f4, $f8, $f12
/* AC78DC 8005073C 46002282 */  mul.s $f10, $f4, $f0
/* AC78E0 80050740 460A6180 */  add.s $f6, $f12, $f10
/* AC78E4 80050744 E6260004 */  swc1  $f6, 4($s1)
/* AC78E8 80050748 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* AC78EC 8005074C 460E4101 */  sub.s $f4, $f8, $f14
/* AC78F0 80050750 44814000 */  mtc1  $at, $f8
/* AC78F4 80050754 3C018014 */  lui   $at, %hi(D_8013A1A4)
/* AC78F8 80050758 46002282 */  mul.s $f10, $f4, $f0
/* AC78FC 8005075C 460A7180 */  add.s $f6, $f14, $f10
/* AC7900 80050760 E6260008 */  swc1  $f6, 8($s1)
/* AC7904 80050764 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC7908 80050768 87AD008A */  lh    $t5, 0x8a($sp)
/* AC790C 8005076C C7A60084 */  lwc1  $f6, 0x84($sp)
/* AC7910 80050770 844B01C2 */  lh    $t3, 0x1c2($v0)
/* AC7914 80050774 00AD7023 */  subu  $t6, $a1, $t5
/* AC7918 80050778 000E7C00 */  sll   $t7, $t6, 0x10
/* AC791C 8005077C 448B2000 */  mtc1  $t3, $f4
/* AC7920 80050780 000FC403 */  sra   $t8, $t7, 0x10
/* AC7924 80050784 87AA0088 */  lh    $t2, 0x88($sp)
/* AC7928 80050788 468022A0 */  cvt.s.w $f10, $f4
/* AC792C 8005078C C7AE007C */  lwc1  $f14, 0x7c($sp)
/* AC7930 80050790 010A6023 */  subu  $t4, $t0, $t2
/* AC7934 80050794 000C5C00 */  sll   $t3, $t4, 0x10
/* AC7938 80050798 000B6C03 */  sra   $t5, $t3, 0x10
/* AC793C 8005079C 46069101 */  sub.s $f4, $f18, $f6
/* AC7940 800507A0 460A4003 */  div.s $f0, $f8, $f10
/* AC7944 800507A4 44984000 */  mtc1  $t8, $f8
/* AC7948 800507A8 00000000 */  nop   
/* AC794C 800507AC 468042A0 */  cvt.s.w $f10, $f8
/* AC7950 800507B0 46002402 */  mul.s $f16, $f4, $f0
/* AC7954 800507B4 00000000 */  nop   
/* AC7958 800507B8 46005102 */  mul.s $f4, $f10, $f0
/* AC795C 800507BC 448D5000 */  mtc1  $t5, $f10
/* AC7960 800507C0 4600220D */  trunc.w.s $f8, $f4
/* AC7964 800507C4 46805120 */  cvt.s.w $f4, $f10
/* AC7968 800507C8 44094000 */  mfc1  $t1, $f8
/* AC796C 800507CC 00000000 */  nop   
/* AC7970 800507D0 00094C00 */  sll   $t1, $t1, 0x10
/* AC7974 800507D4 00094C03 */  sra   $t1, $t1, 0x10
/* AC7978 800507D8 46002202 */  mul.s $f8, $f4, $f0
/* AC797C 800507DC 4600428D */  trunc.w.s $f10, $f8
/* AC7980 800507E0 440F5000 */  mfc1  $t7, $f10
/* AC7984 800507E4 00000000 */  nop   
/* AC7988 800507E8 A7AF0050 */  sh    $t7, 0x50($sp)
/* AC798C 800507EC 84780008 */  lh    $t8, 8($v1)
/* AC7990 800507F0 845901CC */  lh    $t9, 0x1cc($v0)
/* AC7994 800507F4 A7A90052 */  sh    $t1, 0x52($sp)
/* AC7998 800507F8 44982000 */  mtc1  $t8, $f4
/* AC799C 800507FC AFA3002C */  sw    $v1, 0x2c($sp)
/* AC79A0 80050800 46802220 */  cvt.s.w $f8, $f4
/* AC79A4 80050804 44992000 */  mtc1  $t9, $f4
/* AC79A8 80050808 46104282 */  mul.s $f10, $f8, $f16
/* AC79AC 8005080C 46802220 */  cvt.s.w $f8, $f4
/* AC79B0 80050810 46065300 */  add.s $f12, $f10, $f6
/* AC79B4 80050814 C42AA1A4 */  lwc1  $f10, %lo(D_8013A1A4)($at)
/* AC79B8 80050818 460A4182 */  mul.s $f6, $f8, $f10
/* AC79BC 8005081C 44063000 */  mfc1  $a2, $f6
/* AC79C0 80050820 0C010E27 */  jal   func_8004389C
/* AC79C4 80050824 00000000 */   nop   
/* AC79C8 80050828 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC79CC 8005082C 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC79D0 80050830 E7A0007C */  swc1  $f0, 0x7c($sp)
/* AC79D4 80050834 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC79D8 80050838 85AE01CC */  lh    $t6, 0x1cc($t5)
/* AC79DC 8005083C 87A90052 */  lh    $t1, 0x52($sp)
/* AC79E0 80050840 846C0008 */  lh    $t4, 8($v1)
/* AC79E4 80050844 448E2000 */  mtc1  $t6, $f4
/* AC79E8 80050848 3C018014 */  lui   $at, %hi(D_8013A1A8)
/* AC79EC 8005084C 012C0019 */  multu $t1, $t4
/* AC79F0 80050850 46802220 */  cvt.s.w $f8, $f4
/* AC79F4 80050854 C42AA1A8 */  lwc1  $f10, %lo(D_8013A1A8)($at)
/* AC79F8 80050858 87AA008A */  lh    $t2, 0x8a($sp)
/* AC79FC 8005085C 87A50082 */  lh    $a1, 0x82($sp)
/* AC7A00 80050860 2407000A */  li    $a3, 10
/* AC7A04 80050864 460A4182 */  mul.s $f6, $f8, $f10
/* AC7A08 80050868 00005812 */  mflo  $t3
/* AC7A0C 8005086C 014B2021 */  addu  $a0, $t2, $t3
/* AC7A10 80050870 00042400 */  sll   $a0, $a0, 0x10
/* AC7A14 80050874 00042403 */  sra   $a0, $a0, 0x10
/* AC7A18 80050878 44063000 */  mfc1  $a2, $f6
/* AC7A1C 8005087C 0C010E47 */  jal   func_8004391C
/* AC7A20 80050880 00000000 */   nop   
/* AC7A24 80050884 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC7A28 80050888 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC7A2C 8005088C A7A20082 */  sh    $v0, 0x82($sp)
/* AC7A30 80050890 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC7A34 80050894 854B01CC */  lh    $t3, 0x1cc($t2)
/* AC7A38 80050898 87AF0050 */  lh    $t7, 0x50($sp)
/* AC7A3C 8005089C 84780008 */  lh    $t8, 8($v1)
/* AC7A40 800508A0 448B2000 */  mtc1  $t3, $f4
/* AC7A44 800508A4 3C018014 */  lui   $at, %hi(D_8013A1AC)
/* AC7A48 800508A8 01F80019 */  multu $t7, $t8
/* AC7A4C 800508AC 46802220 */  cvt.s.w $f8, $f4
/* AC7A50 800508B0 C42AA1AC */  lwc1  $f10, %lo(D_8013A1AC)($at)
/* AC7A54 800508B4 87AC0088 */  lh    $t4, 0x88($sp)
/* AC7A58 800508B8 87A50080 */  lh    $a1, 0x80($sp)
/* AC7A5C 800508BC 2407000A */  li    $a3, 10
/* AC7A60 800508C0 460A4182 */  mul.s $f6, $f8, $f10
/* AC7A64 800508C4 0000C812 */  mflo  $t9
/* AC7A68 800508C8 01992021 */  addu  $a0, $t4, $t9
/* AC7A6C 800508CC 00042400 */  sll   $a0, $a0, 0x10
/* AC7A70 800508D0 00042403 */  sra   $a0, $a0, 0x10
/* AC7A74 800508D4 44063000 */  mfc1  $a2, $f6
/* AC7A78 800508D8 0C010E47 */  jal   func_8004391C
/* AC7A7C 800508DC 00000000 */   nop   
/* AC7A80 800508E0 26040074 */  addiu $a0, $s0, 0x74
/* AC7A84 800508E4 A7A20080 */  sh    $v0, 0x80($sp)
/* AC7A88 800508E8 AFA40030 */  sw    $a0, 0x30($sp)
/* AC7A8C 800508EC 02202825 */  move  $a1, $s1
/* AC7A90 800508F0 0C010F0A */  jal   func_80043C28
/* AC7A94 800508F4 27A6007C */   addiu $a2, $sp, 0x7c
/* AC7A98 800508F8 8FA40030 */  lw    $a0, 0x30($sp)
/* AC7A9C 800508FC 8FA60038 */  lw    $a2, 0x38($sp)
/* AC7AA0 80050900 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC7AA4 80050904 8C8E0000 */  lw    $t6, ($a0)
/* AC7AA8 80050908 3C190001 */  lui   $t9, 1
/* AC7AAC 8005090C 02202825 */  move  $a1, $s1
/* AC7AB0 80050910 ACCE0000 */  sw    $t6, ($a2)
/* AC7AB4 80050914 8C8D0004 */  lw    $t5, 4($a0)
/* AC7AB8 80050918 ACCD0004 */  sw    $t5, 4($a2)
/* AC7ABC 8005091C 8C8E0008 */  lw    $t6, 8($a0)
/* AC7AC0 80050920 02002025 */  move  $a0, $s0
/* AC7AC4 80050924 ACCE0008 */  sw    $t6, 8($a2)
/* AC7AC8 80050928 846F0008 */  lh    $t7, 8($v1)
/* AC7ACC 8005092C 25F8FFFF */  addiu $t8, $t7, -1
/* AC7AD0 80050930 A4780008 */  sh    $t8, 8($v1)
/* AC7AD4 80050934 8E0C008C */  lw    $t4, 0x8c($s0)
/* AC7AD8 80050938 032CC821 */  addu  $t9, $t9, $t4
/* AC7ADC 8005093C 93390A39 */  lbu   $t9, 0xa39($t9)
/* AC7AE0 80050940 17200005 */  bnez  $t9, .L80050958
/* AC7AE4 80050944 00000000 */   nop   
/* AC7AE8 80050948 0C010FCD */  jal   func_80043F34
/* AC7AEC 8005094C 02002025 */   move  $a0, $s0
/* AC7AF0 80050950 10000059 */  b     .L80050AB8
/* AC7AF4 80050954 26020094 */   addiu $v0, $s0, 0x94
.L80050958:
/* AC7AF8 80050958 0C0110D0 */  jal   func_80044340
/* AC7AFC 8005095C 02202825 */   move  $a1, $s1
/* AC7B00 80050960 10000055 */  b     .L80050AB8
/* AC7B04 80050964 26020094 */   addiu $v0, $s0, 0x94
.L80050968:
/* AC7B08 80050968 87A4006C */  lh    $a0, 0x6c($sp)
/* AC7B0C 8005096C 00042023 */  negu  $a0, $a0
/* AC7B10 80050970 00042400 */  sll   $a0, $a0, 0x10
/* AC7B14 80050974 0C01DE1C */  jal   Math_Sins
/* AC7B18 80050978 00042403 */   sra   $a0, $a0, 0x10
/* AC7B1C 8005097C 87A4006C */  lh    $a0, 0x6c($sp)
/* AC7B20 80050980 E7A00058 */  swc1  $f0, 0x58($sp)
/* AC7B24 80050984 00042023 */  negu  $a0, $a0
/* AC7B28 80050988 00042400 */  sll   $a0, $a0, 0x10
/* AC7B2C 8005098C 0C01DE0D */  jal   Math_Coss
/* AC7B30 80050990 00042403 */   sra   $a0, $a0, 0x10
/* AC7B34 80050994 C6040010 */  lwc1  $f4, 0x10($s0)
/* AC7B38 80050998 C7B00058 */  lwc1  $f16, 0x58($sp)
/* AC7B3C 8005099C 87A4006E */  lh    $a0, 0x6e($sp)
/* AC7B40 800509A0 E7A40098 */  swc1  $f4, 0x98($sp)
/* AC7B44 800509A4 C6080014 */  lwc1  $f8, 0x14($s0)
/* AC7B48 800509A8 C6060018 */  lwc1  $f6, 0x18($s0)
/* AC7B4C 800509AC 24848001 */  addiu $a0, $a0, -0x7fff
/* AC7B50 800509B0 46004282 */  mul.s $f10, $f8, $f0
/* AC7B54 800509B4 00042400 */  sll   $a0, $a0, 0x10
/* AC7B58 800509B8 00042403 */  sra   $a0, $a0, 0x10
/* AC7B5C 800509BC 46103102 */  mul.s $f4, $f6, $f16
/* AC7B60 800509C0 46045201 */  sub.s $f8, $f10, $f4
/* AC7B64 800509C4 E7A8009C */  swc1  $f8, 0x9c($sp)
/* AC7B68 800509C8 C6060014 */  lwc1  $f6, 0x14($s0)
/* AC7B6C 800509CC C6040018 */  lwc1  $f4, 0x18($s0)
/* AC7B70 800509D0 46103282 */  mul.s $f10, $f6, $f16
/* AC7B74 800509D4 00000000 */  nop   
/* AC7B78 800509D8 46002202 */  mul.s $f8, $f4, $f0
/* AC7B7C 800509DC 46085180 */  add.s $f6, $f10, $f8
/* AC7B80 800509E0 0C01DE1C */  jal   Math_Sins
/* AC7B84 800509E4 E7A600A0 */   swc1  $f6, 0xa0($sp)
/* AC7B88 800509E8 87A4006E */  lh    $a0, 0x6e($sp)
/* AC7B8C 800509EC E7A00058 */  swc1  $f0, 0x58($sp)
/* AC7B90 800509F0 24848001 */  addiu $a0, $a0, -0x7fff
/* AC7B94 800509F4 00042400 */  sll   $a0, $a0, 0x10
/* AC7B98 800509F8 0C01DE0D */  jal   Math_Coss
/* AC7B9C 800509FC 00042403 */   sra   $a0, $a0, 0x10
/* AC7BA0 80050A00 C7B00058 */  lwc1  $f16, 0x58($sp)
/* AC7BA4 80050A04 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* AC7BA8 80050A08 C7A80098 */  lwc1  $f8, 0x98($sp)
/* AC7BAC 80050A0C 26040074 */  addiu $a0, $s0, 0x74
/* AC7BB0 80050A10 46102282 */  mul.s $f10, $f4, $f16
/* AC7BB4 80050A14 02202825 */  move  $a1, $s1
/* AC7BB8 80050A18 27A6007C */  addiu $a2, $sp, 0x7c
/* AC7BBC 80050A1C 46004182 */  mul.s $f6, $f8, $f0
/* AC7BC0 80050A20 46065100 */  add.s $f4, $f10, $f6
/* AC7BC4 80050A24 E6040010 */  swc1  $f4, 0x10($s0)
/* AC7BC8 80050A28 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC7BCC 80050A2C E6080014 */  swc1  $f8, 0x14($s0)
/* AC7BD0 80050A30 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* AC7BD4 80050A34 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AC7BD8 80050A38 46005182 */  mul.s $f6, $f10, $f0
/* AC7BDC 80050A3C 00000000 */  nop   
/* AC7BE0 80050A40 46102202 */  mul.s $f8, $f4, $f16
/* AC7BE4 80050A44 C6040010 */  lwc1  $f4, 0x10($s0)
/* AC7BE8 80050A48 46083281 */  sub.s $f10, $f6, $f8
/* AC7BEC 80050A4C E60A0018 */  swc1  $f10, 0x18($s0)
/* AC7BF0 80050A50 C7A60060 */  lwc1  $f6, 0x60($sp)
/* AC7BF4 80050A54 46062200 */  add.s $f8, $f4, $f6
/* AC7BF8 80050A58 E6280000 */  swc1  $f8, ($s1)
/* AC7BFC 80050A5C C7A40064 */  lwc1  $f4, 0x64($sp)
/* AC7C00 80050A60 C60A0014 */  lwc1  $f10, 0x14($s0)
/* AC7C04 80050A64 46045180 */  add.s $f6, $f10, $f4
/* AC7C08 80050A68 E6260004 */  swc1  $f6, 4($s1)
/* AC7C0C 80050A6C C7AA0068 */  lwc1  $f10, 0x68($sp)
/* AC7C10 80050A70 C6080018 */  lwc1  $f8, 0x18($s0)
/* AC7C14 80050A74 460A4100 */  add.s $f4, $f8, $f10
/* AC7C18 80050A78 E6240008 */  swc1  $f4, 8($s1)
/* AC7C1C 80050A7C 87AA006E */  lh    $t2, 0x6e($sp)
/* AC7C20 80050A80 C6060008 */  lwc1  $f6, 8($s0)
/* AC7C24 80050A84 87AD006C */  lh    $t5, 0x6c($sp)
/* AC7C28 80050A88 254B8001 */  addiu $t3, $t2, -0x7fff
/* AC7C2C 80050A8C A7AB0082 */  sh    $t3, 0x82($sp)
/* AC7C30 80050A90 E7A6007C */  swc1  $f6, 0x7c($sp)
/* AC7C34 80050A94 0C010F0A */  jal   func_80043C28
/* AC7C38 80050A98 A7AD0080 */   sh    $t5, 0x80($sp)
/* AC7C3C 80050A9C C6080004 */  lwc1  $f8, 4($s0)
/* AC7C40 80050AA0 8FA40038 */  lw    $a0, 0x38($sp)
/* AC7C44 80050AA4 02202825 */  move  $a1, $s1
/* AC7C48 80050AA8 27A6007C */  addiu $a2, $sp, 0x7c
/* AC7C4C 80050AAC 0C010F0A */  jal   func_80043C28
/* AC7C50 80050AB0 E7A8007C */   swc1  $f8, 0x7c($sp)
/* AC7C54 80050AB4 26020094 */  addiu $v0, $s0, 0x94
.L80050AB8:
/* AC7C58 80050AB8 C4440000 */  lwc1  $f4, ($v0)
/* AC7C5C 80050ABC C60A0050 */  lwc1  $f10, 0x50($s0)
/* AC7C60 80050AC0 C6080054 */  lwc1  $f8, 0x54($s0)
/* AC7C64 80050AC4 C60C001C */  lwc1  $f12, 0x1c($s0)
/* AC7C68 80050AC8 46045181 */  sub.s $f6, $f10, $f4
/* AC7C6C 80050ACC C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC7C70 80050AD0 3C063E80 */  lui   $a2, 0x3e80
/* AC7C74 80050AD4 3C073F80 */  li    $a3, 0x3F800000 # 0.000000
/* AC7C78 80050AD8 E60600E4 */  swc1  $f6, 0xe4($s0)
/* AC7C7C 80050ADC C44A0004 */  lwc1  $f10, 4($v0)
/* AC7C80 80050AE0 C6060058 */  lwc1  $f6, 0x58($s0)
/* AC7C84 80050AE4 460A4101 */  sub.s $f4, $f8, $f10
/* AC7C88 80050AE8 E60400E8 */  swc1  $f4, 0xe8($s0)
/* AC7C8C 80050AEC C4480008 */  lwc1  $f8, 8($v0)
/* AC7C90 80050AF0 46083281 */  sub.s $f10, $f6, $f8
/* AC7C94 80050AF4 0C010E27 */  jal   func_8004389C
/* AC7C98 80050AF8 E60A00EC */   swc1  $f10, 0xec($s0)
/* AC7C9C 80050AFC 44802000 */  mtc1  $zero, $f4
/* AC7CA0 80050B00 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC7CA4 80050B04 A600015A */  sh    $zero, 0x15a($s0)
/* AC7CA8 80050B08 24020001 */  li    $v0, 1
/* AC7CAC 80050B0C E6040100 */  swc1  $f4, 0x100($s0)
.L80050B10:
/* AC7CB0 80050B10 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC7CB4 80050B14 8FB00014 */  lw    $s0, 0x14($sp)
/* AC7CB8 80050B18 8FB10018 */  lw    $s1, 0x18($sp)
/* AC7CBC 80050B1C 03E00008 */  jr    $ra
/* AC7CC0 80050B20 27BD00B0 */   addiu $sp, $sp, 0xb0
# SPLIT
/* AC7CC4 80050B24 27BDFF48 */  addiu $sp, $sp, -0xb8
/* AC7CC8 80050B28 AFBF0024 */  sw    $ra, 0x24($sp)
/* AC7CCC 80050B2C AFB30020 */  sw    $s3, 0x20($sp)
/* AC7CD0 80050B30 AFB2001C */  sw    $s2, 0x1c($sp)
/* AC7CD4 80050B34 AFB10018 */  sw    $s1, 0x18($sp)
/* AC7CD8 80050B38 AFB00014 */  sw    $s0, 0x14($sp)
/* AC7CDC 80050B3C 8482015E */  lh    $v0, 0x15e($a0)
/* AC7CE0 80050B40 00808825 */  move  $s1, $a0
/* AC7CE4 80050B44 2401000A */  li    $at, 10
/* AC7CE8 80050B48 5040000A */  beql  $v0, $zero, .L80050B74
/* AC7CEC 80050B4C 862F0142 */   lh    $t7, 0x142($s1)
/* AC7CF0 80050B50 10410007 */  beq   $v0, $at, .L80050B70
/* AC7CF4 80050B54 24010014 */   li    $at, 20
/* AC7CF8 80050B58 10410005 */  beq   $v0, $at, .L80050B70
/* AC7CFC 80050B5C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC7D00 80050B60 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC7D04 80050B64 85C20314 */  lh    $v0, 0x314($t6)
/* AC7D08 80050B68 1040000F */  beqz  $v0, .L80050BA8
/* AC7D0C 80050B6C 00000000 */   nop   
.L80050B70:
/* AC7D10 80050B70 862F0142 */  lh    $t7, 0x142($s1)
.L80050B74:
/* AC7D14 80050B74 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC7D18 80050B78 86280144 */  lh    $t0, 0x144($s1)
/* AC7D1C 80050B7C 000FC0C0 */  sll   $t8, $t7, 3
/* AC7D20 80050B80 0338C821 */  addu  $t9, $t9, $t8
/* AC7D24 80050B84 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC7D28 80050B88 000848C0 */  sll   $t1, $t0, 3
/* AC7D2C 80050B8C 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC7D30 80050B90 03295021 */  addu  $t2, $t9, $t1
/* AC7D34 80050B94 8D430004 */  lw    $v1, 4($t2)
/* AC7D38 80050B98 846B0000 */  lh    $t3, ($v1)
/* AC7D3C 80050B9C A62B0000 */  sh    $t3, ($s1)
/* AC7D40 80050BA0 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC7D44 80050BA4 85820314 */  lh    $v0, 0x314($t4)
.L80050BA8:
/* AC7D48 80050BA8 50400004 */  beql  $v0, $zero, .L80050BBC
/* AC7D4C 80050BAC 8E23008C */   lw    $v1, 0x8c($s1)
/* AC7D50 80050BB0 0C011495 */  jal   func_80045254
/* AC7D54 80050BB4 02202025 */   move  $a0, $s1
/* AC7D58 80050BB8 8E23008C */  lw    $v1, 0x8c($s1)
.L80050BBC:
/* AC7D5C 80050BBC 27A4006C */  addiu $a0, $sp, 0x6c
/* AC7D60 80050BC0 8C6D01DC */  lw    $t5, 0x1dc($v1)
/* AC7D64 80050BC4 15A00008 */  bnez  $t5, .L80050BE8
/* AC7D68 80050BC8 00000000 */   nop   
/* AC7D6C 80050BCC 862E0164 */  lh    $t6, 0x164($s1)
/* AC7D70 80050BD0 24020001 */  li    $v0, 1
/* AC7D74 80050BD4 35CF0050 */  ori   $t7, $t6, 0x50
/* AC7D78 80050BD8 AC6F01DC */  sw    $t7, 0x1dc($v1)
/* AC7D7C 80050BDC C62400D8 */  lwc1  $f4, 0xd8($s1)
/* AC7D80 80050BE0 10000168 */  b     .L80051184
/* AC7D84 80050BE4 E6240028 */   swc1  $f4, 0x28($s1)
.L80050BE8:
/* AC7D88 80050BE8 0C00BBD1 */  jal   func_8002EF44
/* AC7D8C 80050BEC 8E250090 */   lw    $a1, 0x90($s1)
/* AC7D90 80050BF0 26320050 */  addiu $s2, $s1, 0x50
/* AC7D94 80050BF4 2633005C */  addiu $s3, $s1, 0x5c
/* AC7D98 80050BF8 02603025 */  move  $a2, $s3
/* AC7D9C 80050BFC 02402825 */  move  $a1, $s2
/* AC7DA0 80050C00 0C01F124 */  jal   func_8007C490
/* AC7DA4 80050C04 27A4005C */   addiu $a0, $sp, 0x5c
/* AC7DA8 80050C08 86380000 */  lh    $t8, ($s1)
/* AC7DAC 80050C0C 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC7DB0 80050C10 02202025 */  move  $a0, $s1
/* AC7DB4 80050C14 AC38D3A0 */  sw    $t8, %lo(D_8011D3A0)($at)
/* AC7DB8 80050C18 8628015E */  lh    $t0, 0x15e($s1)
/* AC7DBC 80050C1C 55000056 */  bnezl $t0, .L80050D78
/* AC7DC0 80050C20 26300004 */   addiu $s0, $s1, 4
/* AC7DC4 80050C24 0C011207 */  jal   func_8004481C
/* AC7DC8 80050C28 27A500AA */   addiu $a1, $sp, 0xaa
/* AC7DCC 80050C2C 26300004 */  addiu $s0, $s1, 4
/* AC7DD0 80050C30 AFA200A4 */  sw    $v0, 0xa4($sp)
/* AC7DD4 80050C34 02002025 */  move  $a0, $s0
/* AC7DD8 80050C38 0C010EF1 */  jal   func_80043BC4
/* AC7DDC 80050C3C 24450006 */   addiu $a1, $v0, 6
/* AC7DE0 80050C40 97B900AA */  lhu   $t9, 0xaa($sp)
/* AC7DE4 80050C44 8FAA00A4 */  lw    $t2, 0xa4($sp)
/* AC7DE8 80050C48 27A40098 */  addiu $a0, $sp, 0x98
/* AC7DEC 80050C4C 00194880 */  sll   $t1, $t9, 2
/* AC7DF0 80050C50 01394823 */  subu  $t1, $t1, $t9
/* AC7DF4 80050C54 00094840 */  sll   $t1, $t1, 1
/* AC7DF8 80050C58 012A2821 */  addu  $a1, $t1, $t2
/* AC7DFC 80050C5C 0C010EF1 */  jal   func_80043BC4
/* AC7E00 80050C60 24A5FFF4 */   addiu $a1, $a1, -0xc
/* AC7E04 80050C64 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC7E08 80050C68 44813000 */  mtc1  $at, $f6
/* AC7E0C 80050C6C 240B238C */  li    $t3, 9100
/* AC7E10 80050C70 A7AB0068 */  sh    $t3, 0x68($sp)
/* AC7E14 80050C74 27A40098 */  addiu $a0, $sp, 0x98
/* AC7E18 80050C78 02002825 */  move  $a1, $s0
/* AC7E1C 80050C7C 0C01129D */  jal   func_80044A74
/* AC7E20 80050C80 E7A60064 */   swc1  $f6, 0x64($sp)
/* AC7E24 80050C84 26240094 */  addiu $a0, $s1, 0x94
/* AC7E28 80050C88 A7A2006A */  sh    $v0, 0x6a($sp)
/* AC7E2C 80050C8C AFA40034 */  sw    $a0, 0x34($sp)
/* AC7E30 80050C90 0C01EFE4 */  jal   func_8007BF90
/* AC7E34 80050C94 02002825 */   move  $a1, $s0
/* AC7E38 80050C98 8FA40034 */  lw    $a0, 0x34($sp)
/* AC7E3C 80050C9C 27A50098 */  addiu $a1, $sp, 0x98
/* AC7E40 80050CA0 0C01EFE4 */  jal   func_8007BF90
/* AC7E44 80050CA4 E7A00088 */   swc1  $f0, 0x88($sp)
/* AC7E48 80050CA8 C7A20088 */  lwc1  $f2, 0x88($sp)
/* AC7E4C 80050CAC C7AA0098 */  lwc1  $f10, 0x98($sp)
/* AC7E50 80050CB0 2419000A */  li    $t9, 10
/* AC7E54 80050CB4 4602003C */  c.lt.s $f0, $f2
/* AC7E58 80050CB8 00000000 */  nop   
/* AC7E5C 80050CBC 45020016 */  bc1fl .L80050D18
/* AC7E60 80050CC0 C6040000 */   lwc1  $f4, ($s0)
/* AC7E64 80050CC4 C6080000 */  lwc1  $f8, ($s0)
/* AC7E68 80050CC8 C7AA0098 */  lwc1  $f10, 0x98($sp)
/* AC7E6C 80050CCC C6060004 */  lwc1  $f6, 4($s0)
/* AC7E70 80050CD0 27AC0098 */  addiu $t4, $sp, 0x98
/* AC7E74 80050CD4 460A4101 */  sub.s $f4, $f8, $f10
/* AC7E78 80050CD8 E604000C */  swc1  $f4, 0xc($s0)
/* AC7E7C 80050CDC C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC7E80 80050CE0 C6040008 */  lwc1  $f4, 8($s0)
/* AC7E84 80050CE4 46083281 */  sub.s $f10, $f6, $f8
/* AC7E88 80050CE8 E60A0010 */  swc1  $f10, 0x10($s0)
/* AC7E8C 80050CEC C7A600A0 */  lwc1  $f6, 0xa0($sp)
/* AC7E90 80050CF0 46062201 */  sub.s $f8, $f4, $f6
/* AC7E94 80050CF4 E6080014 */  swc1  $f8, 0x14($s0)
/* AC7E98 80050CF8 8D8E0000 */  lw    $t6, ($t4)
/* AC7E9C 80050CFC AE0E0000 */  sw    $t6, ($s0)
/* AC7EA0 80050D00 8D8D0004 */  lw    $t5, 4($t4)
/* AC7EA4 80050D04 AE0D0004 */  sw    $t5, 4($s0)
/* AC7EA8 80050D08 8D8E0008 */  lw    $t6, 8($t4)
/* AC7EAC 80050D0C 1000000F */  b     .L80050D4C
/* AC7EB0 80050D10 AE0E0008 */   sw    $t6, 8($s0)
/* AC7EB4 80050D14 C6040000 */  lwc1  $f4, ($s0)
.L80050D18:
/* AC7EB8 80050D18 46045181 */  sub.s $f6, $f10, $f4
/* AC7EBC 80050D1C C60A0004 */  lwc1  $f10, 4($s0)
/* AC7EC0 80050D20 E606000C */  swc1  $f6, 0xc($s0)
/* AC7EC4 80050D24 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC7EC8 80050D28 460A4101 */  sub.s $f4, $f8, $f10
/* AC7ECC 80050D2C C6080008 */  lwc1  $f8, 8($s0)
/* AC7ED0 80050D30 E6040010 */  swc1  $f4, 0x10($s0)
/* AC7ED4 80050D34 C7A600A0 */  lwc1  $f6, 0xa0($sp)
/* AC7ED8 80050D38 46083281 */  sub.s $f10, $f6, $f8
/* AC7EDC 80050D3C E60A0014 */  swc1  $f10, 0x14($s0)
/* AC7EE0 80050D40 87AF006A */  lh    $t7, 0x6a($sp)
/* AC7EE4 80050D44 25F88001 */  addiu $t8, $t7, -0x7fff
/* AC7EE8 80050D48 A7B8006A */  sh    $t8, 0x6a($sp)
.L80050D4C:
/* AC7EEC 80050D4C 87A8006A */  lh    $t0, 0x6a($sp)
/* AC7EF0 80050D50 44802000 */  mtc1  $zero, $f4
/* AC7EF4 80050D54 A6190032 */  sh    $t9, 0x32($s0)
/* AC7EF8 80050D58 A600002C */  sh    $zero, 0x2c($s0)
/* AC7EFC 80050D5C A600002E */  sh    $zero, 0x2e($s0)
/* AC7F00 80050D60 A6080030 */  sh    $t0, 0x30($s0)
/* AC7F04 80050D64 E6040028 */  swc1  $f4, 0x28($s0)
/* AC7F08 80050D68 8629015E */  lh    $t1, 0x15e($s1)
/* AC7F0C 80050D6C 252A0001 */  addiu $t2, $t1, 1
/* AC7F10 80050D70 A62A015E */  sh    $t2, 0x15e($s1)
/* AC7F14 80050D74 26300004 */  addiu $s0, $s1, 4
.L80050D78:
/* AC7F18 80050D78 860B0032 */  lh    $t3, 0x32($s0)
/* AC7F1C 80050D7C 240C238C */  li    $t4, 9100
/* AC7F20 80050D80 27A4008C */  addiu $a0, $sp, 0x8c
/* AC7F24 80050D84 11600062 */  beqz  $t3, .L80050F10
/* AC7F28 80050D88 3C013F00 */   lui   $at, 0x3f00
/* AC7F2C 80050D8C 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC7F30 80050D90 44813000 */  mtc1  $at, $f6
/* AC7F34 80050D94 A7AC0068 */  sh    $t4, 0x68($sp)
/* AC7F38 80050D98 27A5006C */  addiu $a1, $sp, 0x6c
/* AC7F3C 80050D9C E7A60064 */  swc1  $f6, 0x64($sp)
/* AC7F40 80050DA0 860D0030 */  lh    $t5, 0x30($s0)
/* AC7F44 80050DA4 27A60064 */  addiu $a2, $sp, 0x64
/* AC7F48 80050DA8 0C010F0A */  jal   func_80043C28
/* AC7F4C 80050DAC A7AD006A */   sh    $t5, 0x6a($sp)
/* AC7F50 80050DB0 860E0032 */  lh    $t6, 0x32($s0)
/* AC7F54 80050DB4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC7F58 80050DB8 44812000 */  mtc1  $at, $f4
/* AC7F5C 80050DBC 448E4000 */  mtc1  $t6, $f8
/* AC7F60 80050DC0 C6400000 */  lwc1  $f0, ($s2)
/* AC7F64 80050DC4 C7A6008C */  lwc1  $f6, 0x8c($sp)
/* AC7F68 80050DC8 468042A0 */  cvt.s.w $f10, $f8
/* AC7F6C 80050DCC C64C0004 */  lwc1  $f12, 4($s2)
/* AC7F70 80050DD0 C64E0008 */  lwc1  $f14, 8($s2)
/* AC7F74 80050DD4 26270074 */  addiu $a3, $s1, 0x74
/* AC7F78 80050DD8 00E02025 */  move  $a0, $a3
/* AC7F7C 80050DDC 46003201 */  sub.s $f8, $f6, $f0
/* AC7F80 80050DE0 02402825 */  move  $a1, $s2
/* AC7F84 80050DE4 27A6005C */  addiu $a2, $sp, 0x5c
/* AC7F88 80050DE8 46045080 */  add.s $f2, $f10, $f4
/* AC7F8C 80050DEC 46024283 */  div.s $f10, $f8, $f2
/* AC7F90 80050DF0 460A0100 */  add.s $f4, $f0, $f10
/* AC7F94 80050DF4 E6440000 */  swc1  $f4, ($s2)
/* AC7F98 80050DF8 C7A60090 */  lwc1  $f6, 0x90($sp)
/* AC7F9C 80050DFC 460C3201 */  sub.s $f8, $f6, $f12
/* AC7FA0 80050E00 46024283 */  div.s $f10, $f8, $f2
/* AC7FA4 80050E04 460A6100 */  add.s $f4, $f12, $f10
/* AC7FA8 80050E08 E6440004 */  swc1  $f4, 4($s2)
/* AC7FAC 80050E0C C7A60094 */  lwc1  $f6, 0x94($sp)
/* AC7FB0 80050E10 460E3201 */  sub.s $f8, $f6, $f14
/* AC7FB4 80050E14 46024283 */  div.s $f10, $f8, $f2
/* AC7FB8 80050E18 460A7100 */  add.s $f4, $f14, $f10
/* AC7FBC 80050E1C E6440008 */  swc1  $f4, 8($s2)
/* AC7FC0 80050E20 C7A6005C */  lwc1  $f6, 0x5c($sp)
/* AC7FC4 80050E24 87AF007A */  lh    $t7, 0x7a($sp)
/* AC7FC8 80050E28 87A90062 */  lh    $t1, 0x62($sp)
/* AC7FCC 80050E2C 46023203 */  div.s $f8, $f6, $f2
/* AC7FD0 80050E30 25F88001 */  addiu $t8, $t7, -0x7fff
/* AC7FD4 80050E34 00184400 */  sll   $t0, $t8, 0x10
/* AC7FD8 80050E38 0008CC03 */  sra   $t9, $t0, 0x10
/* AC7FDC 80050E3C 03295023 */  subu  $t2, $t9, $t1
/* AC7FE0 80050E40 000A5C00 */  sll   $t3, $t2, 0x10
/* AC7FE4 80050E44 000B6403 */  sra   $t4, $t3, 0x10
/* AC7FE8 80050E48 87A80060 */  lh    $t0, 0x60($sp)
/* AC7FEC 80050E4C 87B80078 */  lh    $t8, 0x78($sp)
/* AC7FF0 80050E50 0308C823 */  subu  $t9, $t8, $t0
/* AC7FF4 80050E54 00195400 */  sll   $t2, $t9, 0x10
/* AC7FF8 80050E58 000A5C03 */  sra   $t3, $t2, 0x10
/* AC7FFC 80050E5C 46083281 */  sub.s $f10, $f6, $f8
/* AC8000 80050E60 E7AA005C */  swc1  $f10, 0x5c($sp)
/* AC8004 80050E64 860D0032 */  lh    $t5, 0x32($s0)
/* AC8008 80050E68 018D001A */  div   $zero, $t4, $t5
/* AC800C 80050E6C 00007012 */  mflo  $t6
/* AC8010 80050E70 012E7821 */  addu  $t7, $t1, $t6
/* AC8014 80050E74 15A00002 */  bnez  $t5, .L80050E80
/* AC8018 80050E78 00000000 */   nop   
/* AC801C 80050E7C 0007000D */  break 7
.L80050E80:
/* AC8020 80050E80 2401FFFF */  li    $at, -1
/* AC8024 80050E84 15A10004 */  bne   $t5, $at, .L80050E98
/* AC8028 80050E88 3C018000 */   lui   $at, 0x8000
/* AC802C 80050E8C 15810002 */  bne   $t4, $at, .L80050E98
/* AC8030 80050E90 00000000 */   nop   
/* AC8034 80050E94 0006000D */  break 6
.L80050E98:
/* AC8038 80050E98 A7AF0062 */  sh    $t7, 0x62($sp)
/* AC803C 80050E9C 860C0032 */  lh    $t4, 0x32($s0)
/* AC8040 80050EA0 AFA70034 */  sw    $a3, 0x34($sp)
/* AC8044 80050EA4 016C001A */  div   $zero, $t3, $t4
/* AC8048 80050EA8 00006812 */  mflo  $t5
/* AC804C 80050EAC 010D4821 */  addu  $t1, $t0, $t5
/* AC8050 80050EB0 15800002 */  bnez  $t4, .L80050EBC
/* AC8054 80050EB4 00000000 */   nop   
/* AC8058 80050EB8 0007000D */  break 7
.L80050EBC:
/* AC805C 80050EBC 2401FFFF */  li    $at, -1
/* AC8060 80050EC0 15810004 */  bne   $t4, $at, .L80050ED4
/* AC8064 80050EC4 3C018000 */   li    $at, 0x80000000 # 0.000000
/* AC8068 80050EC8 15610002 */  bne   $t3, $at, .L80050ED4
/* AC806C 80050ECC 00000000 */   nop   
/* AC8070 80050ED0 0006000D */  break 6
.L80050ED4:
/* AC8074 80050ED4 A7A90060 */  sh    $t1, 0x60($sp)
/* AC8078 80050ED8 0C010F0A */  jal   func_80043C28
/* AC807C 80050EDC 00000000 */   nop   
/* AC8080 80050EE0 8FA70034 */  lw    $a3, 0x34($sp)
/* AC8084 80050EE4 00001025 */  move  $v0, $zero
/* AC8088 80050EE8 8CEF0000 */  lw    $t7, ($a3)
/* AC808C 80050EEC AE6F0000 */  sw    $t7, ($s3)
/* AC8090 80050EF0 8CEE0004 */  lw    $t6, 4($a3)
/* AC8094 80050EF4 AE6E0004 */  sw    $t6, 4($s3)
/* AC8098 80050EF8 8CEF0008 */  lw    $t7, 8($a3)
/* AC809C 80050EFC AE6F0008 */  sw    $t7, 8($s3)
/* AC80A0 80050F00 86180032 */  lh    $t8, 0x32($s0)
/* AC80A4 80050F04 2719FFFF */  addiu $t9, $t8, -1
/* AC80A8 80050F08 1000009E */  b     .L80051184
/* AC80AC 80050F0C A6190032 */   sh    $t9, 0x32($s0)
.L80050F10:
/* AC80B0 80050F10 C6040024 */  lwc1  $f4, 0x24($s0)
/* AC80B4 80050F14 44813000 */  mtc1  $at, $f6
/* AC80B8 80050F18 27A4006C */  addiu $a0, $sp, 0x6c
/* AC80BC 80050F1C 4606203C */  c.lt.s $f4, $f6
/* AC80C0 80050F20 00000000 */  nop   
/* AC80C4 80050F24 45000003 */  bc1f  .L80050F34
/* AC80C8 80050F28 00000000 */   nop   
/* AC80CC 80050F2C 10000095 */  b     .L80051184
/* AC80D0 80050F30 00001025 */   move  $v0, $zero
.L80050F34:
/* AC80D4 80050F34 0C00BBD1 */  jal   func_8002EF44
/* AC80D8 80050F38 8E250090 */   lw    $a1, 0x90($s1)
/* AC80DC 80050F3C 26270074 */  addiu $a3, $s1, 0x74
/* AC80E0 80050F40 00E03025 */  move  $a2, $a3
/* AC80E4 80050F44 AFA70034 */  sw    $a3, 0x34($sp)
/* AC80E8 80050F48 02002025 */  move  $a0, $s0
/* AC80EC 80050F4C 0C032AE5 */  jal   func_800CAB94
/* AC80F0 80050F50 27A5006C */   addiu $a1, $sp, 0x6c
/* AC80F4 80050F54 8FA50034 */  lw    $a1, 0x34($sp)
/* AC80F8 80050F58 C60A000C */  lwc1  $f10, 0xc($s0)
/* AC80FC 80050F5C 3C0140A0 */  li    $at, 0x40A00000 # 0.000000
/* AC8100 80050F60 C4A80000 */  lwc1  $f8, ($a1)
/* AC8104 80050F64 2408238C */  li    $t0, 9100
/* AC8108 80050F68 27A40098 */  addiu $a0, $sp, 0x98
/* AC810C 80050F6C 460A4100 */  add.s $f4, $f8, $f10
/* AC8110 80050F70 27A60064 */  addiu $a2, $sp, 0x64
/* AC8114 80050F74 E6440000 */  swc1  $f4, ($s2)
/* AC8118 80050F78 C6080010 */  lwc1  $f8, 0x10($s0)
/* AC811C 80050F7C C4A60004 */  lwc1  $f6, 4($a1)
/* AC8120 80050F80 46083280 */  add.s $f10, $f6, $f8
/* AC8124 80050F84 E64A0004 */  swc1  $f10, 4($s2)
/* AC8128 80050F88 C6060014 */  lwc1  $f6, 0x14($s0)
/* AC812C 80050F8C C4A40008 */  lwc1  $f4, 8($a1)
/* AC8130 80050F90 44815000 */  mtc1  $at, $f10
/* AC8134 80050F94 46062200 */  add.s $f8, $f4, $f6
/* AC8138 80050F98 E6480008 */  swc1  $f8, 8($s2)
/* AC813C 80050F9C 8CAB0000 */  lw    $t3, ($a1)
/* AC8140 80050FA0 AE6B0000 */  sw    $t3, ($s3)
/* AC8144 80050FA4 8CAA0004 */  lw    $t2, 4($a1)
/* AC8148 80050FA8 AE6A0004 */  sw    $t2, 4($s3)
/* AC814C 80050FAC 8CAB0008 */  lw    $t3, 8($a1)
/* AC8150 80050FB0 AE6B0008 */  sw    $t3, 8($s3)
/* AC8154 80050FB4 860C0030 */  lh    $t4, 0x30($s0)
/* AC8158 80050FB8 A7A80068 */  sh    $t0, 0x68($sp)
/* AC815C 80050FBC E7AA0064 */  swc1  $f10, 0x64($sp)
/* AC8160 80050FC0 0C010F0A */  jal   func_80043C28
/* AC8164 80050FC4 A7AC006A */   sh    $t4, 0x6a($sp)
/* AC8168 80050FC8 860D002C */  lh    $t5, 0x2c($s0)
/* AC816C 80050FCC 25A90BB8 */  addiu $t1, $t5, 0xbb8
/* AC8170 80050FD0 A609002C */  sh    $t1, 0x2c($s0)
/* AC8174 80050FD4 0C01DE0D */  jal   Math_Coss
/* AC8178 80050FD8 8604002C */   lh    $a0, 0x2c($s0)
/* AC817C 80050FDC C66C0000 */  lwc1  $f12, ($s3)
/* AC8180 80050FE0 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AC8184 80050FE4 46000406 */  mov.s $f16, $f0
/* AC8188 80050FE8 46000005 */  abs.s $f0, $f0
/* AC818C 80050FEC 460C2181 */  sub.s $f6, $f4, $f12
/* AC8190 80050FF0 8FA70034 */  lw    $a3, 0x34($sp)
/* AC8194 80050FF4 C66E0004 */  lwc1  $f14, 4($s3)
/* AC8198 80050FF8 C6620008 */  lwc1  $f2, 8($s3)
/* AC819C 80050FFC 46003202 */  mul.s $f8, $f6, $f0
/* AC81A0 80051000 46008005 */  abs.s $f0, $f16
/* AC81A4 80051004 46086280 */  add.s $f10, $f12, $f8
/* AC81A8 80051008 E66A0000 */  swc1  $f10, ($s3)
/* AC81AC 8005100C C7A4009C */  lwc1  $f4, 0x9c($sp)
/* AC81B0 80051010 460E2181 */  sub.s $f6, $f4, $f14
/* AC81B4 80051014 46003202 */  mul.s $f8, $f6, $f0
/* AC81B8 80051018 46087280 */  add.s $f10, $f14, $f8
/* AC81BC 8005101C E66A0004 */  swc1  $f10, 4($s3)
/* AC81C0 80051020 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* AC81C4 80051024 46022181 */  sub.s $f6, $f4, $f2
/* AC81C8 80051028 46003202 */  mul.s $f8, $f6, $f0
/* AC81CC 8005102C 46081280 */  add.s $f10, $f2, $f8
/* AC81D0 80051030 E66A0008 */  swc1  $f10, 8($s3)
/* AC81D4 80051034 C6120028 */  lwc1  $f18, 0x28($s0)
/* AC81D8 80051038 4610903C */  c.lt.s $f18, $f16
/* AC81DC 8005103C 00000000 */  nop   
/* AC81E0 80051040 45020013 */  bc1fl .L80051090
/* AC81E4 80051044 4612803C */   c.lt.s $f16, $f18
/* AC81E8 80051048 860E002E */  lh    $t6, 0x2e($s0)
/* AC81EC 8005104C 240F0001 */  li    $t7, 1
/* AC81F0 80051050 55C0000F */  bnezl $t6, .L80051090
/* AC81F4 80051054 4612803C */   c.lt.s $f16, $f18
/* AC81F8 80051058 8E220090 */  lw    $v0, 0x90($s1)
/* AC81FC 8005105C A60F002E */  sh    $t7, 0x2e($s0)
/* AC8200 80051060 3C064080 */  lui   $a2, 0x4080
/* AC8204 80051064 9445089E */  lhu   $a1, 0x89e($v0)
/* AC8208 80051068 E7B00080 */  swc1  $f16, 0x80($sp)
/* AC820C 8005106C AFA70034 */  sw    $a3, 0x34($sp)
/* AC8210 80051070 24A508B0 */  addiu $a1, $a1, 0x8b0
/* AC8214 80051074 30A5FFFF */  andi  $a1, $a1, 0xffff
/* AC8218 80051078 0C03D004 */  jal   func_800F4010
/* AC821C 8005107C 244400E4 */   addiu $a0, $v0, 0xe4
/* AC8220 80051080 8FA70034 */  lw    $a3, 0x34($sp)
/* AC8224 80051084 10000006 */  b     .L800510A0
/* AC8228 80051088 C7B00080 */   lwc1  $f16, 0x80($sp)
/* AC822C 8005108C 4612803C */  c.lt.s $f16, $f18
.L80051090:
/* AC8230 80051090 00000000 */  nop   
/* AC8234 80051094 45020003 */  bc1fl .L800510A4
/* AC8238 80051098 E6100028 */   swc1  $f16, 0x28($s0)
/* AC823C 8005109C A600002E */  sh    $zero, 0x2e($s0)
.L800510A0:
/* AC8240 800510A0 E6100028 */  swc1  $f16, 0x28($s0)
.L800510A4:
/* AC8244 800510A4 8E380090 */  lw    $t8, 0x90($s1)
/* AC8248 800510A8 8CEA0000 */  lw    $t2, ($a3)
/* AC824C 800510AC 3C018014 */  lui   $at, %hi(D_8013A1B0)
/* AC8250 800510B0 AF0A0024 */  sw    $t2, 0x24($t8)
/* AC8254 800510B4 8CF90004 */  lw    $t9, 4($a3)
/* AC8258 800510B8 AF190028 */  sw    $t9, 0x28($t8)
/* AC825C 800510BC 8CEA0008 */  lw    $t2, 8($a3)
/* AC8260 800510C0 AF0A002C */  sw    $t2, 0x2c($t8)
/* AC8264 800510C4 8E2B0090 */  lw    $t3, 0x90($s1)
/* AC8268 800510C8 C6240104 */  lwc1  $f4, 0x104($s1)
/* AC826C 800510CC E5640028 */  swc1  $f4, 0x28($t3)
/* AC8270 800510D0 8E280090 */  lw    $t0, 0x90($s1)
/* AC8274 800510D4 87AC006A */  lh    $t4, 0x6a($sp)
/* AC8278 800510D8 A50C00B6 */  sh    $t4, 0xb6($t0)
/* AC827C 800510DC C428A1B0 */  lwc1  $f8, %lo(D_8013A1B0)($at)
/* AC8280 800510E0 C6060024 */  lwc1  $f6, 0x24($s0)
/* AC8284 800510E4 3C014370 */  li    $at, 0x43700000 # 0.000000
/* AC8288 800510E8 44812000 */  mtc1  $at, $f4
/* AC828C 800510EC 46083282 */  mul.s $f10, $f6, $f8
/* AC8290 800510F0 860D0030 */  lh    $t5, 0x30($s0)
/* AC8294 800510F4 46102182 */  mul.s $f6, $f4, $f16
/* AC8298 800510F8 448D4000 */  mtc1  $t5, $f8
/* AC829C 800510FC 00000000 */  nop   
/* AC82A0 80051100 46804120 */  cvt.s.w $f4, $f8
/* AC82A4 80051104 460A3402 */  mul.s $f16, $f6, $f10
/* AC82A8 80051108 46102180 */  add.s $f6, $f4, $f16
/* AC82AC 8005110C 4600328D */  trunc.w.s $f10, $f6
/* AC82B0 80051110 44045000 */  mfc1  $a0, $f10
/* AC82B4 80051114 00000000 */  nop   
/* AC82B8 80051118 00042400 */  sll   $a0, $a0, 0x10
/* AC82BC 8005111C 00042403 */  sra   $a0, $a0, 0x10
/* AC82C0 80051120 0C01DE1C */  jal   Math_Sins
/* AC82C4 80051124 A7A4005A */   sh    $a0, 0x5a($sp)
/* AC82C8 80051128 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC82CC 8005112C 44814000 */  mtc1  $at, $f8
/* AC82D0 80051130 C6660000 */  lwc1  $f6, ($s3)
/* AC82D4 80051134 87A4005A */  lh    $a0, 0x5a($sp)
/* AC82D8 80051138 46080102 */  mul.s $f4, $f0, $f8
/* AC82DC 8005113C 46062280 */  add.s $f10, $f4, $f6
/* AC82E0 80051140 E64A0000 */  swc1  $f10, ($s2)
/* AC82E4 80051144 C6680004 */  lwc1  $f8, 4($s3)
/* AC82E8 80051148 0C01DE0D */  jal   Math_Coss
/* AC82EC 8005114C E6480004 */   swc1  $f8, 4($s2)
/* AC82F0 80051150 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC82F4 80051154 44812000 */  mtc1  $at, $f4
/* AC82F8 80051158 C66A0008 */  lwc1  $f10, 8($s3)
/* AC82FC 8005115C 00002025 */  move  $a0, $zero
/* AC8300 80051160 46040182 */  mul.s $f6, $f0, $f4
/* AC8304 80051164 3C063F00 */  lui   $a2, 0x3f00
/* AC8308 80051168 2407000A */  li    $a3, 10
/* AC830C 8005116C 460A3200 */  add.s $f8, $f6, $f10
/* AC8310 80051170 E6480008 */  swc1  $f8, 8($s2)
/* AC8314 80051174 0C010E47 */  jal   func_8004391C
/* AC8318 80051178 8625015A */   lh    $a1, 0x15a($s1)
/* AC831C 8005117C A622015A */  sh    $v0, 0x15a($s1)
/* AC8320 80051180 24020001 */  li    $v0, 1
.L80051184:
/* AC8324 80051184 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC8328 80051188 8FB00014 */  lw    $s0, 0x14($sp)
/* AC832C 8005118C 8FB10018 */  lw    $s1, 0x18($sp)
/* AC8330 80051190 8FB2001C */  lw    $s2, 0x1c($sp)
/* AC8334 80051194 8FB30020 */  lw    $s3, 0x20($sp)
/* AC8338 80051198 03E00008 */  jr    $ra
/* AC833C 8005119C 27BD00B8 */   addiu $sp, $sp, 0xb8
# SPLIT
/* AC8340 800511A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC8344 800511A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC8348 800511A8 0C011CE5 */  jal   func_80047394
/* AC834C 800511AC 00000000 */   nop   
/* AC8350 800511B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC8354 800511B4 27BD0018 */  addiu $sp, $sp, 0x18
/* AC8358 800511B8 03E00008 */  jr    $ra
/* AC835C 800511BC 00000000 */   nop   
# SPLIT
/* AC8360 800511C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC8364 800511C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC8368 800511C8 0C011CE5 */  jal   func_80047394
/* AC836C 800511CC 00000000 */   nop   
/* AC8370 800511D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC8374 800511D4 27BD0018 */  addiu $sp, $sp, 0x18
/* AC8378 800511D8 03E00008 */  jr    $ra
/* AC837C 800511DC 00000000 */   nop   
# SPLIT
/* AC8380 800511E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC8384 800511E4 AFA40018 */  sw    $a0, 0x18($sp)
/* AC8388 800511E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC838C 800511EC 3C048014 */  lui   $a0, %hi(D_801393FC) # $a0, 0x8014
/* AC8390 800511F0 0C00084C */  jal   osSyncPrintf
/* AC8394 800511F4 248493FC */   addiu $a0, %lo(D_801393FC) # addiu $a0, $a0, -0x6c04
/* AC8398 800511F8 0C011CE8 */  jal   func_800473A0
/* AC839C 800511FC 8FA40018 */   lw    $a0, 0x18($sp)
/* AC83A0 80051200 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC83A4 80051204 27BD0018 */  addiu $sp, $sp, 0x18
/* AC83A8 80051208 03E00008 */  jr    $ra
/* AC83AC 8005120C 00000000 */   nop   
# SPLIT
/* AC83B0 80051210 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC83B4 80051214 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC83B8 80051218 0C011CE5 */  jal   func_80047394
/* AC83BC 8005121C 00000000 */   nop   
/* AC83C0 80051220 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC83C4 80051224 27BD0018 */  addiu $sp, $sp, 0x18
/* AC83C8 80051228 03E00008 */  jr    $ra
/* AC83CC 8005122C 00000000 */   nop   
# SPLIT
/* AC83D0 80051230 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AC83D4 80051234 AFBF0014 */  sw    $ra, 0x14($sp)
/* AC83D8 80051238 0C011CE5 */  jal   func_80047394
/* AC83DC 8005123C 00000000 */   nop   
/* AC83E0 80051240 8FBF0014 */  lw    $ra, 0x14($sp)
/* AC83E4 80051244 27BD0018 */  addiu $sp, $sp, 0x18
/* AC83E8 80051248 03E00008 */  jr    $ra
/* AC83EC 8005124C 00000000 */   nop   
# SPLIT
/* AC83F0 80051250 27BDFF78 */  addiu $sp, $sp, -0x88
/* AC83F4 80051254 AFB00014 */  sw    $s0, 0x14($sp)
/* AC83F8 80051258 00808025 */  move  $s0, $a0
/* AC83FC 8005125C AFBF001C */  sw    $ra, 0x1c($sp)
/* AC8400 80051260 AFB10018 */  sw    $s1, 0x18($sp)
/* AC8404 80051264 0C00B721 */  jal   func_8002DC84
/* AC8408 80051268 8C840090 */   lw    $a0, 0x90($a0)
/* AC840C 8005126C E7A00038 */  swc1  $f0, 0x38($sp)
/* AC8410 80051270 8602015E */  lh    $v0, 0x15e($s0)
/* AC8414 80051274 2401000A */  li    $at, 10
/* AC8418 80051278 10400008 */  beqz  $v0, .L8005129C
/* AC841C 8005127C 00000000 */   nop   
/* AC8420 80051280 10410006 */  beq   $v0, $at, .L8005129C
/* AC8424 80051284 24010014 */   li    $at, 20
/* AC8428 80051288 10410004 */  beq   $v0, $at, .L8005129C
/* AC842C 8005128C 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC8430 80051290 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC8434 80051294 85C20314 */  lh    $v0, 0x314($t6)
/* AC8438 80051298 10400058 */  beqz  $v0, .L800513FC
.L8005129C:
/* AC843C 8005129C 3C018014 */   lui   $at, %hi(D_8013A1B4)
/* AC8440 800512A0 C42CA1B4 */  lwc1  $f12, %lo(D_8013A1B4)($at)
/* AC8444 800512A4 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC8448 800512A8 44814000 */  mtc1  $at, $f8
/* AC844C 800512AC C7AA0038 */  lwc1  $f10, 0x38($sp)
/* AC8450 800512B0 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC8454 800512B4 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC8458 800512B8 460A4403 */  div.s $f16, $f8, $f10
/* AC845C 800512BC 860F0142 */  lh    $t7, 0x142($s0)
/* AC8460 800512C0 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC8464 800512C4 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC8468 800512C8 000FC0C0 */  sll   $t8, $t7, 3
/* AC846C 800512CC 448C2000 */  mtc1  $t4, $f4
/* AC8470 800512D0 86080144 */  lh    $t0, 0x144($s0)
/* AC8474 800512D4 0338C821 */  addu  $t9, $t9, $t8
/* AC8478 800512D8 468021A0 */  cvt.s.w $f6, $f4
/* AC847C 800512DC 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC8480 800512E0 000848C0 */  sll   $t1, $t0, 3
/* AC8484 800512E4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC8488 800512E8 03295021 */  addu  $t2, $t9, $t1
/* AC848C 800512EC 8D420004 */  lw    $v0, 4($t2)
/* AC8490 800512F0 44812000 */  mtc1  $at, $f4
/* AC8494 800512F4 02002025 */  move  $a0, $s0
/* AC8498 800512F8 844D0000 */  lh    $t5, ($v0)
/* AC849C 800512FC 24420008 */  addiu $v0, $v0, 8
/* AC84A0 80051300 448D4000 */  mtc1  $t5, $f8
/* AC84A4 80051304 460C3002 */  mul.s $f0, $f6, $f12
/* AC84A8 80051308 00000000 */  nop   
/* AC84AC 8005130C 46100482 */  mul.s $f18, $f0, $f16
/* AC84B0 80051310 46002180 */  add.s $f6, $f4, $f0
/* AC84B4 80051314 46804420 */  cvt.s.w $f16, $f8
/* AC84B8 80051318 46123081 */  sub.s $f2, $f6, $f18
/* AC84BC 8005131C 460C8102 */  mul.s $f4, $f16, $f12
/* AC84C0 80051320 00000000 */  nop   
/* AC84C4 80051324 460A2182 */  mul.s $f6, $f4, $f10
/* AC84C8 80051328 00000000 */  nop   
/* AC84CC 8005132C 46023482 */  mul.s $f18, $f6, $f2
/* AC84D0 80051330 E6120000 */  swc1  $f18, ($s0)
/* AC84D4 80051334 844EFFFC */  lh    $t6, -4($v0)
/* AC84D8 80051338 448E4000 */  mtc1  $t6, $f8
/* AC84DC 8005133C 00000000 */  nop   
/* AC84E0 80051340 46804420 */  cvt.s.w $f16, $f8
/* AC84E4 80051344 E6100004 */  swc1  $f16, 4($s0)
/* AC84E8 80051348 844F0000 */  lh    $t7, ($v0)
/* AC84EC 8005134C 0C0111DB */  jal   func_8004476C
/* AC84F0 80051350 A60F0008 */   sh    $t7, 8($s0)
/* AC84F4 80051354 2611000C */  addiu $s1, $s0, 0xc
/* AC84F8 80051358 02202025 */  move  $a0, $s1
/* AC84FC 8005135C 00402825 */  move  $a1, $v0
/* AC8500 80051360 0C010EF1 */  jal   func_80043BC4
/* AC8504 80051364 AFA20054 */   sw    $v0, 0x54($sp)
/* AC8508 80051368 8FA60054 */  lw    $a2, 0x54($sp)
/* AC850C 8005136C 2401FFFF */  li    $at, -1
/* AC8510 80051370 88C80006 */  lwl   $t0, 6($a2)
/* AC8514 80051374 98C80009 */  lwr   $t0, 9($a2)
/* AC8518 80051378 AA28000C */  swl   $t0, 0xc($s1)
/* AC851C 8005137C BA28000F */  swr   $t0, 0xf($s1)
/* AC8520 80051380 94C8000A */  lhu   $t0, 0xa($a2)
/* AC8524 80051384 A6280010 */  sh    $t0, 0x10($s1)
/* AC8528 80051388 84C3000C */  lh    $v1, 0xc($a2)
/* AC852C 8005138C 10610010 */  beq   $v1, $at, .L800513D0
/* AC8530 80051390 A623001C */   sh    $v1, 0x1c($s1)
/* AC8534 80051394 8622001C */  lh    $v0, 0x1c($s1)
/* AC8538 80051398 28410169 */  slti  $at, $v0, 0x169
/* AC853C 8005139C 50200007 */  beql  $at, $zero, .L800513BC
/* AC8540 800513A0 44823000 */   mtc1  $v0, $f6
/* AC8544 800513A4 44822000 */  mtc1  $v0, $f4
/* AC8548 800513A8 00000000 */  nop   
/* AC854C 800513AC 468022A0 */  cvt.s.w $f10, $f4
/* AC8550 800513B0 10000007 */  b     .L800513D0
/* AC8554 800513B4 E60A0004 */   swc1  $f10, 4($s0)
/* AC8558 800513B8 44823000 */  mtc1  $v0, $f6
.L800513BC:
/* AC855C 800513BC 3C018014 */  lui   $at, %hi(D_8013A1B8)
/* AC8560 800513C0 C428A1B8 */  lwc1  $f8, %lo(D_8013A1B8)($at)
/* AC8564 800513C4 468034A0 */  cvt.s.w $f18, $f6
/* AC8568 800513C8 46089402 */  mul.s $f16, $f18, $f8
/* AC856C 800513CC E6100004 */  swc1  $f16, 4($s0)
.L800513D0:
/* AC8570 800513D0 84D9000E */  lh    $t9, 0xe($a2)
/* AC8574 800513D4 8E2A0000 */  lw    $t2, ($s1)
/* AC8578 800513D8 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC857C 800513DC A639001E */  sh    $t9, 0x1e($s1)
/* AC8580 800513E0 AE0A005C */  sw    $t2, 0x5c($s0)
/* AC8584 800513E4 8E290004 */  lw    $t1, 4($s1)
/* AC8588 800513E8 AE090060 */  sw    $t1, 0x60($s0)
/* AC858C 800513EC 8E2A0008 */  lw    $t2, 8($s1)
/* AC8590 800513F0 AE0A0064 */  sw    $t2, 0x64($s0)
/* AC8594 800513F4 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC8598 800513F8 85620314 */  lh    $v0, 0x314($t3)
.L800513FC:
/* AC859C 800513FC 260C005C */  addiu $t4, $s0, 0x5c
/* AC85A0 80051400 AFAC0028 */  sw    $t4, 0x28($sp)
/* AC85A4 80051404 10400003 */  beqz  $v0, .L80051414
/* AC85A8 80051408 2611000C */   addiu $s1, $s0, 0xc
/* AC85AC 8005140C 0C011495 */  jal   func_80045254
/* AC85B0 80051410 02002025 */   move  $a0, $s0
.L80051414:
/* AC85B4 80051414 860D0008 */  lh    $t5, 8($s0)
/* AC85B8 80051418 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC85BC 8005141C 02002025 */  move  $a0, $s0
/* AC85C0 80051420 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* AC85C4 80051424 8602015E */  lh    $v0, 0x15e($s0)
/* AC85C8 80051428 14400003 */  bnez  $v0, .L80051438
/* AC85CC 8005142C 244E0001 */   addiu $t6, $v0, 1
/* AC85D0 80051430 0C010ED8 */  jal   func_80043B60
/* AC85D4 80051434 A60E015E */   sh    $t6, 0x15e($s0)
.L80051438:
/* AC85D8 80051438 26050050 */  addiu $a1, $s0, 0x50
/* AC85DC 8005143C AFA50024 */  sw    $a1, 0x24($sp)
/* AC85E0 80051440 27A40064 */  addiu $a0, $sp, 0x64
/* AC85E4 80051444 0C01F124 */  jal   func_8007C490
/* AC85E8 80051448 26060074 */   addiu $a2, $s0, 0x74
/* AC85EC 8005144C 02002025 */  move  $a0, $s0
/* AC85F0 80051450 27A50064 */  addiu $a1, $sp, 0x64
/* AC85F4 80051454 8E060000 */  lw    $a2, ($s0)
/* AC85F8 80051458 0C0115EA */  jal   func_800457A8
/* AC85FC 8005145C 00003825 */   move  $a3, $zero
/* AC8600 80051460 27A40074 */  addiu $a0, $sp, 0x74
/* AC8604 80051464 8FA50028 */  lw    $a1, 0x28($sp)
/* AC8608 80051468 0C01F124 */  jal   func_8007C490
/* AC860C 8005146C 8FA60024 */   lw    $a2, 0x24($sp)
/* AC8610 80051470 C7A40074 */  lwc1  $f4, 0x74($sp)
/* AC8614 80051474 87AE007A */  lh    $t6, 0x7a($sp)
/* AC8618 80051478 27A6006C */  addiu $a2, $sp, 0x6c
/* AC861C 8005147C E7A4006C */  swc1  $f4, 0x6c($sp)
/* AC8620 80051480 862F001E */  lh    $t7, 0x1e($s1)
/* AC8624 80051484 31F80001 */  andi  $t8, $t7, 1
/* AC8628 80051488 53000012 */  beql  $t8, $zero, .L800514D4
/* AC862C 8005148C A7AE0072 */   sh    $t6, 0x72($sp)
/* AC8630 80051490 8608012C */  lh    $t0, 0x12c($s0)
/* AC8634 80051494 3C018014 */  lui   $at, %hi(D_8013A1BC)
/* AC8638 80051498 C432A1BC */  lwc1  $f18, %lo(D_8013A1BC)($at)
/* AC863C 8005149C 44885000 */  mtc1  $t0, $f10
/* AC8640 800514A0 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC8644 800514A4 44818000 */  mtc1  $at, $f16
/* AC8648 800514A8 468051A0 */  cvt.s.w $f6, $f10
/* AC864C 800514AC 862C000E */  lh    $t4, 0xe($s1)
/* AC8650 800514B0 46123202 */  mul.s $f8, $f6, $f18
/* AC8654 800514B4 46104100 */  add.s $f4, $f8, $f16
/* AC8658 800514B8 4600228D */  trunc.w.s $f10, $f4
/* AC865C 800514BC 440B5000 */  mfc1  $t3, $f10
/* AC8660 800514C0 00000000 */  nop   
/* AC8664 800514C4 016C6821 */  addu  $t5, $t3, $t4
/* AC8668 800514C8 10000002 */  b     .L800514D4
/* AC866C 800514CC A7AD0072 */   sh    $t5, 0x72($sp)
/* AC8670 800514D0 A7AE0072 */  sh    $t6, 0x72($sp)
.L800514D4:
/* AC8674 800514D4 862F001E */  lh    $t7, 0x1e($s1)
/* AC8678 800514D8 87AE0078 */  lh    $t6, 0x78($sp)
/* AC867C 800514DC 31F80002 */  andi  $t8, $t7, 2
/* AC8680 800514E0 53000012 */  beql  $t8, $zero, .L8005152C
/* AC8684 800514E4 A7AE0070 */   sh    $t6, 0x70($sp)
/* AC8688 800514E8 8608012E */  lh    $t0, 0x12e($s0)
/* AC868C 800514EC 3C018014 */  lui   $at, %hi(D_8013A1C0)
/* AC8690 800514F0 C428A1C0 */  lwc1  $f8, %lo(D_8013A1C0)($at)
/* AC8694 800514F4 44883000 */  mtc1  $t0, $f6
/* AC8698 800514F8 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC869C 800514FC 44812000 */  mtc1  $at, $f4
/* AC86A0 80051500 468034A0 */  cvt.s.w $f18, $f6
/* AC86A4 80051504 862C000C */  lh    $t4, 0xc($s1)
/* AC86A8 80051508 46089402 */  mul.s $f16, $f18, $f8
/* AC86AC 8005150C 46048280 */  add.s $f10, $f16, $f4
/* AC86B0 80051510 4600518D */  trunc.w.s $f6, $f10
/* AC86B4 80051514 440B3000 */  mfc1  $t3, $f6
/* AC86B8 80051518 00000000 */  nop   
/* AC86BC 8005151C 016C6821 */  addu  $t5, $t3, $t4
/* AC86C0 80051520 10000002 */  b     .L8005152C
/* AC86C4 80051524 A7AD0070 */   sh    $t5, 0x70($sp)
/* AC86C8 80051528 A7AE0070 */  sh    $t6, 0x70($sp)
.L8005152C:
/* AC86CC 8005152C 8FA40024 */  lw    $a0, 0x24($sp)
/* AC86D0 80051530 0C010F0A */  jal   func_80043C28
/* AC86D4 80051534 8FA50028 */   lw    $a1, 0x28($sp)
/* AC86D8 80051538 8E180094 */  lw    $t8, 0x94($s0)
/* AC86DC 8005153C 27A40048 */  addiu $a0, $sp, 0x48
/* AC86E0 80051540 AC980000 */  sw    $t8, ($a0)
/* AC86E4 80051544 8E0F0098 */  lw    $t7, 0x98($s0)
/* AC86E8 80051548 AC8F0004 */  sw    $t7, 4($a0)
/* AC86EC 8005154C 8E18009C */  lw    $t8, 0x9c($s0)
/* AC86F0 80051550 AC980008 */  sw    $t8, 8($a0)
/* AC86F4 80051554 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* AC86F8 80051558 C7A80038 */  lwc1  $f8, 0x38($sp)
/* AC86FC 8005155C 8FA50028 */  lw    $a1, 0x28($sp)
/* AC8700 80051560 46089400 */  add.s $f16, $f18, $f8
/* AC8704 80051564 0C01EFE4 */  jal   func_8007BF90
/* AC8708 80051568 E7B0004C */   swc1  $f16, 0x4c($sp)
/* AC870C 8005156C 44802000 */  mtc1  $zero, $f4
/* AC8710 80051570 C60A0004 */  lwc1  $f10, 4($s0)
/* AC8714 80051574 44803000 */  mtc1  $zero, $f6
/* AC8718 80051578 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC871C 8005157C A600015A */  sh    $zero, 0x15a($s0)
/* AC8720 80051580 E60400D8 */  swc1  $f4, 0xd8($s0)
/* AC8724 80051584 E60A00FC */  swc1  $f10, 0xfc($s0)
/* AC8728 80051588 E6060100 */  swc1  $f6, 0x100($s0)
/* AC872C 8005158C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC8730 80051590 8FB10018 */  lw    $s1, 0x18($sp)
/* AC8734 80051594 8FB00014 */  lw    $s0, 0x14($sp)
/* AC8738 80051598 27BD0088 */  addiu $sp, $sp, 0x88
/* AC873C 8005159C 03E00008 */  jr    $ra
/* AC8740 800515A0 24020001 */   li    $v0, 1
# SPLIT
/* AC8744 800515A4 27BDFF50 */  addiu $sp, $sp, -0xb0
/* AC8748 800515A8 AFB00014 */  sw    $s0, 0x14($sp)
/* AC874C 800515AC 00808025 */  move  $s0, $a0
/* AC8750 800515B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC8754 800515B4 AFB10018 */  sw    $s1, 0x18($sp)
/* AC8758 800515B8 0C00B721 */  jal   func_8002DC84
/* AC875C 800515BC 8C840090 */   lw    $a0, 0x90($a0)
/* AC8760 800515C0 8602015E */  lh    $v0, 0x15e($s0)
/* AC8764 800515C4 10400008 */  beqz  $v0, .L800515E8
/* AC8768 800515C8 2401000A */   li    $at, 10
/* AC876C 800515CC 10410006 */  beq   $v0, $at, .L800515E8
/* AC8770 800515D0 24010014 */   li    $at, 20
/* AC8774 800515D4 10410004 */  beq   $v0, $at, .L800515E8
/* AC8778 800515D8 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC877C 800515DC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC8780 800515E0 85C30314 */  lh    $v1, 0x314($t6)
/* AC8784 800515E4 10600054 */  beqz  $v1, .L80051738
.L800515E8:
/* AC8788 800515E8 3C018014 */   lui   $at, %hi(D_8013A1C4)
/* AC878C 800515EC C42EA1C4 */  lwc1  $f14, %lo(D_8013A1C4)($at)
/* AC8790 800515F0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC8794 800515F4 44814000 */  mtc1  $at, $f8
/* AC8798 800515F8 3C014288 */  lui   $at, 0x4288
/* AC879C 800515FC 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC87A0 80051600 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC87A4 80051604 44818000 */  mtc1  $at, $f16
/* AC87A8 80051608 860F0142 */  lh    $t7, 0x142($s0)
/* AC87AC 8005160C 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC87B0 80051610 46008483 */  div.s $f18, $f16, $f0
/* AC87B4 80051614 3C198012 */  lui   $t9, %hi(D_8011D068)
/* AC87B8 80051618 448C2000 */  mtc1  $t4, $f4
/* AC87BC 8005161C 000FC0C0 */  sll   $t8, $t7, 3
/* AC87C0 80051620 86080144 */  lh    $t0, 0x144($s0)
/* AC87C4 80051624 468021A0 */  cvt.s.w $f6, $f4
/* AC87C8 80051628 0338C821 */  addu  $t9, $t9, $t8
/* AC87CC 8005162C 8F39D068 */  lw    $t9, %lo(D_8011D068)($t9)
/* AC87D0 80051630 000848C0 */  sll   $t1, $t0, 3
/* AC87D4 80051634 3C018014 */  lui   $at, %hi(D_8013A1C8)
/* AC87D8 80051638 03295021 */  addu  $t2, $t9, $t1
/* AC87DC 8005163C 8D420004 */  lw    $v0, 4($t2)
/* AC87E0 80051640 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC87E4 80051644 844D0000 */  lh    $t5, ($v0)
/* AC87E8 80051648 24420018 */  addiu $v0, $v0, 0x18
/* AC87EC 8005164C 460E3302 */  mul.s $f12, $f6, $f14
/* AC87F0 80051650 448D3000 */  mtc1  $t5, $f6
/* AC87F4 80051654 460C4280 */  add.s $f10, $f8, $f12
/* AC87F8 80051658 46126102 */  mul.s $f4, $f12, $f18
/* AC87FC 8005165C 46803220 */  cvt.s.w $f8, $f6
/* AC8800 80051660 46045081 */  sub.s $f2, $f10, $f4
/* AC8804 80051664 460E4402 */  mul.s $f16, $f8, $f14
/* AC8808 80051668 00000000 */  nop   
/* AC880C 8005166C 46008482 */  mul.s $f18, $f16, $f0
/* AC8810 80051670 00000000 */  nop   
/* AC8814 80051674 46029282 */  mul.s $f10, $f18, $f2
/* AC8818 80051678 E60A0000 */  swc1  $f10, ($s0)
/* AC881C 8005167C 844EFFEC */  lh    $t6, -0x14($v0)
/* AC8820 80051680 448E2000 */  mtc1  $t6, $f4
/* AC8824 80051684 00000000 */  nop   
/* AC8828 80051688 468021A0 */  cvt.s.w $f6, $f4
/* AC882C 8005168C 460E3202 */  mul.s $f8, $f6, $f14
/* AC8830 80051690 00000000 */  nop   
/* AC8834 80051694 46004402 */  mul.s $f16, $f8, $f0
/* AC8838 80051698 00000000 */  nop   
/* AC883C 8005169C 46028482 */  mul.s $f18, $f16, $f2
/* AC8840 800516A0 E6120004 */  swc1  $f18, 4($s0)
/* AC8844 800516A4 844FFFF0 */  lh    $t7, -0x10($v0)
/* AC8848 800516A8 448F5000 */  mtc1  $t7, $f10
/* AC884C 800516AC 00000000 */  nop   
/* AC8850 800516B0 46805120 */  cvt.s.w $f4, $f10
/* AC8854 800516B4 460E2182 */  mul.s $f6, $f4, $f14
/* AC8858 800516B8 00000000 */  nop   
/* AC885C 800516BC 46003202 */  mul.s $f8, $f6, $f0
/* AC8860 800516C0 00000000 */  nop   
/* AC8864 800516C4 46024402 */  mul.s $f16, $f8, $f2
/* AC8868 800516C8 E6100008 */  swc1  $f16, 8($s0)
/* AC886C 800516CC 8458FFF4 */  lh    $t8, -0xc($v0)
/* AC8870 800516D0 C424A1C8 */  lwc1  $f4, %lo(D_8013A1C8)($at)
/* AC8874 800516D4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC8878 800516D8 44989000 */  mtc1  $t8, $f18
/* AC887C 800516DC 44814000 */  mtc1  $at, $f8
/* AC8880 800516E0 468092A0 */  cvt.s.w $f10, $f18
/* AC8884 800516E4 46045182 */  mul.s $f6, $f10, $f4
/* AC8888 800516E8 46083400 */  add.s $f16, $f6, $f8
/* AC888C 800516EC 4600848D */  trunc.w.s $f18, $f16
/* AC8890 800516F0 44199000 */  mfc1  $t9, $f18
/* AC8894 800516F4 00000000 */  nop   
/* AC8898 800516F8 A6190018 */  sh    $t9, 0x18($s0)
/* AC889C 800516FC 8449FFF8 */  lh    $t1, -8($v0)
/* AC88A0 80051700 44895000 */  mtc1  $t1, $f10
/* AC88A4 80051704 00000000 */  nop   
/* AC88A8 80051708 46805120 */  cvt.s.w $f4, $f10
/* AC88AC 8005170C E6040010 */  swc1  $f4, 0x10($s0)
/* AC88B0 80051710 844AFFFC */  lh    $t2, -4($v0)
/* AC88B4 80051714 448A3000 */  mtc1  $t2, $f6
/* AC88B8 80051718 00000000 */  nop   
/* AC88BC 8005171C 46803220 */  cvt.s.w $f8, $f6
/* AC88C0 80051720 460E4402 */  mul.s $f16, $f8, $f14
/* AC88C4 80051724 E6100014 */  swc1  $f16, 0x14($s0)
/* AC88C8 80051728 844B0000 */  lh    $t3, ($v0)
/* AC88CC 8005172C A60B001A */  sh    $t3, 0x1a($s0)
/* AC88D0 80051730 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC88D4 80051734 85830314 */  lh    $v1, 0x314($t4)
.L80051738:
/* AC88D8 80051738 50600004 */  beql  $v1, $zero, .L8005174C
/* AC88DC 8005173C 240D0001 */   li    $t5, 1
/* AC88E0 80051740 0C011495 */  jal   func_80045254
/* AC88E4 80051744 02002025 */   move  $a0, $s0
/* AC88E8 80051748 240D0001 */  li    $t5, 1
.L8005174C:
/* AC88EC 8005174C 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC88F0 80051750 26050050 */  addiu $a1, $s0, 0x50
/* AC88F4 80051754 2606005C */  addiu $a2, $s0, 0x5c
/* AC88F8 80051758 AC2DD3E8 */  sw    $t5, %lo(D_8011D3E8)($at)
/* AC88FC 8005175C AFA60038 */  sw    $a2, 0x38($sp)
/* AC8900 80051760 AFA50034 */  sw    $a1, 0x34($sp)
/* AC8904 80051764 0C01F124 */  jal   func_8007C490
/* AC8908 80051768 27A4007C */   addiu $a0, $sp, 0x7c
/* AC890C 8005176C 26060074 */  addiu $a2, $s0, 0x74
/* AC8910 80051770 AFA60030 */  sw    $a2, 0x30($sp)
/* AC8914 80051774 27A40074 */  addiu $a0, $sp, 0x74
/* AC8918 80051778 0C01F124 */  jal   func_8007C490
/* AC891C 8005177C 8FA50034 */   lw    $a1, 0x34($sp)
/* AC8920 80051780 860E001A */  lh    $t6, 0x1a($s0)
/* AC8924 80051784 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* AC8928 80051788 AC2ED3A0 */  sw    $t6, %lo(D_8011D3A0)($at)
/* AC892C 8005178C 860F015E */  lh    $t7, 0x15e($s0)
/* AC8930 80051790 55E0003E */  bnezl $t7, .L8005188C
/* AC8934 80051794 27A4005C */   addiu $a0, $sp, 0x5c
/* AC8938 80051798 C61200E8 */  lwc1  $f18, 0xe8($s0)
/* AC893C 8005179C C60A00F4 */  lwc1  $f10, 0xf4($s0)
/* AC8940 800517A0 44803000 */  mtc1  $zero, $f6
/* AC8944 800517A4 2611001C */  addiu $s1, $s0, 0x1c
/* AC8948 800517A8 460A9101 */  sub.s $f4, $f18, $f10
/* AC894C 800517AC 27A60098 */  addiu $a2, $sp, 0x98
/* AC8950 800517B0 27A40084 */  addiu $a0, $sp, 0x84
/* AC8954 800517B4 26050094 */  addiu $a1, $s0, 0x94
/* AC8958 800517B8 E60400E8 */  swc1  $f4, 0xe8($s0)
/* AC895C 800517BC 87B8007A */  lh    $t8, 0x7a($sp)
/* AC8960 800517C0 E6260000 */  swc1  $f6, ($s1)
/* AC8964 800517C4 A6380004 */  sh    $t8, 4($s1)
/* AC8968 800517C8 8E080090 */  lw    $t0, 0x90($s0)
/* AC896C 800517CC 8D090908 */  lw    $t1, 0x908($t0)
/* AC8970 800517D0 ACC90000 */  sw    $t1, ($a2)
/* AC8974 800517D4 8D19090C */  lw    $t9, 0x90c($t0)
/* AC8978 800517D8 ACD90004 */  sw    $t9, 4($a2)
/* AC897C 800517DC 8D090910 */  lw    $t1, 0x910($t0)
/* AC8980 800517E0 0C01F124 */  jal   func_8007C490
/* AC8984 800517E4 ACC90008 */   sw    $t1, 8($a2)
/* AC8988 800517E8 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC898C 800517EC 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC8990 800517F0 854B01C2 */  lh    $t3, 0x1c2($t2)
/* AC8994 800517F4 A62B0008 */  sh    $t3, 8($s1)
/* AC8998 800517F8 87AD0082 */  lh    $t5, 0x82($sp)
/* AC899C 800517FC 87AC008A */  lh    $t4, 0x8a($sp)
/* AC89A0 80051800 018D1823 */  subu  $v1, $t4, $t5
/* AC89A4 80051804 00031C00 */  sll   $v1, $v1, 0x10
/* AC89A8 80051808 00031C03 */  sra   $v1, $v1, 0x10
/* AC89AC 8005180C 04600003 */  bltz  $v1, .L8005181C
/* AC89B0 80051810 00031023 */   negu  $v0, $v1
/* AC89B4 80051814 10000001 */  b     .L8005181C
/* AC89B8 80051818 00601025 */   move  $v0, $v1
.L8005181C:
/* AC89BC 8005181C 28413A98 */  slti  $at, $v0, 0x3a98
/* AC89C0 80051820 50200004 */  beql  $at, $zero, .L80051834
/* AC89C4 80051824 862E0008 */   lh    $t6, 8($s1)
/* AC89C8 80051828 10000014 */  b     .L8005187C
/* AC89CC 8005182C A6200006 */   sh    $zero, 6($s1)
/* AC89D0 80051830 862E0008 */  lh    $t6, 8($s1)
.L80051834:
/* AC89D4 80051834 006E001A */  div   $zero, $v1, $t6
/* AC89D8 80051838 15C00002 */  bnez  $t6, .L80051844
/* AC89DC 8005183C 00000000 */   nop   
/* AC89E0 80051840 0007000D */  break 7
.L80051844:
/* AC89E4 80051844 2401FFFF */  li    $at, -1
/* AC89E8 80051848 15C10004 */  bne   $t6, $at, .L8005185C
/* AC89EC 8005184C 3C018000 */   lui   $at, 0x8000
/* AC89F0 80051850 14610002 */  bne   $v1, $at, .L8005185C
/* AC89F4 80051854 00000000 */   nop   
/* AC89F8 80051858 0006000D */  break 6
.L8005185C:
/* AC89FC 8005185C 00007812 */  mflo  $t7
/* AC8A00 80051860 05E10003 */  bgez  $t7, .L80051870
/* AC8A04 80051864 000FC083 */   sra   $t8, $t7, 2
/* AC8A08 80051868 25E10003 */  addiu $at, $t7, 3
/* AC8A0C 8005186C 0001C083 */  sra   $t8, $at, 2
.L80051870:
/* AC8A10 80051870 00184080 */  sll   $t0, $t8, 2
/* AC8A14 80051874 01184023 */  subu  $t0, $t0, $t8
/* AC8A18 80051878 A6280006 */  sh    $t0, 6($s1)
.L8005187C:
/* AC8A1C 8005187C 8619015E */  lh    $t9, 0x15e($s0)
/* AC8A20 80051880 27290001 */  addiu $t1, $t9, 1
/* AC8A24 80051884 A609015E */  sh    $t1, 0x15e($s0)
/* AC8A28 80051888 27A4005C */  addiu $a0, $sp, 0x5c
.L8005188C:
/* AC8A2C 8005188C 8E050090 */  lw    $a1, 0x90($s0)
/* AC8A30 80051890 0C00BBB9 */  jal   func_8002EEE4
/* AC8A34 80051894 2611001C */   addiu $s1, $s0, 0x1c
/* AC8A38 80051898 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC8A3C 8005189C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC8A40 800518A0 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC8A44 800518A4 44816000 */  mtc1  $at, $f12
/* AC8A48 800518A8 854B01C6 */  lh    $t3, 0x1c6($t2)
/* AC8A4C 800518AC 3C018014 */  lui   $at, %hi(D_8013A1D4)
/* AC8A50 800518B0 C432A1D4 */  lwc1  $f18, %lo(D_8013A1D4)($at)
/* AC8A54 800518B4 448B4000 */  mtc1  $t3, $f8
/* AC8A58 800518B8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC8A5C 800518BC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC8A60 800518C0 46804420 */  cvt.s.w $f16, $f8
/* AC8A64 800518C4 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC8A68 800518C8 46128282 */  mul.s $f10, $f16, $f18
/* AC8A6C 800518CC 44065000 */  mfc1  $a2, $f10
/* AC8A70 800518D0 0C010E27 */  jal   func_8004389C
/* AC8A74 800518D4 00000000 */   nop   
/* AC8A78 800518D8 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC8A7C 800518DC 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC8A80 800518E0 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC8A84 800518E4 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC8A88 800518E8 44816000 */  mtc1  $at, $f12
/* AC8A8C 800518EC 858D01C6 */  lh    $t5, 0x1c6($t4)
/* AC8A90 800518F0 3C018014 */  lui   $at, %hi(D_8013A1D8)
/* AC8A94 800518F4 C428A1D8 */  lwc1  $f8, %lo(D_8013A1D8)($at)
/* AC8A98 800518F8 448D2000 */  mtc1  $t5, $f4
/* AC8A9C 800518FC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC8AA0 80051900 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC8AA4 80051904 468021A0 */  cvt.s.w $f6, $f4
/* AC8AA8 80051908 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC8AAC 8005190C 46083402 */  mul.s $f16, $f6, $f8
/* AC8AB0 80051910 44068000 */  mfc1  $a2, $f16
/* AC8AB4 80051914 0C010E27 */  jal   func_8004389C
/* AC8AB8 80051918 00000000 */   nop   
/* AC8ABC 8005191C 3C018014 */  lui   $at, %hi(D_8013A1DC)
/* AC8AC0 80051920 C422A1DC */  lwc1  $f2, %lo(D_8013A1DC)($at)
/* AC8AC4 80051924 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC8AC8 80051928 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC8ACC 8005192C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC8AD0 80051930 3C018014 */  lui   $at, %hi(D_8013A1E0)
/* AC8AD4 80051934 44071000 */  mfc1  $a3, $f2
/* AC8AD8 80051938 85CF01C6 */  lh    $t7, 0x1c6($t6)
/* AC8ADC 8005193C C42CA1E0 */  lwc1  $f12, %lo(D_8013A1E0)($at)
/* AC8AE0 80051940 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC8AE4 80051944 448F9000 */  mtc1  $t7, $f18
/* AC8AE8 80051948 00000000 */  nop   
/* AC8AEC 8005194C 468092A0 */  cvt.s.w $f10, $f18
/* AC8AF0 80051950 46025102 */  mul.s $f4, $f10, $f2
/* AC8AF4 80051954 44062000 */  mfc1  $a2, $f4
/* AC8AF8 80051958 0C010E27 */  jal   func_8004389C
/* AC8AFC 8005195C 00000000 */   nop   
/* AC8B00 80051960 3C018014 */  lui   $at, %hi(D_8013A1E4)
/* AC8B04 80051964 C42CA1E4 */  lwc1  $f12, %lo(D_8013A1E4)($at)
/* AC8B08 80051968 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC8B0C 8005196C 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC8B10 80051970 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC8B14 80051974 44076000 */  mfc1  $a3, $f12
/* AC8B18 80051978 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC8B1C 8005197C 870801C8 */  lh    $t0, 0x1c8($t8)
/* AC8B20 80051980 44883000 */  mtc1  $t0, $f6
/* AC8B24 80051984 00000000 */  nop   
/* AC8B28 80051988 46803220 */  cvt.s.w $f8, $f6
/* AC8B2C 8005198C 460C4402 */  mul.s $f16, $f8, $f12
/* AC8B30 80051990 44068000 */  mfc1  $a2, $f16
/* AC8B34 80051994 0C010E27 */  jal   func_8004389C
/* AC8B38 80051998 00000000 */   nop   
/* AC8B3C 8005199C E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC8B40 800519A0 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC8B44 800519A4 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC8B48 800519A8 3C018014 */  lui   $at, %hi(D_8013A1E8)
/* AC8B4C 800519AC C424A1E8 */  lwc1  $f4, %lo(D_8013A1E8)($at)
/* AC8B50 800519B0 8729019C */  lh    $t1, 0x19c($t9)
/* AC8B54 800519B4 3C063D4C */  lui   $a2, (0x3D4CCCCD >> 16) # lui $a2, 0x3d4c
/* AC8B58 800519B8 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC8B5C 800519BC 44899000 */  mtc1  $t1, $f18
/* AC8B60 800519C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC8B64 800519C4 34C6CCCD */  ori   $a2, (0x3D4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* AC8B68 800519C8 468092A0 */  cvt.s.w $f10, $f18
/* AC8B6C 800519CC C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC8B70 800519D0 46045302 */  mul.s $f12, $f10, $f4
/* AC8B74 800519D4 0C010E27 */  jal   func_8004389C
/* AC8B78 800519D8 00000000 */   nop   
/* AC8B7C 800519DC E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC8B80 800519E0 02002025 */  move  $a0, $s0
/* AC8B84 800519E4 27A50074 */  addiu $a1, $sp, 0x74
/* AC8B88 800519E8 8E060000 */  lw    $a2, ($s0)
/* AC8B8C 800519EC 0C0115EA */  jal   func_800457A8
/* AC8B90 800519F0 24070001 */   li    $a3, 1
/* AC8B94 800519F4 27A4008C */  addiu $a0, $sp, 0x8c
/* AC8B98 800519F8 8FA50034 */  lw    $a1, 0x34($sp)
/* AC8B9C 800519FC 0C01F124 */  jal   func_8007C490
/* AC8BA0 80051A00 8FA60030 */   lw    $a2, 0x30($sp)
/* AC8BA4 80051A04 02002025 */  move  $a0, $s0
/* AC8BA8 80051A08 8FA5008C */  lw    $a1, 0x8c($sp)
/* AC8BAC 80051A0C 8E060004 */  lw    $a2, 4($s0)
/* AC8BB0 80051A10 0C011A33 */  jal   func_800468CC
/* AC8BB4 80051A14 8E070008 */   lw    $a3, 8($s0)
/* AC8BB8 80051A18 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC8BBC 80051A1C 44813000 */  mtc1  $at, $f6
/* AC8BC0 80051A20 C60800C4 */  lwc1  $f8, 0xc4($s0)
/* AC8BC4 80051A24 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC8BC8 80051A28 86040018 */  lh    $a0, 0x18($s0)
/* AC8BCC 80051A2C 46083403 */  div.s $f16, $f6, $f8
/* AC8BD0 80051A30 87A50078 */  lh    $a1, 0x78($sp)
/* AC8BD4 80051A34 2407000A */  li    $a3, 10
/* AC8BD8 80051A38 44068000 */  mfc1  $a2, $f16
/* AC8BDC 80051A3C 0C010E47 */  jal   func_8004391C
/* AC8BE0 80051A40 00000000 */   nop   
/* AC8BE4 80051A44 3C048016 */  lui   $a0, %hi(gGameInfo) # $a0, 0x8016
/* AC8BE8 80051A48 8C84FA90 */  lw    $a0, %lo(gGameInfo)($a0)
/* AC8BEC 80051A4C A7A20090 */  sh    $v0, 0x90($sp)
/* AC8BF0 80051A50 3C063F00 */  lui   $a2, 0x3f00
/* AC8BF4 80051A54 8483019E */  lh    $v1, 0x19e($a0)
/* AC8BF8 80051A58 24072710 */  li    $a3, 10000
/* AC8BFC 80051A5C 0062082A */  slt   $at, $v1, $v0
/* AC8C00 80051A60 50200004 */  beql  $at, $zero, .L80051A74
/* AC8C04 80051A64 87AA0090 */   lh    $t2, 0x90($sp)
/* AC8C08 80051A68 A7A30090 */  sh    $v1, 0x90($sp)
/* AC8C0C 80051A6C 8483019E */  lh    $v1, 0x19e($a0)
/* AC8C10 80051A70 87AA0090 */  lh    $t2, 0x90($sp)
.L80051A74:
/* AC8C14 80051A74 00031023 */  negu  $v0, $v1
/* AC8C18 80051A78 0142082A */  slt   $at, $t2, $v0
/* AC8C1C 80051A7C 50200003 */  beql  $at, $zero, .L80051A8C
/* AC8C20 80051A80 86220008 */   lh    $v0, 8($s1)
/* AC8C24 80051A84 A7A20090 */  sh    $v0, 0x90($sp)
/* AC8C28 80051A88 86220008 */  lh    $v0, 8($s1)
.L80051A8C:
/* AC8C2C 80051A8C 50400008 */  beql  $v0, $zero, .L80051AB0
/* AC8C30 80051A90 86240004 */   lh    $a0, 4($s1)
/* AC8C34 80051A94 862B0004 */  lh    $t3, 4($s1)
/* AC8C38 80051A98 862C0006 */  lh    $t4, 6($s1)
/* AC8C3C 80051A9C 244EFFFF */  addiu $t6, $v0, -1
/* AC8C40 80051AA0 A62E0008 */  sh    $t6, 8($s1)
/* AC8C44 80051AA4 016C6821 */  addu  $t5, $t3, $t4
/* AC8C48 80051AA8 A62D0004 */  sh    $t5, 4($s1)
/* AC8C4C 80051AAC 86240004 */  lh    $a0, 4($s1)
.L80051AB0:
/* AC8C50 80051AB0 0C010E6B */  jal   func_800439AC
/* AC8C54 80051AB4 87A5007A */   lh    $a1, 0x7a($sp)
/* AC8C58 80051AB8 A7A20092 */  sh    $v0, 0x92($sp)
/* AC8C5C 80051ABC 8FA40030 */  lw    $a0, 0x30($sp)
/* AC8C60 80051AC0 8FA50034 */  lw    $a1, 0x34($sp)
/* AC8C64 80051AC4 0C010F0A */  jal   func_80043C28
/* AC8C68 80051AC8 27A6008C */   addiu $a2, $sp, 0x8c
/* AC8C6C 80051ACC 8FAF0030 */  lw    $t7, 0x30($sp)
/* AC8C70 80051AD0 8FA60038 */  lw    $a2, 0x38($sp)
/* AC8C74 80051AD4 02002025 */  move  $a0, $s0
/* AC8C78 80051AD8 8DE80000 */  lw    $t0, ($t7)
/* AC8C7C 80051ADC ACC80000 */  sw    $t0, ($a2)
/* AC8C80 80051AE0 8DF80004 */  lw    $t8, 4($t7)
/* AC8C84 80051AE4 ACD80004 */  sw    $t8, 4($a2)
/* AC8C88 80051AE8 8DE80008 */  lw    $t0, 8($t7)
/* AC8C8C 80051AEC ACC80008 */  sw    $t0, 8($a2)
/* AC8C90 80051AF0 0C010FCD */  jal   func_80043F34
/* AC8C94 80051AF4 8FA50034 */   lw    $a1, 0x34($sp)
/* AC8C98 80051AF8 C60C0010 */  lwc1  $f12, 0x10($s0)
/* AC8C9C 80051AFC C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC8CA0 80051B00 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC8CA4 80051B04 0C010E27 */  jal   func_8004389C
/* AC8CA8 80051B08 3C073F80 */   lui   $a3, 0x3f80
/* AC8CAC 80051B0C E60000FC */  swc1  $f0, 0xfc($s0)
/* AC8CB0 80051B10 A600015A */  sh    $zero, 0x15a($s0)
/* AC8CB4 80051B14 02002025 */  move  $a0, $s0
/* AC8CB8 80051B18 0C011429 */  jal   func_800450A4
/* AC8CBC 80051B1C 8E050014 */   lw    $a1, 0x14($s0)
/* AC8CC0 80051B20 E6000100 */  swc1  $f0, 0x100($s0)
/* AC8CC4 80051B24 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC8CC8 80051B28 8FB10018 */  lw    $s1, 0x18($sp)
/* AC8CCC 80051B2C 8FB00014 */  lw    $s0, 0x14($sp)
/* AC8CD0 80051B30 27BD00B0 */  addiu $sp, $sp, 0xb0
/* AC8CD4 80051B34 03E00008 */  jr    $ra
/* AC8CD8 80051B38 24020001 */   li    $v0, 1

