glabel func_80AE7D94
/* 00AE4 80AE7D94 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00AE8 80AE7D98 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00AEC 80AE7D9C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00AF0 80AE7DA0 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 00AF4 80AE7DA4 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00AF8 80AE7DA8 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 00AFC 80AE7DAC 3C1880AF */  lui     $t8, %hi(D_80AE81A0)       ## $t8 = 80AF0000
/* 00B00 80AE7DB0 3C0680AF */  lui     $a2, %hi(D_80AE8200)       ## $a2 = 80AF0000
/* 00B04 80AE7DB4 00027880 */  sll     $t7, $v0,  2               
/* 00B08 80AE7DB8 030FC021 */  addu    $t8, $t8, $t7              
/* 00B0C 80AE7DBC 8F1881A0 */  lw      $t8, %lo(D_80AE81A0)($t8)  
/* 00B10 80AE7DC0 24C68200 */  addiu   $a2, $a2, %lo(D_80AE8200)  ## $a2 = 80AE8200
/* 00B14 80AE7DC4 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 00B18 80AE7DC8 AFB80068 */  sw      $t8, 0x0068($sp)           
/* 00B1C 80AE7DCC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00B20 80AE7DD0 24070130 */  addiu   $a3, $zero, 0x0130         ## $a3 = 00000130
/* 00B24 80AE7DD4 0C031AB1 */  jal     func_800C6AC4              
/* 00B28 80AE7DD8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00B2C 80AE7DDC 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 00B30 80AE7DE0 0C024F61 */  jal     func_80093D84              
/* 00B34 80AE7DE4 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00B38 80AE7DE8 8FA70068 */  lw      $a3, 0x0068($sp)           
/* 00B3C 80AE7DEC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B40 80AE7DF0 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00B44 80AE7DF4 00076100 */  sll     $t4, $a3,  4               
/* 00B48 80AE7DF8 000C6F02 */  srl     $t5, $t4, 28               
/* 00B4C 80AE7DFC 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00B50 80AE7E00 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00B54 80AE7E04 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00B58 80AE7E08 25EF6FA8 */  addiu   $t7, $t7, 0x6FA8           ## $t7 = 80166FA8
/* 00B5C 80AE7E0C 000D7080 */  sll     $t6, $t5,  2               
/* 00B60 80AE7E10 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 00B64 80AE7E14 01CF2021 */  addu    $a0, $t6, $t7              
/* 00B68 80AE7E18 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00B6C 80AE7E1C 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 00B70 80AE7E20 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00B74 80AE7E24 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00B78 80AE7E28 00E12824 */  and     $a1, $a3, $at              
/* 00B7C 80AE7E2C 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 00B80 80AE7E30 0305C821 */  addu    $t9, $t8, $a1              
/* 00B84 80AE7E34 03264821 */  addu    $t1, $t9, $a2              
/* 00B88 80AE7E38 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00B8C 80AE7E3C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B90 80AE7E40 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00B94 80AE7E44 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 00B98 80AE7E48 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00B9C 80AE7E4C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00BA0 80AE7E50 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00BA4 80AE7E54 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 00BA8 80AE7E58 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00BAC 80AE7E5C 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 00BB0 80AE7E60 01856821 */  addu    $t5, $t4, $a1              
/* 00BB4 80AE7E64 01A67021 */  addu    $t6, $t5, $a2              
/* 00BB8 80AE7E68 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00BBC 80AE7E6C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00BC0 80AE7E70 8FA80078 */  lw      $t0, 0x0078($sp)           
/* 00BC4 80AE7E74 3C0C8011 */  lui     $t4, 0x8011                ## $t4 = 80110000
/* 00BC8 80AE7E78 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00BCC 80AE7E7C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00BD0 80AE7E80 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00BD4 80AE7E84 8D1901A0 */  lw      $t9, 0x01A0($t0)           ## 000001A0
/* 00BD8 80AE7E88 258C6280 */  addiu   $t4, $t4, 0x6280           ## $t4 = 80116280
/* 00BDC 80AE7E8C 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 00BE0 80AE7E90 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 00BE4 80AE7E94 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00BE8 80AE7E98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00BEC 80AE7E9C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00BF0 80AE7EA0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00BF4 80AE7EA4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00BF8 80AE7EA8 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00BFC 80AE7EAC 2502014C */  addiu   $v0, $t0, 0x014C           ## $v0 = 0000014C
/* 00C00 80AE7EB0 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 00C04 80AE7EB4 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 00C08 80AE7EB8 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 00C0C 80AE7EBC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00C10 80AE7EC0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00C14 80AE7EC4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C18 80AE7EC8 8E0D02D0 */  lw      $t5, 0x02D0($s0)           ## 000002D0
/* 00C1C 80AE7ECC 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00C20 80AE7ED0 0C0289CF */  jal     func_800A273C              
/* 00C24 80AE7ED4 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00C28 80AE7ED8 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00C2C 80AE7EDC 8FAE007C */  lw      $t6, 0x007C($sp)           
/* 00C30 80AE7EE0 3C0680AF */  lui     $a2, %hi(D_80AE8220)       ## $a2 = 80AF0000
/* 00C34 80AE7EE4 24C68220 */  addiu   $a2, $a2, %lo(D_80AE8220)  ## $a2 = 80AE8220
/* 00C38 80AE7EE8 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 00C3C 80AE7EEC 2407014B */  addiu   $a3, $zero, 0x014B         ## $a3 = 0000014B
/* 00C40 80AE7EF0 0C031AD5 */  jal     func_800C6B54              
/* 00C44 80AE7EF4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 00C48 80AE7EF8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00C4C 80AE7EFC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C50 80AE7F00 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 00C54 80AE7F04 03E00008 */  jr      $ra                        
/* 00C58 80AE7F08 00000000 */  nop


