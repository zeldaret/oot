glabel func_80B1C5A0
/* 00CA0 80B1C5A0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CA4 80B1C5A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CA8 80B1C5A8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00CAC 80B1C5AC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00CB0 80B1C5B0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00CB4 80B1C5B4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00CB8 80B1C5B8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00CBC 80B1C5BC 0C042F6F */  jal     func_8010BDBC              
/* 00CC0 80B1C5C0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CC4 80B1C5C4 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 00CC8 80B1C5C8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00CCC 80B1C5CC 10200055 */  beq     $at, $zero, .L80B1C724     
/* 00CD0 80B1C5D0 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00CD4 80B1C5D4 00027880 */  sll     $t7, $v0,  2               
/* 00CD8 80B1C5D8 3C0180B2 */  lui     $at, %hi(jtbl_80B1D640)       ## $at = 80B20000
/* 00CDC 80B1C5DC 002F0821 */  addu    $at, $at, $t7              
/* 00CE0 80B1C5E0 8C2FD640 */  lw      $t7, %lo(jtbl_80B1D640)($at)  
/* 00CE4 80B1C5E4 01E00008 */  jr      $t7                        
/* 00CE8 80B1C5E8 00000000 */  nop
glabel L80B1C5EC
/* 00CEC 80B1C5EC 94D8010E */  lhu     $t8, 0x010E($a2)           ## 0000010E
/* 00CF0 80B1C5F0 24015028 */  addiu   $at, $zero, 0x5028         ## $at = 00005028
/* 00CF4 80B1C5F4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00CF8 80B1C5F8 17010004 */  bne     $t8, $at, .L80B1C60C       
/* 00CFC 80B1C5FC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00D00 80B1C600 94790F12 */  lhu     $t9, 0x0F12($v1)           ## 8015F572
/* 00D04 80B1C604 37280100 */  ori     $t0, $t9, 0x0100           ## $t0 = 00000100
/* 00D08 80B1C608 A4680F12 */  sh      $t0, 0x0F12($v1)           ## 8015F572
.L80B1C60C:
/* 00D0C 80B1C60C 10000045 */  beq     $zero, $zero, .L80B1C724   
/* 00D10 80B1C610 AFA0001C */  sw      $zero, 0x001C($sp)         
glabel L80B1C614
/* 00D14 80B1C614 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D18 80B1C618 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00D1C 80B1C61C 0C041AF2 */  jal     func_80106BC8              
/* 00D20 80B1C620 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00D24 80B1C624 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00D28 80B1C628 1040003E */  beq     $v0, $zero, .L80B1C724     
/* 00D2C 80B1C62C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00D30 80B1C630 94C2010E */  lhu     $v0, 0x010E($a2)           ## 0000010E
/* 00D34 80B1C634 24015018 */  addiu   $at, $zero, 0x5018         ## $at = 00005018
/* 00D38 80B1C638 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00D3C 80B1C63C 10410004 */  beq     $v0, $at, .L80B1C650       
/* 00D40 80B1C640 01274821 */  addu    $t1, $t1, $a3              
/* 00D44 80B1C644 24015019 */  addiu   $at, $zero, 0x5019         ## $at = 00005019
/* 00D48 80B1C648 54410037 */  bnel    $v0, $at, .L80B1C728       
/* 00D4C 80B1C64C 87A2001E */  lh      $v0, 0x001E($sp)           
.L80B1C650:
/* 00D50 80B1C650 912904BD */  lbu     $t1, 0x04BD($t1)           ## 000104BD
/* 00D54 80B1C654 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D58 80B1C658 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00D5C 80B1C65C 15210004 */  bne     $t1, $at, .L80B1C670       
/* 00D60 80B1C660 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00D64 80B1C664 240A0084 */  addiu   $t2, $zero, 0x0084         ## $t2 = 00000084
/* 00D68 80B1C668 10000016 */  beq     $zero, $zero, .L80B1C6C4   
/* 00D6C 80B1C66C A4CA010E */  sh      $t2, 0x010E($a2)           ## 0000010E
.L80B1C670:
/* 00D70 80B1C670 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00D74 80B1C674 846B0034 */  lh      $t3, 0x0034($v1)           ## 8015E694
/* 00D78 80B1C678 240C0085 */  addiu   $t4, $zero, 0x0085         ## $t4 = 00000085
/* 00D7C 80B1C67C 240D0037 */  addiu   $t5, $zero, 0x0037         ## $t5 = 00000037
/* 00D80 80B1C680 2961000A */  slti    $at, $t3, 0x000A           
/* 00D84 80B1C684 50200004 */  beql    $at, $zero, .L80B1C698     
/* 00D88 80B1C688 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D8C 80B1C68C 1000000D */  beq     $zero, $zero, .L80B1C6C4   
/* 00D90 80B1C690 A4CC010E */  sh      $t4, 0x010E($a2)           ## 0000010E
/* 00D94 80B1C694 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80B1C698:
/* 00D98 80B1C698 00270821 */  addu    $at, $at, $a3              
/* 00D9C 80B1C69C A02D03DC */  sb      $t5, 0x03DC($at)           ## 000103DC
/* 00DA0 80B1C6A0 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00DA4 80B1C6A4 2404FFF6 */  addiu   $a0, $zero, 0xFFF6         ## $a0 = FFFFFFF6
/* 00DA8 80B1C6A8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00DAC 80B1C6AC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00DB0 80B1C6B0 946E0F12 */  lhu     $t6, 0x0F12($v1)           ## 8015F572
/* 00DB4 80B1C6B4 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00DB8 80B1C6B8 35CF0200 */  ori     $t7, $t6, 0x0200           ## $t7 = 00000200
/* 00DBC 80B1C6BC 1000001A */  beq     $zero, $zero, .L80B1C728   
/* 00DC0 80B1C6C0 A46F0F12 */  sh      $t7, 0x0F12($v1)           ## 8015F572
.L80B1C6C4:
/* 00DC4 80B1C6C4 0C042DC8 */  jal     func_8010B720              
/* 00DC8 80B1C6C8 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
/* 00DCC 80B1C6CC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00DD0 80B1C6D0 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00DD4 80B1C6D4 94780F12 */  lhu     $t8, 0x0F12($v1)           ## 8015F572
/* 00DD8 80B1C6D8 37190200 */  ori     $t9, $t8, 0x0200           ## $t9 = 00000200
/* 00DDC 80B1C6DC 10000011 */  beq     $zero, $zero, .L80B1C724   
/* 00DE0 80B1C6E0 A4790F12 */  sh      $t9, 0x0F12($v1)           ## 8015F572
glabel L80B1C6E4
/* 00DE4 80B1C6E4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00DE8 80B1C6E8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00DEC 80B1C6EC 0C041AF2 */  jal     func_80106BC8              
/* 00DF0 80B1C6F0 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00DF4 80B1C6F4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00DF8 80B1C6F8 1040000A */  beq     $v0, $zero, .L80B1C724     
/* 00DFC 80B1C6FC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00E00 80B1C700 94C2010E */  lhu     $v0, 0x010E($a2)           ## 0000010E
/* 00E04 80B1C704 24010084 */  addiu   $at, $zero, 0x0084         ## $at = 00000084
/* 00E08 80B1C708 10410003 */  beq     $v0, $at, .L80B1C718       
/* 00E0C 80B1C70C 24010085 */  addiu   $at, $zero, 0x0085         ## $at = 00000085
/* 00E10 80B1C710 54410005 */  bnel    $v0, $at, .L80B1C728       
/* 00E14 80B1C714 87A2001E */  lh      $v0, 0x001E($sp)           
.L80B1C718:
/* 00E18 80B1C718 0C041B33 */  jal     func_80106CCC              
/* 00E1C 80B1C71C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E20 80B1C720 AFA0001C */  sw      $zero, 0x001C($sp)         
glabel L80B1C724
.L80B1C724:
/* 00E24 80B1C724 87A2001E */  lh      $v0, 0x001E($sp)           
.L80B1C728:
/* 00E28 80B1C728 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E2C 80B1C72C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E30 80B1C730 03E00008 */  jr      $ra                        
/* 00E34 80B1C734 00000000 */  nop


