.late_rodata
glabel D_80B0F220
 .word 0x3C656041

.text
glabel func_80B0CEA8
/* 010F8 80B0CEA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010FC 80B0CEAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01100 80B0CEB0 3C0180B1 */  lui     $at, %hi(D_80B0F220)       ## $at = 80B10000
/* 01104 80B0CEB4 C426F220 */  lwc1    $f6, %lo(D_80B0F220)($at)  
/* 01108 80B0CEB8 C4840050 */  lwc1    $f4, 0x0050($a0)           ## 00000050
/* 0110C 80B0CEBC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01110 80B0CEC0 4606203C */  c.lt.s  $f4, $f6                   
/* 01114 80B0CEC4 00000000 */  nop
/* 01118 80B0CEC8 4503001B */  bc1tl   .L80B0CF38                 
/* 0111C 80B0CECC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01120 80B0CED0 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 01124 80B0CED4 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 01128 80B0CED8 000E7880 */  sll     $t7, $t6,  2               
/* 0112C 80B0CEDC 00AFC021 */  addu    $t8, $a1, $t7              
/* 01130 80B0CEE0 8F020790 */  lw      $v0, 0x0790($t8)           ## 00000790
/* 01134 80B0CEE4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01138 80B0CEE8 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 0113C 80B0CEEC 2445005C */  addiu   $a1, $v0, 0x005C           ## $a1 = 0000005C
/* 01140 80B0CEF0 3C0143BE */  lui     $at, 0x43BE                ## $at = 43BE0000
/* 01144 80B0CEF4 44814000 */  mtc1    $at, $f8                   ## $f8 = 380.00
/* 01148 80B0CEF8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0114C 80B0CEFC 4600403E */  c.le.s  $f8, $f0                   
/* 01150 80B0CF00 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01154 80B0CF04 4503000C */  bc1tl   .L80B0CF38                 
/* 01158 80B0CF08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0115C 80B0CF0C 84D9001C */  lh      $t9, 0x001C($a2)           ## 0000001C
/* 01160 80B0CF10 2402388C */  addiu   $v0, $zero, 0x388C         ## $v0 = 0000388C
/* 01164 80B0CF14 3328E000 */  andi    $t0, $t9, 0xE000           ## $t0 = 00000000
/* 01168 80B0CF18 00084B43 */  sra     $t1, $t0, 13               
/* 0116C 80B0CF1C 19200003 */  blez    $t1, .L80B0CF2C            
/* 01170 80B0CF20 00000000 */  nop
/* 01174 80B0CF24 10000001 */  beq     $zero, $zero, .L80B0CF2C   
/* 01178 80B0CF28 240239DA */  addiu   $v0, $zero, 0x39DA         ## $v0 = 000039DA
.L80B0CF2C:
/* 0117C 80B0CF2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01180 80B0CF30 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 000039DA
/* 01184 80B0CF34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B0CF38:
/* 01188 80B0CF38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0118C 80B0CF3C 03E00008 */  jr      $ra                        
/* 01190 80B0CF40 00000000 */  nop
