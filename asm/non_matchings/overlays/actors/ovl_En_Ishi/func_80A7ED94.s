.late_rodata
glabel D_80A87474
    .float 0.2

glabel D_80A87478
    .float 0.1

.text
glabel func_80A7ED94
/* 00934 80A7ED94 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 00938 80A7ED98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0093C 80A7ED9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00940 80A7EDA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00944 80A7EDA4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00948 80A7EDA8 E7AC001C */  swc1    $f12, 0x001C($sp)          
/* 0094C 80A7EDAC 3C0180A8 */  lui     $at, %hi(D_80A87474)       ## $at = 80A80000
/* 00950 80A7EDB0 C4247474 */  lwc1    $f4, %lo(D_80A87474)($at)  
/* 00954 80A7EDB4 3C0180A8 */  lui     $at, %hi(D_80A87478)       ## $at = 80A80000
/* 00958 80A7EDB8 C4287478 */  lwc1    $f8, %lo(D_80A87478)($at)  
/* 0095C 80A7EDBC 46040182 */  mul.s   $f6, $f0, $f4              
/* 00960 80A7EDC0 C7AC001C */  lwc1    $f12, 0x001C($sp)          
/* 00964 80A7EDC4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00968 80A7EDC8 C4820000 */  lwc1    $f2, 0x0000($a0)           ## 00000000
/* 0096C 80A7EDCC C48E0004 */  lwc1    $f14, 0x0004($a0)          ## 00000004
/* 00970 80A7EDD0 46083281 */  sub.s   $f10, $f6, $f8             
/* 00974 80A7EDD4 C4900008 */  lwc1    $f16, 0x0008($a0)          ## 00000008
/* 00978 80A7EDD8 460C5482 */  mul.s   $f18, $f10, $f12           
/* 0097C 80A7EDDC 46126300 */  add.s   $f12, $f12, $f18           
/* 00980 80A7EDE0 460C1102 */  mul.s   $f4, $f2, $f12             
/* 00984 80A7EDE4 00000000 */  nop
/* 00988 80A7EDE8 460C7202 */  mul.s   $f8, $f14, $f12            
/* 0098C 80A7EDEC 00000000 */  nop
/* 00990 80A7EDF0 460C8482 */  mul.s   $f18, $f16, $f12           
/* 00994 80A7EDF4 46041181 */  sub.s   $f6, $f2, $f4              
/* 00998 80A7EDF8 46087281 */  sub.s   $f10, $f14, $f8            
/* 0099C 80A7EDFC E4860000 */  swc1    $f6, 0x0000($a0)           ## 00000000
/* 009A0 80A7EE00 46128101 */  sub.s   $f4, $f16, $f18            
/* 009A4 80A7EE04 E48A0004 */  swc1    $f10, 0x0004($a0)          ## 00000004
/* 009A8 80A7EE08 E4840008 */  swc1    $f4, 0x0008($a0)           ## 00000008
/* 009AC 80A7EE0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009B0 80A7EE10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009B4 80A7EE14 03E00008 */  jr      $ra                        
/* 009B8 80A7EE18 00000000 */  nop
