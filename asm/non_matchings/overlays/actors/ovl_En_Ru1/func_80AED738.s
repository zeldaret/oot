glabel func_80AED738
/* 02B28 80AED738 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02B2C 80AED73C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B30 80AED740 0C2BB589 */  jal     func_80AED624              
/* 02B34 80AED744 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02B38 80AED748 10400038 */  beq     $v0, $zero, .L80AED82C     
/* 02B3C 80AED74C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02B40 80AED750 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02B44 80AED754 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 02B48 80AED758 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02B4C 80AED75C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 02B50 80AED760 C48402A4 */  lwc1    $f4, 0x02A4($a0)           ## 000002A4
/* 02B54 80AED764 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 02B58 80AED768 46062200 */  add.s   $f8, $f4, $f6              
/* 02B5C 80AED76C E48802A4 */  swc1    $f8, 0x02A4($a0)           ## 000002A4
/* 02B60 80AED770 C48002A4 */  lwc1    $f0, 0x02A4($a0)           ## 000002A4
/* 02B64 80AED774 4602003C */  c.lt.s  $f0, $f2                   
/* 02B68 80AED778 00000000 */  nop
/* 02B6C 80AED77C 45000029 */  bc1f    .L80AED824                 
/* 02B70 80AED780 00000000 */  nop
/* 02B74 80AED784 46001281 */  sub.s   $f10, $f2, $f0             
/* 02B78 80AED788 44818000 */  mtc1    $at, $f16                  ## $f16 = 255.00
/* 02B7C 80AED78C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02B80 80AED790 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02B84 80AED794 46105482 */  mul.s   $f18, $f10, $f16           
/* 02B88 80AED798 46029103 */  div.s   $f4, $f18, $f2             
/* 02B8C 80AED79C 444EF800 */  cfc1    $t6, $31
/* 02B90 80AED7A0 44C2F800 */  ctc1    $v0, $31
/* 02B94 80AED7A4 00000000 */  nop
/* 02B98 80AED7A8 460021A4 */  cvt.w.s $f6, $f4                   
/* 02B9C 80AED7AC 4442F800 */  cfc1    $v0, $31
/* 02BA0 80AED7B0 00000000 */  nop
/* 02BA4 80AED7B4 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 02BA8 80AED7B8 50400013 */  beql    $v0, $zero, .L80AED808     
/* 02BAC 80AED7BC 44023000 */  mfc1    $v0, $f6                   
/* 02BB0 80AED7C0 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 02BB4 80AED7C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02BB8 80AED7C8 46062181 */  sub.s   $f6, $f4, $f6              
/* 02BBC 80AED7CC 44C2F800 */  ctc1    $v0, $31
/* 02BC0 80AED7D0 00000000 */  nop
/* 02BC4 80AED7D4 460031A4 */  cvt.w.s $f6, $f6                   
/* 02BC8 80AED7D8 4442F800 */  cfc1    $v0, $31
/* 02BCC 80AED7DC 00000000 */  nop
/* 02BD0 80AED7E0 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 02BD4 80AED7E4 14400005 */  bne     $v0, $zero, .L80AED7FC     
/* 02BD8 80AED7E8 00000000 */  nop
/* 02BDC 80AED7EC 44023000 */  mfc1    $v0, $f6                   
/* 02BE0 80AED7F0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02BE4 80AED7F4 10000007 */  beq     $zero, $zero, .L80AED814   
/* 02BE8 80AED7F8 00411025 */  or      $v0, $v0, $at              ## $v0 = 80000000
.L80AED7FC:
/* 02BEC 80AED7FC 10000005 */  beq     $zero, $zero, .L80AED814   
/* 02BF0 80AED800 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 02BF4 80AED804 44023000 */  mfc1    $v0, $f6                   
.L80AED808:
/* 02BF8 80AED808 00000000 */  nop
/* 02BFC 80AED80C 0440FFFB */  bltz    $v0, .L80AED7FC            
/* 02C00 80AED810 00000000 */  nop
.L80AED814:
/* 02C04 80AED814 44CEF800 */  ctc1    $t6, $31
/* 02C08 80AED818 AC8202A8 */  sw      $v0, 0x02A8($a0)           ## 000002A8
/* 02C0C 80AED81C 10000003 */  beq     $zero, $zero, .L80AED82C   
/* 02C10 80AED820 A08200C8 */  sb      $v0, 0x00C8($a0)           ## 000000C8
.L80AED824:
/* 02C14 80AED824 0C00B55C */  jal     Actor_Kill
              
/* 02C18 80AED828 00000000 */  nop
.L80AED82C:
/* 02C1C 80AED82C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C20 80AED830 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C24 80AED834 03E00008 */  jr      $ra                        
/* 02C28 80AED838 00000000 */  nop
