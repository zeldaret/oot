glabel func_809C3A54
/* 00424 809C3A54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00428 809C3A58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0042C 809C3A5C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00430 809C3A60 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00434 809C3A64 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00438 809C3A68 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0043C 809C3A6C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00440 809C3A70 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00444 809C3A74 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 00448 809C3A78 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0044C 809C3A7C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00450 809C3A80 C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 00454 809C3A84 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00458 809C3A88 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0045C 809C3A8C 46083032 */  c.eq.s  $f6, $f8                   
/* 00460 809C3A90 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xed8)
/* 00464 809C3A94 45020011 */  bc1fl   .L809C3ADC                 
/* 00468 809C3A98 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
/* 0046C 809C3A9C A4CE022E */  sh      $t6, 0x022E($a2)           ## 0000022E
/* 00470 809C3AA0 95EFF538 */  lhu     $t7, %lo(gSaveContext+0xed8)($t7)
/* 00474 809C3AA4 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 00478 809C3AA8 240900BF */  addiu   $t1, $zero, 0x00BF         ## $t1 = 000000BF
/* 0047C 809C3AAC 31F80020 */  andi    $t8, $t7, 0x0020           ## $t8 = 00000000
/* 00480 809C3AB0 17000006 */  bne     $t8, $zero, .L809C3ACC     
/* 00484 809C3AB4 00000000 */  nop
/* 00488 809C3AB8 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 0048C 809C3ABC 240A7058 */  addiu   $t2, $zero, 0x7058         ## $t2 = 00007058
/* 00490 809C3AC0 872812D8 */  lh      $t0, 0x12D8($t9)           ## 801612D8
/* 00494 809C3AC4 51000004 */  beql    $t0, $zero, .L809C3AD8     
/* 00498 809C3AC8 A4CA010E */  sh      $t2, 0x010E($a2)           ## 0000010E
.L809C3ACC:
/* 0049C 809C3ACC 10000002 */  beq     $zero, $zero, .L809C3AD8   
/* 004A0 809C3AD0 A4C9010E */  sh      $t1, 0x010E($a2)           ## 0000010E
/* 004A4 809C3AD4 A4CA010E */  sh      $t2, 0x010E($a2)           ## 0000010E
.L809C3AD8:
/* 004A8 809C3AD8 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
.L809C3ADC:
/* 004AC 809C3ADC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 004B0 809C3AE0 0C042DC8 */  jal     func_8010B720              
/* 004B4 809C3AE4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 004B8 809C3AE8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 004BC 809C3AEC 84CB0234 */  lh      $t3, 0x0234($a2)           ## 00000234
/* 004C0 809C3AF0 55600014 */  bnel    $t3, $zero, .L809C3B44     
/* 004C4 809C3AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004C8 809C3AF8 84CC0238 */  lh      $t4, 0x0238($a2)           ## 00000238
/* 004CC 809C3AFC 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 004D0 809C3B00 544C0010 */  bnel    $v0, $t4, .L809C3B44       
/* 004D4 809C3B04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D8 809C3B08 84CD0236 */  lh      $t5, 0x0236($a2)           ## 00000236
/* 004DC 809C3B0C 55A0000D */  bnel    $t5, $zero, .L809C3B44     
/* 004E0 809C3B10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004E4 809C3B14 84CE023A */  lh      $t6, 0x023A($a2)           ## 0000023A
/* 004E8 809C3B18 3C19809C */  lui     $t9, %hi(func_809C3B50)    ## $t9 = 809C0000
/* 004EC 809C3B1C A4C20234 */  sh      $v0, 0x0234($a2)           ## 00000234
/* 004F0 809C3B20 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 004F4 809C3B24 A4CF023A */  sh      $t7, 0x023A($a2)           ## 0000023A
/* 004F8 809C3B28 84D8023A */  lh      $t8, 0x023A($a2)           ## 0000023A
/* 004FC 809C3B2C 27393B50 */  addiu   $t9, $t9, %lo(func_809C3B50) ## $t9 = 809C3B50
/* 00500 809C3B30 2B010003 */  slti    $at, $t8, 0x0003           
/* 00504 809C3B34 54200003 */  bnel    $at, $zero, .L809C3B44     
/* 00508 809C3B38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0050C 809C3B3C ACD90214 */  sw      $t9, 0x0214($a2)           ## 00000214
/* 00510 809C3B40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C3B44:
/* 00514 809C3B44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00518 809C3B48 03E00008 */  jr      $ra                        
/* 0051C 809C3B4C 00000000 */  nop
