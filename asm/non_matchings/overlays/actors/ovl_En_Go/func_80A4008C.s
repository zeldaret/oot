glabel func_80A4008C
/* 01B1C 80A4008C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B20 80A40090 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B24 80A40094 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01B28 80A40098 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01B2C 80A4009C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01B30 80A400A0 0C28FDF0 */  jal     func_80A3F7C0              
/* 01B34 80A400A4 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 01B38 80A400A8 10400018 */  beq     $v0, $zero, .L80A4010C     
/* 01B3C 80A400AC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01B40 80A400B0 848E021A */  lh      $t6, 0x021A($a0)           ## 0000021A
/* 01B44 80A400B4 3C063E23 */  lui     $a2, 0x3E23                ## $a2 = 3E230000
/* 01B48 80A400B8 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3E23D70A
/* 01B4C 80A400BC 15C00008 */  bne     $t6, $zero, .L80A400E0     
/* 01B50 80A400C0 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 01B54 80A400C4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01B58 80A400C8 3C0580A4 */  lui     $a1, %hi(func_80A40218)    ## $a1 = 80A40000
/* 01B5C 80A400CC 24A50218 */  addiu   $a1, $a1, %lo(func_80A40218) ## $a1 = 80A40218
/* 01B60 80A400D0 0C28F95C */  jal     func_80A3E570              
/* 01B64 80A400D4 E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC
/* 01B68 80A400D8 1000000D */  beq     $zero, $zero, .L80A40110   
/* 01B6C 80A400DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A400E0:
/* 01B70 80A400E0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01B74 80A400E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01B78 80A400E8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01B7C 80A400EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 01B80 80A400F0 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01B84 80A400F4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01B88 80A400F8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01B8C 80A400FC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 01B90 80A40100 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 01B94 80A40104 0C28FD65 */  jal     func_80A3F594              
/* 01B98 80A40108 E7A80018 */  swc1    $f8, 0x0018($sp)           
.L80A4010C:
/* 01B9C 80A4010C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A40110:
/* 01BA0 80A40110 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01BA4 80A40114 03E00008 */  jr      $ra                        
/* 01BA8 80A40118 00000000 */  nop
