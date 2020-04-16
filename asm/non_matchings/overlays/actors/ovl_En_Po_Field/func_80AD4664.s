.late_rodata
glabel D_80AD7248
    .float 0.4

.text
glabel func_80AD4664
/* 00B64 80AD4664 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00B68 80AD4668 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00B6C 80AD466C AFBE0070 */  sw      $s8, 0x0070($sp)           
/* 00B70 80AD4670 AFB7006C */  sw      $s7, 0x006C($sp)           
/* 00B74 80AD4674 AFB60068 */  sw      $s6, 0x0068($sp)           
/* 00B78 80AD4678 AFB50064 */  sw      $s5, 0x0064($sp)           
/* 00B7C 80AD467C AFB40060 */  sw      $s4, 0x0060($sp)           
/* 00B80 80AD4680 AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00B84 80AD4684 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00B88 80AD4688 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00B8C 80AD468C AFB00050 */  sw      $s0, 0x0050($sp)           
/* 00B90 80AD4690 F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 00B94 80AD4694 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 00B98 80AD4698 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 00B9C 80AD469C F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00BA0 80AD46A0 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00BA4 80AD46A4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00BA8 80AD46A8 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00BAC 80AD46AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BB0 80AD46B0 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 00BB4 80AD46B4 10400004 */  beq     $v0, $zero, .L80AD46C8     
/* 00BB8 80AD46B8 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 00BBC 80AD46BC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00BC0 80AD46C0 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 00BC4 80AD46C4 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
.L80AD46C8:
/* 00BC8 80AD46C8 1440006E */  bne     $v0, $zero, .L80AD4884     
/* 00BCC 80AD46CC 3C0280AD */  lui     $v0, %hi(D_80AD7100)       ## $v0 = 80AD0000
/* 00BD0 80AD46D0 8C427100 */  lw      $v0, %lo(D_80AD7100)($v0)  
/* 00BD4 80AD46D4 3C1680AD */  lui     $s6, %hi(D_80AD76B0)       ## $s6 = 80AD0000
/* 00BD8 80AD46D8 26D676B0 */  addiu   $s6, $s6, %lo(D_80AD76B0)  ## $s6 = 80AD76B0
/* 00BDC 80AD46DC 18400069 */  blez    $v0, .L80AD4884            
/* 00BE0 80AD46E0 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 00BE4 80AD46E4 3C0180AD */  lui     $at, %hi(D_80AD7248)       ## $at = 80AD0000
/* 00BE8 80AD46E8 C43E7248 */  lwc1    $f30, %lo(D_80AD7248)($at) 
/* 00BEC 80AD46EC 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00BF0 80AD46F0 4481E000 */  mtc1    $at, $f28                  ## $f28 = -32000.00
/* 00BF4 80AD46F4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00BF8 80AD46F8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 1000.00
/* 00BFC 80AD46FC 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00C00 80AD4700 4481C000 */  mtc1    $at, $f24                  ## $f24 = 300.00
/* 00C04 80AD4704 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00C08 80AD4708 4481B000 */  mtc1    $at, $f22                  ## $f22 = 150.00
/* 00C0C 80AD470C 3C1E0080 */  lui     $s8, 0x0080                ## $s8 = 00800000
.L80AD4710:
/* 00C10 80AD4710 86CF0000 */  lh      $t7, 0x0000($s6)           ## 80AD76B0
/* 00C14 80AD4714 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 00C18 80AD4718 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00C1C 80AD471C 00000000 */  nop
/* 00C20 80AD4720 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C24 80AD4724 46083001 */  sub.s   $f0, $f6, $f8              
/* 00C28 80AD4728 46000005 */  abs.s   $f0, $f0                   
/* 00C2C 80AD472C 4616003C */  c.lt.s  $f0, $f22                  
/* 00C30 80AD4730 00000000 */  nop
/* 00C34 80AD4734 45020050 */  bc1fl   .L80AD4878                 
/* 00C38 80AD4738 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 00C3C 80AD473C 86D80004 */  lh      $t8, 0x0004($s6)           ## 80AD76B4
/* 00C40 80AD4740 C632002C */  lwc1    $f18, 0x002C($s1)          ## 0000002C
/* 00C44 80AD4744 3C0580AD */  lui     $a1, %hi(D_80AD76F0)       ## $a1 = 80AD0000
/* 00C48 80AD4748 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00C4C 80AD474C 00B52821 */  addu    $a1, $a1, $s5              
/* 00C50 80AD4750 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 00C54 80AD4754 46805420 */  cvt.s.w $f16, $f10                 
/* 00C58 80AD4758 46128001 */  sub.s   $f0, $f16, $f18            
/* 00C5C 80AD475C 46000005 */  abs.s   $f0, $f0                   
/* 00C60 80AD4760 4616003C */  c.lt.s  $f0, $f22                  
/* 00C64 80AD4764 00000000 */  nop
/* 00C68 80AD4768 45020043 */  bc1fl   .L80AD4878                 
/* 00C6C 80AD476C 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000002
/* 00C70 80AD4770 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00C74 80AD4774 90A576F0 */  lbu     $a1, %lo(D_80AD76F0)($a1)  
/* 00C78 80AD4778 1040000A */  beq     $v0, $zero, .L80AD47A4     
/* 00C7C 80AD477C 26F207C0 */  addiu   $s2, $s7, 0x07C0           ## $s2 = 000007C0
/* 00C80 80AD4780 8E39067C */  lw      $t9, 0x067C($s1)           ## 0000067C
/* 00C84 80AD4784 26130078 */  addiu   $s3, $s0, 0x0078           ## $s3 = 00000078
/* 00C88 80AD4788 26140024 */  addiu   $s4, $s0, 0x0024           ## $s4 = 00000024
/* 00C8C 80AD478C 033E4024 */  and     $t0, $t9, $s8              
/* 00C90 80AD4790 5500003D */  bnel    $t0, $zero, .L80AD4888     
/* 00C94 80AD4794 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 00C98 80AD4798 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 00C9C 80AD479C 10000014 */  beq     $zero, $zero, .L80AD47F0   
/* 00CA0 80AD47A0 4600C506 */  mov.s   $f20, $f24                 
.L80AD47A4:
/* 00CA4 80AD47A4 8E29067C */  lw      $t1, 0x067C($s1)           ## 0000067C
/* 00CA8 80AD47A8 26F207C0 */  addiu   $s2, $s7, 0x07C0           ## $s2 = 000007C0
/* 00CAC 80AD47AC 26130078 */  addiu   $s3, $s0, 0x0078           ## $s3 = 00000078
/* 00CB0 80AD47B0 013E5024 */  and     $t2, $t1, $s8              
/* 00CB4 80AD47B4 15400006 */  bne     $t2, $zero, .L80AD47D0     
/* 00CB8 80AD47B8 26140024 */  addiu   $s4, $s0, 0x0024           ## $s4 = 00000024
/* 00CBC 80AD47BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CC0 80AD47C0 00000000 */  nop
/* 00CC4 80AD47C4 461E003C */  c.lt.s  $f0, $f30                  
/* 00CC8 80AD47C8 00000000 */  nop
/* 00CCC 80AD47CC 45000006 */  bc1f    .L80AD47E8                 
.L80AD47D0:
/* 00CD0 80AD47D0 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 00CD4 80AD47D4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00CD8 80AD47D8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 480.00
/* 00CDC 80AD47DC A60B001C */  sh      $t3, 0x001C($s0)           ## 0000001C
/* 00CE0 80AD47E0 10000003 */  beq     $zero, $zero, .L80AD47F0   
/* 00CE4 80AD47E4 A2150195 */  sb      $s5, 0x0195($s0)           ## 00000195
.L80AD47E8:
/* 00CE8 80AD47E8 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
/* 00CEC 80AD47EC 4600C506 */  mov.s   $f20, $f24                 
.L80AD47F0:
/* 00CF0 80AD47F0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00CF4 80AD47F4 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 00CF8 80AD47F8 46140102 */  mul.s   $f4, $f0, $f20             
/* 00CFC 80AD47FC C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 00D00 80AD4800 46062200 */  add.s   $f8, $f4, $f6              
/* 00D04 80AD4804 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 00D08 80AD4808 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00D0C 80AD480C 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 00D10 80AD4810 46140282 */  mul.s   $f10, $f0, $f20            
/* 00D14 80AD4814 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 00D18 80AD4818 02402025 */  or      $a0, $s2, $zero            ## $a0 = 000007C0
/* 00D1C 80AD481C 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000078
/* 00D20 80AD4820 27A60088 */  addiu   $a2, $sp, 0x0088           ## $a2 = FFFFFFF0
/* 00D24 80AD4824 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00D28 80AD4828 46105480 */  add.s   $f18, $f10, $f16           
/* 00D2C 80AD482C E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 00D30 80AD4830 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00D34 80AD4834 461A2180 */  add.s   $f6, $f4, $f26             
/* 00D38 80AD4838 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 00D3C 80AD483C 0C00F269 */  jal     func_8003C9A4              
/* 00D40 80AD4840 AFB40010 */  sw      $s4, 0x0010($sp)           
/* 00D44 80AD4844 461C0032 */  c.eq.s  $f0, $f28                  
/* 00D48 80AD4848 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00D4C 80AD484C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D50 80AD4850 4503000D */  bc1tl   .L80AD4888                 
/* 00D54 80AD4854 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 00D58 80AD4858 0C00B69E */  jal     func_8002DA78              
/* 00D5C 80AD485C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D60 80AD4860 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00D64 80AD4864 0C2B4F8B */  jal     func_80AD3E2C              
/* 00D68 80AD4868 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D6C 80AD486C 3C0280AD */  lui     $v0, %hi(D_80AD7100)       ## $v0 = 80AD0000
/* 00D70 80AD4870 8C427100 */  lw      $v0, %lo(D_80AD7100)($v0)  
/* 00D74 80AD4874 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000003
.L80AD4878:
/* 00D78 80AD4878 02A2082A */  slt     $at, $s5, $v0              
/* 00D7C 80AD487C 1420FFA4 */  bne     $at, $zero, .L80AD4710     
/* 00D80 80AD4880 26D60006 */  addiu   $s6, $s6, 0x0006           ## $s6 = 80AD76B6
.L80AD4884:
/* 00D84 80AD4884 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AD4888:
/* 00D88 80AD4888 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00D8C 80AD488C D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00D90 80AD4890 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00D94 80AD4894 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 00D98 80AD4898 D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 00D9C 80AD489C D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 00DA0 80AD48A0 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 00DA4 80AD48A4 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 00DA8 80AD48A8 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 00DAC 80AD48AC 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 00DB0 80AD48B0 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 00DB4 80AD48B4 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 00DB8 80AD48B8 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 00DBC 80AD48BC 8FB7006C */  lw      $s7, 0x006C($sp)           
/* 00DC0 80AD48C0 8FBE0070 */  lw      $s8, 0x0070($sp)           
/* 00DC4 80AD48C4 03E00008 */  jr      $ra                        
/* 00DC8 80AD48C8 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
