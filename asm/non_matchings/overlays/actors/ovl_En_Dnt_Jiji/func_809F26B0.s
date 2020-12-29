glabel func_809F26B0
/* 00BD0 809F26B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00BD4 809F26B4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BD8 809F26B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BDC 809F26BC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BE0 809F26C0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00BE4 809F26C4 0C02927F */  jal     SkelAnime_Update
              
/* 00BE8 809F26C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00BEC 809F26CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BF0 809F26D0 0C00BD04 */  jal     Actor_HasParent              
/* 00BF4 809F26D4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00BF8 809F26D8 10400005 */  beq     $v0, $zero, .L809F26F0     
/* 00BFC 809F26DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C00 809F26E0 3C0E809F */  lui     $t6, %hi(func_809F2720)    ## $t6 = 809F0000
/* 00C04 809F26E4 25CE2720 */  addiu   $t6, $t6, %lo(func_809F2720) ## $t6 = 809F2720
/* 00C08 809F26E8 10000008 */  beq     $zero, $zero, .L809F270C   
/* 00C0C 809F26EC AE0E022C */  sw      $t6, 0x022C($s0)           ## 0000022C
.L809F26F0:
/* 00C10 809F26F0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00C14 809F26F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00C18 809F26F8 8E060254 */  lw      $a2, 0x0254($s0)           ## 00000254
/* 00C1C 809F26FC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00C20 809F2700 3C0743C8 */  lui     $a3, 0x43C8                ## $a3 = 43C80000
/* 00C24 809F2704 0C00BD0D */  jal     func_8002F434              
/* 00C28 809F2708 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809F270C:
/* 00C2C 809F270C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C30 809F2710 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C34 809F2714 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C38 809F2718 03E00008 */  jr      $ra                        
/* 00C3C 809F271C 00000000 */  nop
