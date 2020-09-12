glabel func_80A3196C
/* 00FFC 80A3196C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01000 80A31970 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01004 80A31974 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01008 80A31978 0C00BD04 */  jal     Actor_HasParent              
/* 0100C 80A3197C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01010 80A31980 10400013 */  beq     $v0, $zero, .L80A319D0     
/* 01014 80A31984 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01018 80A31988 948F02AC */  lhu     $t7, 0x02AC($a0)           ## 000002AC
/* 0101C 80A3198C 3C0E80A3 */  lui     $t6, %hi(func_80A31934)    ## $t6 = 80A30000
/* 01020 80A31990 25CE1934 */  addiu   $t6, $t6, %lo(func_80A31934) ## $t6 = 80A31934
/* 01024 80A31994 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 01028 80A31998 13000007 */  beq     $t8, $zero, .L80A319B8     
/* 0102C 80A3199C AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
/* 01030 80A319A0 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01034 80A319A4 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01038 80A319A8 94790EF0 */  lhu     $t9, 0x0EF0($v1)           ## 8015F550
/* 0103C 80A319AC 37288000 */  ori     $t0, $t9, 0x8000           ## $t0 = 00008000
/* 01040 80A319B0 10000026 */  beq     $zero, $zero, .L80A31A4C   
/* 01044 80A319B4 A4680EF0 */  sh      $t0, 0x0EF0($v1)           ## 8015F550
.L80A319B8:
/* 01048 80A319B8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0104C 80A319BC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01050 80A319C0 94690F2A */  lhu     $t1, 0x0F2A($v1)           ## 8015F58A
/* 01054 80A319C4 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01058 80A319C8 10000020 */  beq     $zero, $zero, .L80A31A4C   
/* 0105C 80A319CC A46A0F2A */  sh      $t2, 0x0F2A($v1)           ## 8015F58A
.L80A319D0:
/* 01060 80A319D0 948B02AC */  lhu     $t3, 0x02AC($a0)           ## 000002AC
/* 01064 80A319D4 2406003E */  addiu   $a2, $zero, 0x003E         ## $a2 = 0000003E
/* 01068 80A319D8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0106C 80A319DC 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 01070 80A319E0 11800015 */  beq     $t4, $zero, .L80A31A38     
/* 01074 80A319E4 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01078 80A319E8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0107C 80A319EC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01080 80A319F0 3C0E8012 */  lui     $t6, %hi(gUpgradeMasks)
/* 01084 80A319F4 8DCE71B0 */  lw      $t6, %lo(gUpgradeMasks)($t6)
/* 01088 80A319F8 8C6D00A0 */  lw      $t5, 0x00A0($v1)           ## 8015E700
/* 0108C 80A319FC 3C188012 */  lui     $t8, %hi(gUpgradeShifts)
/* 01090 80A31A00 931871F4 */  lbu     $t8, %lo(gUpgradeShifts)($t8)
/* 01094 80A31A04 01AE7824 */  and     $t7, $t5, $t6              
/* 01098 80A31A08 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0109C 80A31A0C 030F1007 */  srav    $v0, $t7, $t8              
/* 010A0 80A31A10 10410005 */  beq     $v0, $at, .L80A31A28       
/* 010A4 80A31A14 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 010A8 80A31A18 10410005 */  beq     $v0, $at, .L80A31A30       
/* 010AC 80A31A1C 00000000 */  nop
/* 010B0 80A31A20 10000005 */  beq     $zero, $zero, .L80A31A38   
/* 010B4 80A31A24 8FA60024 */  lw      $a2, 0x0024($sp)           
.L80A31A28:
/* 010B8 80A31A28 10000003 */  beq     $zero, $zero, .L80A31A38   
/* 010BC 80A31A2C 24060030 */  addiu   $a2, $zero, 0x0030         ## $a2 = 00000030
.L80A31A30:
/* 010C0 80A31A30 10000001 */  beq     $zero, $zero, .L80A31A38   
/* 010C4 80A31A34 24060031 */  addiu   $a2, $zero, 0x0031         ## $a2 = 00000031
.L80A31A38:
/* 010C8 80A31A38 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 010CC 80A31A3C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 010D0 80A31A40 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 010D4 80A31A44 0C00BD0D */  jal     func_8002F434              
/* 010D8 80A31A48 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A31A4C:
/* 010DC 80A31A4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010E0 80A31A50 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 010E4 80A31A54 03E00008 */  jr      $ra                        
/* 010E8 80A31A58 00000000 */  nop
