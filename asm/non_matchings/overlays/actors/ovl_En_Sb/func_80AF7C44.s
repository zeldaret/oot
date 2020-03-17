glabel func_80AF7C44
/* 00454 80AF7C44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00458 80AF7C48 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0045C 80AF7C4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00460 80AF7C50 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00464 80AF7C54 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00468 80AF7C58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0046C 80AF7C5C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00470 80AF7C60 2484004C */  addiu   $a0, $a0, 0x004C           ## $a0 = 0600004C
/* 00474 80AF7C64 860E01FA */  lh      $t6, 0x01FA($s0)           ## 000001FA
/* 00478 80AF7C68 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0047C 80AF7C6C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00480 80AF7C70 11C1000C */  beq     $t6, $at, .L80AF7CA4       
/* 00484 80AF7C74 46802020 */  cvt.s.w $f0, $f4                   
/* 00488 80AF7C78 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0048C 80AF7C7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00490 80AF7C80 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00494 80AF7C84 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00498 80AF7C88 24A5004C */  addiu   $a1, $a1, 0x004C           ## $a1 = 0600004C
/* 0049C 80AF7C8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 004A0 80AF7C90 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 004A4 80AF7C94 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 004A8 80AF7C98 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 004AC 80AF7C9C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 004B0 80AF7CA0 E7A60018 */  swc1    $f6, 0x0018($sp)           
.L80AF7CA4:
/* 004B4 80AF7CA4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 004B8 80AF7CA8 A61801FA */  sh      $t8, 0x01FA($s0)           ## 000001FA
/* 004BC 80AF7CAC 8FB90034 */  lw      $t9, 0x0034($sp)           
/* 004C0 80AF7CB0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004C4 80AF7CB4 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 004C8 80AF7CB8 1320001B */  beq     $t9, $zero, .L80AF7D28     
/* 004CC 80AF7CBC 3C0980B0 */  lui     $t1, %hi(func_80AF8224)    ## $t1 = 80B00000
/* 004D0 80AF7CC0 C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 004D4 80AF7CC4 4608003C */  c.lt.s  $f0, $f8                   
/* 004D8 80AF7CC8 00000000 */  nop
/* 004DC 80AF7CCC 4502000D */  bc1fl   .L80AF7D04                 
/* 004E0 80AF7CD0 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 004E4 80AF7CD4 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 004E8 80AF7CD8 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 004EC 80AF7CDC 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 004F0 80AF7CE0 4600803C */  c.lt.s  $f16, $f0                  
/* 004F4 80AF7CE4 3C0180B0 */  lui     $at, %hi(D_80AF8A90)       ## $at = 80B00000
/* 004F8 80AF7CE8 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 004FC 80AF7CEC 4500000E */  bc1f    .L80AF7D28                 
/* 00500 80AF7CF0 00000000 */  nop
/* 00504 80AF7CF4 C4328A90 */  lwc1    $f18, %lo(D_80AF8A90)($at) 
/* 00508 80AF7CF8 1000000B */  beq     $zero, $zero, .L80AF7D28   
/* 0050C 80AF7CFC E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00510 80AF7D00 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
.L80AF7D04:
/* 00514 80AF7D04 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00518 80AF7D08 44812000 */  mtc1    $at, $f4                   ## $f4 = -6.00
/* 0051C 80AF7D0C 4600303C */  c.lt.s  $f6, $f0                   
/* 00520 80AF7D10 3C0180B0 */  lui     $at, %hi(D_80AF8A94)       ## $at = 80B00000
/* 00524 80AF7D14 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00528 80AF7D18 45000003 */  bc1f    .L80AF7D28                 
/* 0052C 80AF7D1C 00000000 */  nop
/* 00530 80AF7D20 C4288A94 */  lwc1    $f8, %lo(D_80AF8A94)($at)  
/* 00534 80AF7D24 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
.L80AF7D28:
/* 00538 80AF7D28 25298224 */  addiu   $t1, $t1, %lo(func_80AF8224) ## $t1 = 80AF8224
/* 0053C 80AF7D2C A60801FE */  sh      $t0, 0x01FE($s0)           ## 000001FE
/* 00540 80AF7D30 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00544 80AF7D34 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00548 80AF7D38 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0054C 80AF7D3C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00550 80AF7D40 03E00008 */  jr      $ra                        
/* 00554 80AF7D44 00000000 */  nop


