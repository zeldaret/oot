.rdata
glabel D_809694B8
    .asciz "../z_demo_6k.c"
    .balign 4

glabel D_809694C8
    .asciz "../z_demo_6k.c"
    .balign 4

glabel D_809694D8
    .asciz "../z_demo_6k.c"
    .balign 4

glabel D_809694E8
    .asciz "../z_demo_6k.c"
    .balign 4

.late_rodata
glabel D_80969648
    .float 0.017453292

glabel D_8096964C
    .float 0.017453292

.text
glabel func_8096865C
/* 01D0C 8096865C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01D10 80968660 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D14 80968664 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D18 80968668 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 01D1C 8096866C AFA50064 */  sw      $a1, 0x0064($sp)           
/* 01D20 80968670 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01D24 80968674 3C068097 */  lui     $a2, %hi(D_809694B8)       ## $a2 = 80970000
/* 01D28 80968678 24C694B8 */  addiu   $a2, $a2, %lo(D_809694B8)  ## $a2 = 809694B8
/* 01D2C 8096867C 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE0
/* 01D30 80968680 240704B8 */  addiu   $a3, $zero, 0x04B8         ## $a3 = 000004B8
/* 01D34 80968684 0C031AB1 */  jal     Graph_OpenDisps              
/* 01D38 80968688 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01D3C 8096868C 8FA20060 */  lw      $v0, 0x0060($sp)           
/* 01D40 80968690 944F028C */  lhu     $t7, 0x028C($v0)           ## 0000028C
/* 01D44 80968694 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 01D48 80968698 5700007F */  bnel    $t8, $zero, .L80968898     
/* 01D4C 8096869C 8FAA0064 */  lw      $t2, 0x0064($sp)           
/* 01D50 809686A0 8459001C */  lh      $t9, 0x001C($v0)           ## 0000001C
/* 01D54 809686A4 3C090401 */  lui     $t1, %hi(D_040101A8)                ## $t1 = 04010000
/* 01D58 809686A8 3C080401 */  lui     $t0, %hi(D_04010130)                ## $t0 = 04010000
/* 01D5C 809686AC 2B210009 */  slti    $at, $t9, 0x0009           
/* 01D60 809686B0 14200004 */  bne     $at, $zero, .L809686C4     
/* 01D64 809686B4 252901A8 */  addiu   $t1, $t1, %lo(D_040101A8)           ## $t1 = 040101A8
/* 01D68 809686B8 25080130 */  addiu   $t0, $t0, %lo(D_04010130)           ## $t0 = 04010130
/* 01D6C 809686BC 10000002 */  beq     $zero, $zero, .L809686C8   
/* 01D70 809686C0 AFA80054 */  sw      $t0, 0x0054($sp)           
.L809686C4:
/* 01D74 809686C4 AFA90054 */  sw      $t1, 0x0054($sp)           
.L809686C8:
/* 01D78 809686C8 8FAA0064 */  lw      $t2, 0x0064($sp)           
/* 01D7C 809686CC 0C024F61 */  jal     func_80093D84              
/* 01D80 809686D0 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 01D84 809686D4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01D88 809686D8 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 01D8C 809686DC 358C8080 */  ori     $t4, $t4, 0x8080           ## $t4 = FA008080
/* 01D90 809686E0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01D94 809686E4 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01D98 809686E8 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 01D9C 809686EC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 01DA0 809686F0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01DA4 809686F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01DA8 809686F8 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 01DAC 809686FC 3C098097 */  lui     $t1, %hi(D_809692F8)       ## $t1 = 80970000
/* 01DB0 80968700 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01DB4 80968704 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 01DB8 80968708 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01DBC 8096870C 8FB80060 */  lw      $t8, 0x0060($sp)           
/* 01DC0 80968710 252992F8 */  addiu   $t1, $t1, %lo(D_809692F8)  ## $t1 = 809692F8
/* 01DC4 80968714 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01DC8 80968718 93190293 */  lbu     $t9, 0x0293($t8)           ## 00000293
/* 01DCC 8096871C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 01DD0 80968720 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01DD4 80968724 00194080 */  sll     $t0, $t9,  2               
/* 01DD8 80968728 01194023 */  subu    $t0, $t0, $t9              
/* 01DDC 8096872C 01091821 */  addu    $v1, $t0, $t1              
/* 01DE0 80968730 906B0002 */  lbu     $t3, 0x0002($v1)           ## 00000002
/* 01DE4 80968734 906E0000 */  lbu     $t6, 0x0000($v1)           ## 00000000
/* 01DE8 80968738 90680001 */  lbu     $t0, 0x0001($v1)           ## 00000001
/* 01DEC 8096873C 000B6200 */  sll     $t4, $t3,  8               
/* 01DF0 80968740 000E7E00 */  sll     $t7, $t6, 24               
/* 01DF4 80968744 018FC025 */  or      $t8, $t4, $t7              ## $t8 = FB008080
/* 01DF8 80968748 00084C00 */  sll     $t1, $t0, 16               
/* 01DFC 8096874C 03095025 */  or      $t2, $t8, $t1              ## $t2 = FB9692F8
/* 01E00 80968750 354B00FF */  ori     $t3, $t2, 0x00FF           ## $t3 = FB9692FF
/* 01E04 80968754 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01E08 80968758 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 01E0C 8096875C 0C03424C */  jal     Matrix_Mult              
/* 01E10 80968760 00812021 */  addu    $a0, $a0, $at              
/* 01E14 80968764 0C034213 */  jal     Matrix_Push              
/* 01E18 80968768 00000000 */  nop
/* 01E1C 8096876C 8FAD0060 */  lw      $t5, 0x0060($sp)           
/* 01E20 80968770 3C018097 */  lui     $at, %hi(D_80969648)       ## $at = 80970000
/* 01E24 80968774 C4289648 */  lwc1    $f8, %lo(D_80969648)($at)  
/* 01E28 80968778 95AE0290 */  lhu     $t6, 0x0290($t5)           ## 00000290
/* 01E2C 8096877C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01E30 80968780 000E6080 */  sll     $t4, $t6,  2               
/* 01E34 80968784 018E6023 */  subu    $t4, $t4, $t6              
/* 01E38 80968788 000C6040 */  sll     $t4, $t4,  1               
/* 01E3C 8096878C 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 01E40 80968790 00000000 */  nop
/* 01E44 80968794 468021A0 */  cvt.s.w $f6, $f4                   
/* 01E48 80968798 46083302 */  mul.s   $f12, $f6, $f8             
/* 01E4C 8096879C 0C0343B5 */  jal     Matrix_RotateZ              
/* 01E50 809687A0 00000000 */  nop
/* 01E54 809687A4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E58 809687A8 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 01E5C 809687AC 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 01E60 809687B0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E64 809687B4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 01E68 809687B8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01E6C 809687BC 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 01E70 809687C0 3C058097 */  lui     $a1, %hi(D_809694C8)       ## $a1 = 80970000
/* 01E74 809687C4 24A594C8 */  addiu   $a1, $a1, %lo(D_809694C8)  ## $a1 = 809694C8
/* 01E78 809687C8 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 01E7C 809687CC 240604CE */  addiu   $a2, $zero, 0x04CE         ## $a2 = 000004CE
/* 01E80 809687D0 0C0346A2 */  jal     Matrix_NewMtx              
/* 01E84 809687D4 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 01E88 809687D8 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 01E8C 809687DC 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01E90 809687E0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01E94 809687E4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01E98 809687E8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01E9C 809687EC AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01EA0 809687F0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01EA4 809687F4 8FAA0054 */  lw      $t2, 0x0054($sp)           
/* 01EA8 809687F8 0C034221 */  jal     Matrix_Pull              
/* 01EAC 809687FC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01EB0 80968800 8FAB0060 */  lw      $t3, 0x0060($sp)           
/* 01EB4 80968804 3C018097 */  lui     $at, %hi(D_8096964C)       ## $at = 80970000
/* 01EB8 80968808 C424964C */  lwc1    $f4, %lo(D_8096964C)($at)  
/* 01EBC 8096880C 956D0290 */  lhu     $t5, 0x0290($t3)           ## 00000290
/* 01EC0 80968810 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01EC4 80968814 000D7080 */  sll     $t6, $t5,  2               
/* 01EC8 80968818 01CD7023 */  subu    $t6, $t6, $t5              
/* 01ECC 8096881C 000E7040 */  sll     $t6, $t6,  1               
/* 01ED0 80968820 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 01ED4 80968824 00000000 */  nop
/* 01ED8 80968828 46805420 */  cvt.s.w $f16, $f10                 
/* 01EDC 8096882C 46008487 */  neg.s   $f18, $f16                 
/* 01EE0 80968830 46049302 */  mul.s   $f12, $f18, $f4            
/* 01EE4 80968834 0C0343B5 */  jal     Matrix_RotateZ              
/* 01EE8 80968838 00000000 */  nop
/* 01EEC 8096883C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01EF0 80968840 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 01EF4 80968844 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 01EF8 80968848 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01EFC 8096884C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 01F00 80968850 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01F04 80968854 8FB90064 */  lw      $t9, 0x0064($sp)           
/* 01F08 80968858 3C058097 */  lui     $a1, %hi(D_809694D8)       ## $a1 = 80970000
/* 01F0C 8096885C 24A594D8 */  addiu   $a1, $a1, %lo(D_809694D8)  ## $a1 = 809694D8
/* 01F10 80968860 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01F14 80968864 240604D4 */  addiu   $a2, $zero, 0x04D4         ## $a2 = 000004D4
/* 01F18 80968868 0C0346A2 */  jal     Matrix_NewMtx              
/* 01F1C 8096886C AFA2002C */  sw      $v0, 0x002C($sp)           
/* 01F20 80968870 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01F24 80968874 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 01F28 80968878 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01F2C 8096887C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01F30 80968880 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01F34 80968884 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 01F38 80968888 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01F3C 8096888C 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 01F40 80968890 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01F44 80968894 8FAA0064 */  lw      $t2, 0x0064($sp)           
.L80968898:
/* 01F48 80968898 3C068097 */  lui     $a2, %hi(D_809694E8)       ## $a2 = 80970000
/* 01F4C 8096889C 24C694E8 */  addiu   $a2, $a2, %lo(D_809694E8)  ## $a2 = 809694E8
/* 01F50 809688A0 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE0
/* 01F54 809688A4 240704DA */  addiu   $a3, $zero, 0x04DA         ## $a3 = 000004DA
/* 01F58 809688A8 0C031AD5 */  jal     Graph_CloseDisps              
/* 01F5C 809688AC 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 01F60 809688B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F64 809688B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01F68 809688B8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01F6C 809688BC 03E00008 */  jr      $ra                        
/* 01F70 809688C0 00000000 */  nop
