.rdata
glabel D_80B88B20
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B34
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B48
    .asciz "../z_magic_dark.c"
    .balign 4

.late_rodata
glabel D_80B88BF4
    .float 9.58738019108e-05
    .balign 4

glabel D_80B88BF8
    .float 0.6
    .balign 4

.text
glabel func_80B87A18
/* 00648 80B87A18 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 0064C 80B87A1C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00650 80B87A20 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00654 80B87A24 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00658 80B87A28 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 0065C 80B87A2C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00660 80B87A30 01C57021 */  addu    $t6, $t6, $a1              
/* 00664 80B87A34 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 00668 80B87A38 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0066C 80B87A3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00670 80B87A40 A7AE0086 */  sh      $t6, 0x0086($sp)           
/* 00674 80B87A44 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00678 80B87A48 3C0680B9 */  lui     $a2, %hi(D_80B88B20)       ## $a2 = 80B90000
/* 0067C 80B87A4C 24C68B20 */  addiu   $a2, $a2, %lo(D_80B88B20)  ## $a2 = 80B88B20
/* 00680 80B87A50 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 00684 80B87A54 2407020D */  addiu   $a3, $zero, 0x020D         ## $a3 = 0000020D
/* 00688 80B87A58 0C031AB1 */  jal     Graph_OpenDisps              
/* 0068C 80B87A5C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00690 80B87A60 0C024F61 */  jal     func_80093D84              
/* 00694 80B87A64 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00698 80B87A68 8E421C44 */  lw      $v0, 0x1C44($s2)           ## 00001C44
/* 0069C 80B87A6C C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 006A0 80B87A70 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 006A4 80B87A74 C4440908 */  lwc1    $f4, 0x0908($v0)           ## 00000908
/* 006A8 80B87A78 44814000 */  mtc1    $at, $f8                   ## $f8 = -2.00
/* 006AC 80B87A7C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 006B0 80B87A80 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 006B4 80B87A84 C4460910 */  lwc1    $f6, 0x0910($v0)           ## 00000910
/* 006B8 80B87A88 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 006BC 80B87A8C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 006C0 80B87A90 C440090C */  lwc1    $f0, 0x090C($v0)           ## 0000090C
/* 006C4 80B87A94 460E0081 */  sub.s   $f2, $f0, $f14             
/* 006C8 80B87A98 4608103C */  c.lt.s  $f2, $f8                   
/* 006CC 80B87A9C 00000000 */  nop
/* 006D0 80B87AA0 45020009 */  bc1fl   .L80B87AC8                 
/* 006D4 80B87AA4 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 006D8 80B87AA8 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 006DC 80B87AAC 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 006E0 80B87AB0 00000000 */  nop
/* 006E4 80B87AB4 460C0280 */  add.s   $f10, $f0, $f12            
/* 006E8 80B87AB8 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 006EC 80B87ABC 1000000A */  beq     $zero, $zero, .L80B87AE8   
/* 006F0 80B87AC0 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 006F4 80B87AC4 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
.L80B87AC8:
/* 006F8 80B87AC8 00000000 */  nop
/* 006FC 80B87ACC 4602603C */  c.lt.s  $f12, $f2                  
/* 00700 80B87AD0 00000000 */  nop
/* 00704 80B87AD4 45020005 */  bc1fl   .L80B87AEC                 
/* 00708 80B87AD8 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 0070C 80B87ADC 460C0401 */  sub.s   $f16, $f0, $f12            
/* 00710 80B87AE0 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 00714 80B87AE4 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
.L80B87AE8:
/* 00718 80B87AE8 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
.L80B87AEC:
/* 0071C 80B87AEC 0C034261 */  jal     Matrix_Translate              
/* 00720 80B87AF0 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 00724 80B87AF4 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 00728 80B87AF8 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 0072C 80B87AFC 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 00730 80B87B00 0C0342A3 */  jal     Matrix_Scale              
/* 00734 80B87B04 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00738 80B87B08 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0073C 80B87B0C 3C0180B9 */  lui     $at, %hi(D_80B88BF4)       ## $at = 80B90000
/* 00740 80B87B10 C4268BF4 */  lwc1    $f6, %lo(D_80B88BF4)($at)  
/* 00744 80B87B14 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 00748 80B87B18 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0074C 80B87B1C 46809120 */  cvt.s.w $f4, $f18                  
/* 00750 80B87B20 46062302 */  mul.s   $f12, $f4, $f6             
/* 00754 80B87B24 0C034348 */  jal     Matrix_RotateY              
/* 00758 80B87B28 00000000 */  nop
/* 0075C 80B87B2C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00760 80B87B30 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00764 80B87B34 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00768 80B87B38 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0076C 80B87B3C AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 00770 80B87B40 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00774 80B87B44 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00778 80B87B48 3C0580B9 */  lui     $a1, %hi(D_80B88B34)       ## $a1 = 80B90000
/* 0077C 80B87B4C 24A58B34 */  addiu   $a1, $a1, %lo(D_80B88B34)  ## $a1 = 80B88B34
/* 00780 80B87B50 24060229 */  addiu   $a2, $zero, 0x0229         ## $a2 = 00000229
/* 00784 80B87B54 0C0346A2 */  jal     Matrix_NewMtx              
/* 00788 80B87B58 AFA20064 */  sw      $v0, 0x0064($sp)           
/* 0078C 80B87B5C 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00790 80B87B60 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 00794 80B87B64 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00798 80B87B68 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0079C 80B87B6C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 007A0 80B87B70 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 007A4 80B87B74 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 007A8 80B87B78 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 007AC 80B87B7C 920B014E */  lbu     $t3, 0x014E($s0)           ## 0000014E
/* 007B0 80B87B80 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 007B4 80B87B84 05610004 */  bgez    $t3, .L80B87B98            
/* 007B8 80B87B88 468042A0 */  cvt.s.w $f10, $f8                  
/* 007BC 80B87B8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 4294967296.00
/* 007C0 80B87B90 00000000 */  nop
/* 007C4 80B87B94 46105280 */  add.s   $f10, $f10, $f16           
.L80B87B98:
/* 007C8 80B87B98 3C0180B9 */  lui     $at, %hi(D_80B88BF8)       ## $at = 80B90000
/* 007CC 80B87B9C C4328BF8 */  lwc1    $f18, %lo(D_80B88BF8)($at) 
/* 007D0 80B87BA0 3C01AAFF */  lui     $at, 0xAAFF                ## $at = AAFF0000
/* 007D4 80B87BA4 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = AAFFFF00
/* 007D8 80B87BA8 46125102 */  mul.s   $f4, $f10, $f18            
/* 007DC 80B87BAC 3C0A0064 */  lui     $t2, 0x0064                ## $t2 = 00640000
/* 007E0 80B87BB0 354AFF80 */  ori     $t2, $t2, 0xFF80           ## $t2 = 0064FF80
/* 007E4 80B87BB4 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 007E8 80B87BB8 3C0C80B9 */  lui     $t4, %hi(D_80B88A20)       ## $t4 = 80B90000
/* 007EC 80B87BBC 258C8A20 */  addiu   $t4, $t4, %lo(D_80B88A20)  ## $t4 = 80B88A20
/* 007F0 80B87BC0 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 007F4 80B87BC4 4600218D */  trunc.w.s $f6, $f4                   
/* 007F8 80B87BC8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007FC 80B87BCC 440E3000 */  mfc1    $t6, $f6                   
/* 00800 80B87BD0 00000000 */  nop
/* 00804 80B87BD4 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00808 80B87BD8 01E1C025 */  or      $t8, $t7, $at              ## $t8 = AAFFFF00
/* 0080C 80B87BDC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 00810 80B87BE0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00814 80B87BE4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00818 80B87BE8 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 0081C 80B87BEC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00820 80B87BF0 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 00824 80B87BF4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00828 80B87BF8 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 0082C 80B87BFC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00830 80B87C00 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 00834 80B87C04 24090040 */  addiu   $t1, $zero, 0x0040         ## $t1 = 00000040
/* 00838 80B87C08 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0083C 80B87C0C AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 00840 80B87C10 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00844 80B87C14 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00848 80B87C18 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0084C 80B87C1C 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00850 80B87C20 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00854 80B87C24 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 00858 80B87C28 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0085C 80B87C2C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00860 80B87C30 97A30086 */  lhu     $v1, 0x0086($sp)           
/* 00864 80B87C34 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 00868 80B87C38 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 0086C 80B87C3C 00030823 */  subu    $at, $zero, $v1            
/* 00870 80B87C40 0001C900 */  sll     $t9, $at,  4               
/* 00874 80B87C44 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00878 80B87C48 00013880 */  sll     $a3, $at,  2               
/* 0087C 80B87C4C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00880 80B87C50 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00884 80B87C54 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00888 80B87C58 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0088C 80B87C5C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00890 80B87C60 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00894 80B87C64 00033040 */  sll     $a2, $v1,  1               
/* 00898 80B87C68 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0089C 80B87C6C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 008A0 80B87C70 3C0D80B9 */  lui     $t5, %hi(D_80B88AD0)       ## $t5 = 80B90000
/* 008A4 80B87C74 25AD8AD0 */  addiu   $t5, $t5, %lo(D_80B88AD0)  ## $t5 = 80B88AD0
/* 008A8 80B87C78 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 008AC 80B87C7C AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 008B0 80B87C80 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 008B4 80B87C84 3C0680B9 */  lui     $a2, %hi(D_80B88B48)       ## $a2 = 80B90000
/* 008B8 80B87C88 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 008BC 80B87C8C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 008C0 80B87C90 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 008C4 80B87C94 24C68B48 */  addiu   $a2, $a2, %lo(D_80B88B48)  ## $a2 = 80B88B48
/* 008C8 80B87C98 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 008CC 80B87C9C 0C031AD5 */  jal     Graph_CloseDisps              
/* 008D0 80B87CA0 2407023A */  addiu   $a3, $zero, 0x023A         ## $a3 = 0000023A
/* 008D4 80B87CA4 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 008D8 80B87CA8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 008DC 80B87CAC 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 008E0 80B87CB0 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 008E4 80B87CB4 03E00008 */  jr      $ra                        
/* 008E8 80B87CB8 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000


