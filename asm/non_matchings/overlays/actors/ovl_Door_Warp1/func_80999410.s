.late_rodata
glabel D_8099C744
 .word 0xBDCCCCCD

.text
glabel func_80999410
/* 00C90 80999410 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00C94 80999414 3C01809A */  lui     $at, %hi(D_8099C744)       ## $at = 809A0000
/* 00C98 80999418 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00C9C 8099941C C424C744 */  lwc1    $f4, %lo(D_8099C744)($at)  
/* 00CA0 80999420 03E00008 */  jr      $ra                        
/* 00CA4 80999424 E444006C */  swc1    $f4, 0x006C($v0)           ## 0000006C
