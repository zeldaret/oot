glabel func_80889C90
/* 00330 80889C90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00334 80889C94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00338 80889C98 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0033C 80889C9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00340 80889CA0 0C00B5FB */  jal     func_8002D7EC              
/* 00344 80889CA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00348 80889CA8 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 0034C 80889CAC 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00350 80889CB0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00354 80889CB4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00358 80889CB8 3C018089 */  lui     $at, %hi(D_80889E40)       ## $at = 80890000
/* 0035C 80889CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00360 80889CC0 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00364 80889CC4 000FC080 */  sll     $t8, $t7,  2               
/* 00368 80889CC8 00380821 */  addu    $at, $at, $t8              
/* 0036C 80889CCC C4249E40 */  lwc1    $f4, %lo(D_80889E40)($at)  
/* 00370 80889CD0 4600203C */  c.lt.s  $f4, $f0                   
/* 00374 80889CD4 00000000 */  nop
/* 00378 80889CD8 4500000C */  bc1f    .L80889D0C                 
/* 0037C 80889CDC 00000000 */  nop
/* 00380 80889CE0 0C2226B3 */  jal     func_80889ACC              
/* 00384 80889CE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00388 80889CE8 3C058089 */  lui     $a1, %hi(func_80889D28)    ## $a1 = 80890000
/* 0038C 80889CEC 24A59D28 */  addiu   $a1, $a1, %lo(func_80889D28) ## $a1 = 80889D28
/* 00390 80889CF0 0C222658 */  jal     BgHidanKousi_SetupAction              
/* 00394 80889CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 80889CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0039C 80889CFC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003A0 80889D00 24052837 */  addiu   $a1, $zero, 0x2837         ## $a1 = 00002837
/* 003A4 80889D04 10000004 */  beq     $zero, $zero, .L80889D18   
/* 003A8 80889D08 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80889D0C:
/* 003AC 80889D0C 0C00BE5D */  jal     func_8002F974              
/* 003B0 80889D10 24052036 */  addiu   $a1, $zero, 0x2036         ## $a1 = 00002036
/* 003B4 80889D14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80889D18:
/* 003B8 80889D18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003BC 80889D1C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003C0 80889D20 03E00008 */  jr      $ra                        
/* 003C4 80889D24 00000000 */  nop


