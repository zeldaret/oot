.rdata
glabel D_80855290
    .asciz "../z_player.c"
    .balign 4

.text
glabel func_80846CD8
/* 14AC8 80846CD8 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 14ACC 80846CDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14AD0 80846CE0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 14AD4 80846CE4 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 14AD8 80846CE8 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 14ADC 80846CEC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 14AE0 80846CF0 00A11021 */  addu    $v0, $a1, $at              
/* 14AE4 80846CF4 8C4E242C */  lw      $t6, 0x242C($v0)           ## 0000242C
/* 14AE8 80846CF8 00250821 */  addu    $at, $at, $a1              
/* 14AEC 80846CFC 3C188084 */  lui     $t8, %hi(func_80846AAC)    ## $t8 = 80840000
/* 14AF0 80846D00 AFAE005C */  sw      $t6, 0x005C($sp)           
/* 14AF4 80846D04 A0201E5D */  sb      $zero, 0x1E5D($at)         ## 00011E5D
/* 14AF8 80846D08 804F1E5D */  lb      $t7, 0x1E5D($v0)           ## 00001E5D
/* 14AFC 80846D0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B00 80846D10 00250821 */  addu    $at, $at, $a1              
/* 14B04 80846D14 A02F1E5C */  sb      $t7, 0x1E5C($at)           ## 00011E5C
/* 14B08 80846D18 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B0C 80846D1C 00250821 */  addu    $at, $at, $a1              
/* 14B10 80846D20 27186AAC */  addiu   $t8, $t8, %lo(func_80846AAC) ## $t8 = 80846AAC
/* 14B14 80846D24 AC381D3C */  sw      $t8, 0x1D3C($at)           ## 00011D3C
/* 14B18 80846D28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B1C 80846D2C 3C198085 */  lui     $t9, %hi(func_80848F9C)    ## $t9 = 80850000
/* 14B20 80846D30 27398F9C */  addiu   $t9, $t9, %lo(func_80848F9C) ## $t9 = 80848F9C
/* 14B24 80846D34 00250821 */  addu    $at, $at, $a1              
/* 14B28 80846D38 AC391D40 */  sw      $t9, 0x1D40($at)           ## 00011D40
/* 14B2C 80846D3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B30 80846D40 3C098085 */  lui     $t1, %hi(func_80852EC8)    ## $t1 = 80850000
/* 14B34 80846D44 25292EC8 */  addiu   $t1, $t1, %lo(func_80852EC8) ## $t1 = 80852EC8
/* 14B38 80846D48 00250821 */  addu    $at, $at, $a1              
/* 14B3C 80846D4C AC291D44 */  sw      $t1, 0x1D44($at)           ## 00011D44
/* 14B40 80846D50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B44 80846D54 3C0A8085 */  lui     $t2, %hi(func_80852EFC)    ## $t2 = 80850000
/* 14B48 80846D58 254A2EFC */  addiu   $t2, $t2, %lo(func_80852EFC) ## $t2 = 80852EFC
/* 14B4C 80846D5C 00250821 */  addu    $at, $at, $a1              
/* 14B50 80846D60 AC2A1D48 */  sw      $t2, 0x1D48($at)           ## 00011D48
/* 14B54 80846D64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B58 80846D68 3C0B8085 */  lui     $t3, %hi(func_80852F38)    ## $t3 = 80850000
/* 14B5C 80846D6C 256B2F38 */  addiu   $t3, $t3, %lo(func_80852F38) ## $t3 = 80852F38
/* 14B60 80846D70 00250821 */  addu    $at, $at, $a1              
/* 14B64 80846D74 AC2B1D4C */  sw      $t3, 0x1D4C($at)           ## 00011D4C
/* 14B68 80846D78 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B6C 80846D7C 3C0C8085 */  lui     $t4, %hi(func_80852FFC)    ## $t4 = 80850000
/* 14B70 80846D80 258C2FFC */  addiu   $t4, $t4, %lo(func_80852FFC) ## $t4 = 80852FFC
/* 14B74 80846D84 00250821 */  addu    $at, $at, $a1              
/* 14B78 80846D88 AC2C1D50 */  sw      $t4, 0x1D50($at)           ## 00011D50
/* 14B7C 80846D8C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B80 80846D90 3C0D8085 */  lui     $t5, %hi(func_80853080)    ## $t5 = 80850000
/* 14B84 80846D94 25AD3080 */  addiu   $t5, $t5, %lo(func_80853080) ## $t5 = 80853080
/* 14B88 80846D98 00250821 */  addu    $at, $at, $a1              
/* 14B8C 80846D9C AC2D1D54 */  sw      $t5, 0x1D54($at)           ## 00011D54
/* 14B90 80846DA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14B94 80846DA4 3C0E8085 */  lui     $t6, %hi(func_808530E0)    ## $t6 = 80850000
/* 14B98 80846DA8 25CE30E0 */  addiu   $t6, $t6, %lo(func_808530E0) ## $t6 = 808530E0
/* 14B9C 80846DAC 00250821 */  addu    $at, $at, $a1              
/* 14BA0 80846DB0 AC2E1D58 */  sw      $t6, 0x1D58($at)           ## 00011D58
/* 14BA4 80846DB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 14BA8 80846DB8 3C0F8085 */  lui     $t7, %hi(func_80853148)    ## $t7 = 80850000
/* 14BAC 80846DBC 25EF3148 */  addiu   $t7, $t7, %lo(func_80853148) ## $t7 = 80853148
/* 14BB0 80846DC0 00250821 */  addu    $at, $at, $a1              
/* 14BB4 80846DC4 3C128016 */  lui     $s2, 0x8016                ## $s2 = 80160000
/* 14BB8 80846DC8 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
/* 14BBC 80846DCC AC2F1D5C */  sw      $t7, 0x1D5C($at)           ## 00011D5C
/* 14BC0 80846DD0 2652E660 */  addiu   $s2, $s2, 0xE660           ## $s2 = 8015E660
/* 14BC4 80846DD4 A0830003 */  sb      $v1, 0x0003($a0)           ## 00000003
/* 14BC8 80846DD8 8E580004 */  lw      $t8, 0x0004($s2)           ## 8015E664
/* 14BCC 80846DDC A0830151 */  sb      $v1, 0x0151($a0)           ## 00000151
/* 14BD0 80846DE0 808B0151 */  lb      $t3, 0x0151($a0)           ## 00000151
/* 14BD4 80846DE4 0018C880 */  sll     $t9, $t8,  2               
/* 14BD8 80846DE8 0338C823 */  subu    $t9, $t9, $t8              
/* 14BDC 80846DEC 0019C880 */  sll     $t9, $t9,  2               
/* 14BE0 80846DF0 0338C821 */  addu    $t9, $t9, $t8              
/* 14BE4 80846DF4 0019C880 */  sll     $t9, $t9,  2               
/* 14BE8 80846DF8 3C098085 */  lui     $t1, %hi(D_80853428)       ## $t1 = 80850000
/* 14BEC 80846DFC 0338C821 */  addu    $t9, $t9, $t8              
/* 14BF0 80846E00 0019C880 */  sll     $t9, $t9,  2               
/* 14BF4 80846E04 25293428 */  addiu   $t1, $t1, %lo(D_80853428)  ## $t1 = 80853428
/* 14BF8 80846E08 03295021 */  addu    $t2, $t9, $t1              
/* 14BFC 80846E0C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 14C00 80846E10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 14C04 80846E14 AC8A0678 */  sw      $t2, 0x0678($a0)           ## 00000678
/* 14C08 80846E18 A08C0152 */  sb      $t4, 0x0152($a0)           ## 00000152
/* 14C0C 80846E1C A08B0154 */  sb      $t3, 0x0154($a0)           ## 00000154
/* 14C10 80846E20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 14C14 80846E24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 14C18 80846E28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14C1C 80846E2C 0C20D7D1 */  jal     func_80835F44              
/* 14C20 80846E30 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 14C24 80846E34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14C28 80846E38 0C023B2B */  jal     func_8008ECAC              
/* 14C2C 80846E3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14C30 80846E40 820D014F */  lb      $t5, 0x014F($s0)           ## 0000014F
/* 14C34 80846E44 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 14C38 80846E48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 14C3C 80846E4C A20D0153 */  sb      $t5, 0x0153($s0)           ## 00000153
/* 14C40 80846E50 8E470004 */  lw      $a3, 0x0004($s2)           ## 8015E664
/* 14C44 80846E54 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 14C48 80846E58 00077080 */  sll     $t6, $a3,  2               
/* 14C4C 80846E5C 00CE3021 */  addu    $a2, $a2, $t6              
/* 14C50 80846E60 0C211AAB */  jal     func_80846AAC              
/* 14C54 80846E64 8CC65B70 */  lw      $a2, 0x5B70($a2)           ## 80125B70
/* 14C58 80846E68 3C058085 */  lui     $a1, %hi(D_80855290)       ## $a1 = 80850000
/* 14C5C 80846E6C 24A55290 */  addiu   $a1, $a1, %lo(D_80855290)  ## $a1 = 80855290
/* 14C60 80846E70 24043008 */  addiu   $a0, $zero, 0x3008         ## $a0 = 00003008
/* 14C64 80846E74 0C01EBB8 */  jal     ZeldaArena_MallocDebug              
/* 14C68 80846E78 24064317 */  addiu   $a2, $zero, 0x4317         ## $a2 = 00004317
/* 14C6C 80846E7C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 14C70 80846E80 2401FFF0 */  addiu   $at, $zero, 0xFFF0         ## $at = FFFFFFF0
/* 14C74 80846E84 01E1C024 */  and     $t8, $t7, $at              
/* 14C78 80846E88 AE1801B0 */  sw      $t8, 0x01B0($s0)           ## 000001B0
/* 14C7C 80846E8C 8E481364 */  lw      $t0, 0x1364($s2)           ## 8015F9C4
/* 14C80 80846E90 1100003E */  beq     $t0, $zero, .L80846F8C     
/* 14C84 80846E94 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 14C88 80846E98 55010005 */  bnel    $t0, $at, .L80846EB0       
/* 14C8C 80846E9C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 14C90 80846EA0 86591392 */  lh      $t9, 0x1392($s2)           ## 8015F9F2
/* 14C94 80846EA4 10000039 */  beq     $zero, $zero, .L80846F8C   
/* 14C98 80846EA8 A619001C */  sh      $t9, 0x001C($s0)           ## 0000001C
/* 14C9C 80846EAC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80846EB0:
/* 14CA0 80846EB0 11010004 */  beq     $t0, $at, .L80846EC4       
/* 14CA4 80846EB4 2409FFFE */  addiu   $t1, $zero, 0xFFFE         ## $t1 = FFFFFFFE
/* 14CA8 80846EB8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 14CAC 80846EBC 15010002 */  bne     $t0, $at, .L80846EC8       
/* 14CB0 80846EC0 00000000 */  nop
.L80846EC4:
/* 14CB4 80846EC4 A2090A86 */  sb      $t1, 0x0A86($s0)           ## 00000A86
.L80846EC8:
/* 14CB8 80846EC8 05010003 */  bgez    $t0, .L80846ED8            
/* 14CBC 80846ECC 2502FFFF */  addiu   $v0, $t0, 0xFFFF           ## $v0 = FFFFFFFF
/* 14CC0 80846ED0 10000022 */  beq     $zero, $zero, .L80846F5C   
/* 14CC4 80846ED4 AFA0004C */  sw      $zero, 0x004C($sp)         
.L80846ED8:
/* 14CC8 80846ED8 000850C0 */  sll     $t2, $t0,  3               
/* 14CCC 80846EDC 01485023 */  subu    $t2, $t2, $t0              
/* 14CD0 80846EE0 000A5080 */  sll     $t2, $t2,  2               
/* 14CD4 80846EE4 024A2821 */  addu    $a1, $s2, $t2              
/* 14CD8 80846EE8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 14CDC 80846EEC AFA2004C */  sw      $v0, 0x004C($sp)           
/* 14CE0 80846EF0 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 14CE4 80846EF4 24A5134C */  addiu   $a1, $a1, 0x134C           ## $a1 = 0000134C
/* 14CE8 80846EF8 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 14CEC 80846EFC 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 14CF0 80846F00 AFA80050 */  sw      $t0, 0x0050($sp)           
/* 14CF4 80846F04 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 14CF8 80846F08 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 14CFC 80846F0C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 14D00 80846F10 26040100 */  addiu   $a0, $s0, 0x0100           ## $a0 = 00000100
/* 14D04 80846F14 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 14D08 80846F18 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 14D0C 80846F1C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 14D10 80846F20 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 14D14 80846F24 4600218D */  trunc.w.s $f6, $f4                   
/* 14D18 80846F28 440C3000 */  mfc1    $t4, $f6                   
/* 14D1C 80846F2C 00000000 */  nop
/* 14D20 80846F30 A60C0894 */  sh      $t4, 0x0894($s0)           ## 00000894
/* 14D24 80846F34 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 14D28 80846F38 000D70C0 */  sll     $t6, $t5,  3               
/* 14D2C 80846F3C 01CD7023 */  subu    $t6, $t6, $t5              
/* 14D30 80846F40 000E7080 */  sll     $t6, $t6,  2               
/* 14D34 80846F44 024E1021 */  addu    $v0, $s2, $t6              
/* 14D38 80846F48 84451374 */  lh      $a1, 0x1374($v0)           ## 00001374
/* 14D3C 80846F4C A60500B6 */  sh      $a1, 0x00B6($s0)           ## 000000B6
/* 14D40 80846F50 A605083C */  sh      $a1, 0x083C($s0)           ## 0000083C
/* 14D44 80846F54 844F1376 */  lh      $t7, 0x1376($v0)           ## 00001376
/* 14D48 80846F58 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
.L80846F5C:
/* 14D4C 80846F5C 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 14D50 80846F60 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 14D54 80846F64 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 14D58 80846F68 0018C8C0 */  sll     $t9, $t8,  3               
/* 14D5C 80846F6C 0338C823 */  subu    $t9, $t9, $t8              
/* 14D60 80846F70 0019C880 */  sll     $t9, $t9,  2               
/* 14D64 80846F74 02591021 */  addu    $v0, $s2, $t9              
/* 14D68 80846F78 8C49137C */  lw      $t1, 0x137C($v0)           ## 0000137C
/* 14D6C 80846F7C 01215024 */  and     $t2, $t1, $at              
/* 14D70 80846F80 AE2A1D2C */  sw      $t2, 0x1D2C($s1)           ## 00001D2C
/* 14D74 80846F84 8C4B1380 */  lw      $t3, 0x1380($v0)           ## 00001380
/* 14D78 80846F88 AE2B1D48 */  sw      $t3, 0x1D48($s1)           ## 00001D48
.L80846F8C:
/* 14D7C 80846F8C 11000003 */  beq     $t0, $zero, .L80846F9C     
/* 14D80 80846F90 2901FFFF */  slti    $at, $t0, 0xFFFF           
/* 14D84 80846F94 50200036 */  beql    $at, $zero, .L80847070     
/* 14D88 80846F98 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80846F9C:
/* 14D8C 80846F9C 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 14D90 80846FA0 8C6C000C */  lw      $t4, 0x000C($v1)           ## 0000000C
/* 14D94 80846FA4 8C6D0008 */  lw      $t5, 0x0008($v1)           ## 00000008
/* 14D98 80846FA8 518D002F */  beql    $t4, $t5, .L80847068       
/* 14D9C 80846FAC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 14DA0 80846FB0 924E13C7 */  lbu     $t6, 0x13C7($s2)           ## 8015FA27
/* 14DA4 80846FB4 51C0002C */  beql    $t6, $zero, .L80847068     
/* 14DA8 80846FB8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 14DAC 80846FBC 8E431360 */  lw      $v1, 0x1360($s2)           ## 8015F9C0
/* 14DB0 80846FC0 28610004 */  slti    $at, $v1, 0x0004           
/* 14DB4 80846FC4 50200028 */  beql    $at, $zero, .L80847068     
/* 14DB8 80846FC8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 14DBC 80846FCC 8E420000 */  lw      $v0, 0x0000($s2)           ## 8015E660
/* 14DC0 80846FD0 00037880 */  sll     $t7, $v1,  2               
/* 14DC4 80846FD4 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 14DC8 80846FD8 0002C080 */  sll     $t8, $v0,  2               
/* 14DCC 80846FDC 01F8C821 */  addu    $t9, $t7, $t8              
/* 14DD0 80846FE0 01394821 */  addu    $t1, $t1, $t9              
/* 14DD4 80846FE4 952981C2 */  lhu     $t1, -0x7E3E($t1)          ## 801281C2
/* 14DD8 80846FE8 312A4000 */  andi    $t2, $t1, 0x4000           ## $t2 = 00000000
/* 14DDC 80846FEC 5140001E */  beql    $t2, $zero, .L80847068     
/* 14DE0 80846FF0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 14DE4 80846FF4 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 14DE8 80846FF8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 14DEC 80846FFC 54410005 */  bnel    $v0, $at, .L80847014       
/* 14DF0 80847000 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 14DF4 80847004 964B0EEA */  lhu     $t3, 0x0EEA($s2)           ## 8015F54A
/* 14DF8 80847008 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 14DFC 8084700C 11800015 */  beq     $t4, $zero, .L80847064     
/* 14E00 80847010 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
.L80847014:
/* 14E04 80847014 14410005 */  bne     $v0, $at, .L8084702C       
/* 14E08 80847018 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14E0C 8084701C 964D0ED8 */  lhu     $t5, 0x0ED8($s2)           ## 8015F538
/* 14E10 80847020 31AE0020 */  andi    $t6, $t5, 0x0020           ## $t6 = 00000000
/* 14E14 80847024 51C00010 */  beql    $t6, $zero, .L80847068     
/* 14E18 80847028 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
.L8084702C:
/* 14E1C 8084702C 8E0601B0 */  lw      $a2, 0x01B0($s0)           ## 000001B0
/* 14E20 80847030 240F0078 */  addiu   $t7, $zero, 0x0078         ## $t7 = 00000078
/* 14E24 80847034 24180090 */  addiu   $t8, $zero, 0x0090         ## $t8 = 00000090
/* 14E28 80847038 24190018 */  addiu   $t9, $zero, 0x0018         ## $t9 = 00000018
/* 14E2C 8084703C 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 14E30 80847040 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 14E34 80847044 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 14E38 80847048 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 14E3C 8084704C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 14E40 80847050 AFA80050 */  sw      $t0, 0x0050($sp)           
/* 14E44 80847054 26251D4C */  addiu   $a1, $s1, 0x1D4C           ## $a1 = 00001D4C
/* 14E48 80847058 0C00B390 */  jal     TitleCard_InitPlaceName
              
/* 14E4C 8084705C 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 14E50 80847060 8FA80050 */  lw      $t0, 0x0050($sp)           
.L80847064:
/* 14E54 80847064 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
.L80847068:
/* 14E58 80847068 A24A13C7 */  sb      $t2, 0x13C7($s2)           ## 8015FA27
/* 14E5C 8084706C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L80847070:
/* 14E60 80847070 15010003 */  bne     $t0, $at, .L80847080       
/* 14E64 80847074 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14E68 80847078 10000002 */  beq     $zero, $zero, .L80847084   
/* 14E6C 8084707C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80847080:
/* 14E70 80847080 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80847084:
/* 14E74 80847084 0C21171A */  jal     func_80845C68              
/* 14E78 80847088 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 14E7C 8084708C 14400005 */  bne     $v0, $zero, .L808470A4     
/* 14E80 80847090 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 14E84 80847094 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 14E88 80847098 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 14E8C 8084709C 358D0D00 */  ori     $t5, $t4, 0x0D00           ## $t5 = 00000D00
/* 14E90 808470A0 A64D1376 */  sh      $t5, 0x1376($s2)           ## 8015F9D6
.L808470A4:
/* 14E94 808470A4 A24E137B */  sb      $t6, 0x137B($s2)           ## 8015F9DB
/* 14E98 808470A8 862200A4 */  lh      $v0, 0x00A4($s1)           ## 000000A4
/* 14E9C 808470AC 3C0C8085 */  lui     $t4, %hi(D_80854738)       ## $t4 = 80850000
/* 14EA0 808470B0 258C4738 */  addiu   $t4, $t4, %lo(D_80854738)  ## $t4 = 80854738
/* 14EA4 808470B4 28410010 */  slti    $at, $v0, 0x0010           
/* 14EA8 808470B8 10200008 */  beq     $at, $zero, .L808470DC     
/* 14EAC 808470BC 0002C080 */  sll     $t8, $v0,  2               
/* 14EB0 808470C0 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 14EB4 808470C4 0338C821 */  addu    $t9, $t9, $t8              
/* 14EB8 808470C8 8F397120 */  lw      $t9, 0x7120($t9)           ## 80127120
/* 14EBC 808470CC 964F0F2C */  lhu     $t7, 0x0F2C($s2)           ## 8015F58C
/* 14EC0 808470D0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 14EC4 808470D4 01F94825 */  or      $t1, $t7, $t9              ## $t1 = 80120000
/* 14EC8 808470D8 A429F58C */  sh      $t1, -0x0A74($at)          ## 8015F58C
.L808470DC:
/* 14ECC 808470DC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 14ED0 808470E0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 14ED4 808470E4 30420F00 */  andi    $v0, $v0, 0x0F00           ## $v0 = 00000000
/* 14ED8 808470E8 00021203 */  sra     $v0, $v0,  8               
/* 14EDC 808470EC 10410003 */  beq     $v0, $at, .L808470FC       
/* 14EE0 808470F0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 14EE4 808470F4 54410008 */  bnel    $v0, $at, .L80847118       
/* 14EE8 808470F8 00025880 */  sll     $t3, $v0,  2               
.L808470FC:
/* 14EEC 808470FC 8E4A0008 */  lw      $t2, 0x0008($s2)           ## 8015E668
/* 14EF0 80847100 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 14EF4 80847104 0141082A */  slt     $at, $t2, $at              
/* 14EF8 80847108 54200003 */  bnel    $at, $zero, .L80847118     
/* 14EFC 8084710C 00025880 */  sll     $t3, $v0,  2               
/* 14F00 80847110 2402000D */  addiu   $v0, $zero, 0x000D         ## $v0 = 0000000D
/* 14F04 80847114 00025880 */  sll     $t3, $v0,  2               
.L80847118:
/* 14F08 80847118 016C1821 */  addu    $v1, $t3, $t4              
/* 14F0C 8084711C 8C790000 */  lw      $t9, 0x0000($v1)           ## 00000000
/* 14F10 80847120 AFA3003C */  sw      $v1, 0x003C($sp)           
/* 14F14 80847124 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14F18 80847128 0320F809 */  jalr    $ra, $t9                   
/* 14F1C 8084712C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14F20 80847130 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 14F24 80847134 3C0D8085 */  lui     $t5, %hi(D_80854738)       ## $t5 = 80850000
/* 14F28 80847138 25AD4738 */  addiu   $t5, $t5, %lo(D_80854738)  ## $t5 = 80854738
/* 14F2C 8084713C 506D0012 */  beql    $v1, $t5, .L80847188       
/* 14F30 80847140 865813C8 */  lh      $t8, 0x13C8($s2)           ## 8015FA28
/* 14F34 80847144 8E42135C */  lw      $v0, 0x135C($s2)           ## 8015F9BC
/* 14F38 80847148 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 14F3C 8084714C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14F40 80847150 10400002 */  beq     $v0, $zero, .L8084715C     
/* 14F44 80847154 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14F48 80847158 1441000A */  bne     $v0, $at, .L80847184       
.L8084715C:
/* 14F4C 8084715C 3C078085 */  lui     $a3, %hi(D_80854778)       ## $a3 = 80850000
/* 14F50 80847160 24E74778 */  addiu   $a3, $a3, %lo(D_80854778)  ## $a3 = 80854778
/* 14F54 80847164 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 14F58 80847168 0C20E5A0 */  jal     func_80839680              
/* 14F5C 8084716C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 14F60 80847170 AE02068C */  sw      $v0, 0x068C($s0)           ## 0000068C
/* 14F64 80847174 864313C4 */  lh      $v1, 0x13C4($s2)           ## 8015FA24
/* 14F68 80847178 10600002 */  beq     $v1, $zero, .L80847184     
/* 14F6C 8084717C 346E8000 */  ori     $t6, $v1, 0x8000           ## $t6 = 00008000
/* 14F70 80847180 A64E13C4 */  sh      $t6, 0x13C4($s2)           ## 8015FA24
.L80847184:
/* 14F74 80847184 865813C8 */  lh      $t8, 0x13C8($s2)           ## 8015FA28
.L80847188:
/* 14F78 80847188 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 14F7C 8084718C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14F80 80847190 13000007 */  beq     $t8, $zero, .L808471B0     
/* 14F84 80847194 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 14F88 80847198 A64F13F0 */  sh      $t7, 0x13F0($s2)           ## 8015FA50
/* 14F8C 8084719C 0C211A80 */  jal     func_80846A00              
/* 14F90 808471A0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 14F94 808471A4 92090692 */  lbu     $t1, 0x0692($s0)           ## 00000692
/* 14F98 808471A8 312AFFBF */  andi    $t2, $t1, 0xFFBF           ## $t2 = 00000000
/* 14F9C 808471AC A20A0692 */  sb      $t2, 0x0692($s0)           ## 00000692
.L808471B0:
/* 14FA0 808471B0 964213C0 */  lhu     $v0, 0x13C0($s2)           ## 8015FA20
/* 14FA4 808471B4 10400004 */  beq     $v0, $zero, .L808471C8     
/* 14FA8 808471B8 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00000000
/* 14FAC 808471BC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 14FB0 808471C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 14FB4 808471C4 A64013C0 */  sh      $zero, 0x13C0($s2)         ## 8015FA20
.L808471C8:
/* 14FB8 808471C8 0C0201E8 */  jal     func_800807A0              
/* 14FBC 808471CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 14FC0 808471D0 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 14FC4 808471D4 8D6BFA90 */  lw      $t3, -0x0570($t3)          ## 8015FA90
/* 14FC8 808471D8 A5600454 */  sh      $zero, 0x0454($t3)         ## 80160454
/* 14FCC 808471DC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 14FD0 808471E0 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 14FD4 808471E4 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 14FD8 808471E8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 14FDC 808471EC 03E00008 */  jr      $ra                        
/* 14FE0 808471F0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000


