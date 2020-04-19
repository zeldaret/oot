glabel OceffSpot_Destroy
/* 00160 80BA61D0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00164 80BA61D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00168 80BA61D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0016C 80BA61DC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00170 80BA61E0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00174 80BA61E4 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 00178 80BA61E8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0017C 80BA61EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00180 80BA61F0 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00184 80BA61F4 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00188 80BA61F8 8DE6014C */  lw      $a2, 0x014C($t7)           ## 0000014C
/* 0018C 80BA61FC 0C01E9F1 */  jal     Lights_Remove
              
/* 00190 80BA6200 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00194 80BA6204 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 00198 80BA6208 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0019C 80BA620C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A0 80BA6210 0C01E9F1 */  jal     Lights_Remove
              
/* 001A4 80BA6214 8F060160 */  lw      $a2, 0x0160($t8)           ## 00000160
/* 001A8 80BA6218 0C021DB2 */  jal     func_800876C8              
/* 001AC 80BA621C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B0 80BA6220 3C198016 */  lui     $t9, %hi(gSaveContext+0x13c8)
/* 001B4 80BA6224 8739FA28 */  lh      $t9, %lo(gSaveContext+0x13c8)($t9)
/* 001B8 80BA6228 53200009 */  beql    $t9, $zero, .L80BA6250     
/* 001BC 80BA622C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001C0 80BA6230 8E081C40 */  lw      $t0, 0x1C40($s0)           ## 00001C40
/* 001C4 80BA6234 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 001C8 80BA6238 51000005 */  beql    $t0, $zero, .L80BA6250     
/* 001CC 80BA623C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001D0 80BA6240 90490692 */  lbu     $t1, 0x0692($v0)           ## 00000692
/* 001D4 80BA6244 352A0040 */  ori     $t2, $t1, 0x0040           ## $t2 = 00000040
/* 001D8 80BA6248 A04A0692 */  sb      $t2, 0x0692($v0)           ## 00000692
/* 001DC 80BA624C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA6250:
/* 001E0 80BA6250 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001E4 80BA6254 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001E8 80BA6258 03E00008 */  jr      $ra                        
/* 001EC 80BA625C 00000000 */  nop
