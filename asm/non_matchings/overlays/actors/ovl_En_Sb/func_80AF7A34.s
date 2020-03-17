glabel func_80AF7A34
/* 00244 80AF7A34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00248 80AF7A38 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0024C 80AF7A3C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00250 80AF7A40 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00254 80AF7A44 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00258 80AF7A48 24840194 */  addiu   $a0, $a0, 0x0194           ## $a0 = 06000194
/* 0025C 80AF7A4C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00260 80AF7A50 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00264 80AF7A54 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00268 80AF7A58 468021A0 */  cvt.s.w $f6, $f4                   
/* 0026C 80AF7A5C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00270 80AF7A60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00274 80AF7A64 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00278 80AF7A68 24A50194 */  addiu   $a1, $a1, 0x0194           ## $a1 = 06000194
/* 0027C 80AF7A6C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00280 80AF7A70 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00284 80AF7A74 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00288 80AF7A78 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0028C 80AF7A7C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00290 80AF7A80 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00294 80AF7A84 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00298 80AF7A88 3C0F80AF */  lui     $t7, %hi(func_80AF7DC8)    ## $t7 = 80AF0000
/* 0029C 80AF7A8C 25EF7DC8 */  addiu   $t7, $t7, %lo(func_80AF7DC8) ## $t7 = 80AF7DC8
/* 002A0 80AF7A90 24053849 */  addiu   $a1, $zero, 0x3849         ## $a1 = 00003849
/* 002A4 80AF7A94 A48001FA */  sh      $zero, 0x01FA($a0)         ## 000001FA
/* 002A8 80AF7A98 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 002AC 80AF7A9C AC8F0190 */  sw      $t7, 0x0190($a0)           ## 00000190
/* 002B0 80AF7AA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002B4 80AF7AA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002B8 80AF7AA8 03E00008 */  jr      $ra                        
/* 002BC 80AF7AAC 00000000 */  nop


