glabel func_80B9A9D0
/* 00000 80B9A9D0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 80B9A9D4 AFB50030 */  sw      $s5, 0x0030($sp)           
/* 00008 80B9A9D8 AFB4002C */  sw      $s4, 0x002C($sp)           
/* 0000C 80B9A9DC AFB20024 */  sw      $s2, 0x0024($sp)           
/* 00010 80B9A9E0 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00014 80B9A9E4 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00018 80B9A9E8 27B50040 */  addiu   $s5, $sp, 0x0040           ## $s5 = FFFFFFF0
/* 0001C 80B9A9EC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00020 80B9A9F0 AFB30028 */  sw      $s3, 0x0028($sp)           
/* 00024 80B9A9F4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00028 80B9A9F8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0002C 80B9A9FC F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 00030 80B9AA00 02A02025 */  or      $a0, $s5, $zero            ## $a0 = FFFFFFF0
/* 00034 80B9AA04 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00038 80B9AA08 26450024 */  addiu   $a1, $s2, 0x0024           ## $a1 = 00000024
/* 0003C 80B9AA0C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00040 80B9AA10 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 00044 80B9AA14 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00048 80B9AA18 24130005 */  addiu   $s3, $zero, 0x0005         ## $s3 = 00000005
.L80B9AA1C:
/* 0004C 80B9AA1C 964E016C */  lhu     $t6, 0x016C($s2)           ## 0000016C
/* 00050 80B9AA20 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00054 80B9AA24 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF0
/* 00058 80B9AA28 020E7807 */  srav    $t7, $t6, $s0              
/* 0005C 80B9AA2C 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00060 80B9AA30 17000008 */  bne     $t8, $zero, .L80B9AA54     
/* 00064 80B9AA34 24064001 */  addiu   $a2, $zero, 0x4001         ## $a2 = 00004001
/* 00068 80B9AA38 0010C880 */  sll     $t9, $s0,  2               
/* 0006C 80B9AA3C 0C007DDF */  jal     Item_DropCollectible2
              
/* 00070 80B9AA40 02598821 */  addu    $s1, $s2, $t9              
/* 00074 80B9AA44 10400003 */  beq     $v0, $zero, .L80B9AA54     
/* 00078 80B9AA48 AE220150 */  sw      $v0, 0x0150($s1)           ## 00000150
/* 0007C 80B9AA4C 82480003 */  lb      $t0, 0x0003($s2)           ## 00000003
/* 00080 80B9AA50 A0480003 */  sb      $t0, 0x0003($v0)           ## 00000003
.L80B9AA54:
/* 00084 80B9AA54 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 00088 80B9AA58 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0008C 80B9AA5C 46142180 */  add.s   $f6, $f4, $f20             
/* 00090 80B9AA60 1613FFEE */  bne     $s0, $s3, .L80B9AA1C       
/* 00094 80B9AA64 E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 00098 80B9AA68 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0009C 80B9AA6C D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 000A0 80B9AA70 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 000A4 80B9AA74 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 000A8 80B9AA78 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 000AC 80B9AA7C 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 000B0 80B9AA80 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 000B4 80B9AA84 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 000B8 80B9AA88 03E00008 */  jr      $ra                        
/* 000BC 80B9AA8C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


