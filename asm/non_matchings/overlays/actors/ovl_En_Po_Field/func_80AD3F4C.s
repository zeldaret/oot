glabel func_80AD3F4C
/* 0044C 80AD3F4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00450 80AD3F50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00454 80AD3F54 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00458 80AD3F58 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0045C 80AD3F5C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00460 80AD3F60 24A50924 */  addiu   $a1, $a1, 0x0924           ## $a1 = 06000924
/* 00464 80AD3F64 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00468 80AD3F68 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0046C 80AD3F6C 0C0294BE */  jal     func_800A52F8              
/* 00470 80AD3F70 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00474 80AD3F74 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00478 80AD3F78 90CF0255 */  lbu     $t7, 0x0255($a2)           ## 00000255
/* 0047C 80AD3F7C C4C40090 */  lwc1    $f4, 0x0090($a2)           ## 00000090
/* 00480 80AD3F80 24C40008 */  addiu   $a0, $a2, 0x0008           ## $a0 = 00000008
/* 00484 80AD3F84 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00488 80AD3F88 A0D80255 */  sb      $t8, 0x0255($a2)           ## 00000255
/* 0048C 80AD3F8C E4C4021C */  swc1    $f4, 0x021C($a2)           ## 0000021C
/* 00490 80AD3F90 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00494 80AD3F94 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00498 80AD3F98 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 0049C 80AD3F9C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 004A0 80AD3FA0 3C0880AD */  lui     $t0, %hi(func_80AD4E48)    ## $t0 = 80AD0000
/* 004A4 80AD3FA4 25084E48 */  addiu   $t0, $t0, %lo(func_80AD4E48) ## $t0 = 80AD4E48
/* 004A8 80AD3FA8 8CC90190 */  lw      $t1, 0x0190($a2)           ## 00000190
/* 004AC 80AD3FAC 84D9008A */  lh      $t9, 0x008A($a2)           ## 0000008A
/* 004B0 80AD3FB0 3C0E80AD */  lui     $t6, %hi(func_80AD4A68)    ## $t6 = 80AD0000
/* 004B4 80AD3FB4 11090008 */  beq     $t0, $t1, .L80AD3FD8       
/* 004B8 80AD3FB8 A4D90032 */  sh      $t9, 0x0032($a2)           ## 00000032
/* 004BC 80AD3FBC 8CCA0004 */  lw      $t2, 0x0004($a2)           ## 00000004
/* 004C0 80AD3FC0 240C0258 */  addiu   $t4, $zero, 0x0258         ## $t4 = 00000258
/* 004C4 80AD3FC4 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 004C8 80AD3FC8 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 004CC 80AD3FCC ACCB0004 */  sw      $t3, 0x0004($a2)           ## 00000004
/* 004D0 80AD3FD0 A4CC0196 */  sh      $t4, 0x0196($a2)           ## 00000196
/* 004D4 80AD3FD4 A0CD0194 */  sb      $t5, 0x0194($a2)           ## 00000194
.L80AD3FD8:
/* 004D8 80AD3FD8 25CE4A68 */  addiu   $t6, $t6, %lo(func_80AD4A68) ## $t6 = 80AD4A68
/* 004DC 80AD3FDC ACCE0190 */  sw      $t6, 0x0190($a2)           ## 00000190
/* 004E0 80AD3FE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004E4 80AD3FE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004E8 80AD3FE8 03E00008 */  jr      $ra                        
/* 004EC 80AD3FEC 00000000 */  nop


