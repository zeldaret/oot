glabel func_80B16504
/* 02A64 80B16504 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02A68 80B16508 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02A6C 80B1650C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02A70 80B16510 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A74 80B16514 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02A78 80B16518 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02A7C 80B1651C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 02A80 80B16520 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 02A84 80B16524 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 02A88 80B16528 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A8C 80B1652C 0C2C4EAB */  jal     func_80B13AAC              
/* 02A90 80B16530 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02A94 80B16534 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A98 80B16538 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02A9C 80B1653C 0C2C50BD */  jal     func_80B142F4              
/* 02AA0 80B16540 9606010E */  lhu     $a2, 0x010E($s0)           ## 0000010E
/* 02AA4 80B16544 10400028 */  beq     $v0, $zero, .L80B165E8     
/* 02AA8 80B16548 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AAC 80B1654C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02AB0 80B16550 24056851 */  addiu   $a1, $zero, 0x6851         ## $a1 = 00006851
/* 02AB4 80B16554 97AE0026 */  lhu     $t6, 0x0026($sp)           
/* 02AB8 80B16558 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 02ABC 80B1655C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 02AC0 80B16560 11C00006 */  beq     $t6, $zero, .L80B1657C     
/* 02AC4 80B16564 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AC8 80B16568 3C0580B1 */  lui     $a1, %hi(func_80B15E28)    ## $a1 = 80B10000
/* 02ACC 80B1656C 0C2C53EB */  jal     func_80B14FAC              
/* 02AD0 80B16570 24A55E28 */  addiu   $a1, $a1, %lo(func_80B15E28) ## $a1 = 80B15E28
/* 02AD4 80B16574 1000001D */  beq     $zero, $zero, .L80B165EC   
/* 02AD8 80B16578 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
.L80B1657C:
/* 02ADC 80B1657C 946F0F06 */  lhu     $t7, 0x0F06($v1)           ## 00000F06
/* 02AE0 80B16580 2401207E */  addiu   $at, $zero, 0x207E         ## $at = 0000207E
/* 02AE4 80B16584 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE8 80B16588 35F84000 */  ori     $t8, $t7, 0x4000           ## $t8 = 00004000
/* 02AEC 80B1658C A4780F06 */  sh      $t8, 0x0F06($v1)           ## 00000F06
/* 02AF0 80B16590 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
/* 02AF4 80B16594 3C0580B1 */  lui     $a1, %hi(func_80B161C0)    ## $a1 = 80B10000
/* 02AF8 80B16598 10410007 */  beq     $v0, $at, .L80B165B8       
/* 02AFC 80B1659C 2401207F */  addiu   $at, $zero, 0x207F         ## $at = 0000207F
/* 02B00 80B165A0 10410005 */  beq     $v0, $at, .L80B165B8       
/* 02B04 80B165A4 2401208B */  addiu   $at, $zero, 0x208B         ## $at = 0000208B
/* 02B08 80B165A8 10410007 */  beq     $v0, $at, .L80B165C8       
/* 02B0C 80B165AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B10 80B165B0 1000000A */  beq     $zero, $zero, .L80B165DC   
/* 02B14 80B165B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B165B8:
/* 02B18 80B165B8 0C2C53EB */  jal     func_80B14FAC              
/* 02B1C 80B165BC 24A561C0 */  addiu   $a1, $a1, %lo(func_80B161C0) ## $a1 = 80B161C0
/* 02B20 80B165C0 1000000A */  beq     $zero, $zero, .L80B165EC   
/* 02B24 80B165C4 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
.L80B165C8:
/* 02B28 80B165C8 3C0580B1 */  lui     $a1, %hi(func_80B15FE8)    ## $a1 = 80B10000
/* 02B2C 80B165CC 0C2C53EB */  jal     func_80B14FAC              
/* 02B30 80B165D0 24A55FE8 */  addiu   $a1, $a1, %lo(func_80B15FE8) ## $a1 = 80B15FE8
/* 02B34 80B165D4 10000005 */  beq     $zero, $zero, .L80B165EC   
/* 02B38 80B165D8 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
.L80B165DC:
/* 02B3C 80B165DC 3C0580B1 */  lui     $a1, %hi(func_80B16364)    ## $a1 = 80B10000
/* 02B40 80B165E0 0C2C53EB */  jal     func_80B14FAC              
/* 02B44 80B165E4 24A56364 */  addiu   $a1, $a1, %lo(func_80B16364) ## $a1 = 80B16364
.L80B165E8:
/* 02B48 80B165E8 961902E0 */  lhu     $t9, 0x02E0($s0)           ## 000002E0
.L80B165EC:
/* 02B4C 80B165EC 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 02B50 80B165F0 A60802E0 */  sh      $t0, 0x02E0($s0)           ## 000002E0
/* 02B54 80B165F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B58 80B165F8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02B5C 80B165FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02B60 80B16600 03E00008 */  jr      $ra                        
/* 02B64 80B16604 00000000 */  nop


