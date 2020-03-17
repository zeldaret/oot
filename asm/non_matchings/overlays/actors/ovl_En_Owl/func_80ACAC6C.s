glabel func_80ACAC6C
/* 00D4C 80ACAC6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D50 80ACAC70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D54 80ACAC74 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D58 80ACAC78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D5C 80ACAC7C 0C042F6F */  jal     func_8010BDBC              
/* 00D60 80ACAC80 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00D64 80ACAC84 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00D68 80ACAC88 54410010 */  bnel    $v0, $at, .L80ACACCC       
/* 00D6C 80ACAC8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D70 80ACAC90 0C041AF2 */  jal     func_80106BC8              
/* 00D74 80ACAC94 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D78 80ACAC98 1040000B */  beq     $v0, $zero, .L80ACACC8     
/* 00D7C 80ACAC9C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D80 80ACACA0 0C042DC8 */  jal     func_8010B720              
/* 00D84 80ACACA4 2405206A */  addiu   $a1, $zero, 0x206A         ## $a1 = 0000206A
/* 00D88 80ACACA8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D8C 80ACACAC 3C0E80AD */  lui     $t6, %hi(func_80ACAB88)    ## $t6 = 80AD0000
/* 00D90 80ACACB0 25CEAB88 */  addiu   $t6, $t6, %lo(func_80ACAB88) ## $t6 = 80ACAB88
/* 00D94 80ACACB4 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 00D98 80ACACB8 AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 00D9C 80ACACBC 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 00DA0 80ACACC0 0C2B29C7 */  jal     func_80ACA71C              
/* 00DA4 80ACACC4 A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACACC8:
/* 00DA8 80ACACC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACACCC:
/* 00DAC 80ACACCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DB0 80ACACD0 03E00008 */  jr      $ra                        
/* 00DB4 80ACACD4 00000000 */  nop


