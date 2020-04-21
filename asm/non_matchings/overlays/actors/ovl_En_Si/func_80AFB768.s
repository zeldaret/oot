glabel func_80AFB768
/* 000D8 80AFB768 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000DC 80AFB76C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000E0 80AFB770 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 000E4 80AFB774 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 000E8 80AFB778 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 000EC 80AFB77C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 000F0 80AFB780 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 000F4 80AFB784 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 000F8 80AFB788 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 000FC 80AFB78C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00100 80AFB790 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 00104 80AFB794 31F82000 */  andi    $t8, $t7, 0x2000           ## $t8 = 00000000
/* 00108 80AFB798 17010005 */  bne     $t8, $at, .L80AFB7B0       
/* 0010C 80AFB79C 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00110 80AFB7A0 3C1980B0 */  lui     $t9, %hi(func_80AFB89C)    ## $t9 = 80B00000
/* 00114 80AFB7A4 2739B89C */  addiu   $t9, $t9, %lo(func_80AFB89C) ## $t9 = 80AFB89C
/* 00118 80AFB7A8 10000037 */  beq     $zero, $zero, .L80AFB888   
/* 0011C 80AFB7AC AC99014C */  sw      $t9, 0x014C($a0)           ## 0000014C
.L80AFB7B0:
/* 00120 80AFB7B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00124 80AFB7B4 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00128 80AFB7B8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 0012C 80AFB7BC 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00130 80AFB7C0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00134 80AFB7C4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00138 80AFB7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0013C 80AFB7CC 0C00B58B */  jal     Actor_SetScale
              
/* 00140 80AFB7D0 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 00144 80AFB7D4 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00148 80AFB7D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0014C 80AFB7DC 25090400 */  addiu   $t1, $t0, 0x0400           ## $t1 = 00000400
/* 00150 80AFB7E0 0C023A62 */  jal     func_8008E988              
/* 00154 80AFB7E4 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 00158 80AFB7E8 14400027 */  bne     $v0, $zero, .L80AFB888     
/* 0015C 80AFB7EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00160 80AFB7F0 0C2BEDD2 */  jal     func_80AFB748              
/* 00164 80AFB7F4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00168 80AFB7F8 92030163 */  lbu     $v1, 0x0163($s0)           ## 00000163
/* 0016C 80AFB7FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00170 80AFB800 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00174 80AFB804 306A0001 */  andi    $t2, $v1, 0x0001           ## $t2 = 00000000
/* 00178 80AFB808 11400012 */  beq     $t2, $zero, .L80AFB854     
/* 0017C 80AFB80C 306BFFFE */  andi    $t3, $v1, 0xFFFE           ## $t3 = 00000000
/* 00180 80AFB810 A20B0163 */  sb      $t3, 0x0163($s0)           ## 00000163
/* 00184 80AFB814 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00188 80AFB818 0C021344 */  jal     Item_Give              
/* 0018C 80AFB81C 24050071 */  addiu   $a1, $zero, 0x0071         ## $a1 = 00000071
/* 00190 80AFB820 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 00194 80AFB824 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00198 80AFB828 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0019C 80AFB82C 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 001A0 80AFB830 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 001A4 80AFB834 0C042DA0 */  jal     func_8010B680              
/* 001A8 80AFB838 A5AC0110 */  sh      $t4, 0x0110($t5)           ## 00000110
/* 001AC 80AFB83C 0C03D719 */  jal     func_800F5C64              
/* 001B0 80AFB840 24040039 */  addiu   $a0, $zero, 0x0039         ## $a0 = 00000039
/* 001B4 80AFB844 3C0E80B0 */  lui     $t6, %hi(func_80AFB950)    ## $t6 = 80B00000
/* 001B8 80AFB848 25CEB950 */  addiu   $t6, $t6, %lo(func_80AFB950) ## $t6 = 80AFB950
/* 001BC 80AFB84C 1000000E */  beq     $zero, $zero, .L80AFB888   
/* 001C0 80AFB850 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
.L80AFB854:
/* 001C4 80AFB854 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 001C8 80AFB858 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 001CC 80AFB85C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001D0 80AFB860 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 001D4 80AFB864 02218021 */  addu    $s0, $s1, $at              
/* 001D8 80AFB868 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001DC 80AFB86C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001E0 80AFB870 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 001E4 80AFB874 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 001E8 80AFB878 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001EC 80AFB87C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001F0 80AFB880 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 001F4 80AFB884 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80AFB888:
/* 001F8 80AFB888 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001FC 80AFB88C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00200 80AFB890 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00204 80AFB894 03E00008 */  jr      $ra                        
/* 00208 80AFB898 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
