.late_rodata
glabel D_809F603C
 .word 0x44A7E000
glabel D_809F6040
 .word 0x4622F983

.text
glabel func_809F3BE4
/* 00924 809F3BE4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00928 809F3BE8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0092C 809F3BEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00930 809F3BF0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00934 809F3BF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00938 809F3BF8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0093C 809F3BFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00940 809F3C00 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00944 809F3C04 3C01809F */  lui     $at, %hi(D_809F603C)       ## $at = 809F0000
/* 00948 809F3C08 C424603C */  lwc1    $f4, %lo(D_809F603C)($at)  
/* 0094C 809F3C0C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00950 809F3C10 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00954 809F3C14 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00958 809F3C18 46062301 */  sub.s   $f12, $f4, $f6             
/* 0095C 809F3C1C 0C03F494 */  jal     Math_atan2f              
/* 00960 809F3C20 460A4381 */  sub.s   $f14, $f8, $f10            
/* 00964 809F3C24 3C01809F */  lui     $at, %hi(D_809F6040)       ## $at = 809F0000
/* 00968 809F3C28 C4306040 */  lwc1    $f16, %lo(D_809F6040)($at) 
/* 0096C 809F3C2C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00970 809F3C30 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 00974 809F3C34 46100482 */  mul.s   $f18, $f0, $f16            
/* 00978 809F3C38 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 0097C 809F3C3C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00980 809F3C40 4600910D */  trunc.w.s $f4, $f18                  
/* 00984 809F3C44 44052000 */  mfc1    $a1, $f4                   
/* 00988 809F3C48 00000000 */  nop
/* 0098C 809F3C4C 00052C00 */  sll     $a1, $a1, 16               
/* 00990 809F3C50 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00994 809F3C54 00052C03 */  sra     $a1, $a1, 16               
/* 00998 809F3C58 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0099C 809F3C5C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 009A0 809F3C60 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 009A4 809F3C64 0C0295B2 */  jal     func_800A56C8              
/* 009A8 809F3C68 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 009AC 809F3C6C 14400004 */  bne     $v0, $zero, .L809F3C80     
/* 009B0 809F3C70 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 009B4 809F3C74 0C0295B2 */  jal     func_800A56C8              
/* 009B8 809F3C78 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 009BC 809F3C7C 10400003 */  beq     $v0, $zero, .L809F3C8C     
.L809F3C80:
/* 009C0 809F3C80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C4 809F3C84 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009C8 809F3C88 2405387F */  addiu   $a1, $zero, 0x387F         ## $a1 = 0000387F
.L809F3C8C:
/* 009CC 809F3C8C 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 009D0 809F3C90 44813000 */  mtc1    $at, $f6                   ## $f6 = -30.00
/* 009D4 809F3C94 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 009D8 809F3C98 3C18809F */  lui     $t8, %hi(func_809F3CD0)    ## $t8 = 809F0000
/* 009DC 809F3C9C 4608303C */  c.lt.s  $f6, $f8                   
/* 009E0 809F3CA0 00000000 */  nop
/* 009E4 809F3CA4 45020006 */  bc1fl   .L809F3CC0                 
/* 009E8 809F3CA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009EC 809F3CAC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 009F0 809F3CB0 27183CD0 */  addiu   $t8, $t8, %lo(func_809F3CD0) ## $t8 = 809F3CD0
/* 009F4 809F3CB4 AE180214 */  sw      $t8, 0x0214($s0)           ## 00000214
/* 009F8 809F3CB8 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 009FC 809F3CBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F3CC0:
/* 00A00 809F3CC0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A04 809F3CC4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A08 809F3CC8 03E00008 */  jr      $ra                        
/* 00A0C 809F3CCC 00000000 */  nop
