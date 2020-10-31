glabel ObjHamishi_Init
/* 00480 80B93410 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00484 80B93414 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00488 80B93418 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0048C 80B9341C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00490 80B93420 3C0580B9 */  lui     $a1, %hi(D_80B93798)       ## $a1 = 80B90000
/* 00494 80B93424 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00498 80B93428 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0049C 80B9342C 24A53798 */  addiu   $a1, $a1, %lo(D_80B93798)  ## $a1 = 80B93798
/* 004A0 80B93430 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 004A4 80B93434 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 004A8 80B93438 91CF1D6C */  lbu     $t7, 0x1D6C($t6)           ## 00001D6C
/* 004AC 80B9343C 51E00007 */  beql    $t7, $zero, .L80B9345C     
/* 004B0 80B93440 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 004B4 80B93444 C60400F4 */  lwc1    $f4, 0x00F4($s0)           ## 000000F4
/* 004B8 80B93448 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 004BC 80B9344C 00000000 */  nop
/* 004C0 80B93450 46062200 */  add.s   $f8, $f4, $f6              
/* 004C4 80B93454 E60800F4 */  swc1    $f8, 0x00F4($s0)           ## 000000F4
/* 004C8 80B93458 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
.L80B9345C:
/* 004CC 80B9345C 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 004D0 80B93460 5700000B */  bnel    $t8, $zero, .L80B93490     
/* 004D4 80B93464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004D8 80B93468 44816000 */  mtc1    $at, $f12                  ## $f12 = 65536.00
/* 004DC 80B9346C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 004E0 80B93470 00000000 */  nop
/* 004E4 80B93474 4600028D */  trunc.w.s $f10, $f0                  
/* 004E8 80B93478 44025000 */  mfc1    $v0, $f10                  
/* 004EC 80B9347C 00000000 */  nop
/* 004F0 80B93480 A6020016 */  sh      $v0, 0x0016($s0)           ## 00000016
/* 004F4 80B93484 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 004F8 80B93488 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 004FC 80B9348C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B93490:
/* 00500 80B93490 0C2E4BE4 */  jal     func_80B92F90              
/* 00504 80B93494 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00508 80B93498 3C0680B9 */  lui     $a2, %hi(D_80B9377C)       ## $a2 = 80B90000
/* 0050C 80B9349C 24C6377C */  addiu   $a2, $a2, %lo(D_80B9377C)  ## $a2 = 80B9377C
/* 00510 80B934A0 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00514 80B934A4 0C0187B5 */  jal     CollisionCheck_SetInfo              
/* 00518 80B934A8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0051C 80B934AC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00520 80B934B0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00524 80B934B4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00528 80B934B8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0052C 80B934BC 10400005 */  beq     $v0, $zero, .L80B934D4     
/* 00530 80B934C0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00534 80B934C4 0C00B55C */  jal     Actor_Kill
              
/* 00538 80B934C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0053C 80B934CC 10000005 */  beq     $zero, $zero, .L80B934E4   
/* 00540 80B934D0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B934D4:
/* 00544 80B934D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 00548 80B934D8 00000000 */  nop
/* 0054C 80B934DC E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00550 80B934E0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B934E4:
/* 00554 80B934E4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00558 80B934E8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0055C 80B934EC 03E00008 */  jr      $ra                        
/* 00560 80B934F0 00000000 */  nop
