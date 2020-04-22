glabel EnBrob_Update
/* 00B60 809CB670 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00B64 809CB674 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B68 809CB678 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00B6C 809CB67C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00B70 809CB680 908E0239 */  lbu     $t6, 0x0239($a0)           ## 00000239
/* 00B74 809CB684 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B78 809CB688 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B7C 809CB68C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00B80 809CB690 000FC02B */  sltu    $t8, $zero, $t7            
/* 00B84 809CB694 AFB8003C */  sw      $t8, 0x003C($sp)           
/* 00B88 809CB698 90990285 */  lbu     $t9, 0x0285($a0)           ## 00000285
/* 00B8C 809CB69C 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 00B90 809CB6A0 0008482B */  sltu    $t1, $zero, $t0            
/* 00B94 809CB6A4 13000006 */  beq     $t8, $zero, .L809CB6C0     
/* 00B98 809CB6A8 AFA90040 */  sw      $t1, 0x0040($sp)           
/* 00B9C 809CB6AC 8C8A0264 */  lw      $t2, 0x0264($a0)           ## 00000264
/* 00BA0 809CB6B0 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 00BA4 809CB6B4 316C0010 */  andi    $t4, $t3, 0x0010           ## $t4 = 00000000
/* 00BA8 809CB6B8 55800009 */  bnel    $t4, $zero, .L809CB6E0     
/* 00BAC 809CB6BC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CB6C0:
/* 00BB0 809CB6C0 8FAD0040 */  lw      $t5, 0x0040($sp)           
/* 00BB4 809CB6C4 51A00018 */  beql    $t5, $zero, .L809CB728     
/* 00BB8 809CB6C8 92040238 */  lbu     $a0, 0x0238($s0)           ## 00000238
/* 00BBC 809CB6CC 8E0E02B0 */  lw      $t6, 0x02B0($s0)           ## 000002B0
/* 00BC0 809CB6D0 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 00BC4 809CB6D4 31F90010 */  andi    $t9, $t7, 0x0010           ## $t9 = 00000000
/* 00BC8 809CB6D8 13200012 */  beq     $t9, $zero, .L809CB724     
/* 00BCC 809CB6DC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CB6E0:
/* 00BD0 809CB6E0 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 00BD4 809CB6E4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00BD8 809CB6E8 2405FFFD */  addiu   $a1, $zero, 0xFFFD         ## $a1 = FFFFFFFD
/* 00BDC 809CB6EC 2404FFF9 */  addiu   $a0, $zero, 0xFFF9         ## $a0 = FFFFFFF9
.L809CB6F0:
/* 00BE0 809CB6F0 90480238 */  lbu     $t0, 0x0238($v0)           ## 00000238
/* 00BE4 809CB6F4 90580239 */  lbu     $t8, 0x0239($v0)           ## 00000239
/* 00BE8 809CB6F8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00BEC 809CB6FC 01044824 */  and     $t1, $t0, $a0              
/* 00BF0 809CB700 03055024 */  and     $t2, $t8, $a1              
/* 00BF4 809CB704 2442004C */  addiu   $v0, $v0, 0x004C           ## $v0 = 0000004C
/* 00BF8 809CB708 A04901EC */  sb      $t1, 0x01EC($v0)           ## 00000238
/* 00BFC 809CB70C 1466FFF8 */  bne     $v1, $a2, .L809CB6F0       
/* 00C00 809CB710 A04A01ED */  sb      $t2, 0x01ED($v0)           ## 00000239
/* 00C04 809CB714 0C272BBD */  jal     func_809CAEF4              
/* 00C08 809CB718 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C0C 809CB71C 1000003F */  beq     $zero, $zero, .L809CB81C   
/* 00C10 809CB720 8E1901A8 */  lw      $t9, 0x01A8($s0)           ## 000001A8
.L809CB724:
/* 00C14 809CB724 92040238 */  lbu     $a0, 0x0238($s0)           ## 00000238
.L809CB728:
/* 00C18 809CB728 308B0002 */  andi    $t3, $a0, 0x0002           ## $t3 = 00000000
/* 00C1C 809CB72C 55600015 */  bnel    $t3, $zero, .L809CB784     
/* 00C20 809CB730 8E0201A8 */  lw      $v0, 0x01A8($s0)           ## 000001A8
/* 00C24 809CB734 920C0284 */  lbu     $t4, 0x0284($s0)           ## 00000284
/* 00C28 809CB738 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 00C2C 809CB73C 318D0002 */  andi    $t5, $t4, 0x0002           ## $t5 = 00000000
/* 00C30 809CB740 55A00010 */  bnel    $t5, $zero, .L809CB784     
/* 00C34 809CB744 8E0201A8 */  lw      $v0, 0x01A8($s0)           ## 000001A8
/* 00C38 809CB748 11C00006 */  beq     $t6, $zero, .L809CB764     
/* 00C3C 809CB74C 8FA90040 */  lw      $t1, 0x0040($sp)           
/* 00C40 809CB750 8E0F0264 */  lw      $t7, 0x0264($s0)           ## 00000264
/* 00C44 809CB754 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000000
/* 00C48 809CB758 33280100 */  andi    $t0, $t9, 0x0100           ## $t0 = 00000000
/* 00C4C 809CB75C 55000009 */  bnel    $t0, $zero, .L809CB784     
/* 00C50 809CB760 8E0201A8 */  lw      $v0, 0x01A8($s0)           ## 000001A8
.L809CB764:
/* 00C54 809CB764 5120002D */  beql    $t1, $zero, .L809CB81C     
/* 00C58 809CB768 8E1901A8 */  lw      $t9, 0x01A8($s0)           ## 000001A8
/* 00C5C 809CB76C 8E1802B0 */  lw      $t8, 0x02B0($s0)           ## 000002B0
/* 00C60 809CB770 8F0A0000 */  lw      $t2, 0x0000($t8)           ## 00000000
/* 00C64 809CB774 314B0100 */  andi    $t3, $t2, 0x0100           ## $t3 = 00000000
/* 00C68 809CB778 51600028 */  beql    $t3, $zero, .L809CB81C     
/* 00C6C 809CB77C 8E1901A8 */  lw      $t9, 0x01A8($s0)           ## 000001A8
/* 00C70 809CB780 8E0201A8 */  lw      $v0, 0x01A8($s0)           ## 000001A8
.L809CB784:
/* 00C74 809CB784 3C03809D */  lui     $v1, %hi(func_809CB114)    ## $v1 = 809D0000
/* 00C78 809CB788 2463B114 */  addiu   $v1, $v1, %lo(func_809CB114) ## $v1 = 809CB114
/* 00C7C 809CB78C 14620010 */  bne     $v1, $v0, .L809CB7D0       
/* 00C80 809CB790 308C0004 */  andi    $t4, $a0, 0x0004           ## $t4 = 00000000
/* 00C84 809CB794 1580000E */  bne     $t4, $zero, .L809CB7D0     
/* 00C88 809CB798 00000000 */  nop
/* 00C8C 809CB79C 920D0284 */  lbu     $t5, 0x0284($s0)           ## 00000284
/* 00C90 809CB7A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C94 809CB7A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C98 809CB7A8 31AE0004 */  andi    $t6, $t5, 0x0004           ## $t6 = 00000000
/* 00C9C 809CB7AC 15C00008 */  bne     $t6, $zero, .L809CB7D0     
/* 00CA0 809CB7B0 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00CA4 809CB7B4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CA8 809CB7B8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00CAC 809CB7BC 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00CB0 809CB7C0 0C00BDC7 */  jal     func_8002F71C              
/* 00CB4 809CB7C4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00CB8 809CB7C8 10000006 */  beq     $zero, $zero, .L809CB7E4   
/* 00CBC 809CB7CC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CB7D0:
/* 00CC0 809CB7D0 50620004 */  beql    $v1, $v0, .L809CB7E4       
/* 00CC4 809CB7D4 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00CC8 809CB7D8 0C272C02 */  jal     func_809CB008              
/* 00CCC 809CB7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD0 809CB7E0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809CB7E4:
/* 00CD4 809CB7E4 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 00CD8 809CB7E8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CDC 809CB7EC 2405FFFD */  addiu   $a1, $zero, 0xFFFD         ## $a1 = FFFFFFFD
/* 00CE0 809CB7F0 2404FFF9 */  addiu   $a0, $zero, 0xFFF9         ## $a0 = FFFFFFF9
.L809CB7F4:
/* 00CE4 809CB7F4 904F0238 */  lbu     $t7, 0x0238($v0)           ## 00000238
/* 00CE8 809CB7F8 90480239 */  lbu     $t0, 0x0239($v0)           ## 00000239
/* 00CEC 809CB7FC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00CF0 809CB800 01E4C824 */  and     $t9, $t7, $a0              
/* 00CF4 809CB804 01054824 */  and     $t1, $t0, $a1              
/* 00CF8 809CB808 2442004C */  addiu   $v0, $v0, 0x004C           ## $v0 = 0000004C
/* 00CFC 809CB80C A05901EC */  sb      $t9, 0x01EC($v0)           ## 00000238
/* 00D00 809CB810 1466FFF8 */  bne     $v1, $a2, .L809CB7F4       
/* 00D04 809CB814 A04901ED */  sb      $t1, 0x01ED($v0)           ## 00000239
/* 00D08 809CB818 8E1901A8 */  lw      $t9, 0x01A8($s0)           ## 000001A8
.L809CB81C:
/* 00D0C 809CB81C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D10 809CB820 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D14 809CB824 0320F809 */  jalr    $ra, $t9                   
/* 00D18 809CB828 00000000 */  nop
/* 00D1C 809CB82C 8E0201A8 */  lw      $v0, 0x01A8($s0)           ## 000001A8
/* 00D20 809CB830 3C18809D */  lui     $t8, %hi(func_809CB054)    ## $t8 = 809D0000
/* 00D24 809CB834 2718B054 */  addiu   $t8, $t8, %lo(func_809CB054) ## $t8 = 809CB054
/* 00D28 809CB838 1302002F */  beq     $t8, $v0, .L809CB8F8       
/* 00D2C 809CB83C 3C0A809D */  lui     $t2, %hi(func_809CB354)    ## $t2 = 809D0000
/* 00D30 809CB840 254AB354 */  addiu   $t2, $t2, %lo(func_809CB354) ## $t2 = 809CB354
/* 00D34 809CB844 1142002C */  beq     $t2, $v0, .L809CB8F8       
/* 00D38 809CB848 3C0B809D */  lui     $t3, %hi(func_809CB2B8)    ## $t3 = 809D0000
/* 00D3C 809CB84C 256BB2B8 */  addiu   $t3, $t3, %lo(func_809CB2B8) ## $t3 = 809CB2B8
/* 00D40 809CB850 1162001C */  beq     $t3, $v0, .L809CB8C4       
/* 00D44 809CB854 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D48 809CB858 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D4C 809CB85C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D50 809CB860 3C03809D */  lui     $v1, %hi(func_809CB114)    ## $v1 = 809D0000
/* 00D54 809CB864 2463B114 */  addiu   $v1, $v1, %lo(func_809CB114) ## $v1 = 809CB114
/* 00D58 809CB868 02212821 */  addu    $a1, $s1, $at              
/* 00D5C 809CB86C 26060228 */  addiu   $a2, $s0, 0x0228           ## $a2 = 00000228
/* 00D60 809CB870 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00D64 809CB874 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00D68 809CB878 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00D6C 809CB87C AFA30038 */  sw      $v1, 0x0038($sp)           
/* 00D70 809CB880 26060274 */  addiu   $a2, $s0, 0x0274           ## $a2 = 00000274
/* 00D74 809CB884 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00D78 809CB888 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D7C 809CB88C 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00D80 809CB890 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D84 809CB894 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 00D88 809CB898 8E0C01A8 */  lw      $t4, 0x01A8($s0)           ## 000001A8
/* 00D8C 809CB89C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D90 809CB8A0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D94 809CB8A4 506C0008 */  beql    $v1, $t4, .L809CB8C8       
/* 00D98 809CB8A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D9C 809CB8AC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DA0 809CB8B0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00DA4 809CB8B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DA8 809CB8B8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00DAC 809CB8BC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DB0 809CB8C0 8FA60030 */  lw      $a2, 0x0030($sp)           
.L809CB8C4:
/* 00DB4 809CB8C4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L809CB8C8:
/* 00DB8 809CB8C8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00DBC 809CB8CC 02212821 */  addu    $a1, $s1, $at              
/* 00DC0 809CB8D0 260D0274 */  addiu   $t5, $s0, 0x0274           ## $t5 = 00000274
/* 00DC4 809CB8D4 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00DC8 809CB8D8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00DCC 809CB8DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DD0 809CB8E0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DD4 809CB8E4 26060228 */  addiu   $a2, $s0, 0x0228           ## $a2 = 00000228
/* 00DD8 809CB8E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DDC 809CB8EC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00DE0 809CB8F0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DE4 809CB8F4 8FA60030 */  lw      $a2, 0x0030($sp)           
.L809CB8F8:
/* 00DE8 809CB8F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DEC 809CB8FC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00DF0 809CB900 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00DF4 809CB904 03E00008 */  jr      $ra                        
/* 00DF8 809CB908 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
