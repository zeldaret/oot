glabel func_80A09978
/* 00AD8 80A09978 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00ADC 80A0997C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AE0 80A09980 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AE4 80A09984 0C00BD04 */  jal     func_8002F410              
/* 00AE8 80A09988 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AEC 80A0998C 10400005 */  beq     $v0, $zero, .L80A099A4     
/* 00AF0 80A09990 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00AF4 80A09994 3C0E80A1 */  lui     $t6, %hi(func_80A09A00)    ## $t6 = 80A10000
/* 00AF8 80A09998 25CE9A00 */  addiu   $t6, $t6, %lo(func_80A09A00) ## $t6 = 80A09A00
/* 00AFC 80A0999C 10000014 */  beq     $zero, $zero, .L80A099F0   
/* 00B00 80A099A0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L80A099A4:
/* 00B04 80A099A4 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00B08 80A099A8 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 00B0C 80A099AC 8F1871C4 */  lw      $t8, 0x71C4($t8)           ## 801271C4
/* 00B10 80A099B0 8DEFE700 */  lw      $t7, -0x1900($t7)          ## 8015E700
/* 00B14 80A099B4 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 00B18 80A099B8 910871F9 */  lbu     $t0, 0x71F9($t0)           ## 801271F9
/* 00B1C 80A099BC 01F8C824 */  and     $t9, $t7, $t8              
/* 00B20 80A099C0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B24 80A099C4 01194807 */  srav    $t1, $t9, $t0              
/* 00B28 80A099C8 15210003 */  bne     $t1, $at, .L80A099D8       
/* 00B2C 80A099CC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00B30 80A099D0 10000002 */  beq     $zero, $zero, .L80A099DC   
/* 00B34 80A099D4 2406007B */  addiu   $a2, $zero, 0x007B         ## $a2 = 0000007B
.L80A099D8:
/* 00B38 80A099D8 24060060 */  addiu   $a2, $zero, 0x0060         ## $a2 = 00000060
.L80A099DC:
/* 00B3C 80A099DC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00B40 80A099E0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00B44 80A099E4 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 00B48 80A099E8 0C00BD0D */  jal     func_8002F434              
/* 00B4C 80A099EC E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A099F0:
/* 00B50 80A099F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B54 80A099F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B58 80A099F8 03E00008 */  jr      $ra                        
/* 00B5C 80A099FC 00000000 */  nop


