glabel func_80B16608
/* 02B68 80B16608 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B6C 80B1660C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B70 80B16610 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02B74 80B16614 0C00BC65 */  jal     func_8002F194              
/* 02B78 80B16618 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02B7C 80B1661C 1040001B */  beq     $v0, $zero, .L80B1668C     
/* 02B80 80B16620 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02B84 80B16624 9482010E */  lhu     $v0, 0x010E($a0)           ## 0000010E
/* 02B88 80B16628 24012085 */  addiu   $at, $zero, 0x2085         ## $at = 00002085
/* 02B8C 80B1662C 3C0E80B1 */  lui     $t6, %hi(func_80B161C0)    ## $t6 = 80B10000
/* 02B90 80B16630 10410009 */  beq     $v0, $at, .L80B16658       
/* 02B94 80B16634 25CE61C0 */  addiu   $t6, $t6, %lo(func_80B161C0) ## $t6 = 80B161C0
/* 02B98 80B16638 24012086 */  addiu   $at, $zero, 0x2086         ## $at = 00002086
/* 02B9C 80B1663C 10410008 */  beq     $v0, $at, .L80B16660       
/* 02BA0 80B16640 3C0F80B1 */  lui     $t7, %hi(func_80B162E8)    ## $t7 = 80B10000
/* 02BA4 80B16644 24012088 */  addiu   $at, $zero, 0x2088         ## $at = 00002088
/* 02BA8 80B16648 10410008 */  beq     $v0, $at, .L80B1666C       
/* 02BAC 80B1664C 3C1880B1 */  lui     $t8, %hi(func_80B1642C)    ## $t8 = 80B10000
/* 02BB0 80B16650 10000009 */  beq     $zero, $zero, .L80B16678   
/* 02BB4 80B16654 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
.L80B16658:
/* 02BB8 80B16658 10000006 */  beq     $zero, $zero, .L80B16674   
/* 02BBC 80B1665C AC8E025C */  sw      $t6, 0x025C($a0)           ## 0000025C
.L80B16660:
/* 02BC0 80B16660 25EF62E8 */  addiu   $t7, $t7, %lo(func_80B162E8) ## $t7 = 80B162E8
/* 02BC4 80B16664 10000003 */  beq     $zero, $zero, .L80B16674   
/* 02BC8 80B16668 AC8F025C */  sw      $t7, 0x025C($a0)           ## 0000025C
.L80B1666C:
/* 02BCC 80B1666C 2718642C */  addiu   $t8, $t8, %lo(func_80B1642C) ## $t8 = 80B1642C
/* 02BD0 80B16670 AC98025C */  sw      $t8, 0x025C($a0)           ## 0000025C
.L80B16674:
/* 02BD4 80B16674 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
.L80B16678:
/* 02BD8 80B16678 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 02BDC 80B1667C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 02BE0 80B16680 03214024 */  and     $t0, $t9, $at              
/* 02BE4 80B16684 1000000A */  beq     $zero, $zero, .L80B166B0   
/* 02BE8 80B16688 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
.L80B1668C:
/* 02BEC 80B1668C 8C890004 */  lw      $t1, 0x0004($a0)           ## 00000004
/* 02BF0 80B16690 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BF4 80B16694 3C06447A */  lui     $a2, 0x447A                ## $a2 = 447A0000
/* 02BF8 80B16698 01215025 */  or      $t2, $t1, $at              ## $t2 = 00010000
/* 02BFC 80B1669C AC8A0004 */  sw      $t2, 0x0004($a0)           ## 00000004
/* 02C00 80B166A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02C04 80B166A4 0C00BCB3 */  jal     func_8002F2CC              
/* 02C08 80B166A8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02C0C 80B166AC 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B166B0:
/* 02C10 80B166B0 948B02E0 */  lhu     $t3, 0x02E0($a0)           ## 000002E0
/* 02C14 80B166B4 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 02C18 80B166B8 A48C02E0 */  sh      $t4, 0x02E0($a0)           ## 000002E0
/* 02C1C 80B166BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C20 80B166C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C24 80B166C4 03E00008 */  jr      $ra                        
/* 02C28 80B166C8 00000000 */  nop
