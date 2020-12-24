glabel func_80B5D3CC
/* 01C1C 80B5D3CC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C20 80B5D3D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C24 80B5D3D4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01C28 80B5D3D8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01C2C 80B5D3DC 90860208 */  lbu     $a2, 0x0208($a0)           ## 00000208
/* 01C30 80B5D3E0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01C34 80B5D3E4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01C38 80B5D3E8 10C0000A */  beq     $a2, $zero, .L80B5D414     
/* 01C3C 80B5D3EC 00C01825 */  or      $v1, $a2, $zero            ## $v1 = 00000000
/* 01C40 80B5D3F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01C44 80B5D3F4 10C10021 */  beq     $a2, $at, .L80B5D47C       
/* 01C48 80B5D3F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01C4C 80B5D3FC 10610044 */  beq     $v1, $at, .L80B5D510       
/* 01C50 80B5D400 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01C54 80B5D404 10610067 */  beq     $v1, $at, .L80B5D5A4       
/* 01C58 80B5D408 00000000 */  nop
/* 01C5C 80B5D40C 10000076 */  beq     $zero, $zero, .L80B5D5E8   
/* 01C60 80B5D410 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80B5D414:
/* 01C64 80B5D414 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C68 80B5D418 0C2D6E22 */  jal     func_80B5B888              
/* 01C6C 80B5D41C 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 01C70 80B5D420 3C020200 */  lui     $v0, %hi(D_02000444)                ## $v0 = 02000000
/* 01C74 80B5D424 24420444 */  addiu   $v0, $v0, %lo(D_02000444)           ## $v0 = 02000444
/* 01C78 80B5D428 00027100 */  sll     $t6, $v0,  4               
/* 01C7C 80B5D42C 000E7F02 */  srl     $t7, $t6, 28               
/* 01C80 80B5D430 000FC080 */  sll     $t8, $t7,  2               
/* 01C84 80B5D434 3C198016 */  lui     $t9, %hi(gSegments)
/* 01C88 80B5D438 0338C821 */  addu    $t9, $t9, $t8              
/* 01C8C 80B5D43C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01C90 80B5D440 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 01C94 80B5D444 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01C98 80B5D448 00414024 */  and     $t0, $v0, $at              
/* 01C9C 80B5D44C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01CA0 80B5D450 03284821 */  addu    $t1, $t9, $t0              
/* 01CA4 80B5D454 01215021 */  addu    $t2, $t1, $at              
/* 01CA8 80B5D458 AE0A1D68 */  sw      $t2, 0x1D68($s0)           ## 00001D68
/* 01CAC 80B5D45C 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 01CB0 80B5D460 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01CB4 80B5D464 A02BFA74 */  sb      $t3, %lo(gSaveContext+0x1414)($at)
/* 01CB8 80B5D468 922C0208 */  lbu     $t4, 0x0208($s1)           ## 00000208
/* 01CBC 80B5D46C 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 01CC0 80B5D470 A22D0208 */  sb      $t5, 0x0208($s1)           ## 00000208
/* 01CC4 80B5D474 1000005B */  beq     $zero, $zero, .L80B5D5E4   
/* 01CC8 80B5D478 31A600FF */  andi    $a2, $t5, 0x00FF           ## $a2 = 00000001
.L80B5D47C:
/* 01CCC 80B5D47C 920E1D6C */  lbu     $t6, 0x1D6C($s0)           ## 00001D6C
/* 01CD0 80B5D480 3C020200 */  lui     $v0, %hi(D_02000104)                ## $v0 = 02000000
/* 01CD4 80B5D484 24420104 */  addiu   $v0, $v0, %lo(D_02000104)           ## $v0 = 02000104
/* 01CD8 80B5D488 11C00009 */  beq     $t6, $zero, .L80B5D4B0     
/* 01CDC 80B5D48C 0002C900 */  sll     $t9, $v0,  4               
/* 01CE0 80B5D490 960F1D74 */  lhu     $t7, 0x1D74($s0)           ## 00001D74
/* 01CE4 80B5D494 2401005A */  addiu   $at, $zero, 0x005A         ## $at = 0000005A
/* 01CE8 80B5D498 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01CEC 80B5D49C 55E10052 */  bnel    $t7, $at, .L80B5D5E8       
/* 01CF0 80B5D4A0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01CF4 80B5D4A4 A2181D6C */  sb      $t8, 0x1D6C($s0)           ## 00001D6C
/* 01CF8 80B5D4A8 1000004E */  beq     $zero, $zero, .L80B5D5E4   
/* 01CFC 80B5D4AC 92260208 */  lbu     $a2, 0x0208($s1)           ## 00000208
.L80B5D4B0:
/* 01D00 80B5D4B0 00194702 */  srl     $t0, $t9, 28               
/* 01D04 80B5D4B4 00084880 */  sll     $t1, $t0,  2               
/* 01D08 80B5D4B8 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 01D0C 80B5D4BC 01495021 */  addu    $t2, $t2, $t1              
/* 01D10 80B5D4C0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01D14 80B5D4C4 8D4A6FA8 */  lw      $t2, %lo(gSegments)($t2)
/* 01D18 80B5D4C8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01D1C 80B5D4CC 00415824 */  and     $t3, $v0, $at              
/* 01D20 80B5D4D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01D24 80B5D4D4 014B6021 */  addu    $t4, $t2, $t3              
/* 01D28 80B5D4D8 01816821 */  addu    $t5, $t4, $at              
/* 01D2C 80B5D4DC AE0D1D68 */  sw      $t5, 0x1D68($s0)           ## 00001D68
/* 01D30 80B5D4E0 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 01D34 80B5D4E4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01D38 80B5D4E8 A02EFA74 */  sb      $t6, %lo(gSaveContext+0x1414)($at)
/* 01D3C 80B5D4EC 922F0208 */  lbu     $t7, 0x0208($s1)           ## 00000208
/* 01D40 80B5D4F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D44 80B5D4F4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01D48 80B5D4F8 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01D4C 80B5D4FC A2380208 */  sb      $t8, 0x0208($s1)           ## 00000208
/* 01D50 80B5D500 0C00B7D5 */  jal     func_8002DF54              
/* 01D54 80B5D504 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01D58 80B5D508 10000036 */  beq     $zero, $zero, .L80B5D5E4   
/* 01D5C 80B5D50C 92260208 */  lbu     $a2, 0x0208($s1)           ## 00000208
.L80B5D510:
/* 01D60 80B5D510 92191D6C */  lbu     $t9, 0x1D6C($s0)           ## 00001D6C
/* 01D64 80B5D514 240500A0 */  addiu   $a1, $zero, 0x00A0         ## $a1 = 000000A0
/* 01D68 80B5D518 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
/* 01D6C 80B5D51C 5320000A */  beql    $t9, $zero, .L80B5D548     
/* 01D70 80B5D520 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01D74 80B5D524 96081D74 */  lhu     $t0, 0x1D74($s0)           ## 00001D74
/* 01D78 80B5D528 240100D1 */  addiu   $at, $zero, 0x00D1         ## $at = 000000D1
/* 01D7C 80B5D52C 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01D80 80B5D530 5501002D */  bnel    $t0, $at, .L80B5D5E8       
/* 01D84 80B5D534 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01D88 80B5D538 A2091D6C */  sb      $t1, 0x1D6C($s0)           ## 00001D6C
/* 01D8C 80B5D53C 10000029 */  beq     $zero, $zero, .L80B5D5E4   
/* 01D90 80B5D540 92260208 */  lbu     $a2, 0x0208($s1)           ## 00000208
/* 01D94 80B5D544 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
.L80B5D548:
/* 01D98 80B5D548 0C02A800 */  jal     func_800AA000              
/* 01D9C 80B5D54C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 01DA0 80B5D550 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DA4 80B5D554 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01DA8 80B5D558 0C00B7D5 */  jal     func_8002DF54              
/* 01DAC 80B5D55C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01DB0 80B5D560 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 01DB4 80B5D564 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 01DB8 80B5D568 2624014C */  addiu   $a0, $s1, 0x014C           ## $a0 = 0000014C
/* 01DBC 80B5D56C 0C00D3B0 */  jal     func_80034EC0              
/* 01DC0 80B5D570 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 01DC4 80B5D574 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DC8 80B5D578 0C2D6DEC */  jal     func_80B5B7B0              
/* 01DCC 80B5D57C 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 01DD0 80B5D580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DD4 80B5D584 24057039 */  addiu   $a1, $zero, 0x7039         ## $a1 = 00007039
/* 01DD8 80B5D588 0C042DA0 */  jal     func_8010B680              
/* 01DDC 80B5D58C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01DE0 80B5D590 922A0208 */  lbu     $t2, 0x0208($s1)           ## 00000208
/* 01DE4 80B5D594 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 01DE8 80B5D598 A22B0208 */  sb      $t3, 0x0208($s1)           ## 00000208
/* 01DEC 80B5D59C 10000011 */  beq     $zero, $zero, .L80B5D5E4   
/* 01DF0 80B5D5A0 316600FF */  andi    $a2, $t3, 0x00FF           ## $a2 = 00000001
.L80B5D5A4:
/* 01DF4 80B5D5A4 0C042F6F */  jal     func_8010BDBC              
/* 01DF8 80B5D5A8 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 01DFC 80B5D5AC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01E00 80B5D5B0 5441000C */  bnel    $v0, $at, .L80B5D5E4       
/* 01E04 80B5D5B4 92260208 */  lbu     $a2, 0x0208($s1)           ## 00000208
/* 01E08 80B5D5B8 0C041AF2 */  jal     func_80106BC8              
/* 01E0C 80B5D5BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E10 80B5D5C0 10400007 */  beq     $v0, $zero, .L80B5D5E0     
/* 01E14 80B5D5C4 240C0037 */  addiu   $t4, $zero, 0x0037         ## $t4 = 00000037
/* 01E18 80B5D5C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01E1C 80B5D5CC 00300821 */  addu    $at, $at, $s0              
/* 01E20 80B5D5D0 A02C03DC */  sb      $t4, 0x03DC($at)           ## 000103DC
/* 01E24 80B5D5D4 922D0208 */  lbu     $t5, 0x0208($s1)           ## 00000208
/* 01E28 80B5D5D8 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 01E2C 80B5D5DC A22E0208 */  sb      $t6, 0x0208($s1)           ## 00000208
.L80B5D5E0:
/* 01E30 80B5D5E0 92260208 */  lbu     $a2, 0x0208($s1)           ## 00000208
.L80B5D5E4:
/* 01E34 80B5D5E4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80B5D5E8:
/* 01E38 80B5D5E8 14C10003 */  bne     $a2, $at, .L80B5D5F8       
/* 01E3C 80B5D5EC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01E40 80B5D5F0 10000002 */  beq     $zero, $zero, .L80B5D5FC   
/* 01E44 80B5D5F4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80B5D5F8:
/* 01E48 80B5D5F8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B5D5FC:
/* 01E4C 80B5D5FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E50 80B5D600 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01E54 80B5D604 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E58 80B5D608 03E00008 */  jr      $ra                        
/* 01E5C 80B5D60C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
