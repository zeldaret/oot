glabel func_809ED054
/* 007D4 809ED054 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007D8 809ED058 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007DC 809ED05C 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 007E0 809ED060 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 007E4 809ED064 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 007E8 809ED068 A08E01C0 */  sb      $t6, 0x01C0($a0)           ## 000001C0
/* 007EC 809ED06C 1040000E */  beq     $v0, $zero, .L809ED0A8     
/* 007F0 809ED070 A48F01C8 */  sh      $t7, 0x01C8($a0)           ## 000001C8
/* 007F4 809ED074 8443001C */  lh      $v1, 0x001C($v0)           ## 0000001C
/* 007F8 809ED078 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 007FC 809ED07C 240539AA */  addiu   $a1, $zero, 0x39AA         ## $a1 = 000039AA
/* 00800 809ED080 10610006 */  beq     $v1, $at, .L809ED09C       
/* 00804 809ED084 00000000 */  nop
/* 00808 809ED088 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0080C 809ED08C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00810 809ED090 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00814 809ED094 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00818 809ED098 8443001C */  lh      $v1, 0x001C($v0)           ## 0000001C
.L809ED09C:
/* 0081C 809ED09C 1C600002 */  bgtz    $v1, .L809ED0A8            
/* 00820 809ED0A0 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00824 809ED0A4 A458001C */  sh      $t8, 0x001C($v0)           ## 0000001C
.L809ED0A8:
/* 00828 809ED0A8 3C05809F */  lui     $a1, %hi(func_809ED0C4)    ## $a1 = 809F0000
/* 0082C 809ED0AC 0C27B220 */  jal     func_809EC880              
/* 00830 809ED0B0 24A5D0C4 */  addiu   $a1, $a1, %lo(func_809ED0C4) ## $a1 = 809ED0C4
/* 00834 809ED0B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00838 809ED0B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0083C 809ED0BC 03E00008 */  jr      $ra                        
/* 00840 809ED0C0 00000000 */  nop


