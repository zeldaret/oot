glabel func_8096FF7C
/* 02ACC 8096FF7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02AD0 8096FF80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AD4 8096FF84 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 02AD8 8096FF88 3C068097 */  lui     $a2, %hi(D_80970498)       ## $a2 = 80970000
/* 02ADC 8096FF8C 3C070601 */  lui     $a3, 0x0601                ## $a3 = 06010000
/* 02AE0 8096FF90 00027080 */  sll     $t6, $v0,  2               
/* 02AE4 8096FF94 00CE3021 */  addu    $a2, $a2, $t6              
/* 02AE8 8096FF98 8CC60498 */  lw      $a2, %lo(D_80970498)($a2)  
/* 02AEC 8096FF9C 24E7DE80 */  addiu   $a3, $a3, 0xDE80           ## $a3 = 0600DE80
/* 02AF0 8096FFA0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02AF4 8096FFA4 0C25B631 */  jal     func_8096D8C4              
/* 02AF8 8096FFA8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02AFC 8096FFAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02B00 8096FFB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02B04 8096FFB4 03E00008 */  jr      $ra                        
/* 02B08 8096FFB8 00000000 */  nop
