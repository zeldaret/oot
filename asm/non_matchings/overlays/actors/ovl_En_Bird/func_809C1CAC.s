glabel func_809C1CAC
/* 000FC 809C1CAC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00100 809C1CB0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00104 809C1CB4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00108 809C1CB8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0010C 809C1CBC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00110 809C1CC0 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00114 809C1CC4 2484006C */  addiu   $a0, $a0, 0x006C           ## $a0 = 0600006C
/* 00118 809C1CC8 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 0011C 809C1CCC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00120 809C1CD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00124 809C1CD4 85CF019C */  lh      $t7, 0x019C($t6)           ## 0000019C
/* 00128 809C1CD8 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 0012C 809C1CDC 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 00130 809C1CE0 11E00004 */  beq     $t7, $zero, .L809C1CF4     
/* 00134 809C1CE4 468020A0 */  cvt.s.w $f2, $f4                   
/* 00138 809C1CE8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0013C 809C1CEC 10000004 */  beq     $zero, $zero, .L809C1D00   
/* 00140 809C1CF0 E7A00028 */  swc1    $f0, 0x0028($sp)           
.L809C1CF4:
/* 00144 809C1CF4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00148 809C1CF8 00000000 */  nop
/* 0014C 809C1CFC E7A00028 */  swc1    $f0, 0x0028($sp)           
.L809C1D00:
/* 00150 809C1D00 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00154 809C1D04 E7A2002C */  swc1    $f2, 0x002C($sp)           
/* 00158 809C1D08 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 0015C 809C1D0C C7A00028 */  lwc1    $f0, 0x0028($sp)           
/* 00160 809C1D10 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00164 809C1D14 C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 00168 809C1D18 AC620198 */  sw      $v0, 0x0198($v1)           ## 00000198
/* 0016C 809C1D1C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00170 809C1D20 44060000 */  mfc1    $a2, $f0                   
/* 00174 809C1D24 44076000 */  mfc1    $a3, $f12                  
/* 00178 809C1D28 24A5006C */  addiu   $a1, $a1, 0x006C           ## $a1 = 0600006C
/* 0017C 809C1D2C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00180 809C1D30 2464014C */  addiu   $a0, $v1, 0x014C           ## $a0 = 0000014C
/* 00184 809C1D34 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 00188 809C1D38 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 0018C 809C1D3C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00190 809C1D40 3C05809C */  lui     $a1, %hi(func_809C1D60)    ## $a1 = 809C0000
/* 00194 809C1D44 24A51D60 */  addiu   $a1, $a1, %lo(func_809C1D60) ## $a1 = 809C1D60
/* 00198 809C1D48 0C2706EC */  jal     EnBird_SetNewUpdate              
/* 0019C 809C1D4C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 001A0 809C1D50 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001A4 809C1D54 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001A8 809C1D58 03E00008 */  jr      $ra                        
/* 001AC 809C1D5C 00000000 */  nop


