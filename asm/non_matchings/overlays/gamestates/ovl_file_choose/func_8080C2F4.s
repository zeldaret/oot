glabel FileChoose_ConfigModeUpdate
/* 085B4 8080C2F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 085B8 8080C2F8 3C0E0002 */  lui     $t6, 0x0002                ## $t6 = 00020000
/* 085BC 8080C2FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 085C0 8080C300 01C47021 */  addu    $t6, $t6, $a0              
/* 085C4 8080C304 85CECA3E */  lh      $t6, -0x35C2($t6)          ## 0001CA3E
/* 085C8 8080C308 3C198081 */  lui     $t9, %hi(gConfigModeUpdateFuncs)       ## $t9 = 80810000
/* 085CC 8080C30C 000E7880 */  sll     $t7, $t6,  2               
/* 085D0 8080C310 032FC821 */  addu    $t9, $t9, $t7              
/* 085D4 8080C314 8F392770 */  lw      $t9, %lo(gConfigModeUpdateFuncs)($t9)  
/* 085D8 8080C318 0320F809 */  jalr    $ra, $t9                   
/* 085DC 8080C31C 00000000 */  nop
/* 085E0 8080C320 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 085E4 8080C324 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 085E8 8080C328 03E00008 */  jr      $ra                        
/* 085EC 8080C32C 00000000 */  nop
