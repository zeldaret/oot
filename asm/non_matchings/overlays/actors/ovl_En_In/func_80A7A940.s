glabel func_80A7A940
/* 01990 80A7A940 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01994 80A7A944 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01998 80A7A948 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0199C 80A7A94C 848E0308 */  lh      $t6, 0x0308($a0)           ## 00000308
/* 019A0 80A7A950 55C00007 */  bnel    $t6, $zero, .L80A7A970     
/* 019A4 80A7A954 848201EC */  lh      $v0, 0x01EC($a0)           ## 000001EC
/* 019A8 80A7A958 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 019AC 80A7A95C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 019B0 80A7A960 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 00010000
/* 019B4 80A7A964 10000032 */  beq     $zero, $zero, .L80A7AA30   
/* 019B8 80A7A968 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 019BC 80A7A96C 848201EC */  lh      $v0, 0x01EC($a0)           ## 000001EC
.L80A7A970:
/* 019C0 80A7A970 10400009 */  beq     $v0, $zero, .L80A7A998     
/* 019C4 80A7A974 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 019C8 80A7A978 A49901EC */  sh      $t9, 0x01EC($a0)           ## 000001EC
/* 019CC 80A7A97C 848801EC */  lh      $t0, 0x01EC($a0)           ## 000001EC
/* 019D0 80A7A980 24056855 */  addiu   $a1, $zero, 0x6855         ## $a1 = 00006855
/* 019D4 80A7A984 55000005 */  bnel    $t0, $zero, .L80A7A99C     
/* 019D8 80A7A988 84890308 */  lh      $t1, 0x0308($a0)           ## 00000308
/* 019DC 80A7A98C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 019E0 80A7A990 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 019E4 80A7A994 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80A7A998:
/* 019E8 80A7A998 84890308 */  lh      $t1, 0x0308($a0)           ## 00000308
.L80A7A99C:
/* 019EC 80A7A99C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 019F0 80A7A9A0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 019F4 80A7A9A4 15210022 */  bne     $t1, $at, .L80A7AA30       
/* 019F8 80A7A9A8 24070026 */  addiu   $a3, $zero, 0x0026         ## $a3 = 00000026
/* 019FC 80A7A9AC 8C8A0004 */  lw      $t2, 0x0004($a0)           ## 00000004
/* 01A00 80A7A9B0 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 01A04 80A7A9B4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 01A08 80A7A9B8 01415824 */  and     $t3, $t2, $at              
/* 01A0C 80A7A9BC AC8B0004 */  sw      $t3, 0x0004($a0)           ## 00000004
/* 01A10 80A7A9C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01A14 80A7A9C4 0C29E6EB */  jal     func_80A79BAC              
/* 01A18 80A7A9C8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A1C 80A7A9CC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01A20 80A7A9D0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01A24 80A7A9D4 944C13FA */  lhu     $t4, 0x13FA($v0)           ## 8015FA5A
/* 01A28 80A7A9D8 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 01A2C 80A7A9DC 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 01A30 80A7A9E0 318DFFF0 */  andi    $t5, $t4, 0xFFF0           ## $t5 = 00000000
/* 01A34 80A7A9E4 35AF0002 */  ori     $t7, $t5, 0x0002           ## $t7 = 00000002
/* 01A38 80A7A9E8 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 01A3C 80A7A9EC 01E1C024 */  and     $t8, $t7, $at              
/* 01A40 80A7A9F0 A44F13FA */  sh      $t7, 0x13FA($v0)           ## 8015FA5A
/* 01A44 80A7A9F4 37198000 */  ori     $t9, $t8, 0x8000           ## $t9 = 00008000
/* 01A48 80A7A9F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01A4C 80A7A9FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A50 80A7AA00 A45913FA */  sh      $t9, 0x13FA($v0)           ## 8015FA5A
/* 01A54 80A7AA04 00280821 */  addu    $at, $at, $t0              
/* 01A58 80A7AA08 A02004BF */  sb      $zero, 0x04BF($at)         ## 000104BF
/* 01A5C 80A7AA0C 8FAA001C */  lw      $t2, 0x001C($sp)           
/* 01A60 80A7AA10 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01A64 80A7AA14 24090036 */  addiu   $t1, $zero, 0x0036         ## $t1 = 00000036
/* 01A68 80A7AA18 002A0821 */  addu    $at, $at, $t2              
/* 01A6C 80A7AA1C A02903DC */  sb      $t1, 0x03DC($at)           ## 000103DC
/* 01A70 80A7AA20 A4800308 */  sh      $zero, 0x0308($a0)         ## 00000308
/* 01A74 80A7AA24 944C13FA */  lhu     $t4, 0x13FA($v0)           ## 8015FA5A
/* 01A78 80A7AA28 358D0040 */  ori     $t5, $t4, 0x0040           ## $t5 = 00000040
/* 01A7C 80A7AA2C A44D13FA */  sh      $t5, 0x13FA($v0)           ## 8015FA5A
.L80A7AA30:
/* 01A80 80A7AA30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A84 80A7AA34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A88 80A7AA38 03E00008 */  jr      $ra                        
/* 01A8C 80A7AA3C 00000000 */  nop


