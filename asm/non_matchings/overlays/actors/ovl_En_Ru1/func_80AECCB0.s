glabel func_80AECCB0
/* 020A0 80AECCB0 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 020A4 80AECCB4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 020A8 80AECCB8 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 020AC 80AECCBC AFA50064 */  sw      $a1, 0x0064($sp)           
/* 020B0 80AECCC0 8484008A */  lh      $a0, 0x008A($a0)           ## 0000008A
/* 020B4 80AECCC4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 020B8 80AECCC8 A7A40056 */  sh      $a0, 0x0056($sp)           
/* 020BC 80AECCCC 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 020C0 80AECCD0 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 020C4 80AECCD4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 020C8 80AECCD8 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 020CC 80AECCDC 85F81456 */  lh      $t8, 0x1456($t7)           ## 80161456
/* 020D0 80AECCE0 8FA20060 */  lw      $v0, 0x0060($sp)           
/* 020D4 80AECCE4 87A40056 */  lh      $a0, 0x0056($sp)           
/* 020D8 80AECCE8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 020DC 80AECCEC C4520024 */  lwc1    $f18, 0x0024($v0)          ## 00000024
/* 020E0 80AECCF0 24420024 */  addiu   $v0, $v0, 0x0024           ## $v0 = 00000024
/* 020E4 80AECCF4 468021A0 */  cvt.s.w $f6, $f4                   
/* 020E8 80AECCF8 46083280 */  add.s   $f10, $f6, $f8             
/* 020EC 80AECCFC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 020F0 80AECD00 46128100 */  add.s   $f4, $f16, $f18            
/* 020F4 80AECD04 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 020F8 80AECD08 C4460004 */  lwc1    $f6, 0x0004($v0)           ## 00000028
/* 020FC 80AECD0C AFA2003C */  sw      $v0, 0x003C($sp)           
/* 02100 80AECD10 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02104 80AECD14 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 02108 80AECD18 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 0210C 80AECD1C 8F39FA90 */  lw      $t9, -0x0570($t9)          ## 8015FA90
/* 02110 80AECD20 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 02114 80AECD24 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 02118 80AECD28 87281456 */  lh      $t0, 0x1456($t9)           ## 80161456
/* 0211C 80AECD2C 8FA2003C */  lw      $v0, 0x003C($sp)           
/* 02120 80AECD30 8FA60064 */  lw      $a2, 0x0064($sp)           
/* 02124 80AECD34 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 02128 80AECD38 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 0212C 80AECD3C 87A90056 */  lh      $t1, 0x0056($sp)           
/* 02130 80AECD40 468042A0 */  cvt.s.w $f10, $f8                  
/* 02134 80AECD44 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 02138 80AECD48 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 0213C 80AECD4C AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 02140 80AECD50 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 02144 80AECD54 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02148 80AECD58 46105480 */  add.s   $f18, $f10, $f16           
/* 0214C 80AECD5C C7AA004C */  lwc1    $f10, 0x004C($sp)          
/* 02150 80AECD60 8FA50060 */  lw      $a1, 0x0060($sp)           
/* 02154 80AECD64 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 02158 80AECD68 46120102 */  mul.s   $f4, $f0, $f18             
/* 0215C 80AECD6C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 02160 80AECD70 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 02164 80AECD74 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 02168 80AECD78 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 0216C 80AECD7C 46062080 */  add.s   $f2, $f4, $f6              
/* 02170 80AECD80 0C00C916 */  jal     Actor_SpawnAttached
              
/* 02174 80AECD84 E7A20018 */  swc1    $f2, 0x0018($sp)           
/* 02178 80AECD88 8FAB0060 */  lw      $t3, 0x0060($sp)           
/* 0217C 80AECD8C AD620278 */  sw      $v0, 0x0278($t3)           ## 00000278
/* 02180 80AECD90 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02184 80AECD94 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 02188 80AECD98 03E00008 */  jr      $ra                        
/* 0218C 80AECD9C 00000000 */  nop


