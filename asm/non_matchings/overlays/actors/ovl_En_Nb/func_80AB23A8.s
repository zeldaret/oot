glabel func_80AB23A8
/* 01618 80AB23A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0161C 80AB23AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01620 80AB23B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01624 80AB23B4 0C2AC7FF */  jal     func_80AB1FFC              
/* 01628 80AB23B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0162C 80AB23BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01630 80AB23C0 0C2AC8B3 */  jal     func_80AB22CC              
/* 01634 80AB23C4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01638 80AB23C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0163C 80AB23CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01640 80AB23D0 03E00008 */  jr      $ra                        
/* 01644 80AB23D4 00000000 */  nop


