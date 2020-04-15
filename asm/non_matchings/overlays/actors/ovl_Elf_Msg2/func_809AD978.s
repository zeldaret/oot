glabel func_809AD978
/* 00278 809AD978 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0027C 809AD97C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00280 809AD980 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00284 809AD984 0C00BCCD */  jal     func_8002F334              
/* 00288 809AD988 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0028C 809AD98C 10400015 */  beq     $v0, $zero, .L809AD9E4     
/* 00290 809AD990 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00294 809AD994 848E0034 */  lh      $t6, 0x0034($a0)           ## 00000034
/* 00298 809AD998 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0029C 809AD99C 3C05809B */  lui     $a1, %hi(func_809AD9F4)    ## $a1 = 809B0000
/* 002A0 809AD9A0 11C1000E */  beq     $t6, $at, .L809AD9DC       
/* 002A4 809AD9A4 00000000 */  nop
/* 002A8 809AD9A8 0C00B55C */  jal     Actor_Kill
              
/* 002AC 809AD9AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002B0 809AD9B0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002B4 809AD9B4 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 002B8 809AD9B8 8485001C */  lh      $a1, 0x001C($a0)           ## 0000001C
/* 002BC 809AD9BC 00052A03 */  sra     $a1, $a1,  8               
/* 002C0 809AD9C0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 002C4 809AD9C4 50A10008 */  beql    $a1, $at, .L809AD9E8       
/* 002C8 809AD9C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002CC 809AD9CC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 002D0 809AD9D0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002D4 809AD9D4 10000004 */  beq     $zero, $zero, .L809AD9E8   
/* 002D8 809AD9D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AD9DC:
/* 002DC 809AD9DC 0C26B5C0 */  jal     func_809AD700              
/* 002E0 809AD9E0 24A5D9F4 */  addiu   $a1, $a1, %lo(func_809AD9F4) ## $a1 = FFFFD9F4
.L809AD9E4:
/* 002E4 809AD9E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809AD9E8:
/* 002E8 809AD9E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002EC 809AD9EC 03E00008 */  jr      $ra                        
/* 002F0 809AD9F0 00000000 */  nop
