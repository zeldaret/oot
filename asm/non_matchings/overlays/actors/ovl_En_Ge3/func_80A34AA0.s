glabel func_80A34AA0
/* 00480 80A34AA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00484 80A34AA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00488 80A34AA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0048C 80A34AAC 0C00BD04 */  jal     Actor_HasParent              
/* 00490 80A34AB0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00494 80A34AB4 10400006 */  beq     $v0, $zero, .L80A34AD0     
/* 00498 80A34AB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0049C 80A34ABC 3C0E80A3 */  lui     $t6, %hi(func_80A34A20)    ## $t6 = 80A30000
/* 004A0 80A34AC0 25CE4A20 */  addiu   $t6, $t6, %lo(func_80A34A20) ## $t6 = 80A34A20
/* 004A4 80A34AC4 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 004A8 80A34AC8 10000009 */  beq     $zero, $zero, .L80A34AF0   
/* 004AC 80A34ACC AC8E0310 */  sw      $t6, 0x0310($a0)           ## 00000310
.L80A34AD0:
/* 004B0 80A34AD0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 004B4 80A34AD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 004B8 80A34AD8 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 004BC 80A34ADC 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 004C0 80A34AE0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 004C4 80A34AE4 2406003A */  addiu   $a2, $zero, 0x003A         ## $a2 = 0000003A
/* 004C8 80A34AE8 0C00BD0D */  jal     func_8002F434              
/* 004CC 80A34AEC E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A34AF0:
/* 004D0 80A34AF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004D4 80A34AF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004D8 80A34AF8 03E00008 */  jr      $ra                        
/* 004DC 80A34AFC 00000000 */  nop
