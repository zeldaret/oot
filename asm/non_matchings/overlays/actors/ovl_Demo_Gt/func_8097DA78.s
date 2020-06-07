glabel func_8097DA78
/* 00408 8097DA78 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0040C 8097DA7C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00410 8097DA80 C7AC0030 */  lwc1    $f12, 0x0030($sp)          
/* 00414 8097DA84 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00418 8097DA88 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 0041C 8097DA8C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 00420 8097DA90 460C2182 */  mul.s   $f6, $f4, $f12             
/* 00424 8097DA94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00428 8097DA98 460C5402 */  mul.s   $f16, $f10, $f12           
/* 0042C 8097DA9C 4600320D */  trunc.w.s $f8, $f6                   
/* 00430 8097DAA0 4600848D */  trunc.w.s $f18, $f16                 
/* 00434 8097DAA4 440F4000 */  mfc1    $t7, $f8                   
/* 00438 8097DAA8 44199000 */  mfc1    $t9, $f18                  
/* 0043C 8097DAAC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00440 8097DAB0 0C00A3A1 */  jal     func_80028E84              
/* 00444 8097DAB4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00448 8097DAB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0044C 8097DABC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00450 8097DAC0 03E00008 */  jr      $ra                        
/* 00454 8097DAC4 00000000 */  nop
