.late_rodata
glabel jtbl_80154B28
    .word L80107934
    .word L801076F4
    .word L8010773C
    .word L801077B4
    .word L80107804
    .word L8010787C
    .word L801078CC
    .word L80107918

.text
glabel func_801076CC
/* B7E86C 801076CC AFA50004 */  sw    $a1, 4($sp)
/* B7E870 801076D0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7E874 801076D4 2CA10008 */  sltiu $at, $a1, 8
/* B7E878 801076D8 10200096 */  beqz  $at, .L80107934
/* B7E87C 801076DC 00057080 */   sll   $t6, $a1, 2
/* B7E880 801076E0 3C018015 */  lui   $at, %hi(jtbl_80154B28)
/* B7E884 801076E4 002E0821 */  addu  $at, $at, $t6
/* B7E888 801076E8 8C2E4B28 */  lw    $t6, %lo(jtbl_80154B28)($at)
/* B7E88C 801076EC 01C00008 */  jr    $t6
/* B7E890 801076F0 00000000 */   nop   
glabel L801076F4
/* B7E894 801076F4 248F7FFF */  addiu $t7, $a0, 0x7fff
/* B7E898 801076F8 91EF62FE */  lbu   $t7, 0x62fe($t7)
/* B7E89C 801076FC 24010001 */  li    $at, 1
/* B7E8A0 80107700 2402003C */  li    $v0, 60
/* B7E8A4 80107704 15E10008 */  bne   $t7, $at, .L80107728
/* B7E8A8 80107708 240500FF */   li    $a1, 255
/* B7E8AC 8010770C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8B0 80107710 240500FF */  li    $a1, 255
/* B7E8B4 80107714 24180078 */  li    $t8, 120
/* B7E8B8 80107718 A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8BC 8010771C A43863DF */  sh    $t8, 0x63df($at)
/* B7E8C0 80107720 03E00008 */  jr    $ra
/* B7E8C4 80107724 A42063E1 */   sh    $zero, 0x63e1($at)
.L80107728:
/* B7E8C8 80107728 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E8CC 8010772C A42563DD */  sh    $a1, 0x63dd($at)
/* B7E8D0 80107730 A42263DF */  sh    $v0, 0x63df($at)
/* B7E8D4 80107734 03E00008 */  jr    $ra
/* B7E8D8 80107738 A42263E1 */   sh    $v0, 0x63e1($at)
glabel L8010773C
/* B7E8DC 8010773C 24997FFF */  addiu $t9, $a0, 0x7fff
/* B7E8E0 80107740 933962FE */  lbu   $t9, 0x62fe($t9)
/* B7E8E4 80107744 24010001 */  li    $at, 1
/* B7E8E8 80107748 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8EC 8010774C 1721000E */  bne   $t9, $at, .L80107788
/* B7E8F0 80107750 2442FA90 */   addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8F4 80107754 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B7E8F8 80107758 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B7E8FC 8010775C 8C480000 */  lw    $t0, ($v0)
/* B7E900 80107760 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E904 80107764 85090F56 */  lh    $t1, 0xf56($t0)
/* B7E908 80107768 A42963DD */  sh    $t1, 0x63dd($at)
/* B7E90C 8010776C 8C4A0000 */  lw    $t2, ($v0)
/* B7E910 80107770 854B0F58 */  lh    $t3, 0xf58($t2)
/* B7E914 80107774 A42B63DF */  sh    $t3, 0x63df($at)
/* B7E918 80107778 8C4C0000 */  lw    $t4, ($v0)
/* B7E91C 8010777C 858D0F5A */  lh    $t5, 0xf5a($t4)
/* B7E920 80107780 03E00008 */  jr    $ra
/* B7E924 80107784 A42D63E1 */   sh    $t5, 0x63e1($at)
.L80107788:
/* B7E928 80107788 8C4E0000 */  lw    $t6, ($v0)
/* B7E92C 8010778C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E930 80107790 85CF0F5C */  lh    $t7, 0xf5c($t6)
/* B7E934 80107794 A42F63DD */  sh    $t7, 0x63dd($at)
/* B7E938 80107798 8C580000 */  lw    $t8, ($v0)
/* B7E93C 8010779C 87190F5E */  lh    $t9, 0xf5e($t8)
/* B7E940 801077A0 A43963DF */  sh    $t9, 0x63df($at)
/* B7E944 801077A4 8C480000 */  lw    $t0, ($v0)
/* B7E948 801077A8 85090F60 */  lh    $t1, 0xf60($t0)
/* B7E94C 801077AC 03E00008 */  jr    $ra
/* B7E950 801077B0 A42963E1 */   sh    $t1, 0x63e1($at)
glabel L801077B4
/* B7E954 801077B4 248A7FFF */  addiu $t2, $a0, 0x7fff
/* B7E958 801077B8 914A62FE */  lbu   $t2, 0x62fe($t2)
/* B7E95C 801077BC 24010001 */  li    $at, 1
/* B7E960 801077C0 240500FF */  li    $a1, 255
/* B7E964 801077C4 15410009 */  bne   $t2, $at, .L801077EC
/* B7E968 801077C8 240D0050 */   li    $t5, 80
/* B7E96C 801077CC 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E970 801077D0 240500FF */  li    $a1, 255
/* B7E974 801077D4 240B0050 */  li    $t3, 80
/* B7E978 801077D8 240C006E */  li    $t4, 110
/* B7E97C 801077DC A42B63DD */  sh    $t3, 0x63dd($at)
/* B7E980 801077E0 A42C63DF */  sh    $t4, 0x63df($at)
/* B7E984 801077E4 03E00008 */  jr    $ra
/* B7E988 801077E8 A42563E1 */   sh    $a1, 0x63e1($at)
.L801077EC:
/* B7E98C 801077EC 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E990 801077F0 240E005A */  li    $t6, 90
/* B7E994 801077F4 A42D63DD */  sh    $t5, 0x63dd($at)
/* B7E998 801077F8 A42E63DF */  sh    $t6, 0x63df($at)
/* B7E99C 801077FC 03E00008 */  jr    $ra
/* B7E9A0 80107800 A42563E1 */   sh    $a1, 0x63e1($at)
glabel L80107804
/* B7E9A4 80107804 24827FFF */  addiu $v0, $a0, 0x7fff
/* B7E9A8 80107808 904262FE */  lbu   $v0, 0x62fe($v0)
/* B7E9AC 8010780C 24010001 */  li    $at, 1
/* B7E9B0 80107810 240500FF */  li    $a1, 255
/* B7E9B4 80107814 14410007 */  bne   $v0, $at, .L80107834
/* B7E9B8 80107818 240F005A */   li    $t7, 90
/* B7E9BC 8010781C 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E9C0 80107820 241800B4 */  li    $t8, 180
/* B7E9C4 80107824 A42F63DD */  sh    $t7, 0x63dd($at)
/* B7E9C8 80107828 A43863DF */  sh    $t8, 0x63df($at)
/* B7E9CC 8010782C 03E00008 */  jr    $ra
/* B7E9D0 80107830 A42563E1 */   sh    $a1, 0x63e1($at)
.L80107834:
/* B7E9D4 80107834 24010005 */  li    $at, 5
/* B7E9D8 80107838 14410009 */  bne   $v0, $at, .L80107860
/* B7E9DC 8010783C 240500FF */   li    $a1, 255
/* B7E9E0 80107840 24817FFF */  addiu $at, $a0, 0x7fff
/* B7E9E4 80107844 24190050 */  li    $t9, 80
/* B7E9E8 80107848 24080096 */  li    $t0, 150
/* B7E9EC 8010784C 240900B4 */  li    $t1, 180
/* B7E9F0 80107850 A43963DD */  sh    $t9, 0x63dd($at)
/* B7E9F4 80107854 A42863DF */  sh    $t0, 0x63df($at)
/* B7E9F8 80107858 03E00008 */  jr    $ra
/* B7E9FC 8010785C A42963E1 */   sh    $t1, 0x63e1($at)
.L80107860:
/* B7EA00 80107860 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA04 80107864 240A0064 */  li    $t2, 100
/* B7EA08 80107868 240B00B4 */  li    $t3, 180
/* B7EA0C 8010786C A42A63DD */  sh    $t2, 0x63dd($at)
/* B7EA10 80107870 A42B63DF */  sh    $t3, 0x63df($at)
/* B7EA14 80107874 03E00008 */  jr    $ra
/* B7EA18 80107878 A42563E1 */   sh    $a1, 0x63e1($at)
glabel L8010787C
/* B7EA1C 8010787C 248C7FFF */  addiu $t4, $a0, 0x7fff
/* B7EA20 80107880 918C62FE */  lbu   $t4, 0x62fe($t4)
/* B7EA24 80107884 24010001 */  li    $at, 1
/* B7EA28 80107888 240500FF */  li    $a1, 255
/* B7EA2C 8010788C 15810009 */  bne   $t4, $at, .L801078B4
/* B7EA30 80107890 240F0096 */   li    $t7, 150
/* B7EA34 80107894 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA38 80107898 240500FF */  li    $a1, 255
/* B7EA3C 8010789C 240D00D2 */  li    $t5, 210
/* B7EA40 801078A0 240E0064 */  li    $t6, 100
/* B7EA44 801078A4 A42D63DD */  sh    $t5, 0x63dd($at)
/* B7EA48 801078A8 A42E63DF */  sh    $t6, 0x63df($at)
/* B7EA4C 801078AC 03E00008 */  jr    $ra
/* B7EA50 801078B0 A42563E1 */   sh    $a1, 0x63e1($at)
.L801078B4:
/* B7EA54 801078B4 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA58 801078B8 241800B4 */  li    $t8, 180
/* B7EA5C 801078BC A42563DD */  sh    $a1, 0x63dd($at)
/* B7EA60 801078C0 A42F63DF */  sh    $t7, 0x63df($at)
/* B7EA64 801078C4 03E00008 */  jr    $ra
/* B7EA68 801078C8 A43863E1 */   sh    $t8, 0x63e1($at)
glabel L801078CC
/* B7EA6C 801078CC 24997FFF */  addiu $t9, $a0, 0x7fff
/* B7EA70 801078D0 933962FE */  lbu   $t9, 0x62fe($t9)
/* B7EA74 801078D4 24010001 */  li    $at, 1
/* B7EA78 801078D8 240500FF */  li    $a1, 255
/* B7EA7C 801078DC 17210008 */  bne   $t9, $at, .L80107900
/* B7EA80 801078E0 240900E1 */   li    $t1, 225
/* B7EA84 801078E4 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EA88 801078E8 240500FF */  li    $a1, 255
/* B7EA8C 801078EC 2408001E */  li    $t0, 30
/* B7EA90 801078F0 A42563DD */  sh    $a1, 0x63dd($at)
/* B7EA94 801078F4 A42563DF */  sh    $a1, 0x63df($at)
/* B7EA98 801078F8 03E00008 */  jr    $ra
/* B7EA9C 801078FC A42863E1 */   sh    $t0, 0x63e1($at)
.L80107900:
/* B7EAA0 80107900 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EAA4 80107904 240A0032 */  li    $t2, 50
/* B7EAA8 80107908 A42963DD */  sh    $t1, 0x63dd($at)
/* B7EAAC 8010790C A42563DF */  sh    $a1, 0x63df($at)
/* B7EAB0 80107910 03E00008 */  jr    $ra
/* B7EAB4 80107914 A42A63E1 */   sh    $t2, 0x63e1($at)
glabel L80107918
/* B7EAB8 80107918 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EABC 8010791C A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAC0 80107920 24837FFF */  addiu $v1, $a0, 0x7fff
/* B7EAC4 80107924 846363E1 */  lh    $v1, 0x63e1($v1)
/* B7EAC8 80107928 A42363DF */  sh    $v1, 0x63df($at)
/* B7EACC 8010792C 03E00008 */  jr    $ra
/* B7EAD0 80107930 A42363DD */   sh    $v1, 0x63dd($at)
.L80107934:
glabel L80107934
/* B7EAD4 80107934 34018000 */  li    $at, 32768
/* B7EAD8 80107938 00811021 */  addu  $v0, $a0, $at
/* B7EADC 8010793C 904B62FD */  lbu   $t3, 0x62fd($v0)
/* B7EAE0 80107940 24010005 */  li    $at, 5
/* B7EAE4 80107944 240500FF */  li    $a1, 255
/* B7EAE8 80107948 15610006 */  bne   $t3, $at, .L80107964
/* B7EAEC 8010794C 24817FFF */   addiu $at, $a0, 0x7fff
/* B7EAF0 80107950 A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAF4 80107954 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EAF8 80107958 A42363DF */  sh    $v1, 0x63df($at)
/* B7EAFC 8010795C 03E00008 */  jr    $ra
/* B7EB00 80107960 A42363DD */   sh    $v1, 0x63dd($at)
.L80107964:
/* B7EB04 80107964 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EB08 80107968 A42563E1 */  sh    $a1, 0x63e1($at)
/* B7EB0C 8010796C 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EB10 80107970 A42363DF */  sh    $v1, 0x63df($at)
/* B7EB14 80107974 A42363DD */  sh    $v1, 0x63dd($at)
/* B7EB18 80107978 03E00008 */  jr    $ra
/* B7EB1C 8010797C 00000000 */   nop   

