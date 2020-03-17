glabel func_809DF96C
/* 00B6C 809DF96C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B70 809DF970 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00B74 809DF974 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B78 809DF978 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B7C 809DF97C 00451021 */  addu    $v0, $v0, $a1              
/* 00B80 809DF980 944204C6 */  lhu     $v0, 0x04C6($v0)           ## 000104C6
/* 00B84 809DF984 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B88 809DF988 10400002 */  beq     $v0, $zero, .L809DF994     
/* 00B8C 809DF98C 00000000 */  nop
/* 00B90 809DF990 14410036 */  bne     $v0, $at, .L809DFA6C       
.L809DF994:
/* 00B94 809DF994 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00B98 809DF998 2442FA90 */  addiu   $v0, $v0, 0xFA90           ## $v0 = 8015FA90
/* 00B9C 809DF99C 8C470000 */  lw      $a3, 0x0000($v0)           ## 8015FA90
/* 00BA0 809DF9A0 84EF05BE */  lh      $t7, 0x05BE($a3)           ## 000005BE
/* 00BA4 809DF9A4 51E0002F */  beql    $t7, $zero, .L809DFA64     
/* 00BA8 809DF9A8 94980276 */  lhu     $t8, 0x0276($a0)           ## 00000276
/* 00BAC 809DF9AC 94850276 */  lhu     $a1, 0x0276($a0)           ## 00000276
/* 00BB0 809DF9B0 30B80004 */  andi    $t8, $a1, 0x0004           ## $t8 = 00000000
/* 00BB4 809DF9B4 13000005 */  beq     $t8, $zero, .L809DF9CC     
/* 00BB8 809DF9B8 30B9FFFB */  andi    $t9, $a1, 0xFFFB           ## $t9 = 00000000
/* 00BBC 809DF9BC A4990276 */  sh      $t9, 0x0276($a0)           ## 00000276
/* 00BC0 809DF9C0 8C480000 */  lw      $t0, 0x0000($v0)           ## 8015FA90
/* 00BC4 809DF9C4 10000029 */  beq     $zero, $zero, .L809DFA6C   
/* 00BC8 809DF9C8 A50005BE */  sh      $zero, 0x05BE($t0)         ## 000005BE
.L809DF9CC:
/* 00BCC 809DF9CC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00BD0 809DF9D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00BD4 809DF9D4 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00BD8 809DF9D8 4606203C */  c.lt.s  $f4, $f6                   
/* 00BDC 809DF9DC 00000000 */  nop
/* 00BE0 809DF9E0 4502001D */  bc1fl   .L809DFA58                 
/* 00BE4 809DF9E4 34AF0004 */  ori     $t7, $a1, 0x0004           ## $t7 = 00000004
/* 00BE8 809DF9E8 8489008A */  lh      $t1, 0x008A($a0)           ## 0000008A
/* 00BEC 809DF9EC 848A00B6 */  lh      $t2, 0x00B6($a0)           ## 000000B6
/* 00BF0 809DF9F0 3C0B809E */  lui     $t3, %hi(func_809DF8FC)    ## $t3 = 809E0000
/* 00BF4 809DF9F4 256BF8FC */  addiu   $t3, $t3, %lo(func_809DF8FC) ## $t3 = 809DF8FC
/* 00BF8 809DF9F8 012A1023 */  subu    $v0, $t1, $t2              
/* 00BFC 809DF9FC 00021400 */  sll     $v0, $v0, 16               
/* 00C00 809DFA00 00021403 */  sra     $v0, $v0, 16               
/* 00C04 809DFA04 04400003 */  bltz    $v0, .L809DFA14            
/* 00C08 809DFA08 00021823 */  subu    $v1, $zero, $v0            
/* 00C0C 809DFA0C 10000001 */  beq     $zero, $zero, .L809DFA14   
/* 00C10 809DFA10 00401825 */  or      $v1, $v0, $zero            ## $v1 = 8015FA90
.L809DFA14:
/* 00C14 809DFA14 286161A8 */  slti    $at, $v1, 0x61A8           
/* 00C18 809DFA18 1020000E */  beq     $at, $zero, .L809DFA54     
/* 00C1C 809DFA1C 3C06432A */  lui     $a2, 0x432A                ## $a2 = 432A0000
/* 00C20 809DFA20 A4E005BE */  sh      $zero, 0x05BE($a3)         ## 000005BE
/* 00C24 809DFA24 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
/* 00C28 809DFA28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C2C 809DFA2C AC8B027C */  sw      $t3, 0x027C($a0)           ## 0000027C
/* 00C30 809DFA30 01816825 */  or      $t5, $t4, $at              ## $t5 = 00010000
/* 00C34 809DFA34 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
/* 00C38 809DFA38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C3C 809DFA3C 0C00BCB3 */  jal     func_8002F2CC              
/* 00C40 809DFA40 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C44 809DFA44 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C48 809DFA48 240E2006 */  addiu   $t6, $zero, 0x2006         ## $t6 = 00002006
/* 00C4C 809DFA4C 10000007 */  beq     $zero, $zero, .L809DFA6C   
/* 00C50 809DFA50 A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
.L809DFA54:
/* 00C54 809DFA54 34AF0004 */  ori     $t7, $a1, 0x0004           ## $t7 = 00000004
.L809DFA58:
/* 00C58 809DFA58 10000004 */  beq     $zero, $zero, .L809DFA6C   
/* 00C5C 809DFA5C A48F0276 */  sh      $t7, 0x0276($a0)           ## 00000276
/* 00C60 809DFA60 94980276 */  lhu     $t8, 0x0276($a0)           ## 00000276
.L809DFA64:
/* 00C64 809DFA64 3319FFFB */  andi    $t9, $t8, 0xFFFB           ## $t9 = 00000000
/* 00C68 809DFA68 A4990276 */  sh      $t9, 0x0276($a0)           ## 00000276
.L809DFA6C:
/* 00C6C 809DFA6C 0C277D25 */  jal     func_809DF494              
/* 00C70 809DFA70 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C74 809DFA74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C78 809DFA78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C7C 809DFA7C 03E00008 */  jr      $ra                        
/* 00C80 809DFA80 00000000 */  nop


