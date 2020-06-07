glabel func_80A09BFC
/* 00D5C 80A09BFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D60 80A09C00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D64 80A09C04 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00D68 80A09C08 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D6C 80A09C0C 0C00BB60 */  jal     func_8002ED80              
/* 00D70 80A09C10 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D74 80A09C14 87AE0022 */  lh      $t6, 0x0022($sp)           
/* 00D78 80A09C18 3C0580A1 */  lui     $a1, %hi(D_80A09E00)       ## $a1 = 80A10000
/* 00D7C 80A09C1C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D80 80A09C20 000E7840 */  sll     $t7, $t6,  1               
/* 00D84 80A09C24 00AF2821 */  addu    $a1, $a1, $t7              
/* 00D88 80A09C28 0C01A528 */  jal     func_800694A0              
/* 00D8C 80A09C2C 84A59E00 */  lh      $a1, %lo(D_80A09E00)($a1)  
/* 00D90 80A09C30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D94 80A09C34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D98 80A09C38 03E00008 */  jr      $ra                        
/* 00D9C 80A09C3C 00000000 */  nop
