glabel func_80B03968
/* 016F8 80B03968 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016FC 80B0396C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01700 80B03970 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01704 80B03974 0C2C0B6F */  jal     func_80B02DBC              
/* 01708 80B03978 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0170C 80B0397C 10400009 */  beq     $v0, $zero, .L80B039A4     
/* 01710 80B03980 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01714 80B03984 0C2C0A33 */  jal     func_80B028CC              
/* 01718 80B03988 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0171C 80B0398C 3C0580B0 */  lui     $a1, %hi(func_80B03D74)    ## $a1 = 80B00000
/* 01720 80B03990 24A53D74 */  addiu   $a1, $a1, %lo(func_80B03D74) ## $a1 = 80B03D74
/* 01724 80B03994 0C2C089C */  jal     func_80B02270              
/* 01728 80B03998 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0172C 80B0399C 10000004 */  beq     $zero, $zero, .L80B039B0   
/* 01730 80B039A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B039A4:
/* 01734 80B039A4 0C2C0B54 */  jal     func_80B02D50              
/* 01738 80B039A8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0173C 80B039AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B039B0:
/* 01740 80B039B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01744 80B039B4 03E00008 */  jr      $ra                        
/* 01748 80B039B8 00000000 */  nop
