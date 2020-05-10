glabel func_80BA1DF0
/* 00000 80BA1DF0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80BA1DF4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00008 80BA1DF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80BA1DFC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00010 80BA1E00 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00014 80BA1E04 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00018 80BA1E08 3C0880BA */  lui     $t0, %hi(D_80BA2848)       ## $t0 = 80BA0000
/* 0001C 80BA1E0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00020 80BA1E10 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00024 80BA1E14 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00028 80BA1E18 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0002C 80BA1E1C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00030 80BA1E20 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00034 80BA1E24 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00038 80BA1E28 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0003C 80BA1E2C AFA4003C */  sw      $a0, 0x003C($sp)           
/* 00040 80BA1E30 000E7A03 */  sra     $t7, $t6,  8               
/* 00044 80BA1E34 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00048 80BA1E38 0018C880 */  sll     $t9, $t8,  2               
/* 0004C 80BA1E3C 0338C823 */  subu    $t9, $t9, $t8              
/* 00050 80BA1E40 0019C880 */  sll     $t9, $t9,  2               
/* 00054 80BA1E44 01194021 */  addu    $t0, $t0, $t9              
/* 00058 80BA1E48 85082848 */  lh      $t0, %lo(D_80BA2848)($t0)  
/* 0005C 80BA1E4C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00060 80BA1E50 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 00064 80BA1E54 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00068 80BA1E58 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 0006C 80BA1E5C 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00070 80BA1E60 3C0D80BA */  lui     $t5, %hi(D_80BA2848)       ## $t5 = 80BA0000
/* 00074 80BA1E64 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00078 80BA1E68 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 0007C 80BA1E6C 8C470024 */  lw      $a3, 0x0024($v0)           ## 00000024
/* 00080 80BA1E70 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00084 80BA1E74 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00088 80BA1E78 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 0008C 80BA1E7C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00090 80BA1E80 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00094 80BA1E84 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00098 80BA1E88 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 0009C 80BA1E8C 8449001C */  lh      $t1, 0x001C($v0)           ## 0000001C
/* 000A0 80BA1E90 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 000A4 80BA1E94 00095203 */  sra     $t2, $t1,  8               
/* 000A8 80BA1E98 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 000AC 80BA1E9C 000B6080 */  sll     $t4, $t3,  2               
/* 000B0 80BA1EA0 018B6023 */  subu    $t4, $t4, $t3              
/* 000B4 80BA1EA4 000C6080 */  sll     $t4, $t4,  2               
/* 000B8 80BA1EA8 01AC6821 */  addu    $t5, $t5, $t4              
/* 000BC 80BA1EAC 85AD2848 */  lh      $t5, %lo(D_80BA2848)($t5)  
/* 000C0 80BA1EB0 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 000C4 80BA1EB4 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 000C8 80BA1EB8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 000CC 80BA1EBC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 000D0 80BA1EC0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000D4 80BA1EC4 03E00008 */  jr      $ra                        
/* 000D8 80BA1EC8 00000000 */  nop
