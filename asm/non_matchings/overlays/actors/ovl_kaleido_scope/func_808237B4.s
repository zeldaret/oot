glabel func_808237B4
/* 0FF94 808237B4 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0FF98 808237B8 24C6FA90 */  addiu   $a2, $a2, 0xFA90           ## $a2 = 8015FA90
/* 0FF9C 808237BC 8CCE0000 */  lw      $t6, 0x0000($a2)           ## 8015FA90
/* 0FFA0 808237C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0FFA4 808237C4 85CF07AE */  lh      $t7, 0x07AE($t6)           ## 000007AE
/* 0FFA8 808237C8 11E00007 */  beq     $t7, $zero, .L808237E8     
/* 0FFAC 808237CC 00000000 */  nop
/* 0FFB0 808237D0 94B8000C */  lhu     $t8, 0x000C($a1)           ## 0000000C
/* 0FFB4 808237D4 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 0FFB8 808237D8 0301C827 */  nor     $t9, $t8, $at              
/* 0FFBC 808237DC 13200002 */  beq     $t9, $zero, .L808237E8     
/* 0FFC0 808237E0 00000000 */  nop
/* 0FFC4 808237E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808237E8:
/* 0FFC8 808237E8 14400068 */  bne     $v0, $zero, .L8082398C     
/* 0FFCC 808237EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FFD0 808237F0 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 0FFD4 808237F4 00811021 */  addu    $v0, $a0, $at              
/* 0FFD8 808237F8 944301E6 */  lhu     $v1, 0x01E6($v0)           ## 000001E7
/* 0FFDC 808237FC 3C018083 */  lui     $at, %hi(D_8082ABAC)       ## $at = 80830000
/* 0FFE0 80823800 C44401D8 */  lwc1    $f4, 0x01D8($v0)           ## 000001D9
/* 0FFE4 80823804 00032880 */  sll     $a1, $v1,  2               
/* 0FFE8 80823808 00250821 */  addu    $at, $at, $a1              
/* 0FFEC 8082380C C426ABAC */  lwc1    $f6, %lo(D_8082ABAC)($at)  
/* 0FFF0 80823810 3C018083 */  lui     $at, %hi(D_8082ABCC)       ## $at = 80830000
/* 0FFF4 80823814 00250821 */  addu    $at, $at, $a1              
/* 0FFF8 80823818 46062200 */  add.s   $f8, $f4, $f6              
/* 0FFFC 8082381C C44A01E0 */  lwc1    $f10, 0x01E0($v0)          ## 000001E1
/* 10000 80823820 944801EA */  lhu     $t0, 0x01EA($v0)           ## 000001EB
/* 10004 80823824 E44801D8 */  swc1    $f8, 0x01D8($v0)           ## 000001D9
/* 10008 80823828 C430ABCC */  lwc1    $f16, %lo(D_8082ABCC)($at) 
/* 1000C 8082382C 29010020 */  slti    $at, $t0, 0x0020           
/* 10010 80823830 46105480 */  add.s   $f18, $f10, $f16           
/* 10014 80823834 10200025 */  beq     $at, $zero, .L808238CC     
/* 10018 80823838 E45201E0 */  swc1    $f18, 0x01E0($v0)          ## 000001E1
/* 1001C 8082383C 8CC30000 */  lw      $v1, 0x0000($a2)           ## 8015FA90
/* 10020 80823840 84690DC6 */  lh      $t1, 0x0DC6($v1)           ## 00000DC6
/* 10024 80823844 846A0DA0 */  lh      $t2, 0x0DA0($v1)           ## 00000DA0
/* 10028 80823848 846C0DB4 */  lh      $t4, 0x0DB4($v1)           ## 00000DB4
/* 1002C 8082384C 012A001A */  div     $zero, $t1, $t2            
/* 10030 80823850 00005812 */  mflo    $t3                        
/* 10034 80823854 018B6823 */  subu    $t5, $t4, $t3              
/* 10038 80823858 A46D0DB4 */  sh      $t5, 0x0DB4($v1)           ## 00000DB4
/* 1003C 8082385C 8CC30000 */  lw      $v1, 0x0000($a2)           ## 8015FA90
/* 10040 80823860 15400002 */  bne     $t2, $zero, .L8082386C     
/* 10044 80823864 00000000 */  nop
/* 10048 80823868 0007000D */  break 7
.L8082386C:
/* 1004C 8082386C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 10050 80823870 15410004 */  bne     $t2, $at, .L80823884       
/* 10054 80823874 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10058 80823878 15210002 */  bne     $t1, $at, .L80823884       
/* 1005C 8082387C 00000000 */  nop
/* 10060 80823880 0006000D */  break 6
.L80823884:
/* 10064 80823884 846E0DC8 */  lh      $t6, 0x0DC8($v1)           ## 00000DC8
/* 10068 80823888 846F0DA0 */  lh      $t7, 0x0DA0($v1)           ## 00000DA0
/* 1006C 8082388C 84790DB6 */  lh      $t9, 0x0DB6($v1)           ## 00000DB6
/* 10070 80823890 01CF001A */  div     $zero, $t6, $t7            
/* 10074 80823894 0000C012 */  mflo    $t8                        
/* 10078 80823898 03384023 */  subu    $t0, $t9, $t8              
/* 1007C 8082389C 15E00002 */  bne     $t7, $zero, .L808238A8     
/* 10080 808238A0 00000000 */  nop
/* 10084 808238A4 0007000D */  break 7
.L808238A8:
/* 10088 808238A8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 1008C 808238AC 15E10004 */  bne     $t7, $at, .L808238C0       
/* 10090 808238B0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10094 808238B4 15C10002 */  bne     $t6, $at, .L808238C0       
/* 10098 808238B8 00000000 */  nop
/* 1009C 808238BC 0006000D */  break 6
.L808238C0:
/* 100A0 808238C0 A4680DB6 */  sh      $t0, 0x0DB6($v1)           ## 00000DB6
/* 100A4 808238C4 10000024 */  beq     $zero, $zero, .L80823958   
/* 100A8 808238C8 944901EA */  lhu     $t1, 0x01EA($v0)           ## 000001EB
.L808238CC:
/* 100AC 808238CC 8CC30000 */  lw      $v1, 0x0000($a2)           ## 8015FA90
/* 100B0 808238D0 84690DC6 */  lh      $t1, 0x0DC6($v1)           ## 00000DC6
/* 100B4 808238D4 846A0DA0 */  lh      $t2, 0x0DA0($v1)           ## 00000DA0
/* 100B8 808238D8 846B0DB4 */  lh      $t3, 0x0DB4($v1)           ## 00000DB4
/* 100BC 808238DC 012A001A */  div     $zero, $t1, $t2            
/* 100C0 808238E0 00006012 */  mflo    $t4                        
/* 100C4 808238E4 016C6821 */  addu    $t5, $t3, $t4              
/* 100C8 808238E8 A46D0DB4 */  sh      $t5, 0x0DB4($v1)           ## 00000DB4
/* 100CC 808238EC 8CC30000 */  lw      $v1, 0x0000($a2)           ## 8015FA90
/* 100D0 808238F0 15400002 */  bne     $t2, $zero, .L808238FC     
/* 100D4 808238F4 00000000 */  nop
/* 100D8 808238F8 0007000D */  break 7
.L808238FC:
/* 100DC 808238FC 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 100E0 80823900 15410004 */  bne     $t2, $at, .L80823914       
/* 100E4 80823904 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 100E8 80823908 15210002 */  bne     $t1, $at, .L80823914       
/* 100EC 8082390C 00000000 */  nop
/* 100F0 80823910 0006000D */  break 6
.L80823914:
/* 100F4 80823914 846E0DC8 */  lh      $t6, 0x0DC8($v1)           ## 00000DC8
/* 100F8 80823918 846F0DA0 */  lh      $t7, 0x0DA0($v1)           ## 00000DA0
/* 100FC 8082391C 84780DB6 */  lh      $t8, 0x0DB6($v1)           ## 00000DB6
/* 10100 80823920 01CF001A */  div     $zero, $t6, $t7            
/* 10104 80823924 0000C812 */  mflo    $t9                        
/* 10108 80823928 03194021 */  addu    $t0, $t8, $t9              
/* 1010C 8082392C A4680DB6 */  sh      $t0, 0x0DB6($v1)           ## 00000DB6
/* 10110 80823930 15E00002 */  bne     $t7, $zero, .L8082393C     
/* 10114 80823934 00000000 */  nop
/* 10118 80823938 0007000D */  break 7
.L8082393C:
/* 1011C 8082393C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 10120 80823940 15E10004 */  bne     $t7, $at, .L80823954       
/* 10124 80823944 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10128 80823948 15C10002 */  bne     $t6, $at, .L80823954       
/* 1012C 8082394C 00000000 */  nop
/* 10130 80823950 0006000D */  break 6
.L80823954:
/* 10134 80823954 944901EA */  lhu     $t1, 0x01EA($v0)           ## 000001EB
.L80823958:
/* 10138 80823958 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 1013C 8082395C 252A0004 */  addiu   $t2, $t1, 0x0004           ## $t2 = 00000004
/* 10140 80823960 314BFFFF */  andi    $t3, $t2, 0xFFFF           ## $t3 = 00000004
/* 10144 80823964 15610009 */  bne     $t3, $at, .L8082398C       
/* 10148 80823968 A44A01EA */  sh      $t2, 0x01EA($v0)           ## 000001EB
/* 1014C 8082396C 944C01E6 */  lhu     $t4, 0x01E6($v0)           ## 000001E7
/* 10150 80823970 3C0E8083 */  lui     $t6, %hi(D_8082ABEC)       ## $t6 = 80830000
/* 10154 80823974 A44001EA */  sh      $zero, 0x01EA($v0)         ## 000001EB
/* 10158 80823978 000C6840 */  sll     $t5, $t4,  1               
/* 1015C 8082397C 01CD7021 */  addu    $t6, $t6, $t5              
/* 10160 80823980 95CEABEC */  lhu     $t6, %lo(D_8082ABEC)($t6)  
/* 10164 80823984 A44001E4 */  sh      $zero, 0x01E4($v0)         ## 000001E5
/* 10168 80823988 A44E01E8 */  sh      $t6, 0x01E8($v0)           ## 000001E9
.L8082398C:
/* 1016C 8082398C 03E00008 */  jr      $ra                        
/* 10170 80823990 00000000 */  nop
