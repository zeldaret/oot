.late_rodata
glabel D_80ABCB00
    .float 0.1

.text
glabel func_80ABC1F4
/* 00114 80ABC1F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00118 80ABC1F8 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0011C 80ABC1FC 44811000 */  mtc1    $at, $f2                   ## $f2 = -10.00
/* 00120 80ABC200 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00124 80ABC204 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00128 80ABC208 3C0180AC */  lui     $at, %hi(D_80ABCB00)       ## $at = 80AC0000
/* 0012C 80ABC20C C426CB00 */  lwc1    $f6, %lo(D_80ABCB00)($at)  
/* 00130 80ABC210 C484002C */  lwc1    $f4, 0x002C($a0)           ## 0000002C
/* 00134 80ABC214 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00138 80ABC218 46062201 */  sub.s   $f8, $f4, $f6              
/* 0013C 80ABC21C E488002C */  swc1    $f8, 0x002C($a0)           ## 0000002C
/* 00140 80ABC220 C480002C */  lwc1    $f0, 0x002C($a0)           ## 0000002C
/* 00144 80ABC224 4602003C */  c.lt.s  $f0, $f2                   
/* 00148 80ABC228 00000000 */  nop
/* 0014C 80ABC22C 45020004 */  bc1fl   .L80ABC240                 
/* 00150 80ABC230 C48A000C */  lwc1    $f10, 0x000C($a0)          ## 0000000C
/* 00154 80ABC234 E482002C */  swc1    $f2, 0x002C($a0)           ## 0000002C
/* 00158 80ABC238 C480002C */  lwc1    $f0, 0x002C($a0)           ## 0000002C
/* 0015C 80ABC23C C48A000C */  lwc1    $f10, 0x000C($a0)          ## 0000000C
.L80ABC240:
/* 00160 80ABC240 46005400 */  add.s   $f16, $f10, $f0            
/* 00164 80ABC244 E490000C */  swc1    $f16, 0x000C($a0)          ## 0000000C
/* 00168 80ABC248 0C2AF03E */  jal     func_80ABC0F8              
/* 0016C 80ABC24C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00170 80ABC250 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00174 80ABC254 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00178 80ABC258 03E00008 */  jr      $ra                        
/* 0017C 80ABC25C 00000000 */  nop
