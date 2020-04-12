glabel func_80AED44C
/* 0283C 80AED44C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 02840 80AED450 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F580
/* 02844 80AED454 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02848 80AED458 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0284C 80AED45C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 02850 80AED460 11C00020 */  beq     $t6, $zero, .L80AED4E4     
/* 02854 80AED464 304F0020 */  andi    $t7, $v0, 0x0020           ## $t7 = 00000000
/* 02858 80AED468 15E0001E */  bne     $t7, $zero, .L80AED4E4     
/* 0285C 80AED46C 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 02860 80AED470 1700001C */  bne     $t8, $zero, .L80AED4E4     
/* 02864 80AED474 30590080 */  andi    $t9, $v0, 0x0080           ## $t9 = 00000000
/* 02868 80AED478 1720001A */  bne     $t9, $zero, .L80AED4E4     
/* 0286C 80AED47C 00000000 */  nop
/* 02870 80AED480 0C2BAC08 */  jal     func_80AEB020              
/* 02874 80AED484 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02878 80AED488 14400012 */  bne     $v0, $zero, .L80AED4D4     
/* 0287C 80AED48C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02880 80AED490 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02884 80AED494 24A597B8 */  addiu   $a1, $a1, 0x97B8           ## $a1 = 060097B8
/* 02888 80AED498 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0288C 80AED49C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02890 80AED4A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02894 80AED4A4 0C2BAC99 */  jal     func_80AEB264              
/* 02898 80AED4A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0289C 80AED4AC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 028A0 80AED4B0 24080016 */  addiu   $t0, $zero, 0x0016         ## $t0 = 00000016
/* 028A4 80AED4B4 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 028A8 80AED4B8 80820003 */  lb      $v0, 0x0003($a0)           ## 00000003
/* 028AC 80AED4BC AC880264 */  sw      $t0, 0x0264($a0)           ## 00000264
/* 028B0 80AED4C0 A0890003 */  sb      $t1, 0x0003($a0)           ## 00000003
/* 028B4 80AED4C4 A0820284 */  sb      $v0, 0x0284($a0)           ## 00000284
/* 028B8 80AED4C8 A0820286 */  sb      $v0, 0x0286($a0)           ## 00000286
/* 028BC 80AED4CC 10000007 */  beq     $zero, $zero, .L80AED4EC   
/* 028C0 80AED4D0 A0820285 */  sb      $v0, 0x0285($a0)           ## 00000285
.L80AED4D4:
/* 028C4 80AED4D4 0C00B55C */  jal     Actor_Kill
              
/* 028C8 80AED4D8 00000000 */  nop
/* 028CC 80AED4DC 10000004 */  beq     $zero, $zero, .L80AED4F0   
/* 028D0 80AED4E0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AED4E4:
/* 028D4 80AED4E4 0C00B55C */  jal     Actor_Kill
              
/* 028D8 80AED4E8 00000000 */  nop
.L80AED4EC:
/* 028DC 80AED4EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AED4F0:
/* 028E0 80AED4F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 028E4 80AED4F4 03E00008 */  jr      $ra                        
/* 028E8 80AED4F8 00000000 */  nop
