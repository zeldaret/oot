.rdata
glabel D_80A72830
    .asciz "../z_en_hy.c"
    .balign 4

glabel D_80A72840
    .asciz "../z_en_hy.c"
    .balign 4

.text
glabel func_80A71A64
/* 024B4 80A71A64 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 024B8 80A71A68 3C0F80A7 */  lui     $t7, %hi(D_80A72800)       ## $t7 = 80A70000
/* 024BC 80A71A6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 024C0 80A71A70 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 024C4 80A71A74 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 024C8 80A71A78 AFA60058 */  sw      $a2, 0x0058($sp)           
/* 024CC 80A71A7C AFA7005C */  sw      $a3, 0x005C($sp)           
/* 024D0 80A71A80 25EF2800 */  addiu   $t7, $t7, %lo(D_80A72800)  ## $t7 = 80A72800
/* 024D4 80A71A84 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A72800
/* 024D8 80A71A88 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFEC
/* 024DC 80A71A8C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A72804
/* 024E0 80A71A90 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 024E4 80A71A94 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A72808
/* 024E8 80A71A98 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 024EC 80A71A9C 3C0680A7 */  lui     $a2, %hi(D_80A72830)       ## $a2 = 80A70000
/* 024F0 80A71AA0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 024F4 80A71AA4 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 024F8 80A71AA8 24C62830 */  addiu   $a2, $a2, %lo(D_80A72830)  ## $a2 = 80A72830
/* 024FC 80A71AAC 240708CF */  addiu   $a3, $zero, 0x08CF         ## $a3 = 000008CF
/* 02500 80A71AB0 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 02504 80A71AB4 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFD8
/* 02508 80A71AB8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0250C 80A71ABC AFA50038 */  sw      $a1, 0x0038($sp)           
/* 02510 80A71AC0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 02514 80A71AC4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02518 80A71AC8 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 0251C 80A71ACC 1481001B */  bne     $a0, $at, .L80A71B3C       
/* 02520 80A71AD0 8FA90050 */  lw      $t1, 0x0050($sp)           
/* 02524 80A71AD4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 02528 80A71AD8 8FA60060 */  lw      $a2, 0x0060($sp)           
/* 0252C 80A71ADC 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 02530 80A71AE0 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 02534 80A71AE4 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 02538 80A71AE8 358C0018 */  ori     $t4, $t4, 0x0018           ## $t4 = DB060018
/* 0253C 80A71AEC AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 02540 80A71AF0 80CD0197 */  lb      $t5, 0x0197($a2)           ## 00000197
/* 02544 80A71AF4 24050044 */  addiu   $a1, $zero, 0x0044         ## $a1 = 00000044
/* 02548 80A71AF8 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 0254C 80A71AFC 01A50019 */  multu   $t5, $a1                   
/* 02550 80A71B00 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02554 80A71B04 00007012 */  mflo    $t6                        
/* 02558 80A71B08 012E7821 */  addu    $t7, $t1, $t6              
/* 0255C 80A71B0C 01E7C021 */  addu    $t8, $t7, $a3              
/* 02560 80A71B10 8F1917B4 */  lw      $t9, 0x17B4($t8)           ## 000017B4
/* 02564 80A71B14 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 02568 80A71B18 80CA0197 */  lb      $t2, 0x0197($a2)           ## 00000197
/* 0256C 80A71B1C 01450019 */  multu   $t2, $a1                   
/* 02570 80A71B20 00005812 */  mflo    $t3                        
/* 02574 80A71B24 012B6021 */  addu    $t4, $t1, $t3              
/* 02578 80A71B28 01876821 */  addu    $t5, $t4, $a3              
/* 0257C 80A71B2C 8DAE17B4 */  lw      $t6, 0x17B4($t5)           ## 000017B4
/* 02580 80A71B30 01C17821 */  addu    $t7, $t6, $at              
/* 02584 80A71B34 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 02588 80A71B38 AC2F6FC0 */  sw      $t7, %lo(gSegments+0x18)($at)
.L80A71B3C:
/* 0258C 80A71B3C 8FA60060 */  lw      $a2, 0x0060($sp)           
/* 02590 80A71B40 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02594 80A71B44 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 02598 80A71B48 24C50038 */  addiu   $a1, $a2, 0x0038           ## $a1 = 00000038
/* 0259C 80A71B4C 3319007F */  andi    $t9, $t8, 0x007F           ## $t9 = 00000000
/* 025A0 80A71B50 1721000A */  bne     $t9, $at, .L80A71B7C       
/* 025A4 80A71B54 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 025A8 80A71B58 14810008 */  bne     $a0, $at, .L80A71B7C       
/* 025AC 80A71B5C 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 025B0 80A71B60 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 025B4 80A71B64 3C0C0600 */  lui     $t4, %hi(D_06005BC8)                ## $t4 = 06000000
/* 025B8 80A71B68 258C5BC8 */  addiu   $t4, $t4, %lo(D_06005BC8)           ## $t4 = 06005BC8
/* 025BC 80A71B6C 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 025C0 80A71B70 AD0A02C0 */  sw      $t2, 0x02C0($t0)           ## 000002C0
/* 025C4 80A71B74 AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
/* 025C8 80A71B78 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
.L80A71B7C:
/* 025CC 80A71B7C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 025D0 80A71B80 14810004 */  bne     $a0, $at, .L80A71B94       
/* 025D4 80A71B84 00000000 */  nop
/* 025D8 80A71B88 0C0346BD */  jal     Matrix_MultVec3f              
/* 025DC 80A71B8C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFEC
/* 025E0 80A71B90 8FA90050 */  lw      $t1, 0x0050($sp)           
.L80A71B94:
/* 025E4 80A71B94 3C0680A7 */  lui     $a2, %hi(D_80A72840)       ## $a2 = 80A70000
/* 025E8 80A71B98 24C62840 */  addiu   $a2, $a2, %lo(D_80A72840)  ## $a2 = 80A72840
/* 025EC 80A71B9C 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFD8
/* 025F0 80A71BA0 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 025F4 80A71BA4 0C031AD5 */  jal     Graph_CloseDisps              
/* 025F8 80A71BA8 240708E9 */  addiu   $a3, $zero, 0x08E9         ## $a3 = 000008E9
/* 025FC 80A71BAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02600 80A71BB0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 02604 80A71BB4 03E00008 */  jr      $ra                        
/* 02608 80A71BB8 00000000 */  nop
