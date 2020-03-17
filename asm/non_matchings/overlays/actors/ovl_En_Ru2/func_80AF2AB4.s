glabel func_80AF2AB4
/* 00564 80AF2AB4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00568 80AF2AB8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0056C 80AF2ABC 904E1415 */  lbu     $t6, 0x1415($v0)           ## 8015FA75
/* 00570 80AF2AC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00574 80AF2AC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00578 80AF2AC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0057C 80AF2ACC 15C10019 */  bne     $t6, $at, .L80AF2B34       
/* 00580 80AF2AD0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00584 80AF2AD4 8C4F1360 */  lw      $t7, 0x1360($v0)           ## 8015F9C0
/* 00588 80AF2AD8 3C0880AF */  lui     $t0, %hi(D_80AF411C)       ## $t0 = 80AF0000
/* 0058C 80AF2ADC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00590 80AF2AE0 29E10004 */  slti    $at, $t7, 0x0004           
/* 00594 80AF2AE4 10200013 */  beq     $at, $zero, .L80AF2B34     
/* 00598 80AF2AE8 2508411C */  addiu   $t0, $t0, %lo(D_80AF411C)  ## $t0 = 80AF411C
/* 0059C 80AF2AEC 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 005A0 80AF2AF0 AC9802A8 */  sw      $t8, 0x02A8($a0)           ## 000002A8
/* 005A4 80AF2AF4 ACA81D68 */  sw      $t0, 0x1D68($a1)           ## 00001D68
/* 005A8 80AF2AF8 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 005AC 80AF2AFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005B0 80AF2B00 A0491414 */  sb      $t1, 0x1414($v0)           ## 8015FA74
/* 005B4 80AF2B04 24050068 */  addiu   $a1, $zero, 0x0068         ## $a1 = 00000068
/* 005B8 80AF2B08 0C021344 */  jal     Item_Give              
/* 005BC 80AF2B0C AFA3001C */  sw      $v1, 0x001C($sp)           
/* 005C0 80AF2B10 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 005C4 80AF2B14 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 005C8 80AF2B18 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 005CC 80AF2B1C 85420032 */  lh      $v0, 0x0032($t2)           ## 00000032
/* 005D0 80AF2B20 00411021 */  addu    $v0, $v0, $at              
/* 005D4 80AF2B24 00021400 */  sll     $v0, $v0, 16               
/* 005D8 80AF2B28 00021403 */  sra     $v0, $v0, 16               
/* 005DC 80AF2B2C A46200B6 */  sh      $v0, 0x00B6($v1)           ## 000000B6
/* 005E0 80AF2B30 A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
.L80AF2B34:
/* 005E4 80AF2B34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005E8 80AF2B38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005EC 80AF2B3C 03E00008 */  jr      $ra                        
/* 005F0 80AF2B40 00000000 */  nop


