glabel func_809FD500
/* 004D0 809FD500 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 004D4 809FD504 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004D8 809FD508 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004DC 809FD50C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 004E0 809FD510 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 004E4 809FD514 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 004E8 809FD518 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 004EC 809FD51C 0C042F6F */  jal     func_8010BDBC              
/* 004F0 809FD520 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 004F4 809FD524 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 004F8 809FD528 54410024 */  bnel    $v0, $at, .L809FD5BC       
/* 004FC 809FD52C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00500 809FD530 0C041AF2 */  jal     func_80106BC8              
/* 00504 809FD534 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00508 809FD538 1040001F */  beq     $v0, $zero, .L809FD5B8     
/* 0050C 809FD53C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00510 809FD540 00501021 */  addu    $v0, $v0, $s0              
/* 00514 809FD544 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00518 809FD548 3C0F80A0 */  lui     $t7, %hi(func_809FD460)    ## $t7 = 80A00000
/* 0051C 809FD54C 25EFD460 */  addiu   $t7, $t7, %lo(func_809FD460) ## $t7 = 809FD460
/* 00520 809FD550 10400006 */  beq     $v0, $zero, .L809FD56C     
/* 00524 809FD554 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 00528 809FD558 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0052C 809FD55C 10410010 */  beq     $v0, $at, .L809FD5A0       
/* 00530 809FD560 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00534 809FD564 10000015 */  beq     $zero, $zero, .L809FD5BC   
/* 00538 809FD568 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FD56C:
/* 0053C 809FD56C 8FA20028 */  lw      $v0, 0x0028($sp)           
/* 00540 809FD570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00544 809FD574 2405003F */  addiu   $a1, $zero, 0x003F         ## $a1 = 0000003F
/* 00548 809FD578 AC4F01EC */  sw      $t7, 0x01EC($v0)           ## 000101EC
/* 0054C 809FD57C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00550 809FD580 A45801EA */  sh      $t8, 0x01EA($v0)           ## 000101EA
/* 00554 809FD584 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00558 809FD588 00300821 */  addu    $at, $at, $s0              
/* 0055C 809FD58C 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 00560 809FD590 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 00564 809FD594 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00568 809FD598 10000007 */  beq     $zero, $zero, .L809FD5B8   
/* 0056C 809FD59C A1000693 */  sb      $zero, 0x0693($t0)         ## 00000693
.L809FD5A0:
/* 00570 809FD5A0 0C042DC8 */  jal     func_8010B720              
/* 00574 809FD5A4 2405504C */  addiu   $a1, $zero, 0x504C         ## $a1 = 0000504C
/* 00578 809FD5A8 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 0057C 809FD5AC 3C0980A0 */  lui     $t1, %hi(func_809FD10C)    ## $t1 = 80A00000
/* 00580 809FD5B0 2529D10C */  addiu   $t1, $t1, %lo(func_809FD10C) ## $t1 = 809FD10C
/* 00584 809FD5B4 AD4901EC */  sw      $t1, 0x01EC($t2)           ## 000001EC
.L809FD5B8:
/* 00588 809FD5B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FD5BC:
/* 0058C 809FD5BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00590 809FD5C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00594 809FD5C4 03E00008 */  jr      $ra                        
/* 00598 809FD5C8 00000000 */  nop


