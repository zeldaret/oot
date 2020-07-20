.late_rodata
glabel jtbl_80A9A824
    .word L80A97890
    .word L80A97818
    .word L80A97818
    .word L80A97818
    .word L80A978AC
    .word L80A97818
    .word L80A978C8
    .word L80A97818
    .word L80A97818
    .word L80A978E4
    .word L80A97818
    .word L80A97818
    .word L80A97818
    .word L80A97818
    .word L80A97900

glabel jtbl_80A9A860
    .word L80A97804
    .word L80A97818
    .word L80A97818
    .word L80A97820
    .word L80A97818
    .word L80A9783C
    .word L80A97818
    .word L80A97858
    .word L80A97818
    .word L80A97874

.text
glabel func_80A97738
/* 00988 80A97738 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0098C 80A9773C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00990 80A97740 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00994 80A97744 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00998 80A97748 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0099C 80A9774C 0C042F6F */  jal     func_8010BDBC              
/* 009A0 80A97750 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 009A4 80A97754 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 009A8 80A97758 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 009AC 80A9775C 1041000B */  beq     $v0, $at, .L80A9778C       
/* 009B0 80A97760 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 009B4 80A97764 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009B8 80A97768 10410074 */  beq     $v0, $at, .L80A9793C       
/* 009BC 80A9776C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 009C0 80A97770 1041008A */  beq     $v0, $at, .L80A9799C       
/* 009C4 80A97774 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009C8 80A97778 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 009CC 80A9777C 104100E3 */  beq     $v0, $at, .L80A97B0C       
/* 009D0 80A97780 00000000 */  nop
/* 009D4 80A97784 100000E8 */  beq     $zero, $zero, .L80A97B28   
/* 009D8 80A97788 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9778C:
/* 009DC 80A9778C 9503010E */  lhu     $v1, 0x010E($t0)           ## 0000010E
/* 009E0 80A97790 2861105E */  slti    $at, $v1, 0x105E           
/* 009E4 80A97794 14200007 */  bne     $at, $zero, .L80A977B4     
/* 009E8 80A97798 240110BA */  addiu   $at, $zero, 0x10BA         ## $at = 000010BA
/* 009EC 80A9779C 10610065 */  beq     $v1, $at, .L80A97934       
/* 009F0 80A977A0 240110D7 */  addiu   $at, $zero, 0x10D7         ## $at = 000010D7
/* 009F4 80A977A4 1061005D */  beq     $v1, $at, .L80A9791C       
/* 009F8 80A977A8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 009FC 80A977AC 100000DE */  beq     $zero, $zero, .L80A97B28   
/* 00A00 80A977B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A977B4:
/* 00A04 80A977B4 2861100F */  slti    $at, $v1, 0x100F           
/* 00A08 80A977B8 1420000A */  bne     $at, $zero, .L80A977E4     
/* 00A0C 80A977BC 246FEFFB */  addiu   $t7, $v1, 0xEFFB           ## $t7 = FFFFEFFB
/* 00A10 80A977C0 246EEFB1 */  addiu   $t6, $v1, 0xEFB1           ## $t6 = FFFFEFB1
/* 00A14 80A977C4 2DC1000F */  sltiu   $at, $t6, 0x000F           
/* 00A18 80A977C8 10200013 */  beq     $at, $zero, .L80A97818     
/* 00A1C 80A977CC 000E7080 */  sll     $t6, $t6,  2               
/* 00A20 80A977D0 3C0180AA */  lui     $at, %hi(jtbl_80A9A824)       ## $at = 80AA0000
/* 00A24 80A977D4 002E0821 */  addu    $at, $at, $t6              
/* 00A28 80A977D8 8C2EA824 */  lw      $t6, %lo(jtbl_80A9A824)($at)  
/* 00A2C 80A977DC 01C00008 */  jr      $t6                        
/* 00A30 80A977E0 00000000 */  nop
.L80A977E4:
/* 00A34 80A977E4 2DE1000A */  sltiu   $at, $t7, 0x000A           
/* 00A38 80A977E8 1020000B */  beq     $at, $zero, .L80A97818     
/* 00A3C 80A977EC 000F7880 */  sll     $t7, $t7,  2               
/* 00A40 80A977F0 3C0180AA */  lui     $at, %hi(jtbl_80A9A860)       ## $at = 80AA0000
/* 00A44 80A977F4 002F0821 */  addu    $at, $at, $t7              
/* 00A48 80A977F8 8C2FA860 */  lw      $t7, %lo(jtbl_80A9A860)($at)  
/* 00A4C 80A977FC 01E00008 */  jr      $t7                        
/* 00A50 80A97800 00000000 */  nop
glabel L80A97804
/* 00A54 80A97804 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00A58 80A97808 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00A5C 80A9780C 94580EFA */  lhu     $t8, 0x0EFA($v0)           ## 8015F55A
/* 00A60 80A97810 37194000 */  ori     $t9, $t8, 0x4000           ## $t9 = 00004000
/* 00A64 80A97814 A4590EFA */  sh      $t9, 0x0EFA($v0)           ## 8015F55A
glabel L80A97818
.L80A97818:
/* 00A68 80A97818 100000C3 */  beq     $zero, $zero, .L80A97B28   
/* 00A6C 80A9781C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A97820
/* 00A70 80A97820 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00A74 80A97824 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00A78 80A97828 94490EFC */  lhu     $t1, 0x0EFC($v0)           ## 8015F55C
/* 00A7C 80A9782C 352A0004 */  ori     $t2, $t1, 0x0004           ## $t2 = 00000004
/* 00A80 80A97830 A44A0EFC */  sh      $t2, 0x0EFC($v0)           ## 8015F55C
/* 00A84 80A97834 100000BC */  beq     $zero, $zero, .L80A97B28   
/* 00A88 80A97838 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A9783C
/* 00A8C 80A9783C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00A90 80A97840 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00A94 80A97844 944B0EFC */  lhu     $t3, 0x0EFC($v0)           ## 8015F55C
/* 00A98 80A97848 356C0010 */  ori     $t4, $t3, 0x0010           ## $t4 = 00000010
/* 00A9C 80A9784C A44C0EFC */  sh      $t4, 0x0EFC($v0)           ## 8015F55C
/* 00AA0 80A97850 100000B5 */  beq     $zero, $zero, .L80A97B28   
/* 00AA4 80A97854 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A97858
/* 00AA8 80A97858 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00AAC 80A9785C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00AB0 80A97860 944D0EFC */  lhu     $t5, 0x0EFC($v0)           ## 8015F55C
/* 00AB4 80A97864 35AE0040 */  ori     $t6, $t5, 0x0040           ## $t6 = 00000040
/* 00AB8 80A97868 A44E0EFC */  sh      $t6, 0x0EFC($v0)           ## 8015F55C
/* 00ABC 80A9786C 100000AE */  beq     $zero, $zero, .L80A97B28   
/* 00AC0 80A97870 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A97874
/* 00AC4 80A97874 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00AC8 80A97878 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00ACC 80A9787C 944F0EFC */  lhu     $t7, 0x0EFC($v0)           ## 8015F55C
/* 00AD0 80A97880 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = FFFFEFFB
/* 00AD4 80A97884 A4580EFC */  sh      $t8, 0x0EFC($v0)           ## 8015F55C
/* 00AD8 80A97888 100000A7 */  beq     $zero, $zero, .L80A97B28   
/* 00ADC 80A9788C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A97890
/* 00AE0 80A97890 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00AE4 80A97894 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00AE8 80A97898 94590F02 */  lhu     $t9, 0x0F02($v0)           ## 8015F562
/* 00AEC 80A9789C 37290200 */  ori     $t1, $t9, 0x0200           ## $t1 = 00004200
/* 00AF0 80A978A0 A4490F02 */  sh      $t1, 0x0F02($v0)           ## 8015F562
/* 00AF4 80A978A4 100000A0 */  beq     $zero, $zero, .L80A97B28   
/* 00AF8 80A978A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A978AC
/* 00AFC 80A978AC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00B00 80A978B0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B04 80A978B4 944A0F04 */  lhu     $t2, 0x0F04($v0)           ## 8015F564
/* 00B08 80A978B8 354B0002 */  ori     $t3, $t2, 0x0002           ## $t3 = 00000006
/* 00B0C 80A978BC A44B0F04 */  sh      $t3, 0x0F04($v0)           ## 8015F564
/* 00B10 80A978C0 10000099 */  beq     $zero, $zero, .L80A97B28   
/* 00B14 80A978C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A978C8
/* 00B18 80A978C8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00B1C 80A978CC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B20 80A978D0 944C0F00 */  lhu     $t4, 0x0F00($v0)           ## 8015F560
/* 00B24 80A978D4 358D0002 */  ori     $t5, $t4, 0x0002           ## $t5 = 00000012
/* 00B28 80A978D8 A44D0F00 */  sh      $t5, 0x0F00($v0)           ## 8015F560
/* 00B2C 80A978DC 10000092 */  beq     $zero, $zero, .L80A97B28   
/* 00B30 80A978E0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A978E4
/* 00B34 80A978E4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00B38 80A978E8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B3C 80A978EC 944E0F02 */  lhu     $t6, 0x0F02($v0)           ## 8015F562
/* 00B40 80A978F0 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000042
/* 00B44 80A978F4 A44F0F02 */  sh      $t7, 0x0F02($v0)           ## 8015F562
/* 00B48 80A978F8 1000008B */  beq     $zero, $zero, .L80A97B28   
/* 00B4C 80A978FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A97900
/* 00B50 80A97900 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00B54 80A97904 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B58 80A97908 94580F00 */  lhu     $t8, 0x0F00($v0)           ## 8015F560
/* 00B5C 80A9790C 37190080 */  ori     $t9, $t8, 0x0080           ## $t9 = FFFFEFFB
/* 00B60 80A97910 A4590F00 */  sh      $t9, 0x0F00($v0)           ## 8015F560
/* 00B64 80A97914 10000084 */  beq     $zero, $zero, .L80A97B28   
/* 00B68 80A97918 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9791C:
/* 00B6C 80A9791C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B70 80A97920 94490F0E */  lhu     $t1, 0x0F0E($v0)           ## FFFFF56E
/* 00B74 80A97924 352A0080 */  ori     $t2, $t1, 0x0080           ## $t2 = 00004280
/* 00B78 80A97928 A44A0F0E */  sh      $t2, 0x0F0E($v0)           ## FFFFF56E
/* 00B7C 80A9792C 1000007E */  beq     $zero, $zero, .L80A97B28   
/* 00B80 80A97930 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A97934:
/* 00B84 80A97934 1000007C */  beq     $zero, $zero, .L80A97B28   
/* 00B88 80A97938 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9793C:
/* 00B8C 80A9793C 9503010E */  lhu     $v1, 0x010E($t0)           ## 0000010E
/* 00B90 80A97940 240110B7 */  addiu   $at, $zero, 0x10B7         ## $at = 000010B7
/* 00B94 80A97944 10610003 */  beq     $v1, $at, .L80A97954       
/* 00B98 80A97948 240110B8 */  addiu   $at, $zero, 0x10B8         ## $at = 000010B8
/* 00B9C 80A9794C 14610011 */  bne     $v1, $at, .L80A97994       
/* 00BA0 80A97950 00000000 */  nop
.L80A97954:
/* 00BA4 80A97954 910B0210 */  lbu     $t3, 0x0210($t0)           ## 00000210
/* 00BA8 80A97958 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00BAC 80A9795C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00BB0 80A97960 1560000C */  bne     $t3, $zero, .L80A97994     
/* 00BB4 80A97964 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00BB8 80A97968 3C0C8013 */  lui     $t4, %hi(D_801333E8)
/* 00BBC 80A9796C 258C33E8 */  addiu   $t4, %lo(D_801333E8)
/* 00BC0 80A97970 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 00BC4 80A97974 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 00BC8 80A97978 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00BCC 80A9797C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00BD0 80A97980 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00BD4 80A97984 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00BD8 80A97988 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00BDC 80A9798C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00BE0 80A97990 A10D0210 */  sb      $t5, 0x0210($t0)           ## 00000210
.L80A97994:
/* 00BE4 80A97994 10000064 */  beq     $zero, $zero, .L80A97B28   
/* 00BE8 80A97998 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9799C:
/* 00BEC 80A9799C 0C041AF2 */  jal     func_80106BC8              
/* 00BF0 80A979A0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00BF4 80A979A4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00BF8 80A979A8 1040005E */  beq     $v0, $zero, .L80A97B24     
/* 00BFC 80A979AC 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00C00 80A979B0 9503010E */  lhu     $v1, 0x010E($t0)           ## 0000010E
/* 00C04 80A979B4 24011035 */  addiu   $at, $zero, 0x1035         ## $at = 00001035
/* 00C08 80A979B8 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00C0C 80A979BC 1061000F */  beq     $v1, $at, .L80A979FC       
/* 00C10 80A979C0 01C67021 */  addu    $t6, $t6, $a2              
/* 00C14 80A979C4 24011038 */  addiu   $at, $zero, 0x1038         ## $at = 00001038
/* 00C18 80A979C8 10610018 */  beq     $v1, $at, .L80A97A2C       
/* 00C1C 80A979CC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00C20 80A979D0 2401103E */  addiu   $at, $zero, 0x103E         ## $at = 0000103E
/* 00C24 80A979D4 10610026 */  beq     $v1, $at, .L80A97A70       
/* 00C28 80A979D8 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00C2C 80A979DC 240110B7 */  addiu   $at, $zero, 0x10B7         ## $at = 000010B7
/* 00C30 80A979E0 10610030 */  beq     $v1, $at, .L80A97AA4       
/* 00C34 80A979E4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00C38 80A979E8 240110B8 */  addiu   $at, $zero, 0x10B8         ## $at = 000010B8
/* 00C3C 80A979EC 50610032 */  beql    $v1, $at, .L80A97AB8       
/* 00C40 80A979F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C44 80A979F4 1000004C */  beq     $zero, $zero, .L80A97B28   
/* 00C48 80A979F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A979FC:
/* 00C4C 80A979FC 91CE04BD */  lbu     $t6, 0x04BD($t6)           ## 000104BD
/* 00C50 80A97A00 24181037 */  addiu   $t8, $zero, 0x1037         ## $t8 = 00001037
/* 00C54 80A97A04 240F1036 */  addiu   $t7, $zero, 0x1036         ## $t7 = 00001036
/* 00C58 80A97A08 15C00003 */  bne     $t6, $zero, .L80A97A18     
/* 00C5C 80A97A0C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00C60 80A97A10 10000002 */  beq     $zero, $zero, .L80A97A1C   
/* 00C64 80A97A14 A50F010E */  sh      $t7, 0x010E($t0)           ## 0000010E
.L80A97A18:
/* 00C68 80A97A18 A518010E */  sh      $t8, 0x010E($t0)           ## 0000010E
.L80A97A1C:
/* 00C6C 80A97A1C 0C042DC8 */  jal     func_8010B720              
/* 00C70 80A97A20 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
/* 00C74 80A97A24 10000040 */  beq     $zero, $zero, .L80A97B28   
/* 00C78 80A97A28 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97A2C:
/* 00C7C 80A97A2C 00461021 */  addu    $v0, $v0, $a2              
/* 00C80 80A97A30 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000004BE
/* 00C84 80A97A34 24191039 */  addiu   $t9, $zero, 0x1039         ## $t9 = 00001039
/* 00C88 80A97A38 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C8C 80A97A3C 10400007 */  beq     $v0, $zero, .L80A97A5C     
/* 00C90 80A97A40 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00C94 80A97A44 14410003 */  bne     $v0, $at, .L80A97A54       
/* 00C98 80A97A48 2403103B */  addiu   $v1, $zero, 0x103B         ## $v1 = 0000103B
/* 00C9C 80A97A4C 10000001 */  beq     $zero, $zero, .L80A97A54   
/* 00CA0 80A97A50 2403103A */  addiu   $v1, $zero, 0x103A         ## $v1 = 0000103A
.L80A97A54:
/* 00CA4 80A97A54 10000002 */  beq     $zero, $zero, .L80A97A60   
/* 00CA8 80A97A58 A503010E */  sh      $v1, 0x010E($t0)           ## 0000010E
.L80A97A5C:
/* 00CAC 80A97A5C A519010E */  sh      $t9, 0x010E($t0)           ## 0000010E
.L80A97A60:
/* 00CB0 80A97A60 0C042DC8 */  jal     func_8010B720              
/* 00CB4 80A97A64 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
/* 00CB8 80A97A68 1000002F */  beq     $zero, $zero, .L80A97B28   
/* 00CBC 80A97A6C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97A70:
/* 00CC0 80A97A70 01264821 */  addu    $t1, $t1, $a2              
/* 00CC4 80A97A74 912904BD */  lbu     $t1, 0x04BD($t1)           ## 000004BD
/* 00CC8 80A97A78 240B1040 */  addiu   $t3, $zero, 0x1040         ## $t3 = 00001040
/* 00CCC 80A97A7C 240A103F */  addiu   $t2, $zero, 0x103F         ## $t2 = 0000103F
/* 00CD0 80A97A80 15200003 */  bne     $t1, $zero, .L80A97A90     
/* 00CD4 80A97A84 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00CD8 80A97A88 10000002 */  beq     $zero, $zero, .L80A97A94   
/* 00CDC 80A97A8C A50A010E */  sh      $t2, 0x010E($t0)           ## 0000010E
.L80A97A90:
/* 00CE0 80A97A90 A50B010E */  sh      $t3, 0x010E($t0)           ## 0000010E
.L80A97A94:
/* 00CE4 80A97A94 0C042DC8 */  jal     func_8010B720              
/* 00CE8 80A97A98 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
/* 00CEC 80A97A9C 10000022 */  beq     $zero, $zero, .L80A97B28   
/* 00CF0 80A97AA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97AA4:
/* 00CF4 80A97AA4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00CF8 80A97AA8 944C0F0E */  lhu     $t4, 0x0F0E($v0)           ## FFFFF56F
/* 00CFC 80A97AAC 358D1000 */  ori     $t5, $t4, 0x1000           ## $t5 = 00001000
/* 00D00 80A97AB0 A44D0F0E */  sh      $t5, 0x0F0E($v0)           ## FFFFF56F
/* 00D04 80A97AB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A97AB8:
/* 00D08 80A97AB8 00C11021 */  addu    $v0, $a2, $at              
/* 00D0C 80A97ABC 904E04BD */  lbu     $t6, 0x04BD($v0)           ## FFFFEB1E
/* 00D10 80A97AC0 241810B9 */  addiu   $t8, $zero, 0x10B9         ## $t8 = 000010B9
/* 00D14 80A97AC4 240F10BA */  addiu   $t7, $zero, 0x10BA         ## $t7 = 000010BA
/* 00D18 80A97AC8 15C00003 */  bne     $t6, $zero, .L80A97AD8     
/* 00D1C 80A97ACC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00D20 80A97AD0 10000002 */  beq     $zero, $zero, .L80A97ADC   
/* 00D24 80A97AD4 A50F010E */  sh      $t7, 0x010E($t0)           ## 0000010E
.L80A97AD8:
/* 00D28 80A97AD8 A518010E */  sh      $t8, 0x010E($t0)           ## 0000010E
.L80A97ADC:
/* 00D2C 80A97ADC 905904BD */  lbu     $t9, 0x04BD($v0)           ## FFFFEB1E
/* 00D30 80A97AE0 00031400 */  sll     $v0, $v1, 16               
/* 00D34 80A97AE4 17200005 */  bne     $t9, $zero, .L80A97AFC     
/* 00D38 80A97AE8 00000000 */  nop
/* 00D3C 80A97AEC 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00D40 80A97AF0 00031400 */  sll     $v0, $v1, 16               
/* 00D44 80A97AF4 1000000C */  beq     $zero, $zero, .L80A97B28   
/* 00D48 80A97AF8 00021403 */  sra     $v0, $v0, 16               
.L80A97AFC:
/* 00D4C 80A97AFC 1000000A */  beq     $zero, $zero, .L80A97B28   
/* 00D50 80A97B00 00021403 */  sra     $v0, $v0, 16               
/* 00D54 80A97B04 10000008 */  beq     $zero, $zero, .L80A97B28   
/* 00D58 80A97B08 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97B0C:
/* 00D5C 80A97B0C 0C041AF2 */  jal     func_80106BC8              
/* 00D60 80A97B10 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D64 80A97B14 50400004 */  beql    $v0, $zero, .L80A97B28     
/* 00D68 80A97B18 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00D6C 80A97B1C 10000002 */  beq     $zero, $zero, .L80A97B28   
/* 00D70 80A97B20 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A97B24:
/* 00D74 80A97B24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A97B28:
/* 00D78 80A97B28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D7C 80A97B2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D80 80A97B30 03E00008 */  jr      $ra                        
/* 00D84 80A97B34 00000000 */  nop
