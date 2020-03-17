glabel func_80B01040
/* 02D90 80B01040 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02D94 80B01044 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02D98 80B01048 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D9C 80B0104C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02DA0 80B01050 0C042F6F */  jal     func_8010BDBC              
/* 02DA4 80B01054 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02DA8 80B01058 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02DAC 80B0105C 54410016 */  bnel    $v0, $at, .L80B010B8       
/* 02DB0 80B01060 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02DB4 80B01064 0C041AF2 */  jal     func_80106BC8              
/* 02DB8 80B01068 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02DBC 80B0106C 10400011 */  beq     $v0, $zero, .L80B010B4     
/* 02DC0 80B01070 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 02DC4 80B01074 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 02DC8 80B01078 91CEE69F */  lbu     $t6, -0x1961($t6)          ## 8015E69F
/* 02DCC 80B0107C 44810000 */  mtc1    $at, $f0                   ## $f0 = 26.00
/* 02DD0 80B01080 3C0680B0 */  lui     $a2, %hi(D_80B016C4)       ## $a2 = 80B00000
/* 02DD4 80B01084 000E7880 */  sll     $t7, $t6,  2               
/* 02DD8 80B01088 00CF3021 */  addu    $a2, $a2, $t7              
/* 02DDC 80B0108C 44070000 */  mfc1    $a3, $f0                   
/* 02DE0 80B01090 8CC616C4 */  lw      $a2, %lo(D_80B016C4)($a2)  
/* 02DE4 80B01094 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02DE8 80B01098 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02DEC 80B0109C 0C00BD0D */  jal     func_8002F434              
/* 02DF0 80B010A0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 02DF4 80B010A4 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 02DF8 80B010A8 3C1880B0 */  lui     $t8, %hi(func_80B010C4)    ## $t8 = 80B00000
/* 02DFC 80B010AC 271810C4 */  addiu   $t8, $t8, %lo(func_80B010C4) ## $t8 = 80B010C4
/* 02E00 80B010B0 AF380274 */  sw      $t8, 0x0274($t9)           ## 00000274
.L80B010B4:
/* 02E04 80B010B4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B010B8:
/* 02E08 80B010B8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02E0C 80B010BC 03E00008 */  jr      $ra                        
/* 02E10 80B010C0 00000000 */  nop


