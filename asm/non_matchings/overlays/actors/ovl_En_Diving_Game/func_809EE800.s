glabel func_809EE800
/* 00F90 809EE800 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F94 809EE804 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F98 809EE808 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F9C 809EE80C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FA0 809EE810 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00FA4 809EE814 0C02927F */  jal     SkelAnime_Update
              
/* 00FA8 809EE818 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FAC 809EE81C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FB0 809EE820 0C042F6F */  jal     func_8010BDBC              
/* 00FB4 809EE824 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00FB8 809EE828 860E0292 */  lh      $t6, 0x0292($s0)           ## 00000292
/* 00FBC 809EE82C 55C2002C */  bnel    $t6, $v0, .L809EE8E0       
/* 00FC0 809EE830 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FC4 809EE834 0C041AF2 */  jal     func_80106BC8              
/* 00FC8 809EE838 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FCC 809EE83C 50400028 */  beql    $v0, $zero, .L809EE8E0     
/* 00FD0 809EE840 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FD4 809EE844 0C041B33 */  jal     func_80106CCC              
/* 00FD8 809EE848 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FDC 809EE84C 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xeda)
/* 00FE0 809EE850 95EFF53A */  lhu     $t7, %lo(gSaveContext+0xeda)($t7)
/* 00FE4 809EE854 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 00FE8 809EE858 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 00FEC 809EE85C 31F80100 */  andi    $t8, $t7, 0x0100           ## $t8 = 00000000
/* 00FF0 809EE860 17000009 */  bne     $t8, $zero, .L809EE888     
/* 00FF4 809EE864 00000000 */  nop
/* 00FF8 809EE868 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 00FFC 809EE86C 872412D8 */  lh      $a0, 0x12D8($t9)           ## 801612D8
/* 01000 809EE870 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 01004 809EE874 00042400 */  sll     $a0, $a0, 16               
/* 01008 809EE878 0C0222CD */  jal     func_80088B34              
/* 0100C 809EE87C 00042403 */  sra     $a0, $a0, 16               
/* 01010 809EE880 10000007 */  beq     $zero, $zero, .L809EE8A0   
/* 01014 809EE884 00000000 */  nop
.L809EE888:
/* 01018 809EE888 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 0101C 809EE88C 850412D8 */  lh      $a0, 0x12D8($t0)           ## 000012D8
/* 01020 809EE890 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000032
/* 01024 809EE894 00042400 */  sll     $a0, $a0, 16               
/* 01028 809EE898 0C0222CD */  jal     func_80088B34              
/* 0102C 809EE89C 00042403 */  sra     $a0, $a0, 16               
.L809EE8A0:
/* 01030 809EE8A0 0C03D6B3 */  jal     func_800F5ACC              
/* 01034 809EE8A4 2404006C */  addiu   $a0, $zero, 0x006C         ## $a0 = 0000006C
/* 01038 809EE8A8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0103C 809EE8AC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01040 809EE8B0 0C00B7D5 */  jal     func_8002DF54              
/* 01044 809EE8B4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01048 809EE8B8 3C0C809F */  lui     $t4, %hi(func_809EDD4C)    ## $t4 = 809F0000
/* 0104C 809EE8BC 2409405B */  addiu   $t1, $zero, 0x405B         ## $t1 = 0000405B
/* 01050 809EE8C0 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 01054 809EE8C4 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 01058 809EE8C8 258CDD4C */  addiu   $t4, $t4, %lo(func_809EDD4C) ## $t4 = 809EDD4C
/* 0105C 809EE8CC A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 01060 809EE8D0 A60A0292 */  sh      $t2, 0x0292($s0)           ## 00000292
/* 01064 809EE8D4 A60B02A8 */  sh      $t3, 0x02A8($s0)           ## 000002A8
/* 01068 809EE8D8 AE0C0280 */  sw      $t4, 0x0280($s0)           ## 00000280
/* 0106C 809EE8DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EE8E0:
/* 01070 809EE8E0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01074 809EE8E4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01078 809EE8E8 03E00008 */  jr      $ra                        
/* 0107C 809EE8EC 00000000 */  nop
