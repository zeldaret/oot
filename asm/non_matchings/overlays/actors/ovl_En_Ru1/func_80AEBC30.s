glabel func_80AEBC30
/* 01020 80AEBC30 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01024 80AEBC34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01028 80AEBC38 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0102C 80AEBC3C 948F1D74 */  lhu     $t7, 0x1D74($a0)           ## 00001D74
/* 01030 80AEBC40 240100CD */  addiu   $at, $zero, 0x00CD         ## $at = 000000CD
/* 01034 80AEBC44 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01038 80AEBC48 15E1000A */  bne     $t7, $at, .L80AEBC74       
/* 0103C 80AEBC4C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01040 80AEBC50 8C821C44 */  lw      $v0, 0x1C44($a0)           ## 00001C44
/* 01044 80AEBC54 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 01048 80AEBC58 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 0104C 80AEBC5C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01050 80AEBC60 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01054 80AEBC64 24042889 */  addiu   $a0, $zero, 0x2889         ## $a0 = 00002889
/* 01058 80AEBC68 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0105C 80AEBC6C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01060 80AEBC70 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
.L80AEBC74:
/* 01064 80AEBC74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01068 80AEBC78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0106C 80AEBC7C 03E00008 */  jr      $ra                        
/* 01070 80AEBC80 00000000 */  nop


