.late_rodata
glabel D_80AA3974
    .float 3.14159274101
    .balign 4

glabel D_80AA3978
    .float 3.14159274101
    .balign 4

glabel D_80AA397C
    .float 3.14159274101
    .balign 4

glabel D_80AA3980
    .float 3.14159274101
    .balign 4



.text
glabel func_80AA3344
/* 008A4 80AA3344 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 008A8 80AA3348 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 008AC 80AA334C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 008B0 80AA3350 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 008B4 80AA3354 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008B8 80AA3358 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 008BC 80AA335C 10A10004 */  beq     $a1, $at, .L80AA3370       
/* 008C0 80AA3360 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 008C4 80AA3364 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 008C8 80AA3368 54A10003 */  bnel    $a1, $at, .L80AA3378       
/* 008CC 80AA336C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80AA3370:
/* 008D0 80AA3370 ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
/* 008D4 80AA3374 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
.L80AA3378:
/* 008D8 80AA3378 5601002E */  bnel    $s0, $at, .L80AA3434       
/* 008DC 80AA337C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 008E0 80AA3380 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 008E4 80AA3384 3C0144AF */  lui     $at, 0x44AF                ## $at = 44AF0000
/* 008E8 80AA3388 44816000 */  mtc1    $at, $f12                  ## $f12 = 1400.00
/* 008EC 80AA338C 44067000 */  mfc1    $a2, $f14                  
/* 008F0 80AA3390 0C034261 */  jal     Matrix_Translate              
/* 008F4 80AA3394 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 008F8 80AA3398 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 008FC 80AA339C 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFF4
/* 00900 80AA33A0 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00904 80AA33A4 89F901E8 */  lwl     $t9, 0x01E8($t7)           ## 000001E8
/* 00908 80AA33A8 99F901EB */  lwr     $t9, 0x01EB($t7)           ## 000001EB
/* 0090C 80AA33AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 00910 80AA33B0 3C0180AA */  lui     $at, %hi(D_80AA3974)       ## $at = 80AA0000
/* 00914 80AA33B4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00918 80AA33B8 95F901EC */  lhu     $t9, 0x01EC($t7)           ## 000001EC
/* 0091C 80AA33BC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00920 80AA33C0 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFF8
/* 00924 80AA33C4 87A8002E */  lh      $t0, 0x002E($sp)           
/* 00928 80AA33C8 C4303974 */  lwc1    $f16, %lo(D_80AA3974)($at) 
/* 0092C 80AA33CC 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00930 80AA33D0 00000000 */  nop
/* 00934 80AA33D4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00938 80AA33D8 46083283 */  div.s   $f10, $f6, $f8             
/* 0093C 80AA33DC 46105302 */  mul.s   $f12, $f10, $f16           
/* 00940 80AA33E0 0C0342DC */  jal     Matrix_RotateX              
/* 00944 80AA33E4 00000000 */  nop
/* 00948 80AA33E8 87A9002C */  lh      $t1, 0x002C($sp)           
/* 0094C 80AA33EC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00950 80AA33F0 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 00954 80AA33F4 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00958 80AA33F8 3C0180AA */  lui     $at, %hi(D_80AA3978)       ## $at = 80AA0000
/* 0095C 80AA33FC C42A3978 */  lwc1    $f10, %lo(D_80AA3978)($at) 
/* 00960 80AA3400 46809120 */  cvt.s.w $f4, $f18                  
/* 00964 80AA3404 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00968 80AA3408 46062203 */  div.s   $f8, $f4, $f6              
/* 0096C 80AA340C 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00970 80AA3410 0C0343B5 */  jal     Matrix_RotateZ              
/* 00974 80AA3414 00000000 */  nop
/* 00978 80AA3418 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 0097C 80AA341C 3C01C4AF */  lui     $at, 0xC4AF                ## $at = C4AF0000
/* 00980 80AA3420 44816000 */  mtc1    $at, $f12                  ## $f12 = -1400.00
/* 00984 80AA3424 44067000 */  mfc1    $a2, $f14                  
/* 00988 80AA3428 0C034261 */  jal     Matrix_Translate              
/* 0098C 80AA342C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00990 80AA3430 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80AA3434:
/* 00994 80AA3434 16010022 */  bne     $s0, $at, .L80AA34C0       
/* 00998 80AA3438 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 0099C 80AA343C 896D01EE */  lwl     $t5, 0x01EE($t3)           ## 000001EE
/* 009A0 80AA3440 996D01F1 */  lwr     $t5, 0x01F1($t3)           ## 000001F1
/* 009A4 80AA3444 27AA002C */  addiu   $t2, $sp, 0x002C           ## $t2 = FFFFFFF4
/* 009A8 80AA3448 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 009AC 80AA344C AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFF4
/* 009B0 80AA3450 956D01F2 */  lhu     $t5, 0x01F2($t3)           ## 000001F2
/* 009B4 80AA3454 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 009B8 80AA3458 3C0180AA */  lui     $at, %hi(D_80AA397C)       ## $at = 80AA0000
/* 009BC 80AA345C A54D0004 */  sh      $t5, 0x0004($t2)           ## FFFFFFF8
/* 009C0 80AA3460 87AE002E */  lh      $t6, 0x002E($sp)           
/* 009C4 80AA3464 C428397C */  lwc1    $f8, %lo(D_80AA397C)($at)  
/* 009C8 80AA3468 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 009CC 80AA346C 000E7823 */  subu    $t7, $zero, $t6            
/* 009D0 80AA3470 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 009D4 80AA3474 00000000 */  nop
/* 009D8 80AA3478 468084A0 */  cvt.s.w $f18, $f16                 
/* 009DC 80AA347C 46049183 */  div.s   $f6, $f18, $f4             
/* 009E0 80AA3480 46083302 */  mul.s   $f12, $f6, $f8             
/* 009E4 80AA3484 0C034348 */  jal     Matrix_RotateY              
/* 009E8 80AA3488 00000000 */  nop
/* 009EC 80AA348C 87B8002C */  lh      $t8, 0x002C($sp)           
/* 009F0 80AA3490 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 009F4 80AA3494 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 009F8 80AA3498 0018C823 */  subu    $t9, $zero, $t8            
/* 009FC 80AA349C 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00A00 80AA34A0 3C0180AA */  lui     $at, %hi(D_80AA3980)       ## $at = 80AA0000
/* 00A04 80AA34A4 C4263980 */  lwc1    $f6, %lo(D_80AA3980)($at)  
/* 00A08 80AA34A8 46805420 */  cvt.s.w $f16, $f10                 
/* 00A0C 80AA34AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A10 80AA34B0 46128103 */  div.s   $f4, $f16, $f18            
/* 00A14 80AA34B4 46062302 */  mul.s   $f12, $f4, $f6             
/* 00A18 80AA34B8 0C0342DC */  jal     Matrix_RotateX              
/* 00A1C 80AA34BC 00000000 */  nop
.L80AA34C0:
/* 00A20 80AA34C0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00A24 80AA34C4 12010005 */  beq     $s0, $at, .L80AA34DC       
/* 00A28 80AA34C8 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00A2C 80AA34CC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00A30 80AA34D0 12010002 */  beq     $s0, $at, .L80AA34DC       
/* 00A34 80AA34D4 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00A38 80AA34D8 16010024 */  bne     $s0, $at, .L80AA356C       
.L80AA34DC:
/* 00A3C 80AA34DC 00104880 */  sll     $t1, $s0,  2               
/* 00A40 80AA34E0 01304823 */  subu    $t1, $t1, $s0              
/* 00A44 80AA34E4 00094840 */  sll     $t1, $t1,  1               
/* 00A48 80AA34E8 01091821 */  addu    $v1, $t0, $t1              
/* 00A4C 80AA34EC 84640214 */  lh      $a0, 0x0214($v1)           ## 00000214
/* 00A50 80AA34F0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A54 80AA34F4 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00A58 80AA34F8 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00A5C 80AA34FC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00A60 80AA3500 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00A64 80AA3504 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 00A68 80AA3508 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00A6C 80AA350C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00A70 80AA3510 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00A74 80AA3514 00000000 */  nop
/* 00A78 80AA3518 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A7C 80AA351C 46125100 */  add.s   $f4, $f10, $f18            
/* 00A80 80AA3520 4600218D */  trunc.w.s $f6, $f4                   
/* 00A84 80AA3524 440C3000 */  mfc1    $t4, $f6                   
/* 00A88 80AA3528 00000000 */  nop
/* 00A8C 80AA352C A44C0002 */  sh      $t4, 0x0002($v0)           ## 00000002
/* 00A90 80AA3530 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A94 80AA3534 84640216 */  lh      $a0, 0x0216($v1)           ## 00000216
/* 00A98 80AA3538 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 00A9C 80AA353C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00AA0 80AA3540 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 00AA4 80AA3544 844D0004 */  lh      $t5, 0x0004($v0)           ## 00000004
/* 00AA8 80AA3548 460A0482 */  mul.s   $f18, $f0, $f10            
/* 00AAC 80AA354C 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 00AB0 80AA3550 00000000 */  nop
/* 00AB4 80AA3554 46804420 */  cvt.s.w $f16, $f8                  
/* 00AB8 80AA3558 46128100 */  add.s   $f4, $f16, $f18            
/* 00ABC 80AA355C 4600218D */  trunc.w.s $f6, $f4                   
/* 00AC0 80AA3560 440F3000 */  mfc1    $t7, $f6                   
/* 00AC4 80AA3564 00000000 */  nop
/* 00AC8 80AA3568 A44F0004 */  sh      $t7, 0x0004($v0)           ## 00000004
.L80AA356C:
/* 00ACC 80AA356C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AD0 80AA3570 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AD4 80AA3574 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00AD8 80AA3578 03E00008 */  jr      $ra                        
/* 00ADC 80AA357C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


