glabel func_80AC3744
/* 00AA4 80AC3744 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AA8 80AC3748 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AAC 80AC374C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AB0 80AC3750 90AF0252 */  lbu     $t7, 0x0252($a1)           ## 00000252
/* 00AB4 80AC3754 27A6001E */  addiu   $a2, $sp, 0x001E           ## $a2 = FFFFFFFE
/* 00AB8 80AC3758 27A7001C */  addiu   $a3, $sp, 0x001C           ## $a3 = FFFFFFFC
/* 00ABC 80AC375C 000FC080 */  sll     $t8, $t7,  2               
/* 00AC0 80AC3760 00B8C821 */  addu    $t9, $a1, $t8              
/* 00AC4 80AC3764 0C00BCDD */  jal     func_8002F374              
/* 00AC8 80AC3768 8F250200 */  lw      $a1, 0x0200($t9)           ## 00000200
/* 00ACC 80AC376C 87A8001E */  lh      $t0, 0x001E($sp)           
/* 00AD0 80AC3770 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00AD4 80AC3774 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00AD8 80AC3778 00000000 */  nop
/* 00ADC 80AC377C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AE0 80AC3780 E4460230 */  swc1    $f6, 0x0230($v0)           ## 00000230
/* 00AE4 80AC3784 87A9001C */  lh      $t1, 0x001C($sp)           
/* 00AE8 80AC3788 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 00AEC 80AC378C 00000000 */  nop
/* 00AF0 80AC3790 468042A0 */  cvt.s.w $f10, $f8                  
/* 00AF4 80AC3794 E44A0234 */  swc1    $f10, 0x0234($v0)          ## 00000234
/* 00AF8 80AC3798 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AFC 80AC379C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B00 80AC37A0 03E00008 */  jr      $ra                        
/* 00B04 80AC37A4 00000000 */  nop


