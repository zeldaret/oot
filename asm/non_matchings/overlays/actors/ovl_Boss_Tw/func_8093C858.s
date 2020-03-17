glabel func_8093C858
/* 03B88 8093C858 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03B8C 8093C85C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03B90 8093C860 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03B94 8093C864 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 03B98 8093C868 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03B9C 8093C86C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 03BA0 8093C870 15C1001C */  bne     $t6, $at, .L8093C8E4       
/* 03BA4 8093C874 3C038095 */  lui     $v1, %hi(D_8094C848)       ## $v1 = 80950000
/* 03BA8 8093C878 8C63C848 */  lw      $v1, %lo(D_8094C848)($v1)  
/* 03BAC 8093C87C 3C028094 */  lui     $v0, %hi(func_8093A2AC)    ## $v0 = 80940000
/* 03BB0 8093C880 2442A2AC */  addiu   $v0, $v0, %lo(func_8093A2AC) ## $v0 = 8093A2AC
/* 03BB4 8093C884 8C6F014C */  lw      $t7, 0x014C($v1)           ## 8095014C
/* 03BB8 8093C888 3C048095 */  lui     $a0, %hi(D_8094C844)       ## $a0 = 80950000
/* 03BBC 8093C88C 544F0016 */  bnel    $v0, $t7, .L8093C8E8       
/* 03BC0 8093C890 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03BC4 8093C894 8C84C844 */  lw      $a0, %lo(D_8094C844)($a0)  
/* 03BC8 8093C898 8C98014C */  lw      $t8, 0x014C($a0)           ## 8095014C
/* 03BCC 8093C89C 54580012 */  bnel    $v0, $t8, .L8093C8E8       
/* 03BD0 8093C8A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03BD4 8093C8A4 907900AF */  lbu     $t9, 0x00AF($v1)           ## 809500AF
/* 03BD8 8093C8A8 908800AF */  lbu     $t0, 0x00AF($a0)           ## 809500AF
/* 03BDC 8093C8AC 03284821 */  addu    $t1, $t9, $t0              
/* 03BE0 8093C8B0 29210004 */  slti    $at, $t1, 0x0004           
/* 03BE4 8093C8B4 5420000C */  bnel    $at, $zero, .L8093C8E8     
/* 03BE8 8093C8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03BEC 8093C8BC 0C24F23D */  jal     func_8093C8F4              
/* 03BF0 8093C8C0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03BF4 8093C8C4 3C048095 */  lui     $a0, %hi(D_8094C844)       ## $a0 = 80950000
/* 03BF8 8093C8C8 8C84C844 */  lw      $a0, %lo(D_8094C844)($a0)  
/* 03BFC 8093C8CC 0C24F1E7 */  jal     func_8093C79C              
/* 03C00 8093C8D0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03C04 8093C8D4 3C048095 */  lui     $a0, %hi(D_8094C848)       ## $a0 = 80950000
/* 03C08 8093C8D8 8C84C848 */  lw      $a0, %lo(D_8094C848)($a0)  
/* 03C0C 8093C8DC 0C24F1E7 */  jal     func_8093C79C              
/* 03C10 8093C8E0 8FA5001C */  lw      $a1, 0x001C($sp)           
.L8093C8E4:
/* 03C14 8093C8E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8093C8E8:
/* 03C18 8093C8E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03C1C 8093C8EC 03E00008 */  jr      $ra                        
/* 03C20 8093C8F0 00000000 */  nop


