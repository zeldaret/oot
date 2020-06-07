glabel func_80ACAF74
/* 01054 80ACAF74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01058 80ACAF78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0105C 80ACAF7C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01060 80ACAF80 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01064 80ACAF84 0C042F6F */  jal     func_8010BDBC              
/* 01068 80ACAF88 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0106C 80ACAF8C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01070 80ACAF90 54410010 */  bnel    $v0, $at, .L80ACAFD4       
/* 01074 80ACAF94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01078 80ACAF98 0C041AF2 */  jal     func_80106BC8              
/* 0107C 80ACAF9C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01080 80ACAFA0 1040000B */  beq     $v0, $zero, .L80ACAFD0     
/* 01084 80ACAFA4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01088 80ACAFA8 0C042DC8 */  jal     func_8010B720              
/* 0108C 80ACAFAC 2405206A */  addiu   $a1, $zero, 0x206A         ## $a1 = 0000206A
/* 01090 80ACAFB0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01094 80ACAFB4 3C0E80AD */  lui     $t6, %hi(func_80ACAEB8)    ## $t6 = 80AD0000
/* 01098 80ACAFB8 25CEAEB8 */  addiu   $t6, $t6, %lo(func_80ACAEB8) ## $t6 = 80ACAEB8
/* 0109C 80ACAFBC 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 010A0 80ACAFC0 AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 010A4 80ACAFC4 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 010A8 80ACAFC8 0C2B29C7 */  jal     func_80ACA71C              
/* 010AC 80ACAFCC A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACAFD0:
/* 010B0 80ACAFD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACAFD4:
/* 010B4 80ACAFD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010B8 80ACAFD8 03E00008 */  jr      $ra                        
/* 010BC 80ACAFDC 00000000 */  nop
