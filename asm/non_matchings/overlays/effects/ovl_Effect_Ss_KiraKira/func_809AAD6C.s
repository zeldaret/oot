glabel func_809AAD6C
/* 0055C 809AAD6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00560 809AAD70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00564 809AAD74 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00568 809AAD78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0056C 809AAD7C 84CE0058 */  lh      $t6, 0x0058($a2)           ## 00000058
/* 00570 809AAD80 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00574 809AAD84 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 00578 809AAD88 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0057C 809AAD8C 84CF005C */  lh      $t7, 0x005C($a2)           ## 0000005C
/* 00580 809AAD90 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00584 809AAD94 46803220 */  cvt.s.w $f8, $f6                   
/* 00588 809AAD98 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 0058C 809AAD9C 00000000 */  nop
/* 00590 809AADA0 468084A0 */  cvt.s.w $f18, $f16                 
/* 00594 809AADA4 46082283 */  div.s   $f10, $f4, $f8             
/* 00598 809AADA8 46125182 */  mul.s   $f6, $f10, $f18            
/* 0059C 809AADAC 4600310D */  trunc.w.s $f4, $f6                   
/* 005A0 809AADB0 44042000 */  mfc1    $a0, $f4                   
/* 005A4 809AADB4 00000000 */  nop
/* 005A8 809AADB8 00042400 */  sll     $a0, $a0, 16               
/* 005AC 809AADBC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005B0 809AADC0 00042403 */  sra     $a0, $a0, 16               
/* 005B4 809AADC4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 005B8 809AADC8 84D90052 */  lh      $t9, 0x0052($a2)           ## 00000052
/* 005BC 809AADCC 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 005C0 809AADD0 00000000 */  nop
/* 005C4 809AADD4 46804420 */  cvt.s.w $f16, $f8                  
/* 005C8 809AADD8 46100282 */  mul.s   $f10, $f0, $f16            
/* 005CC 809AADDC 4600548D */  trunc.w.s $f18, $f10                 
/* 005D0 809AADE0 44099000 */  mfc1    $t1, $f18                  
/* 005D4 809AADE4 00000000 */  nop
/* 005D8 809AADE8 A4C90056 */  sh      $t1, 0x0056($a2)           ## 00000056
/* 005DC 809AADEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005E0 809AADF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005E4 809AADF4 03E00008 */  jr      $ra                        
/* 005E8 809AADF8 00000000 */  nop
/* 005EC 809AADFC 00000000 */  nop
