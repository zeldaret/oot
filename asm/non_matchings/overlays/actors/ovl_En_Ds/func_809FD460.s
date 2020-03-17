glabel func_809FD460
/* 00430 809FD460 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00434 809FD464 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00438 809FD468 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0043C 809FD46C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00440 809FD470 948201EA */  lhu     $v0, 0x01EA($a0)           ## 000001EA
/* 00444 809FD474 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00448 809FD478 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0044C 809FD47C 18400004 */  blez    $v0, .L809FD490            
/* 00450 809FD480 3C063C23 */  lui     $a2, 0x3C23                ## $a2 = 3C230000
/* 00454 809FD484 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00458 809FD488 10000006 */  beq     $zero, $zero, .L809FD4A4   
/* 0045C 809FD48C A48E01EA */  sh      $t6, 0x01EA($a0)           ## 000001EA
.L809FD490:
/* 00460 809FD490 3C0F80A0 */  lui     $t7, %hi(func_809FD40C)    ## $t7 = 80A00000
/* 00464 809FD494 25EFD40C */  addiu   $t7, $t7, %lo(func_809FD40C) ## $t7 = 809FD40C
/* 00468 809FD498 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 0046C 809FD49C AE0F01EC */  sw      $t7, 0x01EC($s0)           ## 000001EC
/* 00470 809FD4A0 A61801EA */  sh      $t8, 0x01EA($s0)           ## 000001EA
.L809FD4A4:
/* 00474 809FD4A4 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 00478 809FD4A8 0C01DE80 */  jal     Math_ApproxF
              
/* 0047C 809FD4AC 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3C23D70A
/* 00480 809FD4B0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00484 809FD4B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00488 809FD4B8 C60001E4 */  lwc1    $f0, 0x01E4($s0)           ## 000001E4
/* 0048C 809FD4BC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00490 809FD4C0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00494 809FD4C4 46002181 */  sub.s   $f6, $f4, $f0              
/* 00498 809FD4C8 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 0049C 809FD4CC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 004A0 809FD4D0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 004A4 809FD4D4 46060202 */  mul.s   $f8, $f0, $f6              
/* 004A8 809FD4D8 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 004AC 809FD4DC E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 004B0 809FD4E0 44054000 */  mfc1    $a1, $f8                   
/* 004B4 809FD4E4 0C01DCEA */  jal     func_800773A8              
/* 004B8 809FD4E8 00000000 */  nop
/* 004BC 809FD4EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004C0 809FD4F0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004C4 809FD4F4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004C8 809FD4F8 03E00008 */  jr      $ra                        
/* 004CC 809FD4FC 00000000 */  nop


