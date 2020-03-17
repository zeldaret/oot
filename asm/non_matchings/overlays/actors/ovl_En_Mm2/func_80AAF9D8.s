glabel func_80AAF9D8
/* 00B88 80AAF9D8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00B8C 80AAF9DC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00B90 80AAF9E0 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 00B94 80AAF9E4 10A10006 */  beq     $a1, $at, .L80AAFA00       
/* 00B98 80AAF9E8 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 00B9C 80AAF9EC 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00BA0 80AAF9F0 10A1000F */  beq     $a1, $at, .L80AAFA30       
/* 00BA4 80AAF9F4 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 00BA8 80AAF9F8 03E00008 */  jr      $ra                        
/* 00BAC 80AAF9FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAFA00:
/* 00BB0 80AAFA00 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 00BB4 80AAFA04 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 00BB8 80AAFA08 844F01F0 */  lh      $t7, 0x01F0($v0)           ## 000001F0
/* 00BBC 80AAFA0C 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 00BC0 80AAFA10 84790002 */  lh      $t9, 0x0002($v1)           ## 00000002
/* 00BC4 80AAFA14 01CFC021 */  addu    $t8, $t6, $t7              
/* 00BC8 80AAFA18 A4780000 */  sh      $t8, 0x0000($v1)           ## 00000000
/* 00BCC 80AAFA1C 844801EE */  lh      $t0, 0x01EE($v0)           ## 000001EE
/* 00BD0 80AAFA20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BD4 80AAFA24 03284823 */  subu    $t1, $t9, $t0              
/* 00BD8 80AAFA28 03E00008 */  jr      $ra                        
/* 00BDC 80AAFA2C A4690002 */  sh      $t1, 0x0002($v1)           ## 00000002
.L80AAFA30:
/* 00BE0 80AAFA30 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 00BE4 80AAFA34 844B01EA */  lh      $t3, 0x01EA($v0)           ## 000001EA
/* 00BE8 80AAFA38 846A0000 */  lh      $t2, 0x0000($v1)           ## 00000000
/* 00BEC 80AAFA3C 846D0004 */  lh      $t5, 0x0004($v1)           ## 00000004
/* 00BF0 80AAFA40 014B6021 */  addu    $t4, $t2, $t3              
/* 00BF4 80AAFA44 A46C0000 */  sh      $t4, 0x0000($v1)           ## 00000000
/* 00BF8 80AAFA48 844E01E8 */  lh      $t6, 0x01E8($v0)           ## 000001E8
/* 00BFC 80AAFA4C 01AE7821 */  addu    $t7, $t5, $t6              
/* 00C00 80AAFA50 25F80FA0 */  addiu   $t8, $t7, 0x0FA0           ## $t8 = 00000FA0
/* 00C04 80AAFA54 A4780004 */  sh      $t8, 0x0004($v1)           ## 00000004
/* 00C08 80AAFA58 03E00008 */  jr      $ra                        
/* 00C0C 80AAFA5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


