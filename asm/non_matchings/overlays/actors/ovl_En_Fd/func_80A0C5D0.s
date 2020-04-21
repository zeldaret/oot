glabel func_80A0C5D0
/* 00F10 80A0C5D0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00F14 80A0C5D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F18 80A0C5D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F1C 80A0C5DC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00F20 80A0C5E0 848E04BE */  lh      $t6, 0x04BE($a0)           ## 000004BE
/* 00F24 80A0C5E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F28 80A0C5E8 2405317E */  addiu   $a1, $zero, 0x317E         ## $a1 = 0000317E
/* 00F2C 80A0C5EC 29C1001F */  slti    $at, $t6, 0x001F           
/* 00F30 80A0C5F0 10200008 */  beq     $at, $zero, .L80A0C614     
/* 00F34 80A0C5F4 00000000 */  nop
/* 00F38 80A0C5F8 848F04C2 */  lh      $t7, 0x04C2($a0)           ## 000004C2
/* 00F3C 80A0C5FC 15E00005 */  bne     $t7, $zero, .L80A0C614     
/* 00F40 80A0C600 00000000 */  nop
/* 00F44 80A0C604 0C00BE5D */  jal     func_8002F974              
/* 00F48 80A0C608 24053183 */  addiu   $a1, $zero, 0x3183         ## $a1 = 00003183
/* 00F4C 80A0C60C 10000004 */  beq     $zero, $zero, .L80A0C620   
/* 00F50 80A0C610 860204BE */  lh      $v0, 0x04BE($s0)           ## 000004BE
.L80A0C614:
/* 00F54 80A0C614 0C00BE5D */  jal     func_8002F974              
/* 00F58 80A0C618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F5C 80A0C61C 860204BE */  lh      $v0, 0x04BE($s0)           ## 000004BE
.L80A0C620:
/* 00F60 80A0C620 14400003 */  bne     $v0, $zero, .L80A0C630     
/* 00F64 80A0C624 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00F68 80A0C628 10000004 */  beq     $zero, $zero, .L80A0C63C   
/* 00F6C 80A0C62C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A0C630:
/* 00F70 80A0C630 A61804BE */  sh      $t8, 0x04BE($s0)           ## 000004BE
/* 00F74 80A0C634 860204BE */  lh      $v0, 0x04BE($s0)           ## 000004BE
/* 00F78 80A0C638 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A0C63C:
/* 00F7C 80A0C63C 50600020 */  beql    $v1, $zero, .L80A0C6C0     
/* 00F80 80A0C640 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 00F84 80A0C644 860804BA */  lh      $t0, 0x04BA($s0)           ## 000004BA
/* 00F88 80A0C648 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00F8C 80A0C64C 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00F90 80A0C650 00084B40 */  sll     $t1, $t0, 13               
/* 00F94 80A0C654 03295021 */  addu    $t2, $t9, $t1              
/* 00F98 80A0C658 1441005F */  bne     $v0, $at, .L80A0C7D8       
/* 00F9C 80A0C65C A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 00FA0 80A0C660 860B04C2 */  lh      $t3, 0x04C2($s0)           ## 000004C2
/* 00FA4 80A0C664 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00FA8 80A0C668 5560005C */  bnel    $t3, $zero, .L80A0C7DC     
/* 00FAC 80A0C66C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FB0 80A0C670 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 00FB4 80A0C674 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00FB8 80A0C678 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00FBC 80A0C67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC0 80A0C680 4606203C */  c.lt.s  $f4, $f6                   
/* 00FC4 80A0C684 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00FC8 80A0C688 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00FCC 80A0C68C 45000007 */  bc1f    .L80A0C6AC                 
/* 00FD0 80A0C690 00000000 */  nop
/* 00FD4 80A0C694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FD8 80A0C698 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00FDC 80A0C69C 0C282DEE */  jal     func_80A0B7B8              
/* 00FE0 80A0C6A0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00FE4 80A0C6A4 1000004D */  beq     $zero, $zero, .L80A0C7DC   
/* 00FE8 80A0C6A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A0C6AC:
/* 00FEC 80A0C6AC 0C282DEE */  jal     func_80A0B7B8              
/* 00FF0 80A0C6B0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00FF4 80A0C6B4 10000049 */  beq     $zero, $zero, .L80A0C7DC   
/* 00FF8 80A0C6B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FFC 80A0C6BC 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
.L80A0C6C0:
/* 01000 80A0C6C0 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 01004 80A0C6C4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 01008 80A0C6C8 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 0100C 80A0C6CC 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 01010 80A0C6D0 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 01014 80A0C6D4 468040A0 */  cvt.s.w $f2, $f8                   
/* 01018 80A0C6D8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 0101C 80A0C6DC 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 01020 80A0C6E0 3C074600 */  lui     $a3, 0x4600                ## $a3 = 46000000
/* 01024 80A0C6E4 E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 01028 80A0C6E8 46805420 */  cvt.s.w $f16, $f10                 
/* 0102C 80A0C6EC 46101081 */  sub.s   $f2, $f2, $f16             
/* 01030 80A0C6F0 46001005 */  abs.s   $f0, $f2                   
/* 01034 80A0C6F4 46001083 */  div.s   $f2, $f2, $f0              
/* 01038 80A0C6F8 44050000 */  mfc1    $a1, $f0                   
/* 0103C 80A0C6FC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01040 80A0C700 E7A20034 */  swc1    $f2, 0x0034($sp)           
/* 01044 80A0C704 C7A20034 */  lwc1    $f2, 0x0034($sp)           
/* 01048 80A0C708 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 0104C 80A0C70C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01050 80A0C710 46022182 */  mul.s   $f6, $f4, $f2              
/* 01054 80A0C714 4600320D */  trunc.w.s $f8, $f6                   
/* 01058 80A0C718 E7A6002C */  swc1    $f6, 0x002C($sp)           
/* 0105C 80A0C71C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 01060 80A0C720 44194000 */  mfc1    $t9, $f8                   
/* 01064 80A0C724 00000000 */  nop
/* 01068 80A0C728 01D94821 */  addu    $t1, $t6, $t9              
/* 0106C 80A0C72C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 01070 80A0C730 C7A0002C */  lwc1    $f0, 0x002C($sp)           
/* 01074 80A0C734 46000005 */  abs.s   $f0, $f0                   
/* 01078 80A0C738 4600028D */  trunc.w.s $f10, $f0                  
/* 0107C 80A0C73C E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 01080 80A0C740 440B5000 */  mfc1    $t3, $f10                  
/* 01084 80A0C744 00000000 */  nop
/* 01088 80A0C748 2961012D */  slti    $at, $t3, 0x012D           
/* 0108C 80A0C74C 50200004 */  beql    $at, $zero, .L80A0C760     
/* 01090 80A0C750 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 01094 80A0C754 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 01098 80A0C758 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 0109C 80A0C75C 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
.L80A0C760:
/* 010A0 80A0C760 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 010A4 80A0C764 55AF001D */  bnel    $t5, $t7, .L80A0C7DC       
/* 010A8 80A0C768 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010AC 80A0C76C 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 010B0 80A0C770 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 010B4 80A0C774 861804BA */  lh      $t8, 0x04BA($s0)           ## 000004BA
/* 010B8 80A0C778 A60204B6 */  sh      $v0, 0x04B6($s0)           ## 000004B6
/* 010BC 80A0C77C 3408FFFF */  ori     $t0, $zero, 0xFFFF         ## $t0 = 0000FFFF
/* 010C0 80A0C780 07030004 */  bgezl   $t8, .L80A0C794            
/* 010C4 80A0C784 A60004B8 */  sh      $zero, 0x04B8($s0)         ## 000004B8
/* 010C8 80A0C788 10000002 */  beq     $zero, $zero, .L80A0C794   
/* 010CC 80A0C78C A60804B8 */  sh      $t0, 0x04B8($s0)           ## 000004B8
/* 010D0 80A0C790 A60004B8 */  sh      $zero, 0x04B8($s0)         ## 000004B8
.L80A0C794:
/* 010D4 80A0C794 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 010D8 80A0C798 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 010DC 80A0C79C 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 010E0 80A0C7A0 8DD9009C */  lw      $t9, 0x009C($t6)           ## 0000009C
/* 010E4 80A0C7A4 33290007 */  andi    $t1, $t9, 0x0007           ## $t1 = 00000000
/* 010E8 80A0C7A8 252A0002 */  addiu   $t2, $t1, 0x0002           ## $t2 = 00000002
/* 010EC 80A0C7AC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 010F0 80A0C7B0 A60A04C0 */  sh      $t2, 0x04C0($s0)           ## 000004C0
/* 010F4 80A0C7B4 3C0580A1 */  lui     $a1, %hi(D_80A0DFEC)       ## $a1 = 80A10000
/* 010F8 80A0C7B8 A60204BE */  sh      $v0, 0x04BE($s0)           ## 000004BE
/* 010FC 80A0C7BC 24A5DFEC */  addiu   $a1, $a1, %lo(D_80A0DFEC)  ## $a1 = 80A0DFEC
/* 01100 80A0C7C0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01104 80A0C7C4 0C00D3B0 */  jal     func_80034EC0              
/* 01108 80A0C7C8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 0110C 80A0C7CC 3C0B80A1 */  lui     $t3, %hi(func_80A0C7EC)    ## $t3 = 80A10000
/* 01110 80A0C7D0 256BC7EC */  addiu   $t3, $t3, %lo(func_80A0C7EC) ## $t3 = 80A0C7EC
/* 01114 80A0C7D4 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L80A0C7D8:
/* 01118 80A0C7D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A0C7DC:
/* 0111C 80A0C7DC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01120 80A0C7E0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01124 80A0C7E4 03E00008 */  jr      $ra                        
/* 01128 80A0C7E8 00000000 */  nop
