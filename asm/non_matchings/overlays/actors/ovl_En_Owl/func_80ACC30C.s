.late_rodata
glabel D_80ACD850
    .float 0.2

.text
glabel func_80ACC30C
/* 023EC 80ACC30C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023F0 80ACC310 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 023F4 80ACC314 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023F8 80ACC318 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 023FC 80ACC31C 3C0580AD */  lui     $a1, %hi(func_80ACC23C)    ## $a1 = 80AD0000
/* 02400 80ACC320 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 02404 80ACC324 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 02408 80ACC328 11C00013 */  beq     $t6, $zero, .L80ACC378     
/* 0240C 80ACC32C 24A5C23C */  addiu   $a1, $a1, %lo(func_80ACC23C) ## $a1 = 80ACC23C
/* 02410 80ACC330 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02414 80ACC334 A48F03FE */  sh      $t7, 0x03FE($a0)           ## 000003FE
/* 02418 80ACC338 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 0241C 80ACC33C 27181168 */  addiu   $t8, $t8, 0x1168           ## $t8 = 06001168
/* 02420 80ACC340 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 02424 80ACC344 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 02428 80ACC348 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0242C 80ACC34C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02430 80ACC350 24870198 */  addiu   $a3, $a0, 0x0198           ## $a3 = 00000198
/* 02434 80ACC354 0C2B342E */  jal     func_80ACD0B8              
/* 02438 80ACC358 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 0243C 80ACC35C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02440 80ACC360 3C0180AD */  lui     $at, %hi(D_80ACD850)       ## $at = 80AD0000
/* 02444 80ACC364 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 02448 80ACC368 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 0244C 80ACC36C E48603F8 */  swc1    $f6, 0x03F8($a0)           ## 000003F8
/* 02450 80ACC370 C428D850 */  lwc1    $f8, %lo(D_80ACD850)($at)  
/* 02454 80ACC374 E4880060 */  swc1    $f8, 0x0060($a0)           ## 00000060
.L80ACC378:
/* 02458 80ACC378 34590008 */  ori     $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0245C 80ACC37C A49903FC */  sh      $t9, 0x03FC($a0)           ## 000003FC
/* 02460 80ACC380 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02464 80ACC384 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02468 80ACC388 03E00008 */  jr      $ra                        
/* 0246C 80ACC38C 00000000 */  nop
