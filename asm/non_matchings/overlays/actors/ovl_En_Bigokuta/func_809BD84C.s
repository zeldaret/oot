glabel func_809BD84C
/* 00BEC 809BD84C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00BF0 809BD850 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00BF4 809BD854 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BF8 809BD858 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BFC 809BD85C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C00 809BD860 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C04 809BD864 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C08 809BD868 860E0196 */  lh      $t6, 0x0196($s0)           ## 00000196
/* 00C0C 809BD86C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00C10 809BD870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 809BD874 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00C18 809BD878 A60F0196 */  sh      $t7, 0x0196($s0)           ## 00000196
/* 00C1C 809BD87C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00C20 809BD880 10410003 */  beq     $v0, $at, .L809BD890       
/* 00C24 809BD884 2401FFEC */  addiu   $at, $zero, 0xFFEC         ## $at = FFFFFFEC
/* 00C28 809BD888 54410005 */  bnel    $v0, $at, .L809BD8A0       
/* 00C2C 809BD88C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L809BD890:
/* 00C30 809BD890 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C34 809BD894 24053906 */  addiu   $a1, $zero, 0x3906         ## $a1 = 00003906
/* 00C38 809BD898 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00C3C 809BD89C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L809BD8A0:
/* 00C40 809BD8A0 54410004 */  bnel    $v0, $at, .L809BD8B4       
/* 00C44 809BD8A4 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00C48 809BD8A8 0C03D6B3 */  jal     func_800F5ACC              
/* 00C4C 809BD8AC 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 00C50 809BD8B0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L809BD8B4:
/* 00C54 809BD8B4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C58 809BD8B8 57010004 */  bnel    $t8, $at, .L809BD8CC       
/* 00C5C 809BD8BC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C60 809BD8C0 0C26F4DC */  jal     func_809BD370              
/* 00C64 809BD8C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C68 809BD8C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BD8CC:
/* 00C6C 809BD8CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C70 809BD8D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C74 809BD8D4 03E00008 */  jr      $ra                        
/* 00C78 809BD8D8 00000000 */  nop


