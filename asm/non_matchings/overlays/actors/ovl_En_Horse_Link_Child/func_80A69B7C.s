glabel func_80A69B7C
/* 007AC 80A69B7C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 007B0 80A69B80 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 007B4 80A69B84 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 007B8 80A69B88 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 007BC 80A69B8C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 007C0 80A69B90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007C4 80A69B94 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 007C8 80A69B98 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 007CC 80A69B9C 0C29A569 */  jal     func_80A695A4              
/* 007D0 80A69BA0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 007D4 80A69BA4 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 007D8 80A69BA8 8E0F0150 */  lw      $t7, 0x0150($s0)           ## 00000150
/* 007DC 80A69BAC 3C0480A7 */  lui     $a0, %hi(D_80A6AEE0)       ## $a0 = 80A70000
/* 007E0 80A69BB0 000FC080 */  sll     $t8, $t7,  2               
/* 007E4 80A69BB4 00982021 */  addu    $a0, $a0, $t8              
/* 007E8 80A69BB8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 007EC 80A69BBC 8C84AEE0 */  lw      $a0, %lo(D_80A6AEE0)($a0)  
/* 007F0 80A69BC0 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 007F4 80A69BC4 8E190150 */  lw      $t9, 0x0150($s0)           ## 00000150
/* 007F8 80A69BC8 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 007FC 80A69BCC 46803220 */  cvt.s.w $f8, $f6                   
/* 00800 80A69BD0 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 00804 80A69BD4 3C0580A7 */  lui     $a1, %hi(D_80A6AEE0)       ## $a1 = 80A70000
/* 00808 80A69BD8 00194080 */  sll     $t0, $t9,  2               
/* 0080C 80A69BDC 00A82821 */  addu    $a1, $a1, $t0              
/* 00810 80A69BE0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00814 80A69BE4 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00818 80A69BE8 8CA5AEE0 */  lw      $a1, %lo(D_80A6AEE0)($a1)  
/* 0081C 80A69BEC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00820 80A69BF0 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00824 80A69BF4 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00828 80A69BF8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0082C 80A69BFC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00830 80A69C00 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 00834 80A69C04 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00838 80A69C08 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0083C 80A69C0C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00840 80A69C10 03E00008 */  jr      $ra                        
/* 00844 80A69C14 00000000 */  nop


