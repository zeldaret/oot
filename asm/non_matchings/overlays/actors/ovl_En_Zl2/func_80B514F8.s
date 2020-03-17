glabel func_80B514F8
/* 02B68 80B514F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B6C 80B514FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B70 80B51500 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02B74 80B51504 0C2D3A6C */  jal     func_80B4E9B0              
/* 02B78 80B51508 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02B7C 80B5150C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 02B80 80B51510 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02B84 80B51514 95CF1D74 */  lhu     $t7, 0x1D74($t6)           ## 00001D74
/* 02B88 80B51518 29E104A6 */  slti    $at, $t7, 0x04A6           
/* 02B8C 80B5151C 10200005 */  beq     $at, $zero, .L80B51534     
/* 02B90 80B51520 00000000 */  nop
/* 02B94 80B51524 0C2D3B46 */  jal     func_80B4ED18              
/* 02B98 80B51528 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02B9C 80B5152C 10000004 */  beq     $zero, $zero, .L80B51540   
/* 02BA0 80B51530 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B51534:
/* 02BA4 80B51534 0C2D3B46 */  jal     func_80B4ED18              
/* 02BA8 80B51538 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02BAC 80B5153C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B51540:
/* 02BB0 80B51540 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02BB4 80B51544 03E00008 */  jr      $ra                        
/* 02BB8 80B51548 00000000 */  nop


