glabel func_80972868
/* 01918 80972868 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0191C 8097286C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01920 80972870 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01924 80972874 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01928 80972878 0C00B638 */  jal     Actor_MoveForward
              
/* 0192C 8097287C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 01930 80972880 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01934 80972884 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01938 80972888 C604006C */  lwc1    $f4, 0x006C($s0)           ## 0000006C
/* 0193C 8097288C C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 01940 80972890 92020184 */  lbu     $v0, 0x0184($s0)           ## 00000184
/* 01944 80972894 46062202 */  mul.s   $f8, $f4, $f6              
/* 01948 80972898 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 0194C 8097289C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 01950 809728A0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01954 809728A4 46085400 */  add.s   $f16, $f10, $f8            
/* 01958 809728A8 10400003 */  beq     $v0, $zero, .L809728B8     
/* 0195C 809728AC E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 01960 809728B0 1000003C */  beq     $zero, $zero, .L809729A4   
/* 01964 809728B4 A20E0184 */  sb      $t6, 0x0184($s0)           ## 00000184
.L809728B8:
/* 01968 809728B8 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 0196C 809728BC 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 01970 809728C0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01974 809728C4 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01978 809728C8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 0197C 809728CC 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01980 809728D0 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 01984 809728D4 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01988 809728D8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0198C 809728DC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01990 809728E0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01994 809728E4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01998 809728E8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 0199C 809728EC 10400003 */  beq     $v0, $zero, .L809728FC     
/* 019A0 809728F0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 019A4 809728F4 0C00B58B */  jal     Actor_SetScale
              
/* 019A8 809728F8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
.L809728FC:
/* 019AC 809728FC C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 019B0 80972900 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 019B4 80972904 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 019B8 80972908 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 019BC 8097290C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 019C0 80972910 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 019C4 80972914 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 019C8 80972918 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 019CC 8097291C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 019D0 80972920 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 019D4 80972924 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 019D8 80972928 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 019DC 8097292C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 019E0 80972930 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 019E4 80972934 10400004 */  beq     $v0, $zero, .L80972948     
/* 019E8 80972938 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 019EC 8097293C 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 019F0 80972940 0C00B58B */  jal     Actor_SetScale
              
/* 019F4 80972944 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
.L80972948:
/* 019F8 80972948 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 019FC 8097294C 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 01A00 80972950 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 01A04 80972954 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01A08 80972958 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 01A0C 8097295C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01A10 80972960 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01A14 80972964 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01A18 80972968 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01A1C 8097296C 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 01A20 80972970 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01A24 80972974 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 01A28 80972978 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01A2C 8097297C E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 01A30 80972980 10400004 */  beq     $v0, $zero, .L80972994     
/* 01A34 80972984 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01A38 80972988 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 01A3C 8097298C 0C00B58B */  jal     Actor_SetScale
              
/* 01A40 80972990 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
.L80972994:
/* 01A44 80972994 0C01E233 */  jal     func_800788CC              
/* 01A48 80972998 24041842 */  addiu   $a0, $zero, 0x1842         ## $a0 = 00001842
/* 01A4C 8097299C 0C00B55C */  jal     Actor_Kill
              
/* 01A50 809729A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809729A4:
/* 01A54 809729A4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01A58 809729A8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01A5C 809729AC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01A60 809729B0 03E00008 */  jr      $ra                        
/* 01A64 809729B4 00000000 */  nop
