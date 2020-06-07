.late_rodata
glabel D_80A3E430
    .float 10000.0

.text
glabel func_80A3DC44
/* 00564 80A3DC44 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00568 80A3DC48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0056C 80A3DC4C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00570 80A3DC50 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00574 80A3DC54 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00578 80A3DC58 0C28F694 */  jal     func_80A3DA50              
/* 0057C 80A3DC5C AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00580 80A3DC60 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00584 80A3DC64 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00588 80A3DC68 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0058C 80A3DC6C C4460024 */  lwc1    $f6, 0x0024($v0)           ## 00000024
/* 00590 80A3DC70 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 00594 80A3DC74 C48402C4 */  lwc1    $f4, 0x02C4($a0)           ## 000002C4
/* 00598 80A3DC78 C48802CC */  lwc1    $f8, 0x02CC($a0)           ## 000002CC
/* 0059C 80A3DC7C 46062001 */  sub.s   $f0, $f4, $f6              
/* 005A0 80A3DC80 460A4081 */  sub.s   $f2, $f8, $f10             
/* 005A4 80A3DC84 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 005A8 80A3DC88 0C00BC65 */  jal     func_8002F194              
/* 005AC 80A3DC8C E7A20020 */  swc1    $f2, 0x0020($sp)           
/* 005B0 80A3DC90 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 005B4 80A3DC94 C7A00024 */  lwc1    $f0, 0x0024($sp)           
/* 005B8 80A3DC98 10400020 */  beq     $v0, $zero, .L80A3DD1C     
/* 005BC 80A3DC9C C7A20020 */  lwc1    $f2, 0x0020($sp)           
/* 005C0 80A3DCA0 0C28F5F2 */  jal     func_80A3D7C8              
/* 005C4 80A3DCA4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 005C8 80A3DCA8 1040000B */  beq     $v0, $zero, .L80A3DCD8     
/* 005CC 80A3DCAC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 005D0 80A3DCB0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005D4 80A3DCB4 10410011 */  beq     $v0, $at, .L80A3DCFC       
/* 005D8 80A3DCB8 3C0A80A4 */  lui     $t2, %hi(func_80A3DE10)    ## $t2 = 80A40000
/* 005DC 80A3DCBC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005E0 80A3DCC0 10410013 */  beq     $v0, $at, .L80A3DD10       
/* 005E4 80A3DCC4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 005E8 80A3DCC8 10410008 */  beq     $v0, $at, .L80A3DCEC       
/* 005EC 80A3DCCC 00000000 */  nop
/* 005F0 80A3DCD0 10000027 */  beq     $zero, $zero, .L80A3DD70   
/* 005F4 80A3DCD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DCD8:
/* 005F8 80A3DCD8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 005FC 80A3DCDC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00600 80A3DCE0 944F0F0E */  lhu     $t7, 0x0F0E($v0)           ## 8015F56E
/* 00604 80A3DCE4 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00608 80A3DCE8 A4580F0E */  sh      $t8, 0x0F0E($v0)           ## 8015F56E
.L80A3DCEC:
/* 0060C 80A3DCEC 3C1980A4 */  lui     $t9, %hi(func_80A3DD7C)    ## $t9 = 80A40000
/* 00610 80A3DCF0 2739DD7C */  addiu   $t9, $t9, %lo(func_80A3DD7C) ## $t9 = 80A3DD7C
/* 00614 80A3DCF4 1000001D */  beq     $zero, $zero, .L80A3DD6C   
/* 00618 80A3DCF8 AC99026C */  sw      $t9, 0x026C($a0)           ## 0000026C
.L80A3DCFC:
/* 0061C 80A3DCFC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00620 80A3DD00 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00624 80A3DD04 94480F0E */  lhu     $t0, 0x0F0E($v0)           ## 8015F56E
/* 00628 80A3DD08 35090002 */  ori     $t1, $t0, 0x0002           ## $t1 = 00000002
/* 0062C 80A3DD0C A4490F0E */  sh      $t1, 0x0F0E($v0)           ## 8015F56E
.L80A3DD10:
/* 00630 80A3DD10 254ADE10 */  addiu   $t2, $t2, %lo(func_80A3DE10) ## $t2 = 80A3DE10
/* 00634 80A3DD14 10000015 */  beq     $zero, $zero, .L80A3DD6C   
/* 00638 80A3DD18 AC8A026C */  sw      $t2, 0x026C($a0)           ## 0000026C
.L80A3DD1C:
/* 0063C 80A3DD1C 908B0282 */  lbu     $t3, 0x0282($a0)           ## 00000282
/* 00640 80A3DD20 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 00644 80A3DD24 5580000B */  bnel    $t4, $zero, .L80A3DD54     
/* 00648 80A3DD28 908D0281 */  lbu     $t5, 0x0281($a0)           ## 00000281
/* 0064C 80A3DD2C 46000402 */  mul.s   $f16, $f0, $f0             
/* 00650 80A3DD30 3C0180A4 */  lui     $at, %hi(D_80A3E430)       ## $at = 80A40000
/* 00654 80A3DD34 C426E430 */  lwc1    $f6, %lo(D_80A3E430)($at)  
/* 00658 80A3DD38 46021482 */  mul.s   $f18, $f2, $f2             
/* 0065C 80A3DD3C 46128100 */  add.s   $f4, $f16, $f18            
/* 00660 80A3DD40 4606203C */  c.lt.s  $f4, $f6                   
/* 00664 80A3DD44 00000000 */  nop
/* 00668 80A3DD48 45020009 */  bc1fl   .L80A3DD70                 
/* 0066C 80A3DD4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00670 80A3DD50 908D0281 */  lbu     $t5, 0x0281($a0)           ## 00000281
.L80A3DD54:
/* 00674 80A3DD54 3C0643CF */  lui     $a2, 0x43CF                ## $a2 = 43CF0000
/* 00678 80A3DD58 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = 43CF8000
/* 0067C 80A3DD5C 31AEFFFD */  andi    $t6, $t5, 0xFFFD           ## $t6 = 00000000
/* 00680 80A3DD60 A08E0281 */  sb      $t6, 0x0281($a0)           ## 00000281
/* 00684 80A3DD64 0C00BCB3 */  jal     func_8002F2CC              
/* 00688 80A3DD68 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80A3DD6C:
/* 0068C 80A3DD6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DD70:
/* 00690 80A3DD70 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00694 80A3DD74 03E00008 */  jr      $ra                        
/* 00698 80A3DD78 00000000 */  nop
