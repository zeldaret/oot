glabel func_80AF7B24
/* 00334 80AF7B24 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00338 80AF7B28 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0033C 80AF7B2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00340 80AF7B30 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00344 80AF7B34 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00348 80AF7B38 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0034C 80AF7B3C 24840124 */  addiu   $a0, $a0, 0x0124           ## $a0 = 06000124
/* 00350 80AF7B40 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00354 80AF7B44 C6060084 */  lwc1    $f6, 0x0084($s0)           ## 00000084
/* 00358 80AF7B48 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0035C 80AF7B4C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00360 80AF7B50 4606603C */  c.lt.s  $f12, $f6                  
/* 00364 80AF7B54 44076000 */  mfc1    $a3, $f12                  
/* 00368 80AF7B58 24A50124 */  addiu   $a1, $a1, 0x0124           ## $a1 = 06000124
/* 0036C 80AF7B5C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00370 80AF7B60 45000005 */  bc1f    .L80AF7B78                 
/* 00374 80AF7B64 468020A0 */  cvt.s.w $f2, $f4                   
/* 00378 80AF7B68 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0037C 80AF7B6C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00380 80AF7B70 10000003 */  beq     $zero, $zero, .L80AF7B80   
/* 00384 80AF7B74 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80AF7B78:
/* 00388 80AF7B78 46006006 */  mov.s   $f0, $f12                  
/* 0038C 80AF7B7C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80AF7B80:
/* 00390 80AF7B80 44060000 */  mfc1    $a2, $f0                   
/* 00394 80AF7B84 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00398 80AF7B88 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0039C 80AF7B8C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 003A0 80AF7B90 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 003A4 80AF7B94 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 003A8 80AF7B98 3C1880B0 */  lui     $t8, %hi(func_80AF803C)    ## $t8 = 80B00000
/* 003AC 80AF7B9C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 003B0 80AF7BA0 2718803C */  addiu   $t8, $t8, %lo(func_80AF803C) ## $t8 = 80AF803C
/* 003B4 80AF7BA4 A60F01FA */  sh      $t7, 0x01FA($s0)           ## 000001FA
/* 003B8 80AF7BA8 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 003BC 80AF7BAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003C0 80AF7BB0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 003C4 80AF7BB4 24053849 */  addiu   $a1, $zero, 0x3849         ## $a1 = 00003849
/* 003C8 80AF7BB8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 003CC 80AF7BBC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 003D0 80AF7BC0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 003D4 80AF7BC4 03E00008 */  jr      $ra                        
/* 003D8 80AF7BC8 00000000 */  nop


