glabel func_80AA0D88
/* 006F8 80AA0D88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006FC 80AA0D8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00700 80AA0D90 848E01E8 */  lh      $t6, 0x01E8($a0)           ## 000001E8
/* 00704 80AA0D94 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00708 80AA0D98 51C0000D */  beql    $t6, $zero, .L80AA0DD0     
/* 0070C 80AA0D9C 8C880154 */  lw      $t0, 0x0154($a0)           ## 00000154
/* 00710 80AA0DA0 8C980154 */  lw      $t8, 0x0154($a0)           ## 00000154
/* 00714 80AA0DA4 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00718 80AA0DA8 25EF0820 */  addiu   $t7, $t7, 0x0820           ## $t7 = 06000820
/* 0071C 80AA0DAC 11F80011 */  beq     $t7, $t8, .L80AA0DF4       
/* 00720 80AA0DB0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00724 80AA0DB4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00728 80AA0DB8 0C2A82A1 */  jal     func_80AA0A84              
/* 0072C 80AA0DBC AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00730 80AA0DC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00734 80AA0DC4 1000000B */  beq     $zero, $zero, .L80AA0DF4   
/* 00738 80AA0DC8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0073C 80AA0DCC 8C880154 */  lw      $t0, 0x0154($a0)           ## 00000154
.L80AA0DD0:
/* 00740 80AA0DD0 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 00744 80AA0DD4 27398D64 */  addiu   $t9, $t9, 0x8D64           ## $t9 = 06008D64
/* 00748 80AA0DD8 13280006 */  beq     $t9, $t0, .L80AA0DF4       
/* 0074C 80AA0DDC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00750 80AA0DE0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00754 80AA0DE4 0C2A82A1 */  jal     func_80AA0A84              
/* 00758 80AA0DE8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0075C 80AA0DEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00760 80AA0DF0 8FA6001C */  lw      $a2, 0x001C($sp)           
.L80AA0DF4:
/* 00764 80AA0DF4 84C900A4 */  lh      $t1, 0x00A4($a2)           ## 000000A4
/* 00768 80AA0DF8 2401005F */  addiu   $at, $zero, 0x005F         ## $at = 0000005F
/* 0076C 80AA0DFC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00770 80AA0E00 15210009 */  bne     $t1, $at, .L80AA0E28       
/* 00774 80AA0E04 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00778 80AA0E08 944A0ED6 */  lhu     $t2, 0x0ED6($v0)           ## 8015F536
/* 0077C 80AA0E0C 314B0010 */  andi    $t3, $t2, 0x0010           ## $t3 = 00000000
/* 00780 80AA0E10 11600005 */  beq     $t3, $zero, .L80AA0E28     
/* 00784 80AA0E14 00000000 */  nop
/* 00788 80AA0E18 0C00B55C */  jal     Actor_Kill
              
/* 0078C 80AA0E1C 00000000 */  nop
/* 00790 80AA0E20 1000001C */  beq     $zero, $zero, .L80AA0E94   
/* 00794 80AA0E24 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA0E28:
/* 00798 80AA0E28 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0079C 80AA0E2C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 007A0 80AA0E30 944C0ED6 */  lhu     $t4, 0x0ED6($v0)           ## 8015F536
/* 007A4 80AA0E34 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 007A8 80AA0E38 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 007AC 80AA0E3C 51A00007 */  beql    $t5, $zero, .L80AA0E5C     
/* 007B0 80AA0E40 849901E8 */  lh      $t9, 0x01E8($a0)           ## 000001E8
/* 007B4 80AA0E44 8DCE7154 */  lw      $t6, 0x7154($t6)           ## 80127154
/* 007B8 80AA0E48 8C4F00A4 */  lw      $t7, 0x00A4($v0)           ## 8015E704
/* 007BC 80AA0E4C 01CFC024 */  and     $t8, $t6, $t7              
/* 007C0 80AA0E50 53000010 */  beql    $t8, $zero, .L80AA0E94     
/* 007C4 80AA0E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007C8 80AA0E58 849901E8 */  lh      $t9, 0x01E8($a0)           ## 000001E8
.L80AA0E5C:
/* 007CC 80AA0E5C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007D0 80AA0E60 3C0880AA */  lui     $t0, %hi(func_80AA0EA0)    ## $t0 = 80AA0000
/* 007D4 80AA0E64 1721000A */  bne     $t9, $at, .L80AA0E90       
/* 007D8 80AA0E68 25080EA0 */  addiu   $t0, $t0, %lo(func_80AA0EA0) ## $t0 = 80AA0EA0
/* 007DC 80AA0E6C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007E0 80AA0E70 AC880190 */  sw      $t0, 0x0190($a0)           ## 00000190
/* 007E4 80AA0E74 00260821 */  addu    $at, $at, $a2              
/* 007E8 80AA0E78 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 007EC 80AA0E7C A02904BF */  sb      $t1, 0x04BF($at)           ## 000104BF
/* 007F0 80AA0E80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007F4 80AA0E84 00260821 */  addu    $at, $at, $a2              
/* 007F8 80AA0E88 240A0036 */  addiu   $t2, $zero, 0x0036         ## $t2 = 00000036
/* 007FC 80AA0E8C A02A03DC */  sb      $t2, 0x03DC($at)           ## 000103DC
.L80AA0E90:
/* 00800 80AA0E90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA0E94:
/* 00804 80AA0E94 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00808 80AA0E98 03E00008 */  jr      $ra                        
/* 0080C 80AA0E9C 00000000 */  nop


