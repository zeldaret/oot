.rdata
glabel D_80AD719C
    .asciz "../z_en_po_field.c"
    .balign 4

.late_rodata
glabel D_80AD72A0
    .float 0.01

glabel D_80AD72A4
 .word 0x3F48C8C9

.text
glabel func_80AD66D0
/* 02BD0 80AD66D0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 02BD4 80AD66D4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02BD8 80AD66D8 8FB00068 */  lw      $s0, 0x0068($sp)           
/* 02BDC 80AD66DC 3C0E80AD */  lui     $t6, %hi(func_80AD4ED8)    ## $t6 = 80AD0000
/* 02BE0 80AD66E0 25CE4ED8 */  addiu   $t6, $t6, %lo(func_80AD4ED8) ## $t6 = 80AD4ED8
/* 02BE4 80AD66E4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02BE8 80AD66E8 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 02BEC 80AD66EC AFA5005C */  sw      $a1, 0x005C($sp)           
/* 02BF0 80AD66F0 AFA60060 */  sw      $a2, 0x0060($sp)           
/* 02BF4 80AD66F4 AFA70064 */  sw      $a3, 0x0064($sp)           
/* 02BF8 80AD66F8 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 02BFC 80AD66FC 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 02C00 80AD6700 55CF0020 */  bnel    $t6, $t7, .L80AD6784       
/* 02C04 80AD6704 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 02C08 80AD6708 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 02C0C 80AD670C 2B010002 */  slti    $at, $t8, 0x0002           
/* 02C10 80AD6710 1420001B */  bne     $at, $zero, .L80AD6780     
/* 02C14 80AD6714 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02C18 80AD6718 14A10019 */  bne     $a1, $at, .L80AD6780       
/* 02C1C 80AD671C 8FA7006C */  lw      $a3, 0x006C($sp)           
/* 02C20 80AD6720 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 02C24 80AD6724 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 02C28 80AD6728 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 02C2C 80AD672C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02C30 80AD6730 ACE80000 */  sw      $t0, 0x0000($a3)           ## 00000000
/* 02C34 80AD6734 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02C38 80AD6738 8FAA0058 */  lw      $t2, 0x0058($sp)           
/* 02C3C 80AD673C 3C0580AD */  lui     $a1, %hi(D_80AD719C)       ## $a1 = 80AD0000
/* 02C40 80AD6740 24A5719C */  addiu   $a1, $a1, %lo(D_80AD719C)  ## $a1 = 80AD719C
/* 02C44 80AD6744 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 02C48 80AD6748 2406077C */  addiu   $a2, $zero, 0x077C         ## $a2 = 0000077C
/* 02C4C 80AD674C 0C0346A2 */  jal     Matrix_NewMtx              
/* 02C50 80AD6750 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 02C54 80AD6754 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 02C58 80AD6758 8FA7006C */  lw      $a3, 0x006C($sp)           
/* 02C5C 80AD675C 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 02C60 80AD6760 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02C64 80AD6764 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 02C68 80AD6768 25AD66D0 */  addiu   $t5, $t5, 0x66D0           ## $t5 = 060066D0
/* 02C6C 80AD676C 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 02C70 80AD6770 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02C74 80AD6774 ACEB0000 */  sw      $t3, 0x0000($a3)           ## 00000000
/* 02C78 80AD6778 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 02C7C 80AD677C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L80AD6780:
/* 02C80 80AD6780 8FAE005C */  lw      $t6, 0x005C($sp)           
.L80AD6784:
/* 02C84 80AD6784 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02C88 80AD6788 3C0480AD */  lui     $a0, %hi(D_80AD714C)       ## $a0 = 80AD0000
/* 02C8C 80AD678C 15C10050 */  bne     $t6, $at, .L80AD68D0       
/* 02C90 80AD6790 2484714C */  addiu   $a0, $a0, %lo(D_80AD714C)  ## $a0 = 80AD714C
/* 02C94 80AD6794 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C98 80AD6798 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 02C9C 80AD679C 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 02CA0 80AD67A0 8E180190 */  lw      $t8, 0x0190($s0)           ## 00000190
/* 02CA4 80AD67A4 15F80012 */  bne     $t7, $t8, .L80AD67F0       
/* 02CA8 80AD67A8 00000000 */  nop
/* 02CAC 80AD67AC 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
/* 02CB0 80AD67B0 2B210013 */  slti    $at, $t9, 0x0013           
/* 02CB4 80AD67B4 1420000E */  bne     $at, $zero, .L80AD67F0     
/* 02CB8 80AD67B8 00000000 */  nop
/* 02CBC 80AD67BC C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 02CC0 80AD67C0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02CC4 80AD67C4 3C0180AD */  lui     $at, %hi(D_80AD72A0)       ## $at = 80AD0000
/* 02CC8 80AD67C8 46002032 */  c.eq.s  $f4, $f0                   
/* 02CCC 80AD67CC 00000000 */  nop
/* 02CD0 80AD67D0 45010007 */  bc1t    .L80AD67F0                 
/* 02CD4 80AD67D4 00000000 */  nop
/* 02CD8 80AD67D8 C42672A0 */  lwc1    $f6, %lo(D_80AD72A0)($at)  
/* 02CDC 80AD67DC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02CE0 80AD67E0 46003303 */  div.s   $f12, $f6, $f0             
/* 02CE4 80AD67E4 44066000 */  mfc1    $a2, $f12                  
/* 02CE8 80AD67E8 0C0342A3 */  jal     Matrix_Scale              
/* 02CEC 80AD67EC 46006386 */  mov.s   $f14, $f12                 
.L80AD67F0:
/* 02CF0 80AD67F0 3C0480AD */  lui     $a0, %hi(D_80AD7700)       ## $a0 = 80AD0000
/* 02CF4 80AD67F4 0C034236 */  jal     Matrix_Get              
/* 02CF8 80AD67F8 24847700 */  addiu   $a0, $a0, %lo(D_80AD7700)  ## $a0 = 80AD7700
/* 02CFC 80AD67FC 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 02D00 80AD6800 8E090190 */  lw      $t1, 0x0190($s0)           ## 00000190
/* 02D04 80AD6804 3C0480AD */  lui     $a0, %hi(D_80AD7700)       ## $a0 = 80AD0000
/* 02D08 80AD6808 24847700 */  addiu   $a0, $a0, %lo(D_80AD7700)  ## $a0 = 80AD7700
/* 02D0C 80AD680C 5509000C */  bnel    $t0, $t1, .L80AD6840       
/* 02D10 80AD6810 920E0218 */  lbu     $t6, 0x0218($s0)           ## 00000218
/* 02D14 80AD6814 860A0196 */  lh      $t2, 0x0196($s0)           ## 00000196
/* 02D18 80AD6818 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 02D1C 80AD681C 55410008 */  bnel    $t2, $at, .L80AD6840       
/* 02D20 80AD6820 920E0218 */  lbu     $t6, 0x0218($s0)           ## 00000218
/* 02D24 80AD6824 C4880030 */  lwc1    $f8, 0x0030($a0)           ## 80AD7730
/* 02D28 80AD6828 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 02D2C 80AD682C C48A0034 */  lwc1    $f10, 0x0034($a0)          ## 80AD7734
/* 02D30 80AD6830 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 02D34 80AD6834 C4900038 */  lwc1    $f16, 0x0038($a0)          ## 80AD7738
/* 02D38 80AD6838 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 02D3C 80AD683C 920E0218 */  lbu     $t6, 0x0218($s0)           ## 00000218
.L80AD6840:
/* 02D40 80AD6840 C7B20040 */  lwc1    $f18, 0x0040($sp)          
/* 02D44 80AD6844 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 02D48 80AD6848 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02D4C 80AD684C 920F0219 */  lbu     $t7, 0x0219($s0)           ## 00000219
/* 02D50 80AD6850 C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 02D54 80AD6854 4600910D */  trunc.w.s $f4, $f18                  
/* 02D58 80AD6858 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02D5C 80AD685C 9218021A */  lbu     $t8, 0x021A($s0)           ## 0000021A
/* 02D60 80AD6860 4600320D */  trunc.w.s $f8, $f6                   
/* 02D64 80AD6864 44052000 */  mfc1    $a1, $f4                   
/* 02D68 80AD6868 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 02D6C 80AD686C 4600540D */  trunc.w.s $f16, $f10                 
/* 02D70 80AD6870 9219021B */  lbu     $t9, 0x021B($s0)           ## 0000021B
/* 02D74 80AD6874 44064000 */  mfc1    $a2, $f8                   
/* 02D78 80AD6878 00052C00 */  sll     $a1, $a1, 16               
/* 02D7C 80AD687C 44078000 */  mfc1    $a3, $f16                  
/* 02D80 80AD6880 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 02D84 80AD6884 00063400 */  sll     $a2, $a2, 16               
/* 02D88 80AD6888 00073C00 */  sll     $a3, $a3, 16               
/* 02D8C 80AD688C 00073C03 */  sra     $a3, $a3, 16               
/* 02D90 80AD6890 00063403 */  sra     $a2, $a2, 16               
/* 02D94 80AD6894 00052C03 */  sra     $a1, $a1, 16               
/* 02D98 80AD6898 26040234 */  addiu   $a0, $s0, 0x0234           ## $a0 = 00000234
/* 02D9C 80AD689C 07210005 */  bgez    $t9, .L80AD68B4            
/* 02DA0 80AD68A0 46809120 */  cvt.s.w $f4, $f18                  
/* 02DA4 80AD68A4 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 02DA8 80AD68A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 02DAC 80AD68AC 00000000 */  nop
/* 02DB0 80AD68B0 46062100 */  add.s   $f4, $f4, $f6              
.L80AD68B4:
/* 02DB4 80AD68B4 3C0180AD */  lui     $at, %hi(D_80AD72A4)       ## $at = 80AD0000
/* 02DB8 80AD68B8 C42872A4 */  lwc1    $f8, %lo(D_80AD72A4)($at)  
/* 02DBC 80AD68BC 46082282 */  mul.s   $f10, $f4, $f8             
/* 02DC0 80AD68C0 4600540D */  trunc.w.s $f16, $f10                 
/* 02DC4 80AD68C4 44098000 */  mfc1    $t1, $f16                  
/* 02DC8 80AD68C8 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 02DCC 80AD68CC AFA9001C */  sw      $t1, 0x001C($sp)           
.L80AD68D0:
/* 02DD0 80AD68D0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02DD4 80AD68D4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02DD8 80AD68D8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 02DDC 80AD68DC 03E00008 */  jr      $ra                        
/* 02DE0 80AD68E0 00000000 */  nop
