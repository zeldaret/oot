glabel func_80AAF5EC
/* 0079C 80AAF5EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007A0 80AAF5F0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007A4 80AAF5F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007A8 80AAF5F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007AC 80AAF5FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 007B0 80AAF600 0C02927F */  jal     SkelAnime_Update
              
/* 007B4 80AAF604 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 007B8 80AAF608 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 007BC 80AAF60C 0C042F6F */  jal     func_8010BDBC              
/* 007C0 80AAF610 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 007C4 80AAF614 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 007C8 80AAF618 5441000F */  bnel    $v0, $at, .L80AAF658       
/* 007CC 80AAF61C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007D0 80AAF620 0C041AF2 */  jal     func_80106BC8              
/* 007D4 80AAF624 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 007D8 80AAF628 1040000A */  beq     $v0, $zero, .L80AAF654     
/* 007DC 80AAF62C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E0 80AAF630 960E01F4 */  lhu     $t6, 0x01F4($s0)           ## 000001F4
/* 007E4 80AAF634 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 007E8 80AAF638 260601F8 */  addiu   $a2, $s0, 0x01F8           ## $a2 = 000001F8
/* 007EC 80AAF63C 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 007F0 80AAF640 0C2ABB94 */  jal     func_80AAEE50              
/* 007F4 80AAF644 A60F01F4 */  sh      $t7, 0x01F4($s0)           ## 000001F4
/* 007F8 80AAF648 3C1880AB */  lui     $t8, %hi(func_80AAF330)    ## $t8 = 80AB0000
/* 007FC 80AAF64C 2718F330 */  addiu   $t8, $t8, %lo(func_80AAF330) ## $t8 = 80AAF330
/* 00800 80AAF650 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80AAF654:
/* 00804 80AAF654 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAF658:
/* 00808 80AAF658 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0080C 80AAF65C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00810 80AAF660 03E00008 */  jr      $ra                        
/* 00814 80AAF664 00000000 */  nop
