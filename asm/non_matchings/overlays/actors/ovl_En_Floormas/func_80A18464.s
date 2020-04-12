.late_rodata
glabel D_80A1A580
 .word 0x3B83126F

.text
glabel func_80A18464
/* 00F54 80A18464 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F58 80A18468 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F5C 80A1846C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F60 80A18470 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F64 80A18474 3C0180A2 */  lui     $at, %hi(D_80A1A580)       ## $at = 80A20000
/* 00F68 80A18478 C424A580 */  lwc1    $f4, %lo(D_80A1A580)($at)  
/* 00F6C 80A1847C C4860050 */  lwc1    $f6, 0x0050($a0)           ## 00000050
/* 00F70 80A18480 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F74 80A18484 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F78 80A18488 4606203C */  c.lt.s  $f4, $f6                   
/* 00F7C 80A1848C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00F80 80A18490 24070090 */  addiu   $a3, $zero, 0x0090         ## $a3 = 00000090
/* 00F84 80A18494 45000010 */  bc1f    .L80A184D8                 
/* 00F88 80A18498 00000000 */  nop
/* 00F8C 80A1849C 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00F90 80A184A0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00F94 80A184A4 01C17821 */  addu    $t7, $t6, $at              
/* 00F98 80A184A8 A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 00F9C 80A184AC 0C285EFB */  jal     func_80A17BEC              
/* 00FA0 80A184B0 8C84011C */  lw      $a0, 0x011C($a0)           ## 0000011C
/* 00FA4 80A184B4 0C285EFB */  jal     func_80A17BEC              
/* 00FA8 80A184B8 8E040118 */  lw      $a0, 0x0118($s0)           ## 00000118
/* 00FAC 80A184BC 0C285EFB */  jal     func_80A17BEC              
/* 00FB0 80A184C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB4 80A184C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FB8 80A184C8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FBC 80A184CC 24053935 */  addiu   $a1, $zero, 0x3935         ## $a1 = 00003935
/* 00FC0 80A184D0 10000007 */  beq     $zero, $zero, .L80A184F0   
/* 00FC4 80A184D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A184D8:
/* 00FC8 80A184D8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00FCC 80A184DC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FD0 80A184E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FD4 80A184E4 0C285F7F */  jal     func_80A17DFC              
/* 00FD8 80A184E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00FDC 80A184EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A184F0:
/* 00FE0 80A184F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FE4 80A184F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FE8 80A184F8 03E00008 */  jr      $ra                        
/* 00FEC 80A184FC 00000000 */  nop
