glabel func_80AB1878
/* 00AE8 80AB1878 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AEC 80AB187C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AF0 80AB1880 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00AF4 80AB1884 51C0000C */  beql    $t6, $zero, .L80AB18B8     
/* 00AF8 80AB1888 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AFC 80AB188C 8CA21DA4 */  lw      $v0, 0x1DA4($a1)           ## 00001DA4
/* 00B00 80AB1890 50400009 */  beql    $v0, $zero, .L80AB18B8     
/* 00B04 80AB1894 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B08 80AB1898 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00B0C 80AB189C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B10 80AB18A0 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00B14 80AB18A4 55E10004 */  bnel    $t7, $at, .L80AB18B8       
/* 00B18 80AB18A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B1C 80AB18AC 0C2AC575 */  jal     func_80AB15D4              
/* 00B20 80AB18B0 AC980278 */  sw      $t8, 0x0278($a0)           ## 00000278
/* 00B24 80AB18B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB18B8:
/* 00B28 80AB18B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B2C 80AB18BC 03E00008 */  jr      $ra                        
/* 00B30 80AB18C0 00000000 */  nop
