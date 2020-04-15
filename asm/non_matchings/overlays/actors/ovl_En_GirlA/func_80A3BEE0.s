glabel func_80A3BEE0
/* 01790 80A3BEE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01794 80A3BEE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01798 80A3BEE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0179C 80A3BEEC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 017A0 80A3BEF0 0C28E9D6 */  jal     func_80A3A758              
/* 017A4 80A3BEF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017A8 80A3BEF8 1040000E */  beq     $v0, $zero, .L80A3BF34     
/* 017AC 80A3BEFC 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 017B0 80A3BF00 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 017B4 80A3BF04 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 017B8 80A3BF08 0C28EA34 */  jal     func_80A3A8D0              
/* 017BC 80A3BF0C AFA6001C */  sw      $a2, 0x001C($sp)           
/* 017C0 80A3BF10 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 017C4 80A3BF14 3C1880A4 */  lui     $t8, %hi(D_80A3C674)       ## $t8 = 80A40000
/* 017C8 80A3BF18 2718C674 */  addiu   $t8, $t8, %lo(D_80A3C674)  ## $t8 = 80A3C674
/* 017CC 80A3BF1C 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 017D0 80A3BF20 000E7940 */  sll     $t7, $t6,  5               
/* 017D4 80A3BF24 01F81021 */  addu    $v0, $t7, $t8              
/* 017D8 80A3BF28 9459000C */  lhu     $t9, 0x000C($v0)           ## 0000000C
/* 017DC 80A3BF2C 10000005 */  beq     $zero, $zero, .L80A3BF44   
/* 017E0 80A3BF30 A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80A3BF34:
/* 017E4 80A3BF34 3C0880A4 */  lui     $t0, %hi(func_80A3C4D4)    ## $t0 = 80A40000
/* 017E8 80A3BF38 2508C4D4 */  addiu   $t0, $t0, %lo(func_80A3C4D4) ## $t0 = 80A3C4D4
/* 017EC 80A3BF3C A4C001A8 */  sh      $zero, 0x01A8($a2)         ## 000001A8
/* 017F0 80A3BF40 ACC80134 */  sw      $t0, 0x0134($a2)           ## 00000134
.L80A3BF44:
/* 017F4 80A3BF44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 017F8 80A3BF48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 017FC 80A3BF4C 03E00008 */  jr      $ra                        
/* 01800 80A3BF50 00000000 */  nop
