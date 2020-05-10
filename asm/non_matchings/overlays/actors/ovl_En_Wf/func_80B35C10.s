.late_rodata
glabel D_80B37BB4
    .float 0.2

.text
glabel func_80B35C10
/* 01F60 80B35C10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01F64 80B35C14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01F68 80B35C18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F6C 80B35C1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01F70 80B35C20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01F74 80B35C24 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01F78 80B35C28 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01F7C 80B35C2C 1040002D */  beq     $v0, $zero, .L80B35CE4     
/* 01F80 80B35C30 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01F84 80B35C34 0C00CEAE */  jal     func_80033AB8              
/* 01F88 80B35C38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F8C 80B35C3C 1440001B */  bne     $v0, $zero, .L80B35CAC     
/* 01F90 80B35C40 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 01F94 80B35C44 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01F98 80B35C48 44812000 */  mtc1    $at, $f4                   ## $f4 = 170.00
/* 01F9C 80B35C4C 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 01FA0 80B35C50 4604003C */  c.lt.s  $f0, $f4                   
/* 01FA4 80B35C54 00000000 */  nop
/* 01FA8 80B35C58 45020015 */  bc1fl   .L80B35CB0                 
/* 01FAC 80B35C5C 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 01FB0 80B35C60 44813000 */  mtc1    $at, $f6                   ## $f6 = 140.00
/* 01FB4 80B35C64 00000000 */  nop
/* 01FB8 80B35C68 4600303C */  c.lt.s  $f6, $f0                   
/* 01FBC 80B35C6C 00000000 */  nop
/* 01FC0 80B35C70 4502000F */  bc1fl   .L80B35CB0                 
/* 01FC4 80B35C74 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 01FC8 80B35C78 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01FCC 80B35C7C 00000000 */  nop
/* 01FD0 80B35C80 3C0180B3 */  lui     $at, %hi(D_80B37BB4)       ## $at = 80B30000
/* 01FD4 80B35C84 C4287BB4 */  lwc1    $f8, %lo(D_80B37BB4)($at)  
/* 01FD8 80B35C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FDC 80B35C8C 4608003C */  c.lt.s  $f0, $f8                   
/* 01FE0 80B35C90 00000000 */  nop
/* 01FE4 80B35C94 45020006 */  bc1fl   .L80B35CB0                 
/* 01FE8 80B35C98 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 01FEC 80B35C9C 0C2CD1FF */  jal     func_80B347FC              
/* 01FF0 80B35CA0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01FF4 80B35CA4 10000010 */  beq     $zero, $zero, .L80B35CE8   
/* 01FF8 80B35CA8 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80B35CAC:
/* 01FFC 80B35CAC 8FAE0024 */  lw      $t6, 0x0024($sp)           
.L80B35CB0:
/* 02000 80B35CB0 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 02004 80B35CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02008 80B35CB8 01EE7821 */  addu    $t7, $t7, $t6              
/* 0200C 80B35CBC 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 02010 80B35CC0 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 02014 80B35CC4 13000005 */  beq     $t8, $zero, .L80B35CDC     
/* 02018 80B35CC8 00000000 */  nop
/* 0201C 80B35CCC 0C2CD96A */  jal     func_80B365A8              
/* 02020 80B35CD0 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 02024 80B35CD4 10000004 */  beq     $zero, $zero, .L80B35CE8   
/* 02028 80B35CD8 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80B35CDC:
/* 0202C 80B35CDC 0C2CD157 */  jal     func_80B3455C              
/* 02030 80B35CE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B35CE4:
/* 02034 80B35CE4 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80B35CE8:
/* 02038 80B35CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0203C 80B35CEC 8F28009C */  lw      $t0, 0x009C($t9)           ## 0000009C
/* 02040 80B35CF0 3109005F */  andi    $t1, $t0, 0x005F           ## $t1 = 00000000
/* 02044 80B35CF4 55200004 */  bnel    $t1, $zero, .L80B35D08     
/* 02048 80B35CF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0204C 80B35CFC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02050 80B35D00 2405383E */  addiu   $a1, $zero, 0x383E         ## $a1 = 0000383E
/* 02054 80B35D04 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B35D08:
/* 02058 80B35D08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0205C 80B35D0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02060 80B35D10 03E00008 */  jr      $ra                        
/* 02064 80B35D14 00000000 */  nop
