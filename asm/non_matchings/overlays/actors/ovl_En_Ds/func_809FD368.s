glabel func_809FD368
/* 00338 809FD368 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0033C 809FD36C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00340 809FD370 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00344 809FD374 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00348 809FD378 948201EA */  lhu     $v0, 0x01EA($a0)           ## 000001EA
/* 0034C 809FD37C 3C0F80A0 */  lui     $t7, %hi(func_809FD2EC)    ## $t7 = 80A00000
/* 00350 809FD380 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00354 809FD384 18400004 */  blez    $v0, .L809FD398            
/* 00358 809FD388 25EFD2EC */  addiu   $t7, $t7, %lo(func_809FD2EC) ## $t7 = 809FD2EC
/* 0035C 809FD38C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00360 809FD390 10000005 */  beq     $zero, $zero, .L809FD3A8   
/* 00364 809FD394 A48E01EA */  sh      $t6, 0x01EA($a0)           ## 000001EA
.L809FD398:
/* 00368 809FD398 AE0F01EC */  sw      $t7, 0x01EC($s0)           ## 000001EC
/* 0036C 809FD39C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00370 809FD3A0 0C042DC8 */  jal     func_8010B720              
/* 00374 809FD3A4 2405504D */  addiu   $a1, $zero, 0x504D         ## $a1 = 0000504D
.L809FD3A8:
/* 00378 809FD3A8 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 0037C 809FD3AC 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 00380 809FD3B0 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00384 809FD3B4 0C01DE80 */  jal     Math_ApproxF
              
/* 00388 809FD3B8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0038C 809FD3BC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00390 809FD3C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00394 809FD3C4 C60001E4 */  lwc1    $f0, 0x01E4($s0)           ## 000001E4
/* 00398 809FD3C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0039C 809FD3CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 003A0 809FD3D0 46002181 */  sub.s   $f6, $f4, $f0              
/* 003A4 809FD3D4 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 003A8 809FD3D8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 003AC 809FD3DC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 003B0 809FD3E0 46060202 */  mul.s   $f8, $f0, $f6              
/* 003B4 809FD3E4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 003B8 809FD3E8 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 003BC 809FD3EC 44054000 */  mfc1    $a1, $f8                   
/* 003C0 809FD3F0 0C01DCEA */  jal     func_800773A8              
/* 003C4 809FD3F4 00000000 */  nop
/* 003C8 809FD3F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003CC 809FD3FC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003D0 809FD400 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003D4 809FD404 03E00008 */  jr      $ra                        
/* 003D8 809FD408 00000000 */  nop


