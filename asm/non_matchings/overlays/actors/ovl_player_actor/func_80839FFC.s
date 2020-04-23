glabel func_80839FFC
/* 07DEC 80839FFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07DF0 8083A000 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07DF4 8083A004 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07DF8 8083A008 0C023A71 */  jal     func_8008E9C4              
/* 07DFC 8083A00C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 07E00 8083A010 10400003 */  beq     $v0, $zero, .L8083A020     
/* 07E04 8083A014 3C068084 */  lui     $a2, %hi(func_80840450)    ## $a2 = 80840000
/* 07E08 8083A018 10000009 */  beq     $zero, $zero, .L8083A040   
/* 07E0C 8083A01C 24C60450 */  addiu   $a2, $a2, %lo(func_80840450) ## $a2 = 80840450
.L8083A020:
/* 07E10 8083A020 0C20CECB */  jal     func_80833B2C              
/* 07E14 8083A024 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07E18 8083A028 10400004 */  beq     $v0, $zero, .L8083A03C     
/* 07E1C 8083A02C 3C068084 */  lui     $a2, %hi(func_80840BC8)    ## $a2 = 80840000
/* 07E20 8083A030 3C068084 */  lui     $a2, %hi(func_808407CC)    ## $a2 = 80840000
/* 07E24 8083A034 10000002 */  beq     $zero, $zero, .L8083A040   
/* 07E28 8083A038 24C607CC */  addiu   $a2, $a2, %lo(func_808407CC) ## $a2 = 808407CC
.L8083A03C:
/* 07E2C 8083A03C 24C60BC8 */  addiu   $a2, $a2, %lo(func_80840BC8) ## $a2 = 80841394
.L8083A040:
/* 07E30 8083A040 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 07E34 8083A044 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 07E38 8083A048 0C20D716 */  jal     func_80835C58              
/* 07E3C 8083A04C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 07E40 8083A050 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07E44 8083A054 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07E48 8083A058 03E00008 */  jr      $ra                        
/* 07E4C 8083A05C 00000000 */  nop
