glabel BgHidanRock_Draw
/* 00E04 8088BE84 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E08 8088BE88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E0C 8088BE8C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00E10 8088BE90 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00E14 8088BE94 908E0168 */  lbu     $t6, 0x0168($a0)           ## 00000168
/* 00E18 8088BE98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E1C 8088BE9C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00E20 8088BEA0 15C00007 */  bne     $t6, $zero, .L8088BEC0     
/* 00E24 8088BEA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E28 8088BEA8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E2C 8088BEAC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E30 8088BEB0 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00E34 8088BEB4 24A5C100 */  addiu   $a1, $a1, 0xC100           ## $a1 = 0600C100
/* 00E38 8088BEB8 10000005 */  beq     $zero, $zero, .L8088BED0   
/* 00E3C 8088BEBC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L8088BEC0:
/* 00E40 8088BEC0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00E44 8088BEC4 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00E48 8088BEC8 24A5C1F0 */  addiu   $a1, $a1, 0xC1F0           ## $a1 = 0600C1F0
/* 00E4C 8088BECC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L8088BED0:
/* 00E50 8088BED0 C606016C */  lwc1    $f6, 0x016C($s0)           ## 0000016C
/* 00E54 8088BED4 4606203C */  c.lt.s  $f4, $f6                   
/* 00E58 8088BED8 00000000 */  nop
/* 00E5C 8088BEDC 4502001C */  bc1fl   .L8088BF50                 
/* 00E60 8088BEE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E64 8088BEE4 920F0168 */  lbu     $t7, 0x0168($s0)           ## 00000168
/* 00E68 8088BEE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E6C 8088BEEC 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00E70 8088BEF0 15E0000B */  bne     $t7, $zero, .L8088BF20     
/* 00E74 8088BEF4 02212021 */  addu    $a0, $s1, $at              
/* 00E78 8088BEF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E7C 8088BEFC 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 00E80 8088BF00 3C058089 */  lui     $a1, %hi(D_8088BF60)       ## $a1 = 80890000
/* 00E84 8088BF04 26060170 */  addiu   $a2, $s0, 0x0170           ## $a2 = 00000170
/* 00E88 8088BF08 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00E8C 8088BF0C 24A5BF60 */  addiu   $a1, $a1, %lo(D_8088BF60)  ## $a1 = 8088BF60
/* 00E90 8088BF10 0C029BBD */  jal     SkinMatrix_Vec3fMtxFMultXYZ              
/* 00E94 8088BF14 02212021 */  addu    $a0, $s1, $at              
/* 00E98 8088BF18 10000006 */  beq     $zero, $zero, .L8088BF34   
/* 00E9C 8088BF1C 8FA60024 */  lw      $a2, 0x0024($sp)           
.L8088BF20:
/* 00EA0 8088BF20 26060170 */  addiu   $a2, $s0, 0x0170           ## $a2 = 00000170
/* 00EA4 8088BF24 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00EA8 8088BF28 0C029BBD */  jal     SkinMatrix_Vec3fMtxFMultXYZ              
/* 00EAC 8088BF2C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00EB0 8088BF30 8FA60024 */  lw      $a2, 0x0024($sp)           
.L8088BF34:
/* 00EB4 8088BF34 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00EB8 8088BF38 0C01E245 */  jal     func_80078914              
/* 00EBC 8088BF3C 24052033 */  addiu   $a1, $zero, 0x2033         ## $a1 = 00002033
/* 00EC0 8088BF40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EC4 8088BF44 0C222F10 */  jal     func_8088BC40              
/* 00EC8 8088BF48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00ECC 8088BF4C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088BF50:
/* 00ED0 8088BF50 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00ED4 8088BF54 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00ED8 8088BF58 03E00008 */  jr      $ra                        
/* 00EDC 8088BF5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
