glabel func_80AEB59C
/* 0098C 80AEB59C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00990 80AEB5A0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00994 80AEB5A4 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 00998 80AEB5A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0099C 80AEB5AC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009A0 80AEB5B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009A4 80AEB5B4 85C61458 */  lh      $a2, 0x1458($t6)           ## 80161458
/* 009A8 80AEB5B8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009AC 80AEB5BC 24C601F4 */  addiu   $a2, $a2, 0x01F4           ## $a2 = 000001F4
/* 009B0 80AEB5C0 00063400 */  sll     $a2, $a2, 16               
/* 009B4 80AEB5C4 0C2BAD2A */  jal     func_80AEB4A8              
/* 009B8 80AEB5C8 00063403 */  sra     $a2, $a2, 16               
/* 009BC 80AEB5CC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 009C0 80AEB5D0 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 009C4 80AEB5D4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 009C8 80AEB5D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 009CC 80AEB5DC 844F145A */  lh      $t7, 0x145A($v0)           ## 8016145A
/* 009D0 80AEB5E0 84461458 */  lh      $a2, 0x1458($v0)           ## 80161458
/* 009D4 80AEB5E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009D8 80AEB5E8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 009DC 80AEB5EC 24C601F4 */  addiu   $a2, $a2, 0x01F4           ## $a2 = 000001F4
/* 009E0 80AEB5F0 00063400 */  sll     $a2, $a2, 16               
/* 009E4 80AEB5F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 009E8 80AEB5F8 00063403 */  sra     $a2, $a2, 16               
/* 009EC 80AEB5FC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 009F0 80AEB600 46083280 */  add.s   $f10, $f6, $f8             
/* 009F4 80AEB604 4600540D */  trunc.w.s $f16, $f10                 
/* 009F8 80AEB608 44078000 */  mfc1    $a3, $f16                  
/* 009FC 80AEB60C 00000000 */  nop
/* 00A00 80AEB610 00073C00 */  sll     $a3, $a3, 16               
/* 00A04 80AEB614 0C2BAD2A */  jal     func_80AEB4A8              
/* 00A08 80AEB618 00073C03 */  sra     $a3, $a3, 16               
/* 00A0C 80AEB61C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00A10 80AEB620 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 00A14 80AEB624 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A18 80AEB628 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00A1C 80AEB62C 8459145A */  lh      $t9, 0x145A($v0)           ## 8016145A
/* 00A20 80AEB630 84461458 */  lh      $a2, 0x1458($v0)           ## 80161458
/* 00A24 80AEB634 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A28 80AEB638 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 00A2C 80AEB63C 24C601F4 */  addiu   $a2, $a2, 0x01F4           ## $a2 = 000001F4
/* 00A30 80AEB640 00063400 */  sll     $a2, $a2, 16               
/* 00A34 80AEB644 46809120 */  cvt.s.w $f4, $f18                  
/* 00A38 80AEB648 00063403 */  sra     $a2, $a2, 16               
/* 00A3C 80AEB64C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00A40 80AEB650 46062000 */  add.s   $f0, $f4, $f6              
/* 00A44 80AEB654 46000200 */  add.s   $f8, $f0, $f0              
/* 00A48 80AEB658 4600428D */  trunc.w.s $f10, $f8                  
/* 00A4C 80AEB65C 44075000 */  mfc1    $a3, $f10                  
/* 00A50 80AEB660 00000000 */  nop
/* 00A54 80AEB664 00073C00 */  sll     $a3, $a3, 16               
/* 00A58 80AEB668 0C2BAD2A */  jal     func_80AEB4A8              
/* 00A5C 80AEB66C 00073C03 */  sra     $a3, $a3, 16               
/* 00A60 80AEB670 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A64 80AEB674 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A68 80AEB678 03E00008 */  jr      $ra                        
/* 00A6C 80AEB67C 00000000 */  nop


