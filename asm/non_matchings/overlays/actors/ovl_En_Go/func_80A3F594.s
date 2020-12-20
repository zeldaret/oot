glabel func_80A3F594
/* 01024 80A3F594 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 01028 80A3F598 3C0E80A4 */  lui     $t6, %hi(D_80A41B78)       ## $t6 = 80A40000
/* 0102C 80A3F59C AFBF006C */  sw      $ra, 0x006C($sp)           
/* 01030 80A3F5A0 AFB70068 */  sw      $s7, 0x0068($sp)           
/* 01034 80A3F5A4 AFB60064 */  sw      $s6, 0x0064($sp)           
/* 01038 80A3F5A8 AFB50060 */  sw      $s5, 0x0060($sp)           
/* 0103C 80A3F5AC AFB4005C */  sw      $s4, 0x005C($sp)           
/* 01040 80A3F5B0 AFB30058 */  sw      $s3, 0x0058($sp)           
/* 01044 80A3F5B4 AFB20054 */  sw      $s2, 0x0054($sp)           
/* 01048 80A3F5B8 AFB10050 */  sw      $s1, 0x0050($sp)           
/* 0104C 80A3F5BC AFB0004C */  sw      $s0, 0x004C($sp)           
/* 01050 80A3F5C0 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 01054 80A3F5C4 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 01058 80A3F5C8 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 0105C 80A3F5CC F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 01060 80A3F5D0 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 01064 80A3F5D4 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 01068 80A3F5D8 25CE1B78 */  addiu   $t6, $t6, %lo(D_80A41B78)  ## $t6 = 80A41B78
/* 0106C 80A3F5DC 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80A41B78
/* 01070 80A3F5E0 27B40094 */  addiu   $s4, $sp, 0x0094           ## $s4 = FFFFFFF4
/* 01074 80A3F5E4 3C1980A4 */  lui     $t9, %hi(D_80A41B84)       ## $t9 = 80A40000
/* 01078 80A3F5E8 AE980000 */  sw      $t8, 0x0000($s4)           ## FFFFFFF4
/* 0107C 80A3F5EC 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80A41B7C
/* 01080 80A3F5F0 27391B84 */  addiu   $t9, $t9, %lo(D_80A41B84)  ## $t9 = 80A41B84
/* 01084 80A3F5F4 27B60088 */  addiu   $s6, $sp, 0x0088           ## $s6 = FFFFFFE8
/* 01088 80A3F5F8 AE8F0004 */  sw      $t7, 0x0004($s4)           ## FFFFFFF8
/* 0108C 80A3F5FC 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80A41B80
/* 01090 80A3F600 3C0A80A4 */  lui     $t2, %hi(D_80A41B90)       ## $t2 = 80A40000
/* 01094 80A3F604 254A1B90 */  addiu   $t2, $t2, %lo(D_80A41B90)  ## $t2 = 80A41B90
/* 01098 80A3F608 AE980008 */  sw      $t8, 0x0008($s4)           ## FFFFFFFC
/* 0109C 80A3F60C 8F290000 */  lw      $t1, 0x0000($t9)           ## 80A41B84
/* 010A0 80A3F610 27B7007C */  addiu   $s7, $sp, 0x007C           ## $s7 = FFFFFFDC
/* 010A4 80A3F614 4486D000 */  mtc1    $a2, $f26                  ## $f26 = 0.00
/* 010A8 80A3F618 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFE8
/* 010AC 80A3F61C 8F280004 */  lw      $t0, 0x0004($t9)           ## 80A41B88
/* 010B0 80A3F620 4487E000 */  mtc1    $a3, $f28                  ## $f28 = 0.00
/* 010B4 80A3F624 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 010B8 80A3F628 AEC80004 */  sw      $t0, 0x0004($s6)           ## FFFFFFEC
/* 010BC 80A3F62C 8F290008 */  lw      $t1, 0x0008($t9)           ## 80A41B8C
/* 010C0 80A3F630 30B500FF */  andi    $s5, $a1, 0x00FF           ## $s5 = 00000000
/* 010C4 80A3F634 AEC90008 */  sw      $t1, 0x0008($s6)           ## FFFFFFF0
/* 010C8 80A3F638 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80A41B90
/* 010CC 80A3F63C AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFDC
/* 010D0 80A3F640 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80A41B94
/* 010D4 80A3F644 AEEB0004 */  sw      $t3, 0x0004($s7)           ## FFFFFFE0
/* 010D8 80A3F648 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80A41B98
/* 010DC 80A3F64C AEEC0008 */  sw      $t4, 0x0008($s7)           ## FFFFFFE4
/* 010E0 80A3F650 8C8E0024 */  lw      $t6, 0x0024($a0)           ## 00000024
/* 010E4 80A3F654 AE8E0000 */  sw      $t6, 0x0000($s4)           ## FFFFFFF4
/* 010E8 80A3F658 8C8D0028 */  lw      $t5, 0x0028($a0)           ## 00000028
/* 010EC 80A3F65C AE8D0004 */  sw      $t5, 0x0004($s4)           ## FFFFFFF8
/* 010F0 80A3F660 8C8E002C */  lw      $t6, 0x002C($a0)           ## 0000002C
/* 010F4 80A3F664 AE8E0008 */  sw      $t6, 0x0008($s4)           ## FFFFFFFC
/* 010F8 80A3F668 C4840080 */  lwc1    $f4, 0x0080($a0)           ## 00000080
/* 010FC 80A3F66C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01100 80A3F670 E7A40098 */  swc1    $f4, 0x0098($sp)           
/* 01104 80A3F674 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01108 80A3F678 4481C000 */  mtc1    $at, $f24                  ## $f24 = 0.50
/* 0110C 80A3F67C 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01110 80A3F680 44814000 */  mtc1    $at, $f8                   ## $f8 = 65536.00
/* 01114 80A3F684 46180181 */  sub.s   $f6, $f0, $f24             
/* 01118 80A3F688 8FA200B0 */  lw      $v0, 0x00B0($sp)           
/* 0111C 80A3F68C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 01120 80A3F690 C7B600B4 */  lwc1    $f22, 0x00B4($sp)          
/* 01124 80A3F694 46083282 */  mul.s   $f10, $f6, $f8             
/* 01128 80A3F698 C7B400B8 */  lwc1    $f20, 0x00B8($sp)          
/* 0112C 80A3F69C 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 01130 80A3F6A0 4600540D */  trunc.w.s $f16, $f10                 
/* 01134 80A3F6A4 44108000 */  mfc1    $s0, $f16                  
/* 01138 80A3F6A8 00000000 */  nop
/* 0113C 80A3F6AC 00108400 */  sll     $s0, $s0, 16               
/* 01140 80A3F6B0 04400032 */  bltz    $v0, .L80A3F77C            
/* 01144 80A3F6B4 00108403 */  sra     $s0, $s0, 16               
/* 01148 80A3F6B8 0302001A */  div     $zero, $t8, $v0            
/* 0114C 80A3F6BC 00009812 */  mflo    $s3                        
/* 01150 80A3F6C0 00139C00 */  sll     $s3, $s3, 16               
/* 01154 80A3F6C4 00139C03 */  sra     $s3, $s3, 16               
/* 01158 80A3F6C8 14400002 */  bne     $v0, $zero, .L80A3F6D4     
/* 0115C 80A3F6CC 00000000 */  nop
/* 01160 80A3F6D0 0007000D */  break 7
.L80A3F6D4:
/* 01164 80A3F6D4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 01168 80A3F6D8 14410004 */  bne     $v0, $at, .L80A3F6EC       
/* 0116C 80A3F6DC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01170 80A3F6E0 17010002 */  bne     $t8, $at, .L80A3F6EC       
/* 01174 80A3F6E4 00000000 */  nop
/* 01178 80A3F6E8 0006000D */  break 6
.L80A3F6EC:
/* 0117C 80A3F6EC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01180 80A3F6F0 00000000 */  nop
/* 01184 80A3F6F4 46180481 */  sub.s   $f18, $f0, $f24            
/* 01188 80A3F6F8 46149102 */  mul.s   $f4, $f18, $f20            
/* 0118C 80A3F6FC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01190 80A3F700 E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 01194 80A3F704 46180181 */  sub.s   $f6, $f0, $f24             
/* 01198 80A3F708 00102400 */  sll     $a0, $s0, 16               
/* 0119C 80A3F70C 00042403 */  sra     $a0, $a0, 16               
/* 011A0 80A3F710 46143202 */  mul.s   $f8, $f6, $f20             
/* 011A4 80A3F714 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 011A8 80A3F718 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 011AC 80A3F71C 46160282 */  mul.s   $f10, $f0, $f22            
/* 011B0 80A3F720 C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 011B4 80A3F724 00102400 */  sll     $a0, $s0, 16               
/* 011B8 80A3F728 00042403 */  sra     $a0, $a0, 16               
/* 011BC 80A3F72C 46105480 */  add.s   $f18, $f10, $f16           
/* 011C0 80A3F730 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 011C4 80A3F734 E7B20094 */  swc1    $f18, 0x0094($sp)          
/* 011C8 80A3F738 46160102 */  mul.s   $f4, $f0, $f22             
/* 011CC 80A3F73C C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 011D0 80A3F740 E7BC0018 */  swc1    $f28, 0x0018($sp)          
/* 011D4 80A3F744 E7BA0014 */  swc1    $f26, 0x0014($sp)          
/* 011D8 80A3F748 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 011DC 80A3F74C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011E0 80A3F750 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFFF4
/* 011E4 80A3F754 46062200 */  add.s   $f8, $f4, $f6              
/* 011E8 80A3F758 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFE8
/* 011EC 80A3F75C 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFDC
/* 011F0 80A3F760 0C290581 */  jal     func_80A41604              
/* 011F4 80A3F764 E7A8009C */  swc1    $f8, 0x009C($sp)           
/* 011F8 80A3F768 02138021 */  addu    $s0, $s0, $s3              
/* 011FC 80A3F76C 00108400 */  sll     $s0, $s0, 16               
/* 01200 80A3F770 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = FFFFFFFF
/* 01204 80A3F774 0641FFDD */  bgez    $s2, .L80A3F6EC            
/* 01208 80A3F778 00108403 */  sra     $s0, $s0, 16               
.L80A3F77C:
/* 0120C 80A3F77C 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 01210 80A3F780 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01214 80A3F784 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 01218 80A3F788 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 0121C 80A3F78C D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 01220 80A3F790 D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 01224 80A3F794 8FB0004C */  lw      $s0, 0x004C($sp)           
/* 01228 80A3F798 8FB10050 */  lw      $s1, 0x0050($sp)           
/* 0122C 80A3F79C 8FB20054 */  lw      $s2, 0x0054($sp)           
/* 01230 80A3F7A0 8FB30058 */  lw      $s3, 0x0058($sp)           
/* 01234 80A3F7A4 8FB4005C */  lw      $s4, 0x005C($sp)           
/* 01238 80A3F7A8 8FB50060 */  lw      $s5, 0x0060($sp)           
/* 0123C 80A3F7AC 8FB60064 */  lw      $s6, 0x0064($sp)           
/* 01240 80A3F7B0 8FB70068 */  lw      $s7, 0x0068($sp)           
/* 01244 80A3F7B4 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000
/* 01248 80A3F7B8 03E00008 */  jr      $ra                        
/* 0124C 80A3F7BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
