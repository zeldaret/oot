glabel func_80A9D490
/* 00F40 80A9D490 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F44 80A9D494 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F48 80A9D498 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F4C 80A9D49C 0C00BD04 */  jal     func_8002F410              
/* 00F50 80A9D4A0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00F54 80A9D4A4 10400008 */  beq     $v0, $zero, .L80A9D4C8     
/* 00F58 80A9D4A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00F5C 80A9D4AC 3C0F80AA */  lui     $t7, %hi(func_80A9D520)    ## $t7 = 80AA0000
/* 00F60 80A9D4B0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00F64 80A9D4B4 25EFD520 */  addiu   $t7, $t7, %lo(func_80A9D520) ## $t7 = 80A9D520
/* 00F68 80A9D4B8 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00F6C 80A9D4BC A48E01E0 */  sh      $t6, 0x01E0($a0)           ## 000001E0
/* 00F70 80A9D4C0 10000013 */  beq     $zero, $zero, .L80A9D510   
/* 00F74 80A9D4C4 AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
.L80A9D4C8:
/* 00F78 80A9D4C8 90980209 */  lbu     $t8, 0x0209($a0)           ## 00000209
/* 00F7C 80A9D4CC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F80 80A9D4D0 2406002D */  addiu   $a2, $zero, 0x002D         ## $a2 = 0000002D
/* 00F84 80A9D4D4 17010003 */  bne     $t8, $at, .L80A9D4E4       
/* 00F88 80A9D4D8 00000000 */  nop
/* 00F8C 80A9D4DC 10000001 */  beq     $zero, $zero, .L80A9D4E4   
/* 00F90 80A9D4E0 24060024 */  addiu   $a2, $zero, 0x0024         ## $a2 = 00000024
.L80A9D4E4:
/* 00F94 80A9D4E4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F98 80A9D4E8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00F9C 80A9D4EC C4800094 */  lwc1    $f0, 0x0094($a0)           ## 00000094
/* 00FA0 80A9D4F0 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00FA4 80A9D4F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00FA8 80A9D4F8 46000005 */  abs.s   $f0, $f0                   
/* 00FAC 80A9D4FC 460C2080 */  add.s   $f2, $f4, $f12             
/* 00FB0 80A9D500 460C0180 */  add.s   $f6, $f0, $f12             
/* 00FB4 80A9D504 44071000 */  mfc1    $a3, $f2                   
/* 00FB8 80A9D508 0C00BD0D */  jal     func_8002F434              
/* 00FBC 80A9D50C E7A60010 */  swc1    $f6, 0x0010($sp)           
.L80A9D510:
/* 00FC0 80A9D510 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FC4 80A9D514 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FC8 80A9D518 03E00008 */  jr      $ra                        
/* 00FCC 80A9D51C 00000000 */  nop


