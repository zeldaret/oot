glabel EnSi_Update
/* 00354 80AFB9E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00358 80AFB9E8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0035C 80AFB9EC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00360 80AFB9F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00364 80AFB9F4 0C00B638 */  jal     Actor_MoveForward
              
/* 00368 80AFB9F8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0036C 80AFB9FC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00370 80AFBA00 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00374 80AFBA04 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00378 80AFBA08 44060000 */  mfc1    $a2, $f0                   
/* 0037C 80AFBA0C 44070000 */  mfc1    $a3, $f0                   
/* 00380 80AFBA10 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00384 80AFBA14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00388 80AFBA18 0C00B92D */  jal     func_8002E4B4              
/* 0038C 80AFBA1C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00390 80AFBA20 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00394 80AFBA24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 80AFBA28 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0039C 80AFBA2C 0320F809 */  jalr    $ra, $t9                   
/* 003A0 80AFBA30 00000000 */  nop
/* 003A4 80AFBA34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003A8 80AFBA38 0C00B56E */  jal     Actor_SetHeight
              
/* 003AC 80AFBA3C 3C054180 */  lui     $a1, 0x4180                ## $a1 = 41800000
/* 003B0 80AFBA40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003B4 80AFBA44 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003B8 80AFBA48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003BC 80AFBA4C 03E00008 */  jr      $ra                        
/* 003C0 80AFBA50 00000000 */  nop


