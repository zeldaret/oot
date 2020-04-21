glabel func_80A87C30
/* 00430 80A87C30 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00434 80A87C34 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00438 80A87C38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0043C 80A87C3C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00440 80A87C40 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00444 80A87C44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00448 80A87C48 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0044C 80A87C4C 3C0480A9 */  lui     $a0, %hi(D_80A88CF0)       ## $a0 = 80A90000
/* 00450 80A87C50 24848CF0 */  addiu   $a0, $a0, %lo(D_80A88CF0)  ## $a0 = 80A88CF0
/* 00454 80A87C54 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00458 80A87C58 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 0045C 80A87C5C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00460 80A87C60 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00464 80A87C64 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00468 80A87C68 0331C821 */  addu    $t9, $t9, $s1              
/* 0046C 80A87C6C 4604003C */  c.lt.s  $f0, $f4                   
/* 00470 80A87C70 00000000 */  nop
/* 00474 80A87C74 4502000D */  bc1fl   .L80A87CAC                 
/* 00478 80A87C78 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0047C 80A87C7C 8F391D44 */  lw      $t9, 0x1D44($t9)           ## 00011D44
/* 00480 80A87C80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00484 80A87C84 0320F809 */  jalr    $ra, $t9                   
/* 00488 80A87C88 00000000 */  nop
/* 0048C 80A87C8C 10400006 */  beq     $v0, $zero, .L80A87CA8     
/* 00490 80A87C90 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00494 80A87C94 3C0580A8 */  lui     $a1, %hi(func_80A87CEC)    ## $a1 = 80A80000
/* 00498 80A87C98 A60E030C */  sh      $t6, 0x030C($s0)           ## 0000030C
/* 0049C 80A87C9C 24A57CEC */  addiu   $a1, $a1, %lo(func_80A87CEC) ## $a1 = 80A87CEC
/* 004A0 80A87CA0 0C2A1E00 */  jal     func_80A87800              
/* 004A4 80A87CA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A87CA8:
/* 004A8 80A87CA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A87CAC:
/* 004AC 80A87CAC 240FFB23 */  addiu   $t7, $zero, 0xFB23         ## $t7 = FFFFFB23
/* 004B0 80A87CB0 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 004B4 80A87CB4 2408FFD0 */  addiu   $t0, $zero, 0xFFD0         ## $t0 = FFFFFFD0
/* 004B8 80A87CB8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 004BC 80A87CBC A60F02F6 */  sh      $t7, 0x02F6($s0)           ## 000002F6
/* 004C0 80A87CC0 A61802F8 */  sh      $t8, 0x02F8($s0)           ## 000002F8
/* 004C4 80A87CC4 A60802FA */  sh      $t0, 0x02FA($s0)           ## 000002FA
/* 004C8 80A87CC8 02212821 */  addu    $a1, $s1, $at              
/* 004CC 80A87CCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004D0 80A87CD0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 004D4 80A87CD4 260602B0 */  addiu   $a2, $s0, 0x02B0           ## $a2 = 000002B0
/* 004D8 80A87CD8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004DC 80A87CDC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 004E0 80A87CE0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 004E4 80A87CE4 03E00008 */  jr      $ra                        
/* 004E8 80A87CE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
