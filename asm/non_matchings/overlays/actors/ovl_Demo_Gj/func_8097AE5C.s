glabel func_8097AE5C
/* 0252C 8097AE5C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02530 8097AE60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02534 8097AE64 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02538 8097AE68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0253C 8097AE6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02540 8097AE70 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02544 8097AE74 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 02548 8097AE78 0C25E3F3 */  jal     func_80978FCC              
/* 0254C 8097AE7C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02550 8097AE80 3C078098 */  lui     $a3, %hi(D_8097BDE0)       ## $a3 = 80980000
/* 02554 8097AE84 24E7BDE0 */  addiu   $a3, $a3, %lo(D_8097BDE0)  ## $a3 = 8097BDE0
/* 02558 8097AE88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0255C 8097AE8C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02560 8097AE90 0C25E257 */  jal     func_8097895C              
/* 02564 8097AE94 26060184 */  addiu   $a2, $s0, 0x0184           ## $a2 = 00000184
/* 02568 8097AE98 3C078098 */  lui     $a3, %hi(D_8097BDE0)       ## $a3 = 80980000
/* 0256C 8097AE9C 24E7BDE0 */  addiu   $a3, $a3, %lo(D_8097BDE0)  ## $a3 = 8097BDE0
/* 02570 8097AEA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02574 8097AEA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02578 8097AEA8 0C25E257 */  jal     func_8097895C              
/* 0257C 8097AEAC 260601D0 */  addiu   $a2, $s0, 0x01D0           ## $a2 = 000001D0
/* 02580 8097AEB0 3C078098 */  lui     $a3, %hi(D_8097BDE0)       ## $a3 = 80980000
/* 02584 8097AEB4 24E7BDE0 */  addiu   $a3, $a3, %lo(D_8097BDE0)  ## $a3 = 8097BDE0
/* 02588 8097AEB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0258C 8097AEBC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02590 8097AEC0 0C25E257 */  jal     func_8097895C              
/* 02594 8097AEC4 2606021C */  addiu   $a2, $s0, 0x021C           ## $a2 = 0000021C
/* 02598 8097AEC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0259C 8097AECC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 025A0 8097AED0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 025A4 8097AED4 03E00008 */  jr      $ra                        
/* 025A8 8097AED8 00000000 */  nop
