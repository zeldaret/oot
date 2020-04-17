glabel func_80A313E0
/* 00A70 80A313E0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A74 80A313E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A78 80A313E8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00A7C 80A313EC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00A80 80A313F0 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 00A84 80A313F4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A88 80A313F8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00A8C 80A313FC 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00A90 80A31400 A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 00A94 80A31404 0C042F6F */  jal     func_8010BDBC              
/* 00A98 80A31408 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A9C 80A3140C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00AA0 80A31410 5441002B */  bnel    $v0, $at, .L80A314C0       
/* 00AA4 80A31414 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AA8 80A31418 0C041AF2 */  jal     func_80106BC8              
/* 00AAC 80A3141C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 80A31420 50400027 */  beql    $v0, $zero, .L80A314C0     
/* 00AB4 80A31424 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AB8 80A31428 0C041B33 */  jal     func_80106CCC              
/* 00ABC 80A3142C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC0 80A31430 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00AC4 80A31434 00501021 */  addu    $v0, $v0, $s0              
/* 00AC8 80A31438 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00ACC 80A3143C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AD0 80A31440 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00AD4 80A31444 10400005 */  beq     $v0, $zero, .L80A3145C     
/* 00AD8 80A31448 00000000 */  nop
/* 00ADC 80A3144C 10410017 */  beq     $v0, $at, .L80A314AC       
/* 00AE0 80A31450 3C0980A3 */  lui     $t1, %hi(func_80A31514)    ## $t1 = 80A30000
/* 00AE4 80A31454 1000001A */  beq     $zero, $zero, .L80A314C0   
/* 00AE8 80A31458 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3145C:
/* 00AEC 80A3145C 8718E694 */  lh      $t8, -0x196C($t8)          ## 8015E694
/* 00AF0 80A31460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF4 80A31464 2B01000A */  slti    $at, $t8, 0x000A           
/* 00AF8 80A31468 10200007 */  beq     $at, $zero, .L80A31488     
/* 00AFC 80A3146C 00000000 */  nop
/* 00B00 80A31470 0C042DC8 */  jal     func_8010B720              
/* 00B04 80A31474 24056016 */  addiu   $a1, $zero, 0x6016         ## $a1 = 00006016
/* 00B08 80A31478 3C1980A3 */  lui     $t9, %hi(func_80A313A0)    ## $t9 = 80A30000
/* 00B0C 80A3147C 273913A0 */  addiu   $t9, $t9, %lo(func_80A313A0) ## $t9 = 80A313A0
/* 00B10 80A31480 1000000E */  beq     $zero, $zero, .L80A314BC   
/* 00B14 80A31484 AE3902B4 */  sw      $t9, 0x02B4($s1)           ## 000002B4
.L80A31488:
/* 00B18 80A31488 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00B1C 80A3148C 2404FFF6 */  addiu   $a0, $zero, 0xFFF6         ## $a0 = FFFFFFF6
/* 00B20 80A31490 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B24 80A31494 0C042DC8 */  jal     func_8010B720              
/* 00B28 80A31498 24056015 */  addiu   $a1, $zero, 0x6015         ## $a1 = 00006015
/* 00B2C 80A3149C 3C0880A3 */  lui     $t0, %hi(func_80A312E4)    ## $t0 = 80A30000
/* 00B30 80A314A0 250812E4 */  addiu   $t0, $t0, %lo(func_80A312E4) ## $t0 = 80A312E4
/* 00B34 80A314A4 10000005 */  beq     $zero, $zero, .L80A314BC   
/* 00B38 80A314A8 AE2802B4 */  sw      $t0, 0x02B4($s1)           ## 000002B4
.L80A314AC:
/* 00B3C 80A314AC 25291514 */  addiu   $t1, $t1, %lo(func_80A31514) ## $t1 = 00001514
/* 00B40 80A314B0 AE2902B4 */  sw      $t1, 0x02B4($s1)           ## 000002B4
/* 00B44 80A314B4 0C28C352 */  jal     func_80A30D48              
/* 00B48 80A314B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A314BC:
/* 00B4C 80A314BC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A314C0:
/* 00B50 80A314C0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00B54 80A314C4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00B58 80A314C8 03E00008 */  jr      $ra                        
/* 00B5C 80A314CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
