glabel func_8096A6E0
/* 00C10 8096A6E0 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00C14 8096A6E4 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00C18 8096A6E8 3C0141F8 */  lui     $at, 0x41F8                ## $at = 41F80000
/* 00C1C 8096A6EC 4481E000 */  mtc1    $at, $f28                  ## $f28 = 31.00
/* 00C20 8096A6F0 AFA500D4 */  sw      $a1, 0x00D4($sp)           
/* 00C24 8096A6F4 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00C28 8096A6F8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C2C 8096A6FC 4405E000 */  mfc1    $a1, $f28                  
/* 00C30 8096A700 AFBE0070 */  sw      $s8, 0x0070($sp)           
/* 00C34 8096A704 AFB7006C */  sw      $s7, 0x006C($sp)           
/* 00C38 8096A708 AFB60068 */  sw      $s6, 0x0068($sp)           
/* 00C3C 8096A70C AFB50064 */  sw      $s5, 0x0064($sp)           
/* 00C40 8096A710 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 00C44 8096A714 AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00C48 8096A718 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00C4C 8096A71C AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00C50 8096A720 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 00C54 8096A724 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00C58 8096A728 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00C5C 8096A72C F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00C60 8096A730 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00C64 8096A734 0C0295B2 */  jal     Animation_OnFrame              
/* 00C68 8096A738 AFA40080 */  sw      $a0, 0x0080($sp)           
/* 00C6C 8096A73C 14400004 */  bne     $v0, $zero, .L8096A750     
/* 00C70 8096A740 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 00C74 8096A744 0C0295B2 */  jal     Animation_OnFrame              
/* 00C78 8096A748 3C054224 */  lui     $a1, 0x4224                ## $a1 = 42240000
/* 00C7C 8096A74C 10400077 */  beq     $v0, $zero, .L8096A92C     
.L8096A750:
/* 00C80 8096A750 3C0F8097 */  lui     $t7, %hi(D_8096CE98)       ## $t7 = 80970000
/* 00C84 8096A754 8FAE00D4 */  lw      $t6, 0x00D4($sp)           
/* 00C88 8096A758 25EFCE98 */  addiu   $t7, $t7, %lo(D_8096CE98)  ## $t7 = 8096CE98
/* 00C8C 8096A75C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8096CE98
/* 00C90 8096A760 8DC21C44 */  lw      $v0, 0x1C44($t6)           ## 00001C44
/* 00C94 8096A764 27B400B0 */  addiu   $s4, $sp, 0x00B0           ## $s4 = FFFFFFE0
/* 00C98 8096A768 AE990000 */  sw      $t9, 0x0000($s4)           ## FFFFFFE0
/* 00C9C 8096A76C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8096CE9C
/* 00CA0 8096A770 3C088097 */  lui     $t0, %hi(D_8096CEA4)       ## $t0 = 80970000
/* 00CA4 8096A774 2508CEA4 */  addiu   $t0, $t0, %lo(D_8096CEA4)  ## $t0 = 8096CEA4
/* 00CA8 8096A778 AE980004 */  sw      $t8, 0x0004($s4)           ## FFFFFFE4
/* 00CAC 8096A77C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8096CEA0
/* 00CB0 8096A780 27B500A4 */  addiu   $s5, $sp, 0x00A4           ## $s5 = FFFFFFD4
/* 00CB4 8096A784 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00CB8 8096A788 AE990008 */  sw      $t9, 0x0008($s4)           ## FFFFFFE8
/* 00CBC 8096A78C 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 8096CEA4
/* 00CC0 8096A790 4481D000 */  mtc1    $at, $f26                  ## $f26 = 200.00
/* 00CC4 8096A794 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00CC8 8096A798 AEAA0000 */  sw      $t2, 0x0000($s5)           ## FFFFFFD4
/* 00CCC 8096A79C 8D090004 */  lw      $t1, 0x0004($t0)           ## 8096CEA8
/* 00CD0 8096A7A0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 40.00
/* 00CD4 8096A7A4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CD8 8096A7A8 AEA90004 */  sw      $t1, 0x0004($s5)           ## FFFFFFD8
/* 00CDC 8096A7AC 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 8096CEAC
/* 00CE0 8096A7B0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 00CE4 8096A7B4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00CE8 8096A7B8 3C108097 */  lui     $s0, %hi(D_8096CEE8)       ## $s0 = 80970000
/* 00CEC 8096A7BC 3C178097 */  lui     $s7, %hi(sDustEnvironmentColor)       ## $s7 = 80970000
/* 00CF0 8096A7C0 3C168097 */  lui     $s6, %hi(sDustPrimaryColor)       ## $s6 = 80970000
/* 00CF4 8096A7C4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 00CF8 8096A7C8 26D6CEB0 */  addiu   $s6, $s6, %lo(sDustPrimaryColor)  ## $s6 = 8096CEB0
/* 00CFC 8096A7CC 26F7CEB4 */  addiu   $s7, $s7, %lo(sDustEnvironmentColor)  ## $s7 = 8096CEB4
/* 00D00 8096A7D0 2610CEE8 */  addiu   $s0, $s0, %lo(D_8096CEE8)  ## $s0 = 8096CEE8
/* 00D04 8096A7D4 27BE0088 */  addiu   $s8, $sp, 0x0088           ## $s8 = FFFFFFB8
/* 00D08 8096A7D8 27B30098 */  addiu   $s3, $sp, 0x0098           ## $s3 = FFFFFFC8
/* 00D0C 8096A7DC 27B2009C */  addiu   $s2, $sp, 0x009C           ## $s2 = FFFFFFCC
/* 00D10 8096A7E0 2451098C */  addiu   $s1, $v0, 0x098C           ## $s1 = 0000098C
/* 00D14 8096A7E4 AEAA0008 */  sw      $t2, 0x0008($s5)           ## FFFFFFDC
/* 00D18 8096A7E8 8ECC0000 */  lw      $t4, 0x0000($s6)           ## 8096CEB0
.L8096A7EC:
/* 00D1C 8096A7EC 8EEE0000 */  lw      $t6, 0x0000($s7)           ## 8096CEB4
/* 00D20 8096A7F0 4405E000 */  mfc1    $a1, $f28                  
/* 00D24 8096A7F4 AE4C0000 */  sw      $t4, 0x0000($s2)           ## FFFFFFCC
/* 00D28 8096A7F8 AE6E0000 */  sw      $t6, 0x0000($s3)           ## FFFFFFC8
/* 00D2C 8096A7FC 0C0295B2 */  jal     Animation_OnFrame              
/* 00D30 8096A800 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 00D34 8096A804 5040000F */  beql    $v0, $zero, .L8096A844     
/* 00D38 8096A808 C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 8096CEE8
/* 00D3C 8096A80C C604003C */  lwc1    $f4, 0x003C($s0)           ## 8096CF24
/* 00D40 8096A810 C6260000 */  lwc1    $f6, 0x0000($s1)           ## 0000098C
/* 00D44 8096A814 C60A0040 */  lwc1    $f10, 0x0040($s0)          ## 8096CF28
/* 00D48 8096A818 46062200 */  add.s   $f8, $f4, $f6              
/* 00D4C 8096A81C C6040044 */  lwc1    $f4, 0x0044($s0)           ## 8096CF2C
/* 00D50 8096A820 E7A80088 */  swc1    $f8, 0x0088($sp)           
/* 00D54 8096A824 C6300004 */  lwc1    $f16, 0x0004($s1)          ## 00000990
/* 00D58 8096A828 46105480 */  add.s   $f18, $f10, $f16           
/* 00D5C 8096A82C E7B2008C */  swc1    $f18, 0x008C($sp)          
/* 00D60 8096A830 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 00000994
/* 00D64 8096A834 46062200 */  add.s   $f8, $f4, $f6              
/* 00D68 8096A838 1000000D */  beq     $zero, $zero, .L8096A870   
/* 00D6C 8096A83C E7A80090 */  swc1    $f8, 0x0090($sp)           
/* 00D70 8096A840 C60A0000 */  lwc1    $f10, 0x0000($s0)          ## 8096CEE8
.L8096A844:
/* 00D74 8096A844 C6300000 */  lwc1    $f16, 0x0000($s1)          ## 0000098C
/* 00D78 8096A848 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 8096CEEC
/* 00D7C 8096A84C 46105480 */  add.s   $f18, $f10, $f16           
/* 00D80 8096A850 C60A0008 */  lwc1    $f10, 0x0008($s0)          ## 8096CEF0
/* 00D84 8096A854 E7B20088 */  swc1    $f18, 0x0088($sp)          
/* 00D88 8096A858 C6260004 */  lwc1    $f6, 0x0004($s1)           ## 00000990
/* 00D8C 8096A85C 46062200 */  add.s   $f8, $f4, $f6              
/* 00D90 8096A860 E7A8008C */  swc1    $f8, 0x008C($sp)           
/* 00D94 8096A864 C6300008 */  lwc1    $f16, 0x0008($s1)          ## 00000994
/* 00D98 8096A868 46105480 */  add.s   $f18, $f10, $f16           
/* 00D9C 8096A86C E7B20090 */  swc1    $f18, 0x0090($sp)          
.L8096A870:
/* 00DA0 8096A870 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00DA4 8096A874 00000000 */  nop
/* 00DA8 8096A878 46140102 */  mul.s   $f4, $f0, $f20             
/* 00DAC 8096A87C 93B8009C */  lbu     $t8, 0x009C($sp)           
/* 00DB0 8096A880 93A8009D */  lbu     $t0, 0x009D($sp)           
/* 00DB4 8096A884 93AA009E */  lbu     $t2, 0x009E($sp)           
/* 00DB8 8096A888 93AC0098 */  lbu     $t4, 0x0098($sp)           
/* 00DBC 8096A88C 93AE0099 */  lbu     $t6, 0x0099($sp)           
/* 00DC0 8096A890 46162181 */  sub.s   $f6, $f4, $f22             
/* 00DC4 8096A894 4600320D */  trunc.w.s $f8, $f6                   
/* 00DC8 8096A898 44024000 */  mfc1    $v0, $f8                   
/* 00DCC 8096A89C 00000000 */  nop
/* 00DD0 8096A8A0 0302C821 */  addu    $t9, $t8, $v0              
/* 00DD4 8096A8A4 93B8009A */  lbu     $t8, 0x009A($sp)           
/* 00DD8 8096A8A8 A3B9009C */  sb      $t9, 0x009C($sp)           
/* 00DDC 8096A8AC 01024821 */  addu    $t1, $t0, $v0              
/* 00DE0 8096A8B0 01425821 */  addu    $t3, $t2, $v0              
/* 00DE4 8096A8B4 01826821 */  addu    $t5, $t4, $v0              
/* 00DE8 8096A8B8 01C27821 */  addu    $t7, $t6, $v0              
/* 00DEC 8096A8BC 0302C821 */  addu    $t9, $t8, $v0              
/* 00DF0 8096A8C0 A3A9009D */  sb      $t1, 0x009D($sp)           
/* 00DF4 8096A8C4 A3AB009E */  sb      $t3, 0x009E($sp)           
/* 00DF8 8096A8C8 A3AD0098 */  sb      $t5, 0x0098($sp)           
/* 00DFC 8096A8CC A3AF0099 */  sb      $t7, 0x0099($sp)           
/* 00E00 8096A8D0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E04 8096A8D4 A3B9009A */  sb      $t9, 0x009A($sp)           
/* 00E08 8096A8D8 46180282 */  mul.s   $f10, $f0, $f24            
/* 00E0C 8096A8DC 8FA400D4 */  lw      $a0, 0x00D4($sp)           
/* 00E10 8096A8E0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = FFFFFFB8
/* 00E14 8096A8E4 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFE0
/* 00E18 8096A8E8 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFD4
/* 00E1C 8096A8EC AFB20010 */  sw      $s2, 0x0010($sp)           
/* 00E20 8096A8F0 AFB30014 */  sw      $s3, 0x0014($sp)           
/* 00E24 8096A8F4 461A5400 */  add.s   $f16, $f10, $f26           
/* 00E28 8096A8F8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00E2C 8096A8FC 4600848D */  trunc.w.s $f18, $f16                 
/* 00E30 8096A900 44099000 */  mfc1    $t1, $f18                  
/* 00E34 8096A904 0C00A0A7 */  jal     func_8002829C              
/* 00E38 8096A908 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00E3C 8096A90C 3C0A8097 */  lui     $t2, %hi(D_8096CEB8)       ## $t2 = 80970000
/* 00E40 8096A910 254ACEB8 */  addiu   $t2, $t2, %lo(D_8096CEB8)  ## $t2 = 8096CEB8
/* 00E44 8096A914 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 8096CEDC
/* 00E48 8096A918 020A082B */  sltu    $at, $s0, $t2              
/* 00E4C 8096A91C 5020FFB3 */  beql    $at, $zero, .L8096A7EC     
/* 00E50 8096A920 8ECC0000 */  lw      $t4, 0x0000($s6)           ## 8096CEB0
/* 00E54 8096A924 0C25A902 */  jal     DemoDu_CsPlaySfx_DaruniaHitsLink              
/* 00E58 8096A928 8FA400D4 */  lw      $a0, 0x00D4($sp)           
.L8096A92C:
/* 00E5C 8096A92C 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 00E60 8096A930 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00E64 8096A934 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00E68 8096A938 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00E6C 8096A93C D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00E70 8096A940 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00E74 8096A944 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 00E78 8096A948 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 00E7C 8096A94C 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 00E80 8096A950 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 00E84 8096A954 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 00E88 8096A958 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 00E8C 8096A95C 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 00E90 8096A960 8FB7006C */  lw      $s7, 0x006C($sp)           
/* 00E94 8096A964 8FBE0070 */  lw      $s8, 0x0070($sp)           
/* 00E98 8096A968 03E00008 */  jr      $ra                        
/* 00E9C 8096A96C 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
