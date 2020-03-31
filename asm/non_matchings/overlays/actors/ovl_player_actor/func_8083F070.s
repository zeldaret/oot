glabel func_8083F070
/* 0CE60 8083F070 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0CE64 8083F074 AFA40018 */  sw      $a0, 0x0018($sp)
/* 0CE68 8083F078 AFA60020 */  sw      $a2, 0x0020($sp)
/* 0CE6C 8083F07C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0CE70 8083F080 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 0CE74 8083F084 AFA5001C */  sw      $a1, 0x001C($sp)
/* 0CE78 8083F088 3C068085 */  lui     $a2, %hi(func_8084C5F8)    ## $a2 = 80850000
/* 0CE7C 8083F08C 24C6C5F8 */  addiu   $a2, $a2, %lo(func_8084C5F8) ## $a2 = 8084C5F8
/* 0CE80 8083F090 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0CE84 8083F094 0C20D76B */  jal     func_80835DAC
/* 0CE88 8083F098 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0CE8C 8083F09C 8FA50018 */  lw      $a1, 0x0018($sp)
/* 0CE90 8083F0A0 3C073FAA */  lui     $a3, 0x3FAA                ## $a3 = 3FAA0000
/* 0CE94 8083F0A4 34E7AAAB */  ori     $a3, $a3, 0xAAAB           ## $a3 = 3FAAAAAB
/* 0CE98 8083F0A8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 0CE9C 8083F0AC 8FA6001C */  lw      $a2, 0x001C($sp)
/* 0CEA0 8083F0B0 0C029037 */  jal     SkelAnime_LinkChangeAnimationPlaybackStop
/* 0CEA4 8083F0B4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 0CEA8 8083F0B8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0CEAC 8083F0BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0CEB0 8083F0C0 03E00008 */  jr      $ra
/* 0CEB4 8083F0C4 00000000 */  nop


