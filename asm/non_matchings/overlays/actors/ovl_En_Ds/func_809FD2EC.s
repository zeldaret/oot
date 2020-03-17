glabel func_809FD2EC
/* 002BC 809FD2EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002C0 809FD2F0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002C4 809FD2F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 002C8 809FD2F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002CC 809FD2FC 0C042F6F */  jal     func_8010BDBC              
/* 002D0 809FD300 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 002D4 809FD304 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 002D8 809FD308 54410014 */  bnel    $v0, $at, .L809FD35C       
/* 002DC 809FD30C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002E0 809FD310 0C041AF2 */  jal     func_80106BC8              
/* 002E4 809FD314 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 002E8 809FD318 50400010 */  beql    $v0, $zero, .L809FD35C     
/* 002EC 809FD31C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002F0 809FD320 0C041B33 */  jal     func_80106CCC              
/* 002F4 809FD324 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 002F8 809FD328 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 002FC 809FD32C 3C0E80A0 */  lui     $t6, %hi(func_809FD284)    ## $t6 = 80A00000
/* 00300 809FD330 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00304 809FD334 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00308 809FD338 25CED284 */  addiu   $t6, $t6, %lo(func_809FD284) ## $t6 = 809FD284
/* 0030C 809FD33C 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00310 809FD340 AC8E01EC */  sw      $t6, 0x01EC($a0)           ## 000001EC
/* 00314 809FD344 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00318 809FD348 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 0031C 809FD34C 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 00320 809FD350 0C00BD0D */  jal     func_8002F434              
/* 00324 809FD354 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00328 809FD358 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FD35C:
/* 0032C 809FD35C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00330 809FD360 03E00008 */  jr      $ra                        
/* 00334 809FD364 00000000 */  nop


