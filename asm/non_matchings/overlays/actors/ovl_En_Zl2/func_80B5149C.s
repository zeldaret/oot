glabel func_80B5149C
/* 02B0C 80B5149C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B10 80B514A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B14 80B514A4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02B18 80B514A8 94AE1D74 */  lhu     $t6, 0x1D74($a1)           ## 00001D74
/* 02B1C 80B514AC 29C103DC */  slti    $at, $t6, 0x03DC           
/* 02B20 80B514B0 10200008 */  beq     $at, $zero, .L80B514D4     
/* 02B24 80B514B4 00000000 */  nop
/* 02B28 80B514B8 0C2D3B3A */  jal     func_80B4ECE8              
/* 02B2C 80B514BC 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 02B30 80B514C0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02B34 80B514C4 0C2D3B41 */  jal     func_80B4ED04              
/* 02B38 80B514C8 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 02B3C 80B514CC 10000004 */  beq     $zero, $zero, .L80B514E0   
/* 02B40 80B514D0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B514D4:
/* 02B44 80B514D4 0C2D3A6C */  jal     func_80B4E9B0              
/* 02B48 80B514D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02B4C 80B514DC 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B514E0:
/* 02B50 80B514E0 0C2D3B46 */  jal     func_80B4ED18              
/* 02B54 80B514E4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02B58 80B514E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B5C 80B514EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B60 80B514F0 03E00008 */  jr      $ra                        
/* 02B64 80B514F4 00000000 */  nop
