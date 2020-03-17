glabel func_80B1A76C
/* 01CEC 80B1A76C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01CF0 80B1A770 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CF4 80B1A774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CF8 80B1A778 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CFC 80B1A77C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01D00 80B1A780 24A50A14 */  addiu   $a1, $a1, 0x0A14           ## $a1 = 06000A14
/* 01D04 80B1A784 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D08 80B1A788 0C0294E1 */  jal     func_800A5384              
/* 01D0C 80B1A78C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 01D10 80B1A790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D14 80B1A794 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D18 80B1A798 24053888 */  addiu   $a1, $zero, 0x3888         ## $a1 = 00003888
/* 01D1C 80B1A79C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01D20 80B1A7A0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01D24 80B1A7A4 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 01D28 80B1A7A8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01D2C 80B1A7AC 240F01F4 */  addiu   $t7, $zero, 0x01F4         ## $t7 = 000001F4
/* 01D30 80B1A7B0 A20E02BD */  sb      $t6, 0x02BD($s0)           ## 000002BD
/* 01D34 80B1A7B4 A60F02E0 */  sh      $t7, 0x02E0($s0)           ## 000002E0
/* 01D38 80B1A7B8 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01D3C 80B1A7BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01D40 80B1A7C0 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 01D44 80B1A7C4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01D48 80B1A7C8 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 01D4C 80B1A7CC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01D50 80B1A7D0 3C0580B2 */  lui     $a1, %hi(func_80B1A888)    ## $a1 = 80B20000
/* 01D54 80B1A7D4 46080282 */  mul.s   $f10, $f0, $f8             
/* 01D58 80B1A7D8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01D5C 80B1A7DC 24A5A888 */  addiu   $a1, $a1, %lo(func_80B1A888) ## $a1 = 80B1A888
/* 01D60 80B1A7E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D64 80B1A7E4 4458F800 */  cfc1    $t8, $31
/* 01D68 80B1A7E8 44D9F800 */  ctc1    $t9, $31
/* 01D6C 80B1A7EC 00000000 */  nop
/* 01D70 80B1A7F0 46005424 */  cvt.w.s $f16, $f10                 
/* 01D74 80B1A7F4 4459F800 */  cfc1    $t9, $31
/* 01D78 80B1A7F8 00000000 */  nop
/* 01D7C 80B1A7FC 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 01D80 80B1A800 53200013 */  beql    $t9, $zero, .L80B1A850     
/* 01D84 80B1A804 44198000 */  mfc1    $t9, $f16                  
/* 01D88 80B1A808 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 01D8C 80B1A80C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01D90 80B1A810 46105401 */  sub.s   $f16, $f10, $f16           
/* 01D94 80B1A814 44D9F800 */  ctc1    $t9, $31
/* 01D98 80B1A818 00000000 */  nop
/* 01D9C 80B1A81C 46008424 */  cvt.w.s $f16, $f16                 
/* 01DA0 80B1A820 4459F800 */  cfc1    $t9, $31
/* 01DA4 80B1A824 00000000 */  nop
/* 01DA8 80B1A828 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 01DAC 80B1A82C 17200005 */  bne     $t9, $zero, .L80B1A844     
/* 01DB0 80B1A830 00000000 */  nop
/* 01DB4 80B1A834 44198000 */  mfc1    $t9, $f16                  
/* 01DB8 80B1A838 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01DBC 80B1A83C 10000007 */  beq     $zero, $zero, .L80B1A85C   
/* 01DC0 80B1A840 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80B1A844:
/* 01DC4 80B1A844 10000005 */  beq     $zero, $zero, .L80B1A85C   
/* 01DC8 80B1A848 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 01DCC 80B1A84C 44198000 */  mfc1    $t9, $f16                  
.L80B1A850:
/* 01DD0 80B1A850 00000000 */  nop
/* 01DD4 80B1A854 0720FFFB */  bltz    $t9, .L80B1A844            
/* 01DD8 80B1A858 00000000 */  nop
.L80B1A85C:
/* 01DDC 80B1A85C 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 01DE0 80B1A860 44819000 */  mtc1    $at, $f18                  ## $f18 = 11.00
/* 01DE4 80B1A864 44D8F800 */  ctc1    $t8, $31
/* 01DE8 80B1A868 A21902E2 */  sb      $t9, 0x02E2($s0)           ## 000002E2
/* 01DEC 80B1A86C 0C2C62A0 */  jal     func_80B18A80              
/* 01DF0 80B1A870 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 01DF4 80B1A874 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DF8 80B1A878 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01DFC 80B1A87C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E00 80B1A880 03E00008 */  jr      $ra                        
/* 01E04 80B1A884 00000000 */  nop


