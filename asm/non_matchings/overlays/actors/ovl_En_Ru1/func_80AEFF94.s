.rdata
glabel D_80AF1A64
    .asciz "スイッチルトセット!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4
glabel D_80AF1A90
    .asciz "スイッチルトセットしない!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel func_80AEFF94
/* 05384 80AEFF94 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 05388 80AEFF98 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F580
/* 0538C 80AEFF9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 05390 80AEFFA0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 05394 80AEFFA4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 05398 80AEFFA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0539C 80AEFFAC 11C0001E */  beq     $t6, $zero, .L80AF0028     
/* 053A0 80AEFFB0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 053A4 80AEFFB4 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 053A8 80AEFFB8 11E0001B */  beq     $t7, $zero, .L80AF0028     
/* 053AC 80AEFFBC 30580020 */  andi    $t8, $v0, 0x0020           ## $t8 = 00000000
/* 053B0 80AEFFC0 17000019 */  bne     $t8, $zero, .L80AF0028     
/* 053B4 80AEFFC4 00000000 */  nop
/* 053B8 80AEFFC8 0C2BAC08 */  jal     func_80AEB020              
/* 053BC 80AEFFCC 00000000 */  nop
/* 053C0 80AEFFD0 14400015 */  bne     $v0, $zero, .L80AF0028     
/* 053C4 80AEFFD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 053C8 80AEFFD8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 053CC 80AEFFDC 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 053D0 80AEFFE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 053D4 80AEFFE4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 053D8 80AEFFE8 0C2BAC99 */  jal     func_80AEB264              
/* 053DC 80AEFFEC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 053E0 80AEFFF0 82020003 */  lb      $v0, 0x0003($s0)           ## 00000003
/* 053E4 80AEFFF4 24190016 */  addiu   $t9, $zero, 0x0016         ## $t9 = 00000016
/* 053E8 80AEFFF8 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 053EC 80AEFFFC 3C0480AF */  lui     $a0, %hi(D_80AF1A64)       ## $a0 = 80AF0000
/* 053F0 80AF0000 AE190264 */  sw      $t9, 0x0264($s0)           ## 00000264
/* 053F4 80AF0004 A2080003 */  sb      $t0, 0x0003($s0)           ## 00000003
/* 053F8 80AF0008 AE000268 */  sw      $zero, 0x0268($s0)         ## 00000268
/* 053FC 80AF000C 24841A64 */  addiu   $a0, $a0, %lo(D_80AF1A64)  ## $a0 = 80AF1A64
/* 05400 80AF0010 A2020284 */  sb      $v0, 0x0284($s0)           ## 00000284
/* 05404 80AF0014 A2020286 */  sb      $v0, 0x0286($s0)           ## 00000286
/* 05408 80AF0018 0C00084C */  jal     osSyncPrintf
              
/* 0540C 80AF001C A2020285 */  sb      $v0, 0x0285($s0)           ## 00000285
/* 05410 80AF0020 10000007 */  beq     $zero, $zero, .L80AF0040   
/* 05414 80AF0024 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF0028:
/* 05418 80AF0028 3C0480AF */  lui     $a0, %hi(D_80AF1A90)       ## $a0 = 80AF0000
/* 0541C 80AF002C 0C00084C */  jal     osSyncPrintf
              
/* 05420 80AF0030 24841A90 */  addiu   $a0, $a0, %lo(D_80AF1A90)  ## $a0 = 80AF1A90
/* 05424 80AF0034 0C00B55C */  jal     Actor_Kill
              
/* 05428 80AF0038 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0542C 80AF003C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF0040:
/* 05430 80AF0040 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 05434 80AF0044 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 05438 80AF0048 03E00008 */  jr      $ra                        
/* 0543C 80AF004C 00000000 */  nop
