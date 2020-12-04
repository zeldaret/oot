glabel func_809C04B4
/* 00C14 809C04B4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C18 809C04B8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C1C 809C04BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C20 809C04C0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C24 809C04C4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C28 809C04C8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00C2C 809C04CC 0C02927F */  jal     Animation_Update
              
/* 00C30 809C04D0 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00C34 809C04D4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00C38 809C04D8 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 00C3C 809C04DC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C40 809C04E0 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 00C44 809C04E4 0C0295B2 */  jal     Animation_IsOnFrame              
/* 00C48 809C04E8 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 00C4C 809C04EC 10400003 */  beq     $v0, $zero, .L809C04FC     
/* 00C50 809C04F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C54 809C04F4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C58 809C04F8 24053899 */  addiu   $a1, $zero, 0x3899         ## $a1 = 00003899
.L809C04FC:
/* 00C5C 809C04FC 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00C60 809C0500 44813000 */  mtc1    $at, $f6                   ## $f6 = 9.00
/* 00C64 809C0504 C7A80028 */  lwc1    $f8, 0x0028($sp)           
/* 00C68 809C0508 4608303C */  c.lt.s  $f6, $f8                   
/* 00C6C 809C050C 00000000 */  nop
/* 00C70 809C0510 4502000E */  bc1fl   .L809C054C                 
/* 00C74 809C0514 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 00C78 809C0518 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00C7C 809C051C C6100094 */  lwc1    $f16, 0x0094($s0)          ## 00000094
/* 00C80 809C0520 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00C84 809C0524 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00C88 809C0528 46105480 */  add.s   $f18, $f10, $f16           
/* 00C8C 809C052C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00C90 809C0530 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C94 809C0534 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00C98 809C0538 46049180 */  add.s   $f6, $f18, $f4             
/* 00C9C 809C053C 44053000 */  mfc1    $a1, $f6                   
/* 00CA0 809C0540 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00CA4 809C0544 00000000 */  nop
/* 00CA8 809C0548 8FAE002C */  lw      $t6, 0x002C($sp)           
.L809C054C:
/* 00CAC 809C054C 51C00004 */  beql    $t6, $zero, .L809C0560     
/* 00CB0 809C0550 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CB4 809C0554 0C26FED7 */  jal     func_809BFB5C              
/* 00CB8 809C0558 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CBC 809C055C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C0560:
/* 00CC0 809C0560 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CC4 809C0564 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00CC8 809C0568 03E00008 */  jr      $ra                        
/* 00CCC 809C056C 00000000 */  nop
