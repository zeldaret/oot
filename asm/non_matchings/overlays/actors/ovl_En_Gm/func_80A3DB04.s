glabel func_80A3DB04
/* 00424 80A3DB04 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00428 80A3DB08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0042C 80A3DB0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00430 80A3DB10 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00434 80A3DB14 C48402C4 */  lwc1    $f4, 0x02C4($a0)           ## 000002C4
/* 00438 80A3DB18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0043C 80A3DB1C C4460024 */  lwc1    $f6, 0x0024($v0)           ## 00000024
/* 00440 80A3DB20 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00444 80A3DB24 46062201 */  sub.s   $f8, $f4, $f6              
/* 00448 80A3DB28 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 0044C 80A3DB2C C48A02CC */  lwc1    $f10, 0x02CC($a0)          ## 000002CC
/* 00450 80A3DB30 C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 00454 80A3DB34 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00458 80A3DB38 46105481 */  sub.s   $f18, $f10, $f16           
/* 0045C 80A3DB3C E7B20020 */  swc1    $f18, 0x0020($sp)          
/* 00460 80A3DB40 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00464 80A3DB44 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00468 80A3DB48 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 0046C 80A3DB4C 10400007 */  beq     $v0, $zero, .L80A3DB6C     
/* 00470 80A3DB50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00474 80A3DB54 0C28F694 */  jal     func_80A3DA50              
/* 00478 80A3DB58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0047C 80A3DB5C 3C0E80A4 */  lui     $t6, %hi(func_80A3DC44)    ## $t6 = 80A40000
/* 00480 80A3DB60 25CEDC44 */  addiu   $t6, $t6, %lo(func_80A3DC44) ## $t6 = 80A3DC44
/* 00484 80A3DB64 1000001E */  beq     $zero, $zero, .L80A3DBE0   
/* 00488 80A3DB68 AE0E026C */  sw      $t6, 0x026C($s0)           ## 0000026C
.L80A3DB6C:
/* 0048C 80A3DB6C 0C00BC65 */  jal     func_8002F194              
/* 00490 80A3DB70 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00494 80A3DB74 10400004 */  beq     $v0, $zero, .L80A3DB88     
/* 00498 80A3DB78 3C0F80A4 */  lui     $t7, %hi(func_80A3DBF4)    ## $t7 = 80A40000
/* 0049C 80A3DB7C 25EFDBF4 */  addiu   $t7, $t7, %lo(func_80A3DBF4) ## $t7 = 80A3DBF4
/* 004A0 80A3DB80 10000017 */  beq     $zero, $zero, .L80A3DBE0   
/* 004A4 80A3DB84 AE0F026C */  sw      $t7, 0x026C($s0)           ## 0000026C
.L80A3DB88:
/* 004A8 80A3DB88 92180282 */  lbu     $t8, 0x0282($s0)           ## 00000282
/* 004AC 80A3DB8C C7A00024 */  lwc1    $f0, 0x0024($sp)           
/* 004B0 80A3DB90 C7A20020 */  lwc1    $f2, 0x0020($sp)           
/* 004B4 80A3DB94 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 004B8 80A3DB98 1720000A */  bne     $t9, $zero, .L80A3DBC4     
/* 004BC 80A3DB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004C0 80A3DBA0 46000102 */  mul.s   $f4, $f0, $f0              
/* 004C4 80A3DBA4 3C0180A4 */  lui     $at, %hi(D_80A3E42C)       ## $at = 80A40000
/* 004C8 80A3DBA8 C42AE42C */  lwc1    $f10, %lo(D_80A3E42C)($at) 
/* 004CC 80A3DBAC 46021182 */  mul.s   $f6, $f2, $f2              
/* 004D0 80A3DBB0 46062200 */  add.s   $f8, $f4, $f6              
/* 004D4 80A3DBB4 460A403C */  c.lt.s  $f8, $f10                  
/* 004D8 80A3DBB8 00000000 */  nop
/* 004DC 80A3DBBC 45020009 */  bc1fl   .L80A3DBE4                 
/* 004E0 80A3DBC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3DBC4:
/* 004E4 80A3DBC4 92080281 */  lbu     $t0, 0x0281($s0)           ## 00000281
/* 004E8 80A3DBC8 3C0643CF */  lui     $a2, 0x43CF                ## $a2 = 43CF0000
/* 004EC 80A3DBCC 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 43CF8000
/* 004F0 80A3DBD0 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 004F4 80A3DBD4 A2090281 */  sb      $t1, 0x0281($s0)           ## 00000281
/* 004F8 80A3DBD8 0C00BCB3 */  jal     func_8002F2CC              
/* 004FC 80A3DBDC 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80A3DBE0:
/* 00500 80A3DBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3DBE4:
/* 00504 80A3DBE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00508 80A3DBE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0050C 80A3DBEC 03E00008 */  jr      $ra                        
/* 00510 80A3DBF0 00000000 */  nop


