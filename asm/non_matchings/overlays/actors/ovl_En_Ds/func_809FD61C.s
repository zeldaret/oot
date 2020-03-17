glabel func_809FD61C
/* 005EC 809FD61C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005F0 809FD620 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005F4 809FD624 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 005F8 809FD628 0C00BD04 */  jal     func_8002F410              
/* 005FC 809FD62C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00600 809FD630 10400006 */  beq     $v0, $zero, .L809FD64C     
/* 00604 809FD634 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00608 809FD638 3C0E80A0 */  lui     $t6, %hi(func_809FD10C)    ## $t6 = 80A00000
/* 0060C 809FD63C 25CED10C */  addiu   $t6, $t6, %lo(func_809FD10C) ## $t6 = 809FD10C
/* 00610 809FD640 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00614 809FD644 10000009 */  beq     $zero, $zero, .L809FD66C   
/* 00618 809FD648 AC8E01EC */  sw      $t6, 0x01EC($a0)           ## 000001EC
.L809FD64C:
/* 0061C 809FD64C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00620 809FD650 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00624 809FD654 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 00628 809FD658 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 0062C 809FD65C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00630 809FD660 24060012 */  addiu   $a2, $zero, 0x0012         ## $a2 = 00000012
/* 00634 809FD664 0C00BD0D */  jal     func_8002F434              
/* 00638 809FD668 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L809FD66C:
/* 0063C 809FD66C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00640 809FD670 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00644 809FD674 03E00008 */  jr      $ra                        
/* 00648 809FD678 00000000 */  nop


