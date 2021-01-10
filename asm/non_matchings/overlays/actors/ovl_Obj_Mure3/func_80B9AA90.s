glabel func_80B9AA90
/* 000C0 80B9AA90 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 000C4 80B9AA94 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 000C8 80B9AA98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000CC 80B9AA9C AFBF004C */  sw      $ra, 0x004C($sp)           
/* 000D0 80B9AAA0 AFB50048 */  sw      $s5, 0x0048($sp)           
/* 000D4 80B9AAA4 AFB40044 */  sw      $s4, 0x0044($sp)           
/* 000D8 80B9AAA8 AFB30040 */  sw      $s3, 0x0040($sp)           
/* 000DC 80B9AAAC AFB2003C */  sw      $s2, 0x003C($sp)           
/* 000E0 80B9AAB0 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 000E4 80B9AAB4 F7BA0028 */  sdc1    $f26, 0x0028($sp)          
/* 000E8 80B9AAB8 F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 000EC 80B9AABC F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 000F0 80B9AAC0 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 000F4 80B9AAC4 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 000F8 80B9AAC8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 000FC 80B9AACC 84840032 */  lh      $a0, 0x0032($a0)           ## 00000032
/* 00100 80B9AAD0 46000606 */  mov.s   $f24, $f0                  
/* 00104 80B9AAD4 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00108 80B9AAD8 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 0010C 80B9AADC 3C01C220 */  lui     $at, 0xC220                ## $at = C2200000
/* 00110 80B9AAE0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00114 80B9AAE4 4481A000 */  mtc1    $at, $f20                  ## $f20 = -40.00
/* 00118 80B9AAE8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0011C 80B9AAEC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 20.00
/* 00120 80B9AAF0 46000686 */  mov.s   $f26, $f0                  
/* 00124 80B9AAF4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00128 80B9AAF8 24140005 */  addiu   $s4, $zero, 0x0005         ## $s4 = 00000005
/* 0012C 80B9AAFC 27B30060 */  addiu   $s3, $sp, 0x0060           ## $s3 = FFFFFFF0
/* 00130 80B9AB00 E7A40064 */  swc1    $f4, 0x0064($sp)           
.L80B9AB04:
/* 00134 80B9AB04 960E016C */  lhu     $t6, 0x016C($s0)           ## 0000016C
/* 00138 80B9AB08 022E7807 */  srav    $t7, $t6, $s1              
/* 0013C 80B9AB0C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00140 80B9AB10 57000014 */  bnel    $t8, $zero, .L80B9AB64     
/* 00144 80B9AB14 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00148 80B9AB18 4614C202 */  mul.s   $f8, $f24, $f20            
/* 0014C 80B9AB1C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00150 80B9AB20 0011C880 */  sll     $t9, $s1,  2               
/* 00154 80B9AB24 4614D482 */  mul.s   $f18, $f26, $f20           
/* 00158 80B9AB28 02199021 */  addu    $s2, $s0, $t9              
/* 0015C 80B9AB2C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00160 80B9AB30 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 00164 80B9AB34 24064000 */  addiu   $a2, $zero, 0x4000         ## $a2 = 00004000
/* 00168 80B9AB38 46083280 */  add.s   $f10, $f6, $f8             
/* 0016C 80B9AB3C E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 00170 80B9AB40 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00174 80B9AB44 46128100 */  add.s   $f4, $f16, $f18            
/* 00178 80B9AB48 0C007DDF */  jal     Item_DropCollectible2
              
/* 0017C 80B9AB4C E7A40068 */  swc1    $f4, 0x0068($sp)           
/* 00180 80B9AB50 10400003 */  beq     $v0, $zero, .L80B9AB60     
/* 00184 80B9AB54 AE420150 */  sw      $v0, 0x0150($s2)           ## 00000150
/* 00188 80B9AB58 82080003 */  lb      $t0, 0x0003($s0)           ## 00000003
/* 0018C 80B9AB5C A0480003 */  sb      $t0, 0x0003($v0)           ## 00000003
.L80B9AB60:
/* 00190 80B9AB60 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80B9AB64:
/* 00194 80B9AB64 1634FFE7 */  bne     $s1, $s4, .L80B9AB04       
/* 00198 80B9AB68 4616A500 */  add.s   $f20, $f20, $f22           
/* 0019C 80B9AB6C 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 001A0 80B9AB70 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 001A4 80B9AB74 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 001A8 80B9AB78 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 001AC 80B9AB7C D7BA0028 */  ldc1    $f26, 0x0028($sp)          
/* 001B0 80B9AB80 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 001B4 80B9AB84 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 001B8 80B9AB88 8FB2003C */  lw      $s2, 0x003C($sp)           
/* 001BC 80B9AB8C 8FB30040 */  lw      $s3, 0x0040($sp)           
/* 001C0 80B9AB90 8FB40044 */  lw      $s4, 0x0044($sp)           
/* 001C4 80B9AB94 8FB50048 */  lw      $s5, 0x0048($sp)           
/* 001C8 80B9AB98 03E00008 */  jr      $ra                        
/* 001CC 80B9AB9C 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
