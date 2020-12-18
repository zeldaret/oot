.late_rodata
glabel jtbl_8095C778
.word L80956998
.word L80956A1C
.word L80956A1C
.word L80956A1C
.word L80956A1C
.word L80956CC0
.word L80956AFC
.word L80956AFC
.word L80956D88
.word L80956D88
.word L80956D88
.word L80956D68
glabel D_8095C7A8
    .float 0.15

glabel D_8095C7AC
    .float 0.15

glabel D_8095C7B0
    .float 0.15

glabel D_8095C7B4
    .float 0.1

.text
glabel func_809568E0
/* 07620 809568E0 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 07624 809568E4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 07628 809568E8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0762C 809568EC AFA50064 */  sw      $a1, 0x0064($sp)           
/* 07630 809568F0 8C980008 */  lw      $t8, 0x0008($a0)           ## 00000008
/* 07634 809568F4 27AE0054 */  addiu   $t6, $sp, 0x0054           ## $t6 = FFFFFFF4
/* 07638 809568F8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0763C 809568FC ADD80000 */  sw      $t8, 0x0000($t6)           ## FFFFFFF4
/* 07640 80956900 8C8F000C */  lw      $t7, 0x000C($a0)           ## 0000000C
/* 07644 80956904 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 07648 80956908 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0764C 8095690C ADCF0004 */  sw      $t7, 0x0004($t6)           ## FFFFFFF8
/* 07650 80956910 8C980010 */  lw      $t8, 0x0010($a0)           ## 00000010
/* 07654 80956914 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07658 80956918 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0765C 8095691C ADD80008 */  sw      $t8, 0x0008($t6)           ## FFFFFFFC
/* 07660 80956920 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 07664 80956924 C486000C */  lwc1    $f6, 0x000C($a0)           ## 0000000C
/* 07668 80956928 C7AA0058 */  lwc1    $f10, 0x0058($sp)          
/* 0766C 8095692C 4606403E */  c.le.s  $f8, $f6                   
/* 07670 80956930 00000000 */  nop
/* 07674 80956934 45000005 */  bc1f    .L8095694C                 
/* 07678 80956938 00000000 */  nop
/* 0767C 8095693C 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 07680 80956940 00000000 */  nop
/* 07684 80956944 46105480 */  add.s   $f18, $f10, $f16           
/* 07688 80956948 E7B20058 */  swc1    $f18, 0x0058($sp)          
.L8095694C:
/* 0768C 8095694C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 07690 80956950 00000000 */  nop
/* 07694 80956954 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 07698 80956958 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 0769C 8095695C C60401A4 */  lwc1    $f4, 0x01A4($s0)           ## 000001A4
/* 076A0 80956960 3C198096 */  lui     $t9, %hi(D_809668D2)       ## $t9 = 80960000
/* 076A4 80956964 46060202 */  mul.s   $f8, $f0, $f6              
/* 076A8 80956968 46082280 */  add.s   $f10, $f4, $f8             
/* 076AC 8095696C E60A01A4 */  swc1    $f10, 0x01A4($s0)          ## 000001A4
/* 076B0 80956970 833968D2 */  lb      $t9, %lo(D_809668D2)($t9)  
/* 076B4 80956974 2728FFFE */  addiu   $t0, $t9, 0xFFFE           ## $t0 = 8095FFFE
/* 076B8 80956978 2D01000C */  sltiu   $at, $t0, 0x000C           
/* 076BC 8095697C 10200102 */  beq     $at, $zero, .L80956D88     
/* 076C0 80956980 00084080 */  sll     $t0, $t0,  2               
/* 076C4 80956984 3C018096 */  lui     $at, %hi(jtbl_8095C778)       ## $at = 80960000
/* 076C8 80956988 00280821 */  addu    $at, $at, $t0              
/* 076CC 8095698C 8C28C778 */  lw      $t0, %lo(jtbl_8095C778)($at)  
/* 076D0 80956990 01000008 */  jr      $t0                        
/* 076D4 80956994 00000000 */  nop
glabel L80956998
/* 076D8 80956998 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 076DC 8095699C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 076E0 809569A0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 076E4 809569A4 1521001B */  bne     $t1, $at, .L80956A14       
/* 076E8 809569A8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 076EC 809569AC 0C00B7D5 */  jal     func_8002DF54              
/* 076F0 809569B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 076F4 809569B4 3C018096 */  lui     $at, %hi(D_8095C7A8)       ## $at = 80960000
/* 076F8 809569B8 C430C7A8 */  lwc1    $f16, %lo(D_8095C7A8)($at) 
/* 076FC 809569BC 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 07700 809569C0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 07704 809569C4 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 07708 809569C8 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 0770C 809569CC 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 07710 809569D0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07714 809569D4 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 07718 809569D8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0771C 809569DC 00000000 */  nop
/* 07720 809569E0 46120032 */  c.eq.s  $f0, $f18                  
/* 07724 809569E4 00000000 */  nop
/* 07728 809569E8 4500000A */  bc1f    .L80956A14                 
/* 0772C 809569EC 00000000 */  nop
/* 07730 809569F0 8E0A0198 */  lw      $t2, 0x0198($s0)           ## 00000198
/* 07734 809569F4 3C0D8096 */  lui     $t5, %hi(D_809668D2)       ## $t5 = 80960000
/* 07738 809569F8 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 0773C 809569FC 15600005 */  bne     $t3, $zero, .L80956A14     
/* 07740 80956A00 AE0B0198 */  sw      $t3, 0x0198($s0)           ## 00000198
/* 07744 80956A04 81AD68D2 */  lb      $t5, %lo(D_809668D2)($t5)  
/* 07748 80956A08 3C018096 */  lui     $at, %hi(D_809668D2)       ## $at = 80960000
/* 0774C 80956A0C 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 80960001
/* 07750 80956A10 A02E68D2 */  sb      $t6, %lo(D_809668D2)($at)  
.L80956A14:
/* 07754 80956A14 100000DC */  beq     $zero, $zero, .L80956D88   
/* 07758 80956A18 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
glabel L80956A1C
/* 0775C 80956A1C 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 07760 80956A20 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 07764 80956A24 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 07768 80956A28 1061001F */  beq     $v1, $at, .L80956AA8       
/* 0776C 80956A2C 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 07770 80956A30 00037880 */  sll     $t7, $v1,  2               
/* 07774 80956A34 01E37823 */  subu    $t7, $t7, $v1              
/* 07778 80956A38 000F7880 */  sll     $t7, $t7,  2               
/* 0777C 80956A3C 3C018096 */  lui     $at, %hi(D_8095C0C0)       ## $at = 80960000
/* 07780 80956A40 002F0821 */  addu    $at, $at, $t7              
/* 07784 80956A44 C426C0C0 */  lwc1    $f6, %lo(D_8095C0C0)($at)  
/* 07788 80956A48 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 0778C 80956A4C 3C018096 */  lui     $at, %hi(D_8095C7AC)       ## $at = 80960000
/* 07790 80956A50 C42AC7AC */  lwc1    $f10, %lo(D_8095C7AC)($at) 
/* 07794 80956A54 46043200 */  add.s   $f8, $f6, $f4              
/* 07798 80956A58 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0779C 80956A5C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 077A0 80956A60 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 077A4 80956A64 44054000 */  mfc1    $a1, $f8                   
/* 077A8 80956A68 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 077AC 80956A6C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 077B0 80956A70 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 077B4 80956A74 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 077B8 80956A78 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.25
/* 077BC 80956A7C C61001A4 */  lwc1    $f16, 0x01A4($s0)          ## 000001A4
/* 077C0 80956A80 46128302 */  mul.s   $f12, $f16, $f18           
/* 077C4 80956A84 0C0329C8 */  jal     Math_Sinf              
/* 077C8 80956A88 00000000 */  nop
/* 077CC 80956A8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 077D0 80956A90 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 077D4 80956A94 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 077D8 80956A98 46040202 */  mul.s   $f8, $f0, $f4              
/* 077DC 80956A9C 46083280 */  add.s   $f10, $f6, $f8             
/* 077E0 80956AA0 10000008 */  beq     $zero, $zero, .L80956AC4   
/* 077E4 80956AA4 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
.L80956AA8:
/* 077E8 80956AA8 3C018096 */  lui     $at, %hi(D_8095C7B0)       ## $at = 80960000
/* 077EC 80956AAC C430C7B0 */  lwc1    $f16, %lo(D_8095C7B0)($at) 
/* 077F0 80956AB0 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 077F4 80956AB4 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 077F8 80956AB8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 077FC 80956ABC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07800 80956AC0 E7B00010 */  swc1    $f16, 0x0010($sp)          
.L80956AC4:
/* 07804 80956AC4 0C0329C8 */  jal     Math_Sinf              
/* 07808 80956AC8 C60C01A4 */  lwc1    $f12, 0x01A4($s0)          ## 000001A4
/* 0780C 80956ACC E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 07810 80956AD0 0C0329C8 */  jal     Math_Sinf              
/* 07814 80956AD4 C60C01A4 */  lwc1    $f12, 0x01A4($s0)          ## 000001A4
/* 07818 80956AD8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0781C 80956ADC 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 07820 80956AE0 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 07824 80956AE4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 07828 80956AE8 46049181 */  sub.s   $f6, $f18, $f4             
/* 0782C 80956AEC 46060202 */  mul.s   $f8, $f0, $f6              
/* 07830 80956AF0 46085400 */  add.s   $f16, $f10, $f8            
/* 07834 80956AF4 100000A4 */  beq     $zero, $zero, .L80956D88   
/* 07838 80956AF8 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
glabel L80956AFC
/* 0783C 80956AFC 8618019C */  lh      $t8, 0x019C($s0)           ## 0000019C
/* 07840 80956B00 2B010010 */  slti    $at, $t8, 0x0010           
/* 07844 80956B04 5420006F */  bnel    $at, $zero, .L80956CC4     
/* 07848 80956B08 8E0B0198 */  lw      $t3, 0x0198($s0)           ## 00000198
/* 0784C 80956B0C 8E190198 */  lw      $t9, 0x0198($s0)           ## 00000198
/* 07850 80956B10 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 07854 80956B14 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 07858 80956B18 07210069 */  bgez    $t9, .L80956CC0            
/* 0785C 80956B1C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07860 80956B20 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 07864 80956B24 3C0740D0 */  lui     $a3, 0x40D0                ## $a3 = 40D00000
/* 07868 80956B28 AFA4003C */  sw      $a0, 0x003C($sp)           
/* 0786C 80956B2C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 07870 80956B30 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 07874 80956B34 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 07878 80956B38 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 0787C 80956B3C 8FA50058 */  lw      $a1, 0x0058($sp)           
/* 07880 80956B40 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07884 80956B44 3C0740D0 */  lui     $a3, 0x40D0                ## $a3 = 40D00000
/* 07888 80956B48 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0788C 80956B4C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 07890 80956B50 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 07894 80956B54 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 07898 80956B58 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 0789C 80956B5C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 078A0 80956B60 3C0740D0 */  lui     $a3, 0x40D0                ## $a3 = 40D00000
/* 078A4 80956B64 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 078A8 80956B68 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 078AC 80956B6C 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFF4
/* 078B0 80956B70 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 078B4 80956B74 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 078B8 80956B78 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 078BC 80956B7C 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 078C0 80956B80 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 078C4 80956B84 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 078C8 80956B88 460A003E */  c.le.s  $f0, $f10                  
/* 078CC 80956B8C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 078D0 80956B90 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 078D4 80956B94 4502004B */  bc1fl   .L80956CC4                 
/* 078D8 80956B98 8E0B0198 */  lw      $t3, 0x0198($s0)           ## 00000198
/* 078DC 80956B9C 86050014 */  lh      $a1, 0x0014($s0)           ## 00000014
/* 078E0 80956BA0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 078E4 80956BA4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 078E8 80956BA8 04400004 */  bltz    $v0, .L80956BBC            
/* 078EC 80956BAC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 078F0 80956BB0 00021C00 */  sll     $v1, $v0, 16               
/* 078F4 80956BB4 10000004 */  beq     $zero, $zero, .L80956BC8   
/* 078F8 80956BB8 00031C03 */  sra     $v1, $v1, 16               
.L80956BBC:
/* 078FC 80956BBC 00021823 */  subu    $v1, $zero, $v0            
/* 07900 80956BC0 00031C00 */  sll     $v1, $v1, 16               
/* 07904 80956BC4 00031C03 */  sra     $v1, $v1, 16               
.L80956BC8:
/* 07908 80956BC8 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 0790C 80956BCC A7A3004E */  sh      $v1, 0x004E($sp)           
/* 07910 80956BD0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 07914 80956BD4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07918 80956BD8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0791C 80956BDC 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 07920 80956BE0 04400003 */  bltz    $v0, .L80956BF0            
/* 07924 80956BE4 87A3004E */  lh      $v1, 0x004E($sp)           
/* 07928 80956BE8 10000002 */  beq     $zero, $zero, .L80956BF4   
/* 0792C 80956BEC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L80956BF0:
/* 07930 80956BF0 00022023 */  subu    $a0, $zero, $v0            
.L80956BF4:
/* 07934 80956BF4 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 07938 80956BF8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0793C 80956BFC 00641821 */  addu    $v1, $v1, $a0              
/* 07940 80956C00 00031C00 */  sll     $v1, $v1, 16               
/* 07944 80956C04 46104032 */  c.eq.s  $f8, $f16                  
/* 07948 80956C08 00031C03 */  sra     $v1, $v1, 16               
/* 0794C 80956C0C 4502002D */  bc1fl   .L80956CC4                 
/* 07950 80956C10 8E0B0198 */  lw      $t3, 0x0198($s0)           ## 00000198
/* 07954 80956C14 5460002B */  bnel    $v1, $zero, .L80956CC4     
/* 07958 80956C18 8E0B0198 */  lw      $t3, 0x0198($s0)           ## 00000198
/* 0795C 80956C1C 92080197 */  lbu     $t0, 0x0197($s0)           ## 00000197
/* 07960 80956C20 55000020 */  bnel    $t0, $zero, .L80956CA4     
/* 07964 80956C24 8E080198 */  lw      $t0, 0x0198($s0)           ## 00000198
/* 07968 80956C28 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 0796C 80956C2C 3C048096 */  lui     $a0, %hi(D_8095C230)       ## $a0 = 80960000
/* 07970 80956C30 2484C230 */  addiu   $a0, $a0, %lo(D_8095C230)  ## $a0 = 8095C230
/* 07974 80956C34 2861000B */  slti    $at, $v1, 0x000B           
/* 07978 80956C38 14200010 */  bne     $at, $zero, .L80956C7C     
/* 0797C 80956C3C 00831021 */  addu    $v0, $a0, $v1              
/* 07980 80956C40 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 07984 80956C44 14610007 */  bne     $v1, $at, .L80956C64       
/* 07988 80956C48 3C048096 */  lui     $a0, %hi(D_8095C230)       ## $a0 = 80960000
/* 0798C 80956C4C 3C048096 */  lui     $a0, %hi(D_8095C230)       ## $a0 = 80960000
/* 07990 80956C50 2484C230 */  addiu   $a0, $a0, %lo(D_8095C230)  ## $a0 = 8095C230
/* 07994 80956C54 90890000 */  lbu     $t1, 0x0000($a0)           ## 8095C230
/* 07998 80956C58 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0799C 80956C5C 1000000A */  beq     $zero, $zero, .L80956C88   
/* 079A0 80956C60 A08A0000 */  sb      $t2, 0x0000($a0)           ## 8095C230
.L80956C64:
/* 079A4 80956C64 2484C230 */  addiu   $a0, $a0, %lo(D_8095C230)  ## $a0 = 80958460
/* 079A8 80956C68 00831021 */  addu    $v0, $a0, $v1              
/* 079AC 80956C6C 904BFFFA */  lbu     $t3, -0x0006($v0)          ## FFFFFFFA
/* 079B0 80956C70 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 079B4 80956C74 10000004 */  beq     $zero, $zero, .L80956C88   
/* 079B8 80956C78 A04CFFFA */  sb      $t4, -0x0006($v0)          ## FFFFFFFA
.L80956C7C:
/* 079BC 80956C7C 904DFFFB */  lbu     $t5, -0x0005($v0)          ## FFFFFFFB
/* 079C0 80956C80 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 079C4 80956C84 A04EFFFB */  sb      $t6, -0x0005($v0)          ## FFFFFFFB
.L80956C88:
/* 079C8 80956C88 92180197 */  lbu     $t8, 0x0197($s0)           ## 00000197
/* 079CC 80956C8C 240FFFE2 */  addiu   $t7, $zero, 0xFFE2         ## $t7 = FFFFFFE2
/* 079D0 80956C90 AE0F0198 */  sw      $t7, 0x0198($s0)           ## 00000198
/* 079D4 80956C94 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 079D8 80956C98 10000062 */  beq     $zero, $zero, .L80956E24   
/* 079DC 80956C9C A2190197 */  sb      $t9, 0x0197($s0)           ## 00000197
/* 079E0 80956CA0 8E080198 */  lw      $t0, 0x0198($s0)           ## 00000198
.L80956CA4:
/* 079E4 80956CA4 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 079E8 80956CA8 1520005E */  bne     $t1, $zero, .L80956E24     
/* 079EC 80956CAC AE090198 */  sw      $t1, 0x0198($s0)           ## 00000198
/* 079F0 80956CB0 0C00B55C */  jal     Actor_Kill
              
/* 079F4 80956CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 079F8 80956CB8 1000005B */  beq     $zero, $zero, .L80956E28   
/* 079FC 80956CBC 8FBF0034 */  lw      $ra, 0x0034($sp)           
glabel L80956CC0
.L80956CC0:
/* 07A00 80956CC0 8E0B0198 */  lw      $t3, 0x0198($s0)           ## 00000198
.L80956CC4:
/* 07A04 80956CC4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 07A08 80956CC8 26060030 */  addiu   $a2, $s0, 0x0030           ## $a2 = 00000030
/* 07A0C 80956CCC 256CFFFF */  addiu   $t4, $t3, 0xFFFF           ## $t4 = FFFFFFFF
/* 07A10 80956CD0 15800003 */  bne     $t4, $zero, .L80956CE0     
/* 07A14 80956CD4 AE0C0198 */  sw      $t4, 0x0198($s0)           ## 00000198
/* 07A18 80956CD8 1000002B */  beq     $zero, $zero, .L80956D88   
/* 07A1C 80956CDC A600019C */  sh      $zero, 0x019C($s0)         ## 0000019C
.L80956CE0:
/* 07A20 80956CE0 8E040118 */  lw      $a0, 0x0118($s0)           ## 00000118
/* 07A24 80956CE4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 07A28 80956CE8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 07A2C 80956CEC 0C00D611 */  jal     func_80035844              
/* 07A30 80956CF0 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 07A34 80956CF4 8E040118 */  lw      $a0, 0x0118($s0)           ## 00000118
/* 07A38 80956CF8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 07A3C 80956CFC 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 07A40 80956D00 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 07A44 80956D04 E60001A0 */  swc1    $f0, 0x01A0($s0)           ## 000001A0
/* 07A48 80956D08 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 07A4C 80956D0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 07A50 80956D10 C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 07A54 80956D14 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 07A58 80956D18 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 07A5C 80956D1C 4604903C */  c.lt.s  $f18, $f4                  
/* 07A60 80956D20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07A64 80956D24 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07A68 80956D28 24070050 */  addiu   $a3, $zero, 0x0050         ## $a3 = 00000050
/* 07A6C 80956D2C 45000016 */  bc1f    .L80956D88                 
/* 07A70 80956D30 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 07A74 80956D34 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 07A78 80956D38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 07A7C 80956D3C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 07A80 80956D40 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 07A84 80956D44 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 07A88 80956D48 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 07A8C 80956D4C AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 07A90 80956D50 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 07A94 80956D54 E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 07A98 80956D58 0C253E19 */  jal     func_8094F864              
/* 07A9C 80956D5C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 07AA0 80956D60 1000000A */  beq     $zero, $zero, .L80956D8C   
/* 07AA4 80956D64 8FA40064 */  lw      $a0, 0x0064($sp)           
glabel L80956D68
/* 07AA8 80956D68 8E180198 */  lw      $t8, 0x0198($s0)           ## 00000198
/* 07AAC 80956D6C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 07AB0 80956D70 1720002C */  bne     $t9, $zero, .L80956E24     
/* 07AB4 80956D74 AE190198 */  sw      $t9, 0x0198($s0)           ## 00000198
/* 07AB8 80956D78 0C00B55C */  jal     Actor_Kill
              
/* 07ABC 80956D7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07AC0 80956D80 10000029 */  beq     $zero, $zero, .L80956E28   
/* 07AC4 80956D84 8FBF0034 */  lw      $ra, 0x0034($sp)           
glabel L80956D88
.L80956D88:
/* 07AC8 80956D88 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80956D8C:
/* 07ACC 80956D8C 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 07AD0 80956D90 3C0B8096 */  lui     $t3, %hi(D_809668D2)       ## $t3 = 80960000
/* 07AD4 80956D94 01244821 */  addu    $t1, $t1, $a0              
/* 07AD8 80956D98 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 07ADC 80956D9C 312A0003 */  andi    $t2, $t1, 0x0003           ## $t2 = 00000000
/* 07AE0 80956DA0 15400015 */  bne     $t2, $zero, .L80956DF8     
/* 07AE4 80956DA4 00000000 */  nop
/* 07AE8 80956DA8 816B68D2 */  lb      $t3, %lo(D_809668D2)($t3)  
/* 07AEC 80956DAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07AF0 80956DB0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 07AF4 80956DB4 29610009 */  slti    $at, $t3, 0x0009           
/* 07AF8 80956DB8 1020000F */  beq     $at, $zero, .L80956DF8     
/* 07AFC 80956DBC 24070046 */  addiu   $a3, $zero, 0x0046         ## $a3 = 00000046
/* 07B00 80956DC0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 07B04 80956DC4 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 07B08 80956DC8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 07B0C 80956DCC 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 07B10 80956DD0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 07B14 80956DD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 07B18 80956DD8 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 07B1C 80956DDC 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 07B20 80956DE0 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 07B24 80956DE4 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 07B28 80956DE8 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 07B2C 80956DEC E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 07B30 80956DF0 0C253E19 */  jal     func_8094F864              
/* 07B34 80956DF4 E7A4001C */  swc1    $f4, 0x001C($sp)           
.L80956DF8:
/* 07B38 80956DF8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 07B3C 80956DFC 00000000 */  nop
/* 07B40 80956E00 3C018096 */  lui     $at, %hi(D_8095C7B4)       ## $at = 80960000
/* 07B44 80956E04 C426C7B4 */  lwc1    $f6, %lo(D_8095C7B4)($at)  
/* 07B48 80956E08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07B4C 80956E0C 4606003C */  c.lt.s  $f0, $f6                   
/* 07B50 80956E10 00000000 */  nop
/* 07B54 80956E14 45020004 */  bc1fl   .L80956E28                 
/* 07B58 80956E18 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 07B5C 80956E1C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 07B60 80956E20 24053143 */  addiu   $a1, $zero, 0x3143         ## $a1 = 00003143
.L80956E24:
/* 07B64 80956E24 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80956E28:
/* 07B68 80956E28 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 07B6C 80956E2C 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 07B70 80956E30 03E00008 */  jr      $ra                        
/* 07B74 80956E34 00000000 */  nop
