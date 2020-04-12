.late_rodata
glabel D_80A1A5AC
 .word 0x3B83126F

.text
glabel func_80A19BA8
/* 02698 80A19BA8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0269C 80A19BAC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 026A0 80A19BB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 026A4 80A19BB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 026A8 80A19BB8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 026AC 80A19BBC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 026B0 80A19BC0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 026B4 80A19BC4 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 026B8 80A19BC8 5040000C */  beql    $v0, $zero, .L80A19BFC     
/* 026BC 80A19BCC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 026C0 80A19BD0 920E00AF */  lbu     $t6, 0x00AF($s0)           ## 000000AF
/* 026C4 80A19BD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026C8 80A19BD8 15C00005 */  bne     $t6, $zero, .L80A19BF0     
/* 026CC 80A19BDC 00000000 */  nop
/* 026D0 80A19BE0 0C286119 */  jal     func_80A18464              
/* 026D4 80A19BE4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 026D8 80A19BE8 10000004 */  beq     $zero, $zero, .L80A19BFC   
/* 026DC 80A19BEC 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A19BF0:
/* 026E0 80A19BF0 0C2860C4 */  jal     func_80A18310              
/* 026E4 80A19BF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026E8 80A19BF8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A19BFC:
/* 026EC 80A19BFC 0C0295B2 */  jal     func_800A56C8              
/* 026F0 80A19C00 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 026F4 80A19C04 1040000F */  beq     $v0, $zero, .L80A19C44     
/* 026F8 80A19C08 3C0180A2 */  lui     $at, %hi(D_80A1A5AC)       ## $at = 80A20000
/* 026FC 80A19C0C C424A5AC */  lwc1    $f4, %lo(D_80A1A5AC)($at)  
/* 02700 80A19C10 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 02704 80A19C14 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 02708 80A19C18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0270C 80A19C1C 4606203C */  c.lt.s  $f4, $f6                   
/* 02710 80A19C20 00000000 */  nop
/* 02714 80A19C24 45000005 */  bc1f    .L80A19C3C                 
/* 02718 80A19C28 00000000 */  nop
/* 0271C 80A19C2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02720 80A19C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02724 80A19C34 10000004 */  beq     $zero, $zero, .L80A19C48   
/* 02728 80A19C38 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80A19C3C:
/* 0272C 80A19C3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02730 80A19C40 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
.L80A19C44:
/* 02734 80A19C44 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80A19C48:
/* 02738 80A19C48 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 0273C 80A19C4C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 02740 80A19C50 0C01DE80 */  jal     Math_ApproxF
              
/* 02744 80A19C54 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02748 80A19C58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0274C 80A19C5C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02750 80A19C60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02754 80A19C64 03E00008 */  jr      $ra                        
/* 02758 80A19C68 00000000 */  nop
