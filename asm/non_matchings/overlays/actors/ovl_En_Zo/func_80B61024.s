.late_rodata
glabel jtbl_80B626B8
.word L80B610A4
.word L80B610E4
.word L80B61144
.word L80B611B4
.word L80B611F4
.word L80B61244
.word L80B61094
.word L80B6109C
.word L80B61074

.text
glabel func_80B61024
/* 00E04 80B61024 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E08 80B61028 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E0C 80B6102C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E10 80B61030 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00E14 80B61034 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 00E18 80B61038 10400003 */  beq     $v0, $zero, .L80B61048     
/* 00E1C 80B6103C 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00E20 80B61040 10000091 */  beq     $zero, $zero, .L80B61288   
/* 00E24 80B61044 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B61048:
/* 00E28 80B61048 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00E2C 80B6104C 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 00E30 80B61050 31F8003F */  andi    $t8, $t7, 0x003F           ## $t8 = 00000000
/* 00E34 80B61054 2F010009 */  sltiu   $at, $t8, 0x0009           
/* 00E38 80B61058 1020008A */  beq     $at, $zero, .L80B61284     
/* 00E3C 80B6105C 0018C080 */  sll     $t8, $t8,  2               
/* 00E40 80B61060 3C0180B6 */  lui     $at, %hi(jtbl_80B626B8)       ## $at = 80B60000
/* 00E44 80B61064 00380821 */  addu    $at, $at, $t8              
/* 00E48 80B61068 8C3826B8 */  lw      $t8, %lo(jtbl_80B626B8)($at)  
/* 00E4C 80B6106C 03000008 */  jr      $t8                        
/* 00E50 80B61070 00000000 */  nop
glabel L80B61074
/* 00E54 80B61074 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00E58 80B61078 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00E5C 80B6107C 94790EDA */  lhu     $t9, 0x0EDA($v1)           ## 8015F53A
/* 00E60 80B61080 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00E64 80B61084 51000080 */  beql    $t0, $zero, .L80B61288     
/* 00E68 80B61088 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 00E6C 80B6108C 1000007E */  beq     $zero, $zero, .L80B61288   
/* 00E70 80B61090 2402402A */  addiu   $v0, $zero, 0x402A         ## $v0 = 0000402A
glabel L80B61094
/* 00E74 80B61094 1000007C */  beq     $zero, $zero, .L80B61288   
/* 00E78 80B61098 24024020 */  addiu   $v0, $zero, 0x4020         ## $v0 = 00004020
glabel L80B6109C
/* 00E7C 80B6109C 1000007A */  beq     $zero, $zero, .L80B61288   
/* 00E80 80B610A0 24024021 */  addiu   $v0, $zero, 0x4021         ## $v0 = 00004021
glabel L80B610A4
/* 00E84 80B610A4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00E88 80B610A8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00E8C 80B610AC 3C098012 */  lui     $t1, %hi(gBitFlags+0x50)
/* 00E90 80B610B0 8D297170 */  lw      $t1, %lo(gBitFlags+0x50)($t1)
/* 00E94 80B610B4 8C6A00A4 */  lw      $t2, 0x00A4($v1)           ## 8015E704
/* 00E98 80B610B8 012A5824 */  and     $t3, $t1, $t2              
/* 00E9C 80B610BC 51600004 */  beql    $t3, $zero, .L80B610D0     
/* 00EA0 80B610C0 946C0EDA */  lhu     $t4, 0x0EDA($v1)           ## 8015F53A
/* 00EA4 80B610C4 10000070 */  beq     $zero, $zero, .L80B61288   
/* 00EA8 80B610C8 2402402D */  addiu   $v0, $zero, 0x402D         ## $v0 = 0000402D
/* 00EAC 80B610CC 946C0EDA */  lhu     $t4, 0x0EDA($v1)           ## 8015F53A
.L80B610D0:
/* 00EB0 80B610D0 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 00EB4 80B610D4 51A0006C */  beql    $t5, $zero, .L80B61288     
/* 00EB8 80B610D8 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 00EBC 80B610DC 1000006A */  beq     $zero, $zero, .L80B61288   
/* 00EC0 80B610E0 24024007 */  addiu   $v0, $zero, 0x4007         ## $v0 = 00004007
glabel L80B610E4
/* 00EC4 80B610E4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00EC8 80B610E8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00ECC 80B610EC 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x50)
/* 00ED0 80B610F0 8DCE7170 */  lw      $t6, %lo(gBitFlags+0x50)($t6)
/* 00ED4 80B610F4 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 00ED8 80B610F8 01CFC024 */  and     $t8, $t6, $t7              
/* 00EDC 80B610FC 53000004 */  beql    $t8, $zero, .L80B61110     
/* 00EE0 80B61100 94790EDA */  lhu     $t9, 0x0EDA($v1)           ## 8015F53A
/* 00EE4 80B61104 10000060 */  beq     $zero, $zero, .L80B61288   
/* 00EE8 80B61108 2402402E */  addiu   $v0, $zero, 0x402E         ## $v0 = 0000402E
/* 00EEC 80B6110C 94790EDA */  lhu     $t9, 0x0EDA($v1)           ## 8015F53A
.L80B61110:
/* 00EF0 80B61110 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00EF4 80B61114 5100005C */  beql    $t0, $zero, .L80B61288     
/* 00EF8 80B61118 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 00EFC 80B6111C 94690F1C */  lhu     $t1, 0x0F1C($v1)           ## 8015F57C
/* 00F00 80B61120 24034008 */  addiu   $v1, $zero, 0x4008         ## $v1 = 00004008
/* 00F04 80B61124 312A0010 */  andi    $t2, $t1, 0x0010           ## $t2 = 00000000
/* 00F08 80B61128 11400004 */  beq     $t2, $zero, .L80B6113C     
/* 00F0C 80B6112C 00000000 */  nop
/* 00F10 80B61130 24034009 */  addiu   $v1, $zero, 0x4009         ## $v1 = 00004009
/* 00F14 80B61134 10000054 */  beq     $zero, $zero, .L80B61288   
/* 00F18 80B61138 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00004009
.L80B6113C:
/* 00F1C 80B6113C 10000052 */  beq     $zero, $zero, .L80B61288   
/* 00F20 80B61140 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00004009
glabel L80B61144
/* 00F24 80B61144 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00F28 80B61148 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00F2C 80B6114C 3C0B8012 */  lui     $t3, %hi(gBitFlags+0x50)
/* 00F30 80B61150 8D6B7170 */  lw      $t3, %lo(gBitFlags+0x50)($t3)
/* 00F34 80B61154 8C6C00A4 */  lw      $t4, 0x00A4($v1)           ## 8015E704
/* 00F38 80B61158 016C6824 */  and     $t5, $t3, $t4              
/* 00F3C 80B6115C 51A00004 */  beql    $t5, $zero, .L80B61170     
/* 00F40 80B61160 94620EDA */  lhu     $v0, 0x0EDA($v1)           ## 8015F53A
/* 00F44 80B61164 10000048 */  beq     $zero, $zero, .L80B61288   
/* 00F48 80B61168 2402402D */  addiu   $v0, $zero, 0x402D         ## $v0 = 0000402D
/* 00F4C 80B6116C 94620EDA */  lhu     $v0, 0x0EDA($v1)           ## 8015F53A
.L80B61170:
/* 00F50 80B61170 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00F54 80B61174 11C0000B */  beq     $t6, $zero, .L80B611A4     
/* 00F58 80B61178 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000001
/* 00F5C 80B6117C 946F0F1C */  lhu     $t7, 0x0F1C($v1)           ## 8015F57C
/* 00F60 80B61180 2403402F */  addiu   $v1, $zero, 0x402F         ## $v1 = 0000402F
/* 00F64 80B61184 31F80200 */  andi    $t8, $t7, 0x0200           ## $t8 = 00000000
/* 00F68 80B61188 13000004 */  beq     $t8, $zero, .L80B6119C     
/* 00F6C 80B6118C 00000000 */  nop
/* 00F70 80B61190 2403400B */  addiu   $v1, $zero, 0x400B         ## $v1 = 0000400B
/* 00F74 80B61194 1000003C */  beq     $zero, $zero, .L80B61288   
/* 00F78 80B61198 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000400B
.L80B6119C:
/* 00F7C 80B6119C 1000003A */  beq     $zero, $zero, .L80B61288   
/* 00F80 80B611A0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000400B
.L80B611A4:
/* 00F84 80B611A4 53200038 */  beql    $t9, $zero, .L80B61288     
/* 00F88 80B611A8 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 00F8C 80B611AC 10000036 */  beq     $zero, $zero, .L80B61288   
/* 00F90 80B611B0 2402400A */  addiu   $v0, $zero, 0x400A         ## $v0 = 0000400A
glabel L80B611B4
/* 00F94 80B611B4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00F98 80B611B8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00F9C 80B611BC 3C088012 */  lui     $t0, %hi(gBitFlags+0x50)
/* 00FA0 80B611C0 8D087170 */  lw      $t0, %lo(gBitFlags+0x50)($t0)
/* 00FA4 80B611C4 8C6900A4 */  lw      $t1, 0x00A4($v1)           ## 8015E704
/* 00FA8 80B611C8 01095024 */  and     $t2, $t0, $t1              
/* 00FAC 80B611CC 51400004 */  beql    $t2, $zero, .L80B611E0     
/* 00FB0 80B611D0 946B0EDA */  lhu     $t3, 0x0EDA($v1)           ## 8015F53A
/* 00FB4 80B611D4 1000002C */  beq     $zero, $zero, .L80B61288   
/* 00FB8 80B611D8 2402402E */  addiu   $v0, $zero, 0x402E         ## $v0 = 0000402E
/* 00FBC 80B611DC 946B0EDA */  lhu     $t3, 0x0EDA($v1)           ## 8015F53A
.L80B611E0:
/* 00FC0 80B611E0 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00FC4 80B611E4 51800028 */  beql    $t4, $zero, .L80B61288     
/* 00FC8 80B611E8 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 00FCC 80B611EC 10000026 */  beq     $zero, $zero, .L80B61288   
/* 00FD0 80B611F0 2402400C */  addiu   $v0, $zero, 0x400C         ## $v0 = 0000400C
glabel L80B611F4
/* 00FD4 80B611F4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00FD8 80B611F8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00FDC 80B611FC 3C0D8012 */  lui     $t5, %hi(gBitFlags+0x50)
/* 00FE0 80B61200 8DAD7170 */  lw      $t5, %lo(gBitFlags+0x50)($t5)
/* 00FE4 80B61204 8C6E00A4 */  lw      $t6, 0x00A4($v1)           ## 8015E704
/* 00FE8 80B61208 01AE7824 */  and     $t7, $t5, $t6              
/* 00FEC 80B6120C 51E00004 */  beql    $t7, $zero, .L80B61220     
/* 00FF0 80B61210 94620EDA */  lhu     $v0, 0x0EDA($v1)           ## 8015F53A
/* 00FF4 80B61214 1000001C */  beq     $zero, $zero, .L80B61288   
/* 00FF8 80B61218 2402402D */  addiu   $v0, $zero, 0x402D         ## $v0 = 0000402D
/* 00FFC 80B6121C 94620EDA */  lhu     $v0, 0x0EDA($v1)           ## 8015F53A
.L80B61220:
/* 01000 80B61220 30580008 */  andi    $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01004 80B61224 13000003 */  beq     $t8, $zero, .L80B61234     
/* 01008 80B61228 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000001
/* 0100C 80B6122C 10000016 */  beq     $zero, $zero, .L80B61288   
/* 01010 80B61230 24024010 */  addiu   $v0, $zero, 0x4010         ## $v0 = 00004010
.L80B61234:
/* 01014 80B61234 53200014 */  beql    $t9, $zero, .L80B61288     
/* 01018 80B61238 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 0101C 80B6123C 10000012 */  beq     $zero, $zero, .L80B61288   
/* 01020 80B61240 2402400F */  addiu   $v0, $zero, 0x400F         ## $v0 = 0000400F
glabel L80B61244
/* 01024 80B61244 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01028 80B61248 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0102C 80B6124C 3C088012 */  lui     $t0, %hi(gBitFlags+0x50)
/* 01030 80B61250 8D087170 */  lw      $t0, %lo(gBitFlags+0x50)($t0)
/* 01034 80B61254 8C6900A4 */  lw      $t1, 0x00A4($v1)           ## 8015E704
/* 01038 80B61258 01095024 */  and     $t2, $t0, $t1              
/* 0103C 80B6125C 51400004 */  beql    $t2, $zero, .L80B61270     
/* 01040 80B61260 946B0EDA */  lhu     $t3, 0x0EDA($v1)           ## 8015F53A
/* 01044 80B61264 10000008 */  beq     $zero, $zero, .L80B61288   
/* 01048 80B61268 2402402E */  addiu   $v0, $zero, 0x402E         ## $v0 = 0000402E
/* 0104C 80B6126C 946B0EDA */  lhu     $t3, 0x0EDA($v1)           ## 8015F53A
.L80B61270:
/* 01050 80B61270 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01054 80B61274 51800004 */  beql    $t4, $zero, .L80B61288     
/* 01058 80B61278 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
/* 0105C 80B6127C 10000002 */  beq     $zero, $zero, .L80B61288   
/* 01060 80B61280 24024011 */  addiu   $v0, $zero, 0x4011         ## $v0 = 00004011
.L80B61284:
/* 01064 80B61284 24024006 */  addiu   $v0, $zero, 0x4006         ## $v0 = 00004006
.L80B61288:
/* 01068 80B61288 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0106C 80B6128C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01070 80B61290 03E00008 */  jr      $ra                        
/* 01074 80B61294 00000000 */  nop
