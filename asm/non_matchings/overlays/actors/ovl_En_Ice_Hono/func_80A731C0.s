.late_rodata
glabel D_80A74124
 .word 0x3A51B717
glabel D_80A74128
 .word 0xBE99999A

.text
glabel func_80A731C0
/* 001D0 80A731C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001D4 80A731C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001D8 80A731C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001DC 80A731CC 3C0580A7 */  lui     $a1, %hi(D_80A74088)       ## $a1 = 80A70000
/* 001E0 80A731D0 24A54088 */  addiu   $a1, $a1, %lo(D_80A74088)  ## $a1 = 80A74088
/* 001E4 80A731D4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001E8 80A731D8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001EC 80A731DC 3C0180A7 */  lui     $at, %hi(D_80A74124)       ## $at = 80A70000
/* 001F0 80A731E0 C4204124 */  lwc1    $f0, %lo(D_80A74124)($at)  
/* 001F4 80A731E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001F8 80A731E8 3C0180A7 */  lui     $at, %hi(D_80A74128)       ## $at = 80A70000
/* 001FC 80A731EC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00200 80A731F0 E4800054 */  swc1    $f0, 0x0054($a0)           ## 00000054
/* 00204 80A731F4 E4800058 */  swc1    $f0, 0x0058($a0)           ## 00000058
/* 00208 80A731F8 E4800050 */  swc1    $f0, 0x0050($a0)           ## 00000050
/* 0020C 80A731FC C4244128 */  lwc1    $f4, %lo(D_80A74128)($at)  
/* 00210 80A73200 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00214 80A73204 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 00218 80A73208 E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC
/* 0021C 80A7320C E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00220 80A73210 0C29CE7F */  jal     func_80A739FC              
/* 00224 80A73214 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
/* 00228 80A73218 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0022C 80A7321C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00230 80A73220 03E00008 */  jr      $ra                        
/* 00234 80A73224 00000000 */  nop


