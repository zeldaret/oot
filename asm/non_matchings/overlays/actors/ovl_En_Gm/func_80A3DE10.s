glabel func_80A3DE10
/* 00730 80A3DE10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00734 80A3DE14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00738 80A3DE18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0073C 80A3DE1C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00740 80A3DE20 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00744 80A3DE24 0C042F6F */  jal     func_8010BDBC              
/* 00748 80A3DE28 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0074C 80A3DE2C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00750 80A3DE30 5441002F */  bnel    $v0, $at, .L80A3DEF0       
/* 00754 80A3DE34 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00758 80A3DE38 0C041AF2 */  jal     func_80106BC8              
/* 0075C 80A3DE3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00760 80A3DE40 1040002A */  beq     $v0, $zero, .L80A3DEEC     
/* 00764 80A3DE44 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00768 80A3DE48 00501021 */  addu    $v0, $v0, $s0              
/* 0076C 80A3DE4C 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00770 80A3DE50 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00774 80A3DE54 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00778 80A3DE58 10400005 */  beq     $v0, $zero, .L80A3DE70     
/* 0077C 80A3DE5C 00000000 */  nop
/* 00780 80A3DE60 1041001C */  beq     $v0, $at, .L80A3DED4       
/* 00784 80A3DE64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00788 80A3DE68 10000021 */  beq     $zero, $zero, .L80A3DEF0   
/* 0078C 80A3DE6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3DE70:
/* 00790 80A3DE70 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 00794 80A3DE74 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00798 80A3DE78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0079C 80A3DE7C 29C100C8 */  slti    $at, $t6, 0x00C8           
/* 007A0 80A3DE80 10200009 */  beq     $at, $zero, .L80A3DEA8     
/* 007A4 80A3DE84 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 007A8 80A3DE88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007AC 80A3DE8C 0C042DC8 */  jal     func_8010B720              
/* 007B0 80A3DE90 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 007B4 80A3DE94 8FB80028 */  lw      $t8, 0x0028($sp)           
/* 007B8 80A3DE98 3C0F80A4 */  lui     $t7, %hi(func_80A3DD7C)    ## $t7 = 80A40000
/* 007BC 80A3DE9C 25EFDD7C */  addiu   $t7, $t7, %lo(func_80A3DD7C) ## $t7 = 80A3DD7C
/* 007C0 80A3DEA0 10000012 */  beq     $zero, $zero, .L80A3DEEC   
/* 007C4 80A3DEA4 AF0F026C */  sw      $t7, 0x026C($t8)           ## 0000026C
.L80A3DEA8:
/* 007C8 80A3DEA8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007CC 80A3DEAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 007D0 80A3DEB0 3C0743CF */  lui     $a3, 0x43CF                ## $a3 = 43CF0000
/* 007D4 80A3DEB4 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = 43CF8000
/* 007D8 80A3DEB8 0C00BD0D */  jal     func_8002F434              
/* 007DC 80A3DEBC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 007E0 80A3DEC0 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 007E4 80A3DEC4 3C1980A4 */  lui     $t9, %hi(func_80A3DF00)    ## $t9 = 80A40000
/* 007E8 80A3DEC8 2739DF00 */  addiu   $t9, $t9, %lo(func_80A3DF00) ## $t9 = 80A3DF00
/* 007EC 80A3DECC 10000007 */  beq     $zero, $zero, .L80A3DEEC   
/* 007F0 80A3DED0 AD19026C */  sw      $t9, 0x026C($t0)           ## 0000026C
.L80A3DED4:
/* 007F4 80A3DED4 0C042DC8 */  jal     func_8010B720              
/* 007F8 80A3DED8 24053050 */  addiu   $a1, $zero, 0x3050         ## $a1 = 00003050
/* 007FC 80A3DEDC 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 00800 80A3DEE0 3C0980A4 */  lui     $t1, %hi(func_80A3DD7C)    ## $t1 = 80A40000
/* 00804 80A3DEE4 2529DD7C */  addiu   $t1, $t1, %lo(func_80A3DD7C) ## $t1 = 80A3DD7C
/* 00808 80A3DEE8 AD49026C */  sw      $t1, 0x026C($t2)           ## 0000026C
.L80A3DEEC:
/* 0080C 80A3DEEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3DEF0:
/* 00810 80A3DEF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00814 80A3DEF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00818 80A3DEF8 03E00008 */  jr      $ra                        
/* 0081C 80A3DEFC 00000000 */  nop


