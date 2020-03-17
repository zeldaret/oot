glabel func_809F3E30
/* 00B70 809F3E30 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B74 809F3E34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B78 809F3E38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B7C 809F3E3C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00B80 809F3E40 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00B84 809F3E44 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B88 809F3E48 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B8C 809F3E4C 0C042F6F */  jal     func_8010BDBC              
/* 00B90 809F3E50 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00B94 809F3E54 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B98 809F3E58 5441001A */  bnel    $v0, $at, .L809F3EC4       
/* 00B9C 809F3E5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BA0 809F3E60 0C041AF2 */  jal     func_80106BC8              
/* 00BA4 809F3E64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA8 809F3E68 50400016 */  beql    $v0, $zero, .L809F3EC4     
/* 00BAC 809F3E6C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BB0 809F3E70 0C041B33 */  jal     func_80106CCC              
/* 00BB4 809F3E74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 809F3E78 860E07A0 */  lh      $t6, 0x07A0($s0)           ## 000007A0
/* 00BBC 809F3E7C 000E7880 */  sll     $t7, $t6,  2               
/* 00BC0 809F3E80 020FC021 */  addu    $t8, $s0, $t7              
/* 00BC4 809F3E84 0C016C69 */  jal     func_8005B1A4              
/* 00BC8 809F3E88 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 00BCC 809F3E8C 861907A0 */  lh      $t9, 0x07A0($s0)           ## 000007A0
/* 00BD0 809F3E90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD4 809F3E94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00BD8 809F3E98 00194080 */  sll     $t0, $t9,  2               
/* 00BDC 809F3E9C 02084821 */  addu    $t1, $s0, $t0              
/* 00BE0 809F3EA0 8D2A0790 */  lw      $t2, 0x0790($t1)           ## 00000790
/* 00BE4 809F3EA4 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00BE8 809F3EA8 0C00B7D5 */  jal     func_8002DF54              
/* 00BEC 809F3EAC A5400168 */  sh      $zero, 0x0168($t2)         ## 00000168
/* 00BF0 809F3EB0 8FAC0020 */  lw      $t4, 0x0020($sp)           
/* 00BF4 809F3EB4 3C0B809F */  lui     $t3, %hi(func_809F3ED4)    ## $t3 = 809F0000
/* 00BF8 809F3EB8 256B3ED4 */  addiu   $t3, $t3, %lo(func_809F3ED4) ## $t3 = 809F3ED4
/* 00BFC 809F3EBC AD8B0214 */  sw      $t3, 0x0214($t4)           ## 00000214
/* 00C00 809F3EC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809F3EC4:
/* 00C04 809F3EC4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C08 809F3EC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C0C 809F3ECC 03E00008 */  jr      $ra                        
/* 00C10 809F3ED0 00000000 */  nop


