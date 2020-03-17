glabel func_80AF28E8
/* 00398 80AF28E8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0039C 80AF28EC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003A0 80AF28F0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 003A4 80AF28F4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003A8 80AF28F8 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 003AC 80AF28FC AFA70034 */  sw      $a3, 0x0034($sp)           
/* 003B0 80AF2900 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 003B4 80AF2904 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003B8 80AF2908 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 003BC 80AF290C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 003C0 80AF2910 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 003C4 80AF2914 15C00007 */  bne     $t6, $zero, .L80AF2934     
/* 003C8 80AF2918 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003CC 80AF291C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 003D0 80AF2920 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003D4 80AF2924 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 003D8 80AF2928 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 003DC 80AF292C 10000006 */  beq     $zero, $zero, .L80AF2948   
/* 003E0 80AF2930 468020A0 */  cvt.s.w $f2, $f4                   
.L80AF2934:
/* 003E4 80AF2934 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 003E8 80AF2938 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 003EC 80AF293C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 003F0 80AF2940 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 003F4 80AF2944 46803020 */  cvt.s.w $f0, $f6                   
.L80AF2948:
/* 003F8 80AF2948 93AF0033 */  lbu     $t7, 0x0033($sp)           
/* 003FC 80AF294C C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 00400 80AF2950 44066000 */  mfc1    $a2, $f12                  
/* 00404 80AF2954 44070000 */  mfc1    $a3, $f0                   
/* 00408 80AF2958 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 0040C 80AF295C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00410 80AF2960 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00414 80AF2964 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00418 80AF2968 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0041C 80AF296C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00420 80AF2970 03E00008 */  jr      $ra                        
/* 00424 80AF2974 00000000 */  nop


