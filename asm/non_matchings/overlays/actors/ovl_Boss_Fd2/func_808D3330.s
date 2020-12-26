glabel func_808D3330
/* 00CC0 808D3330 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CC4 808D3334 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CC8 808D3338 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CCC 808D333C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00CD0 808D3340 848E0198 */  lh      $t6, 0x0198($a0)           ## 00000198
/* 00CD4 808D3344 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CD8 808D3348 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00CDC 808D334C 15C0000D */  bne     $t6, $zero, .L808D3384     
/* 00CE0 808D3350 3C05C2C8 */  lui     $a1, 0xC2C8                ## $a1 = C2C80000
/* 00CE4 808D3354 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00CE8 808D3358 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CEC 808D335C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CF0 808D3360 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00CF4 808D3364 0C0295B2 */  jal     func_800A56C8              
/* 00CF8 808D3368 8E0501F0 */  lw      $a1, 0x01F0($s0)           ## 000001F0
/* 00CFC 808D336C 1040001F */  beq     $v0, $zero, .L808D33EC     
/* 00D00 808D3370 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00D04 808D3374 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 00D08 808D3378 A60F0198 */  sh      $t7, 0x0198($s0)           ## 00000198
/* 00D0C 808D337C 1000001B */  beq     $zero, $zero, .L808D33EC   
/* 00D10 808D3380 A61801BC */  sh      $t8, 0x01BC($s0)           ## 000001BC
.L808D3384:
/* 00D14 808D3384 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00D18 808D3388 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00D1C 808D338C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00D20 808D3390 0C01E107 */  jal     Math_ApproachF
              
/* 00D24 808D3394 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00D28 808D3398 861901BC */  lh      $t9, 0x01BC($s0)           ## 000001BC
/* 00D2C 808D339C 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00D30 808D33A0 57200013 */  bnel    $t9, $zero, .L808D33F0     
/* 00D34 808D33A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D38 808D33A8 860801A8 */  lh      $t0, 0x01A8($s0)           ## 000001A8
/* 00D3C 808D33AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D40 808D33B0 29010003 */  slti    $at, $t0, 0x0003           
/* 00D44 808D33B4 1420000B */  bne     $at, $zero, .L808D33E4     
/* 00D48 808D33B8 00000000 */  nop
/* 00D4C 808D33BC 804900AF */  lb      $t1, 0x00AF($v0)           ## 000000AF
/* 00D50 808D33C0 3C0A808D */  lui     $t2, %hi(func_808D4748)    ## $t2 = 808D0000
/* 00D54 808D33C4 254A4748 */  addiu   $t2, $t2, %lo(func_808D4748) ## $t2 = 808D4748
/* 00D58 808D33C8 29210018 */  slti    $at, $t1, 0x0018           
/* 00D5C 808D33CC 10200005 */  beq     $at, $zero, .L808D33E4     
/* 00D60 808D33D0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00D64 808D33D4 A60001A8 */  sh      $zero, 0x01A8($s0)         ## 000001A8
/* 00D68 808D33D8 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 00D6C 808D33DC 10000003 */  beq     $zero, $zero, .L808D33EC   
/* 00D70 808D33E0 A04B02D8 */  sb      $t3, 0x02D8($v0)           ## 000002D8
.L808D33E4:
/* 00D74 808D33E4 0C234AF4 */  jal     func_808D2BD0              
/* 00D78 808D33E8 8FA5002C */  lw      $a1, 0x002C($sp)           
.L808D33EC:
/* 00D7C 808D33EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808D33F0:
/* 00D80 808D33F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D84 808D33F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D88 808D33F8 03E00008 */  jr      $ra                        
/* 00D8C 808D33FC 00000000 */  nop
