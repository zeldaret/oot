glabel func_808BC65C
/* 0015C 808BC65C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00160 808BC660 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00164 808BC664 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00168 808BC668 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 0016C 808BC66C 51C0001F */  beql    $t6, $zero, .L808BC6EC     
/* 00170 808BC670 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00174 808BC674 8CA21D8C */  lw      $v0, 0x1D8C($a1)           ## 00001D8C
/* 00178 808BC678 5040001C */  beql    $v0, $zero, .L808BC6EC     
/* 0017C 808BC67C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00180 808BC680 94430000 */  lhu     $v1, 0x0000($v0)           ## 00000000
/* 00184 808BC684 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00188 808BC688 3C05808C */  lui     $a1, %hi(func_808BC80C)    ## $a1 = 808C0000
/* 0018C 808BC68C 54610006 */  bnel    $v1, $at, .L808BC6A8       
/* 00190 808BC690 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00194 808BC694 0C22F140 */  jal     func_808BC500              
/* 00198 808BC698 24A5C80C */  addiu   $a1, $a1, %lo(func_808BC80C) ## $a1 = 808BC80C
/* 0019C 808BC69C 10000013 */  beq     $zero, $zero, .L808BC6EC   
/* 001A0 808BC6A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001A4 808BC6A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L808BC6A8:
/* 001A8 808BC6A8 1461000F */  bne     $v1, $at, .L808BC6E8       
/* 001AC 808BC6AC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 001B0 808BC6B0 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 001B4 808BC6B4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 001B8 808BC6B8 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 001BC 808BC6BC 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 001C0 808BC6C0 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 001C4 808BC6C4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 001C8 808BC6C8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 001CC 808BC6CC 24042866 */  addiu   $a0, $zero, 0x2866         ## $a0 = 00002866
/* 001D0 808BC6D0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 001D4 808BC6D4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 001D8 808BC6D8 3C05808C */  lui     $a1, %hi(func_808BC6F8)    ## $a1 = 808C0000
/* 001DC 808BC6DC 24A5C6F8 */  addiu   $a1, $a1, %lo(func_808BC6F8) ## $a1 = 808BC6F8
/* 001E0 808BC6E0 0C22F140 */  jal     func_808BC500              
/* 001E4 808BC6E4 8FA40020 */  lw      $a0, 0x0020($sp)           
.L808BC6E8:
/* 001E8 808BC6E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BC6EC:
/* 001EC 808BC6EC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001F0 808BC6F0 03E00008 */  jr      $ra                        
/* 001F4 808BC6F4 00000000 */  nop


