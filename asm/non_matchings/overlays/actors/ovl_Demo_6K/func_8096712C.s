.late_rodata
glabel D_809695E0
    .float 0.1

glabel D_809695E4
    .float 0.0017

glabel D_809695E8
    .float 0.103999995

glabel D_809695EC
    .float 0.1

.text
glabel func_8096712C
/* 007DC 8096712C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007E0 80967130 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007E4 80967134 3C018097 */  lui     $at, %hi(D_809695E0)       ## $at = 80970000
/* 007E8 80967138 C42295E0 */  lwc1    $f2, %lo(D_809695E0)($at)  
/* 007EC 8096713C C4800050 */  lwc1    $f0, 0x0050($a0)           ## 00000050
/* 007F0 80967140 8CA2009C */  lw      $v0, 0x009C($a1)           ## 0000009C
/* 007F4 80967144 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 007F8 80967148 4602003C */  c.lt.s  $f0, $f2                   
/* 007FC 8096714C 3C018097 */  lui     $at, %hi(D_809695E4)       ## $at = 80970000
/* 00800 80967150 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 00804 80967154 45000005 */  bc1f    .L8096716C                 
/* 00808 80967158 00000000 */  nop
/* 0080C 8096715C C42495E4 */  lwc1    $f4, %lo(D_809695E4)($at)  
/* 00810 80967160 46040180 */  add.s   $f6, $f0, $f4              
/* 00814 80967164 10000007 */  beq     $zero, $zero, .L80967184   
/* 00818 80967168 E4860050 */  swc1    $f6, 0x0050($a0)           ## 00000050
.L8096716C:
/* 0081C 8096716C 11C00004 */  beq     $t6, $zero, .L80967180     
/* 00820 80967170 3C018097 */  lui     $at, %hi(D_809695E8)       ## $at = 80970000
/* 00824 80967174 C42895E8 */  lwc1    $f8, %lo(D_809695E8)($at)  
/* 00828 80967178 10000002 */  beq     $zero, $zero, .L80967184   
/* 0082C 8096717C E4880050 */  swc1    $f8, 0x0050($a0)           ## 00000050
.L80967180:
/* 00830 80967180 E4820050 */  swc1    $f2, 0x0050($a0)           ## 00000050
.L80967184:
/* 00834 80967184 90CF1D6C */  lbu     $t7, 0x1D6C($a2)           ## 00001D6C
/* 00838 80967188 51E00013 */  beql    $t7, $zero, .L809671D8     
/* 0083C 8096718C 8C850050 */  lw      $a1, 0x0050($a0)           ## 00000050
/* 00840 80967190 8CC21DA4 */  lw      $v0, 0x1DA4($a2)           ## 00001DA4
/* 00844 80967194 50400010 */  beql    $v0, $zero, .L809671D8     
/* 00848 80967198 8C850050 */  lw      $a1, 0x0050($a0)           ## 00000050
/* 0084C 8096719C 94580000 */  lhu     $t8, 0x0000($v0)           ## 00000000
/* 00850 809671A0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00854 809671A4 3C058096 */  lui     $a1, %hi(func_809670AC)    ## $a1 = 80960000
/* 00858 809671A8 1701000A */  bne     $t8, $at, .L809671D4       
/* 0085C 809671AC 24A570AC */  addiu   $a1, $a1, %lo(func_809670AC) ## $a1 = 809670AC
/* 00860 809671B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00864 809671B4 0C259A54 */  jal     func_80966950              
/* 00868 809671B8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0086C 809671BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00870 809671C0 3C018097 */  lui     $at, %hi(D_809695EC)       ## $at = 80970000
/* 00874 809671C4 C42295EC */  lwc1    $f2, %lo(D_809695EC)($at)  
/* 00878 809671C8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0087C 809671CC A480028E */  sh      $zero, 0x028E($a0)         ## 0000028E
/* 00880 809671D0 E4820050 */  swc1    $f2, 0x0050($a0)           ## 00000050
.L809671D4:
/* 00884 809671D4 8C850050 */  lw      $a1, 0x0050($a0)           ## 00000050
.L809671D8:
/* 00888 809671D8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 0088C 809671DC 0C00B58B */  jal     Actor_SetScale
              
/* 00890 809671E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00894 809671E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00898 809671E8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0089C 809671EC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 008A0 809671F0 94990290 */  lhu     $t9, 0x0290($a0)           ## 00000290
/* 008A4 809671F4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 008A8 809671F8 A4880290 */  sh      $t0, 0x0290($a0)           ## 00000290
/* 008AC 809671FC 84C900A4 */  lh      $t1, 0x00A4($a2)           ## 000000A4
/* 008B0 80967200 5521000D */  bnel    $t1, $at, .L80967238       
/* 008B4 80967204 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008B8 80967208 848B001C */  lh      $t3, 0x001C($a0)           ## 0000001C
/* 008BC 8096720C 3C0D8097 */  lui     $t5, %hi(D_80969326)       ## $t5 = 80970000
/* 008C0 80967210 94CA1D74 */  lhu     $t2, 0x1D74($a2)           ## 00001D74
/* 008C4 80967214 000B6040 */  sll     $t4, $t3,  1               
/* 008C8 80967218 01AC6821 */  addu    $t5, $t5, $t4              
/* 008CC 8096721C 95AD9326 */  lhu     $t5, %lo(D_80969326)($t5)  
/* 008D0 80967220 014D082A */  slt     $at, $t2, $t5              
/* 008D4 80967224 50200004 */  beql    $at, $zero, .L80967238     
/* 008D8 80967228 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008DC 8096722C 0C00BE5D */  jal     func_8002F974              
/* 008E0 80967230 24052047 */  addiu   $a1, $zero, 0x2047         ## $a1 = 00002047
/* 008E4 80967234 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80967238:
/* 008E8 80967238 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008EC 8096723C 03E00008 */  jr      $ra                        
/* 008F0 80967240 00000000 */  nop


