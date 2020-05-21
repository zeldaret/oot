glabel func_80B03E74
/* 01C04 80B03E74 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C08 80B03E78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C0C 80B03E7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01C10 80B03E80 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01C14 80B03E84 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01C18 80B03E88 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01C1C 80B03E8C C4860160 */  lwc1    $f6, 0x0160($a0)           ## 00000160
/* 01C20 80B03E90 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 01C24 80B03E94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C28 80B03E98 46003201 */  sub.s   $f8, $f6, $f0              
/* 01C2C 80B03E9C 46082283 */  div.s   $f10, $f4, $f8             
/* 01C30 80B03EA0 E7AA0024 */  swc1    $f10, 0x0024($sp)          
/* 01C34 80B03EA4 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 01C38 80B03EA8 46008032 */  c.eq.s  $f16, $f0                  
/* 01C3C 80B03EAC 00000000 */  nop
/* 01C40 80B03EB0 45020004 */  bc1fl   .L80B03EC4                 
/* 01C44 80B03EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C48 80B03EB8 0C2C0A15 */  jal     func_80B02854              
/* 01C4C 80B03EBC 00000000 */  nop
/* 01C50 80B03EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B03EC4:
/* 01C54 80B03EC4 0C2C0B6F */  jal     func_80B02DBC              
/* 01C58 80B03EC8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01C5C 80B03ECC 10400009 */  beq     $v0, $zero, .L80B03EF4     
/* 01C60 80B03ED0 00000000 */  nop
/* 01C64 80B03ED4 0C2C0A33 */  jal     func_80B028CC              
/* 01C68 80B03ED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C6C 80B03EDC 3C0580B0 */  lui     $a1, %hi(func_80B03D74)    ## $a1 = 80B00000
/* 01C70 80B03EE0 24A53D74 */  addiu   $a1, $a1, %lo(func_80B03D74) ## $a1 = 80B03D74
/* 01C74 80B03EE4 0C2C089C */  jal     func_80B02270              
/* 01C78 80B03EE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C7C 80B03EEC 10000012 */  beq     $zero, $zero, .L80B03F38   
/* 01C80 80B03EF0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03EF4:
/* 01C84 80B03EF4 0C2C0BA9 */  jal     func_80B02EA4              
/* 01C88 80B03EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C8C 80B03EFC 10400009 */  beq     $v0, $zero, .L80B03F24     
/* 01C90 80B03F00 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01C94 80B03F04 0C2C0A0D */  jal     func_80B02834              
/* 01C98 80B03F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C9C 80B03F0C 3C0580B0 */  lui     $a1, %hi(func_80B03968)    ## $a1 = 80B00000
/* 01CA0 80B03F10 24A53968 */  addiu   $a1, $a1, %lo(func_80B03968) ## $a1 = 80B03968
/* 01CA4 80B03F14 0C2C089C */  jal     func_80B02270              
/* 01CA8 80B03F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CAC 80B03F1C 10000006 */  beq     $zero, $zero, .L80B03F38   
/* 01CB0 80B03F20 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03F24:
/* 01CB4 80B03F24 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.00
/* 01CB8 80B03F28 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 01CBC 80B03F2C 46069102 */  mul.s   $f4, $f18, $f6             
/* 01CC0 80B03F30 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01CC4 80B03F34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B03F38:
/* 01CC8 80B03F38 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01CCC 80B03F3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01CD0 80B03F40 03E00008 */  jr      $ra                        
/* 01CD4 80B03F44 00000000 */  nop
