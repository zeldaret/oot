glabel func_80B0042C
/* 0217C 80B0042C 3C0E80B0 */  lui     $t6, %hi(D_80B01EA0)       ## $t6 = 80B00000
/* 02180 80B00430 8DCE1EA0 */  lw      $t6, %lo(D_80B01EA0)($t6)  
/* 02184 80B00434 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02188 80B00438 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0218C 80B0043C 11C00005 */  beq     $t6, $zero, .L80B00454     
/* 02190 80B00440 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02194 80B00444 0C2C011F */  jal     func_80B0047C              
/* 02198 80B00448 00000000 */  nop
/* 0219C 80B0044C 10000008 */  beq     $zero, $zero, .L80B00470   
/* 021A0 80B00450 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B00454:
/* 021A4 80B00454 0C2BFA5A */  jal     func_80AFE968              
/* 021A8 80B00458 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 021AC 80B0045C 44060000 */  mfc1    $a2, $f0                   
/* 021B0 80B00460 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 021B4 80B00464 0C00BCB3 */  jal     func_8002F2CC              
/* 021B8 80B00468 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 021BC 80B0046C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B00470:
/* 021C0 80B00470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021C4 80B00474 03E00008 */  jr      $ra                        
/* 021C8 80B00478 00000000 */  nop
