.late_rodata
glabel D_80982A74
    .float 0.2

.text
glabel func_8097D74C
/* 000DC 8097D74C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000E0 8097D750 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 000E4 8097D754 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 000E8 8097D758 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000EC 8097D75C AFA60038 */  sw      $a2, 0x0038($sp)           
/* 000F0 8097D760 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000F4 8097D764 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 000F8 8097D768 3C018098 */  lui     $at, %hi(D_80982A74)       ## $at = 80980000
/* 000FC 8097D76C C4242A74 */  lwc1    $f4, %lo(D_80982A74)($at)  
/* 00100 8097D770 C7A20040 */  lwc1    $f2, 0x0040($sp)           
/* 00104 8097D774 87A80046 */  lh      $t0, 0x0046($sp)           
/* 00108 8097D778 87A9004A */  lh      $t1, 0x004A($sp)           
/* 0010C 8097D77C 46041182 */  mul.s   $f6, $f2, $f4              
/* 00110 8097D780 3C0E8098 */  lui     $t6, %hi(D_809825C0)       ## $t6 = 80980000
/* 00114 8097D784 3C0F8098 */  lui     $t7, %hi(D_809825C4)       ## $t7 = 80980000
/* 00118 8097D788 25EF25C4 */  addiu   $t7, $t7, %lo(D_809825C4)  ## $t7 = 809825C4
/* 0011C 8097D78C 25CE25C0 */  addiu   $t6, $t6, %lo(D_809825C0)  ## $t6 = 809825C0
/* 00120 8097D790 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00124 8097D794 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00128 8097D798 46060202 */  mul.s   $f8, $f0, $f6              
/* 0012C 8097D79C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00130 8097D7A0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00134 8097D7A4 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 00138 8097D7A8 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 0013C 8097D7AC AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00140 8097D7B0 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 00144 8097D7B4 46024280 */  add.s   $f10, $f8, $f2             
/* 00148 8097D7B8 4600540D */  trunc.w.s $f16, $f10                 
/* 0014C 8097D7BC 44198000 */  mfc1    $t9, $f16                  
/* 00150 8097D7C0 0C00A10F */  jal     func_8002843C              
/* 00154 8097D7C4 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00158 8097D7C8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0015C 8097D7CC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00160 8097D7D0 03E00008 */  jr      $ra                        
/* 00164 8097D7D4 00000000 */  nop
