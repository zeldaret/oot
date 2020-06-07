glabel func_80A87CEC
/* 004EC 80A87CEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004F0 80A87CF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F4 80A87CF4 8482030C */  lh      $v0, 0x030C($a0)           ## 0000030C
/* 004F8 80A87CF8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 004FC 80A87CFC 8C830300 */  lw      $v1, 0x0300($a0)           ## 00000300
/* 00500 80A87D00 18400004 */  blez    $v0, .L80A87D14            
/* 00504 80A87D04 3C0580A8 */  lui     $a1, %hi(func_80A87EF0)    ## $a1 = 80A80000
/* 00508 80A87D08 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0050C 80A87D0C 1000001D */  beq     $zero, $zero, .L80A87D84   
/* 00510 80A87D10 A48E030C */  sh      $t6, 0x030C($a0)           ## 0000030C
.L80A87D14:
/* 00514 80A87D14 24A57EF0 */  addiu   $a1, $a1, %lo(func_80A87EF0) ## $a1 = 80A87EF0
/* 00518 80A87D18 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0051C 80A87D1C 0C2A1E00 */  jal     func_80A87800              
/* 00520 80A87D20 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00524 80A87D24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00528 80A87D28 3C0F80A9 */  lui     $t7, %hi(D_80A88164)       ## $t7 = 80A90000
/* 0052C 80A87D2C 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00530 80A87D30 25EF8164 */  addiu   $t7, $t7, %lo(D_80A88164)  ## $t7 = 80A88164
/* 00534 80A87D34 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00538 80A87D38 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 0053C 80A87D3C AC8F1D68 */  sw      $t7, 0x1D68($a0)           ## 00001D68
/* 00540 80A87D40 A038FA74 */  sb      $t8, %lo(gSaveContext+0x1414)($at)
/* 00544 80A87D44 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00548 80A87D48 0C00FAFE */  jal     func_8003EBF8              
/* 0054C 80A87D4C 8C66014C */  lw      $a2, 0x014C($v1)           ## 0000014C
/* 00550 80A87D50 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00554 80A87D54 84F907A0 */  lh      $t9, 0x07A0($a3)           ## 000007A0
/* 00558 80A87D58 00194080 */  sll     $t0, $t9,  2               
/* 0055C 80A87D5C 00E84821 */  addu    $t1, $a3, $t0              
/* 00560 80A87D60 0C016C69 */  jal     func_8005B1A4              
/* 00564 80A87D64 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 00568 80A87D68 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0056C 80A87D6C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00570 80A87D70 944A0EDA */  lhu     $t2, 0x0EDA($v0)           ## 8015F53A
/* 00574 80A87D74 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00578 80A87D78 354B0400 */  ori     $t3, $t2, 0x0400           ## $t3 = 00000400
/* 0057C 80A87D7C 0C01E221 */  jal     func_80078884              
/* 00580 80A87D80 A44B0EDA */  sh      $t3, 0x0EDA($v0)           ## 8015F53A
.L80A87D84:
/* 00584 80A87D84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00588 80A87D88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0058C 80A87D8C 03E00008 */  jr      $ra                        
/* 00590 80A87D90 00000000 */  nop
