.rdata
glabel D_80A551C0
    .asciz "[35m ☆☆☆☆☆ とおしゃしねぇちゅーの ☆☆☆☆☆ \n[m"
    .balign 4

.text
glabel func_80A5399C
/* 00AFC 80A5399C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B00 80A539A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B04 80A539A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B08 80A539A8 A080030B */  sb      $zero, 0x030B($a0)         ## 0000030B
/* 00B0C 80A539AC 3C028016 */  lui     $v0, %hi(gSaveContext+0xf06)
/* 00B10 80A539B0 9442F566 */  lhu     $v0, %lo(gSaveContext+0xf06)($v0)
/* 00B14 80A539B4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B18 80A539B8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00B1C 80A539BC 304E0040 */  andi    $t6, $v0, 0x0040           ## $t6 = 00000000
/* 00B20 80A539C0 11C00039 */  beq     $t6, $zero, .L80A53AA8     
/* 00B24 80A539C4 3C0480A5 */  lui     $a0, %hi(D_80A551C0)       ## $a0 = 80A50000
/* 00B28 80A539C8 304F0080 */  andi    $t7, $v0, 0x0080           ## $t7 = 00000000
/* 00B2C 80A539CC 15E0001A */  bne     $t7, $zero, .L80A53A38     
/* 00B30 80A539D0 240D2020 */  addiu   $t5, $zero, 0x2020         ## $t5 = 00002020
/* 00B34 80A539D4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00B38 80A539D8 0C023C20 */  jal     func_8008F080              
/* 00B3C 80A539DC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00B40 80A539E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00B44 80A539E4 1441000E */  bne     $v0, $at, .L80A53A20       
/* 00B48 80A539E8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00B4C 80A539EC 90D80309 */  lbu     $t8, 0x0309($a2)           ## 00000309
/* 00B50 80A539F0 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00B54 80A539F4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00B58 80A539F8 17000004 */  bne     $t8, $zero, .L80A53A0C     
/* 00B5C 80A539FC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00B60 80A53A00 2419200A */  addiu   $t9, $zero, 0x200A         ## $t9 = 0000200A
/* 00B64 80A53A04 10000003 */  beq     $zero, $zero, .L80A53A14   
/* 00B68 80A53A08 A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80A53A0C:
/* 00B6C 80A53A0C 2408200B */  addiu   $t0, $zero, 0x200B         ## $t0 = 0000200B
/* 00B70 80A53A10 A4C8010E */  sh      $t0, 0x010E($a2)           ## 0000010E
.L80A53A14:
/* 00B74 80A53A14 A4C90300 */  sh      $t1, 0x0300($a2)           ## 00000300
/* 00B78 80A53A18 1000000B */  beq     $zero, $zero, .L80A53A48   
/* 00B7C 80A53A1C A0CA030B */  sb      $t2, 0x030B($a2)           ## 0000030B
.L80A53A20:
/* 00B80 80A53A20 240B2016 */  addiu   $t3, $zero, 0x2016         ## $t3 = 00002016
/* 00B84 80A53A24 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 00B88 80A53A28 A4CB010E */  sh      $t3, 0x010E($a2)           ## 0000010E
/* 00B8C 80A53A2C A4CC0300 */  sh      $t4, 0x0300($a2)           ## 00000300
/* 00B90 80A53A30 10000005 */  beq     $zero, $zero, .L80A53A48   
/* 00B94 80A53A34 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80A53A38:
/* 00B98 80A53A38 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00B9C 80A53A3C A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
/* 00BA0 80A53A40 A4CE0300 */  sh      $t6, 0x0300($a2)           ## 00000300
/* 00BA4 80A53A44 A4C0030E */  sh      $zero, 0x030E($a2)         ## 0000030E
.L80A53A48:
/* 00BA8 80A53A48 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00BAC 80A53A4C 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00BB0 80A53A50 A7A3001E */  sh      $v1, 0x001E($sp)           
/* 00BB4 80A53A54 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00BB8 80A53A58 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00BBC 80A53A5C 87A3001E */  lh      $v1, 0x001E($sp)           
/* 00BC0 80A53A60 1040000D */  beq     $v0, $zero, .L80A53A98     
/* 00BC4 80A53A64 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00BC8 80A53A68 1460000B */  bne     $v1, $zero, .L80A53A98     
/* 00BCC 80A53A6C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00BD0 80A53A70 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00BD4 80A53A74 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00BD8 80A53A78 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00BDC 80A53A7C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00BE0 80A53A80 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00BE4 80A53A84 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00BE8 80A53A88 A4C2010E */  sh      $v0, 0x010E($a2)           ## 0000010E
/* 00BEC 80A53A8C A0CF030B */  sb      $t7, 0x030B($a2)           ## 0000030B
/* 00BF0 80A53A90 A4D80300 */  sh      $t8, 0x0300($a2)           ## 00000300
/* 00BF4 80A53A94 A4C0030E */  sh      $zero, 0x030E($a2)         ## 0000030E
.L80A53A98:
/* 00BF8 80A53A98 3C1980A5 */  lui     $t9, %hi(func_80A5475C)    ## $t9 = 80A50000
/* 00BFC 80A53A9C 2739475C */  addiu   $t9, $t9, %lo(func_80A5475C) ## $t9 = 80A5475C
/* 00C00 80A53AA0 10000008 */  beq     $zero, $zero, .L80A53AC4   
/* 00C04 80A53AA4 ACD9025C */  sw      $t9, 0x025C($a2)           ## 0000025C
.L80A53AA8:
/* 00C08 80A53AA8 248451C0 */  addiu   $a0, $a0, %lo(D_80A551C0)  ## $a0 = 000051C0
/* 00C0C 80A53AAC 0C00084C */  jal     osSyncPrintf
              
/* 00C10 80A53AB0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00C14 80A53AB4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00C18 80A53AB8 3C0880A5 */  lui     $t0, %hi(func_80A53AD4)    ## $t0 = 80A50000
/* 00C1C 80A53ABC 25083AD4 */  addiu   $t0, $t0, %lo(func_80A53AD4) ## $t0 = 80A53AD4
/* 00C20 80A53AC0 ACC8025C */  sw      $t0, 0x025C($a2)           ## 0000025C
.L80A53AC4:
/* 00C24 80A53AC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C28 80A53AC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C2C 80A53ACC 03E00008 */  jr      $ra                        
/* 00C30 80A53AD0 00000000 */  nop
