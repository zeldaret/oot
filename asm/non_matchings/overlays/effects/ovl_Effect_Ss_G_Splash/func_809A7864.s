.late_rodata
glabel D_809A7980
    .float 0.002

.text
glabel func_809A7864
/* 00324 809A7864 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00328 809A7868 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0032C 809A786C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00330 809A7870 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00334 809A7874 84CE0056 */  lh      $t6, 0x0056($a2)           ## 00000056
/* 00338 809A7878 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0033C 809A787C 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00340 809A7880 55C10024 */  bnel    $t6, $at, .L809A7914       
/* 00344 809A7884 860D0040 */  lh      $t5, 0x0040($s0)           ## 00000040
/* 00348 809A7888 84CF005C */  lh      $t7, 0x005C($a2)           ## 0000005C
/* 0034C 809A788C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00350 809A7890 55E10020 */  bnel    $t7, $at, .L809A7914       
/* 00354 809A7894 860D0040 */  lh      $t5, 0x0040($s0)           ## 00000040
/* 00358 809A7898 8CD90000 */  lw      $t9, 0x0000($a2)           ## 00000000
/* 0035C 809A789C 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00360 809A78A0 3C01809A */  lui     $at, %hi(D_809A7980)       ## $at = 809A0000
/* 00364 809A78A4 ACB90000 */  sw      $t9, 0x0000($a1)           ## FFFFFFF4
/* 00368 809A78A8 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 0036C 809A78AC 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00370 809A78B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00374 809A78B4 ACB80004 */  sw      $t8, 0x0004($a1)           ## FFFFFFF8
/* 00378 809A78B8 8CD90008 */  lw      $t9, 0x0008($a2)           ## 00000008
/* 0037C 809A78BC ACB90008 */  sw      $t9, 0x0008($a1)           ## FFFFFFFC
/* 00380 809A78C0 84C80042 */  lh      $t0, 0x0042($a2)           ## 00000042
/* 00384 809A78C4 C4287980 */  lwc1    $f8, %lo(D_809A7980)($at)  
/* 00388 809A78C8 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 0038C 809A78CC 00084880 */  sll     $t1, $t0,  2               
/* 00390 809A78D0 01284821 */  addu    $t1, $t1, $t0              
/* 00394 809A78D4 00094880 */  sll     $t1, $t1,  2               
/* 00398 809A78D8 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0039C 809A78DC AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 003A0 809A78E0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003A4 809A78E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 003A8 809A78E8 46083282 */  mul.s   $f10, $f6, $f8             
/* 003AC 809A78EC 460A8480 */  add.s   $f18, $f16, $f10           
/* 003B0 809A78F0 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 003B4 809A78F4 860B0042 */  lh      $t3, 0x0042($s0)           ## 00000042
/* 003B8 809A78F8 05610003 */  bgez    $t3, .L809A7908            
/* 003BC 809A78FC 000B6043 */  sra     $t4, $t3,  1               
/* 003C0 809A7900 25610001 */  addiu   $at, $t3, 0x0001           ## $at = 00000001
/* 003C4 809A7904 00016043 */  sra     $t4, $at,  1               
.L809A7908:
/* 003C8 809A7908 0C00A527 */  jal     func_8002949C              
/* 003CC 809A790C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 003D0 809A7910 860D0040 */  lh      $t5, 0x0040($s0)           ## 00000040
.L809A7914:
/* 003D4 809A7914 860E0044 */  lh      $t6, 0x0044($s0)           ## 00000044
/* 003D8 809A7918 01AE7821 */  addu    $t7, $t5, $t6              
/* 003DC 809A791C A60F0040 */  sh      $t7, 0x0040($s0)           ## 00000040
/* 003E0 809A7920 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003E4 809A7924 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003E8 809A7928 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 003EC 809A792C 03E00008 */  jr      $ra                        
/* 003F0 809A7930 00000000 */  nop
/* 003F4 809A7934 00000000 */  nop
/* 003F8 809A7938 00000000 */  nop
/* 003FC 809A793C 00000000 */  nop
