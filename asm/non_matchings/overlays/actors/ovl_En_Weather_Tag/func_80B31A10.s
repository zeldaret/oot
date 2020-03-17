glabel func_80B31A10
/* 009F0 80B31A10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009F4 80B31A14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009F8 80B31A18 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 009FC 80B31A1C 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00A00 80B31A20 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 00A04 80B31A24 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A08 80B31A28 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A0C 80B31A2C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00A10 80B31A30 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00A14 80B31A34 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00A18 80B31A38 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A1C 80B31A3C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A20 80B31A40 0C2CC4B2 */  jal     func_80B312C8              
/* 00A24 80B31A44 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A28 80B31A48 50400012 */  beql    $v0, $zero, .L80B31A94     
/* 00A2C 80B31A4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A30 80B31A50 0C01DD89 */  jal     func_80077624              
/* 00A34 80B31A54 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00A38 80B31A58 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00A3C 80B31A5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A40 80B31A60 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00A44 80B31A64 00280821 */  addu    $at, $at, $t0              
/* 00A48 80B31A68 A0390B03 */  sb      $t9, 0x0B03($at)           ## 00010B03
/* 00A4C 80B31A6C 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 00A50 80B31A70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A54 80B31A74 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 00A58 80B31A78 002A0821 */  addu    $at, $at, $t2              
/* 00A5C 80B31A7C A0290B12 */  sb      $t1, 0x0B12($at)           ## 00010B12
/* 00A60 80B31A80 3C0580B3 */  lui     $a1, %hi(func_80B31AA0)    ## $a1 = 80B30000
/* 00A64 80B31A84 24A51AA0 */  addiu   $a1, $a1, %lo(func_80B31AA0) ## $a1 = 80B31AA0
/* 00A68 80B31A88 0C2CC408 */  jal     func_80B31020              
/* 00A6C 80B31A8C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00A70 80B31A90 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B31A94:
/* 00A74 80B31A94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A78 80B31A98 03E00008 */  jr      $ra                        
/* 00A7C 80B31A9C 00000000 */  nop


