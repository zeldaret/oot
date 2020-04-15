.late_rodata
glabel D_80855394
    .float 0.1

.text
glabel func_8083CA9C
/* 0A88C 8083CA9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0A890 8083CAA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0A894 8083CAA4 3C018085 */  lui     $at, %hi(D_80855394)       ## $at = 80850000
/* 0A898 8083CAA8 C4225394 */  lwc1    $f2, %lo(D_80855394)($at)  
/* 0A89C 8083CAAC C44013BC */  lwc1    $f0, 0x13BC($v0)           ## 8015FA1C
/* 0A8A0 8083CAB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A8A4 8083CAB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A8A8 8083CAB8 4602003C */  c.lt.s  $f0, $f2                   
/* 0A8AC 8083CABC 3C064448 */  lui     $a2, 0x4448                ## $a2 = 44480000
/* 0A8B0 8083CAC0 45020004 */  bc1fl   .L8083CAD4                 
/* 0A8B4 8083CAC4 E4A00838 */  swc1    $f0, 0x0838($a1)           ## 00000838
/* 0A8B8 8083CAC8 E44213BC */  swc1    $f2, 0x13BC($v0)           ## 8015FA1C
/* 0A8BC 8083CACC C44013BC */  lwc1    $f0, 0x13BC($v0)           ## 8015FA1C
/* 0A8C0 8083CAD0 E4A00838 */  swc1    $f0, 0x0838($a1)           ## 00000838
.L8083CAD4:
/* 0A8C4 8083CAD4 0C20F244 */  jal     func_8083C910              
/* 0A8C8 8083CAD8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A8CC 8083CADC 1040000F */  beq     $v0, $zero, .L8083CB1C     
/* 0A8D0 8083CAE0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0A8D4 8083CAE4 3C01C2A0 */  lui     $at, 0xC2A0                ## $at = C2A00000
/* 0A8D8 8083CAE8 44812000 */  mtc1    $at, $f4                   ## $f4 = -80.00
/* 0A8DC 8083CAEC C4A60838 */  lwc1    $f6, 0x0838($a1)           ## 00000838
/* 0A8E0 8083CAF0 2419FFEC */  addiu   $t9, $zero, 0xFFEC         ## $t9 = FFFFFFEC
/* 0A8E4 8083CAF4 46062203 */  div.s   $f8, $f4, $f6              
/* 0A8E8 8083CAF8 4600428D */  trunc.w.s $f10, $f8                  
/* 0A8EC 8083CAFC 440F5000 */  mfc1    $t7, $f10                  
/* 0A8F0 8083CB00 00000000 */  nop
/* 0A8F4 8083CB04 A4AF0850 */  sh      $t7, 0x0850($a1)           ## 00000850
/* 0A8F8 8083CB08 84B80850 */  lh      $t8, 0x0850($a1)           ## 00000850
/* 0A8FC 8083CB0C 2B01FFEC */  slti    $at, $t8, 0xFFEC           
/* 0A900 8083CB10 50200003 */  beql    $at, $zero, .L8083CB20     
/* 0A904 8083CB14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A908 8083CB18 A4B90850 */  sh      $t9, 0x0850($a1)           ## 00000850
.L8083CB1C:
/* 0A90C 8083CB1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8083CB20:
/* 0A910 8083CB20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A914 8083CB24 03E00008 */  jr      $ra                        
/* 0A918 8083CB28 00000000 */  nop
