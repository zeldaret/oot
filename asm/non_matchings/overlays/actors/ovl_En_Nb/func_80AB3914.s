glabel func_80AB3914
/* 02B84 80AB3914 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02B88 80AB3918 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02B8C 80AB391C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02B90 80AB3920 948E010E */  lhu     $t6, 0x010E($a0)           ## 0000010E
/* 02B94 80AB3924 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02B98 80AB3928 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02B9C 80AB392C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BA0 80AB3930 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02BA4 80AB3934 0C042F6F */  jal     func_8010BDBC              
/* 02BA8 80AB3938 A7AE0022 */  sh      $t6, 0x0022($sp)           
/* 02BAC 80AB393C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02BB0 80AB3940 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BB4 80AB3944 14410018 */  bne     $v0, $at, .L80AB39A8       
/* 02BB8 80AB3948 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 02BBC 80AB394C 97A20022 */  lhu     $v0, 0x0022($sp)           
/* 02BC0 80AB3950 24016025 */  addiu   $at, $zero, 0x6025         ## $at = 00006025
/* 02BC4 80AB3954 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02BC8 80AB3958 14410006 */  bne     $v0, $at, .L80AB3974       
/* 02BCC 80AB395C 2419001A */  addiu   $t9, $zero, 0x001A         ## $t9 = 0000001A
/* 02BD0 80AB3960 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 02BD4 80AB3964 0C2ACE2B */  jal     func_80AB38AC              
/* 02BD8 80AB3968 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02BDC 80AB396C 10000009 */  beq     $zero, $zero, .L80AB3994   
/* 02BE0 80AB3970 8FA60030 */  lw      $a2, 0x0030($sp)           
.L80AB3974:
/* 02BE4 80AB3974 24016027 */  addiu   $at, $zero, 0x6027         ## $at = 00006027
/* 02BE8 80AB3978 14410005 */  bne     $v0, $at, .L80AB3990       
/* 02BEC 80AB397C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 02BF0 80AB3980 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 02BF4 80AB3984 944F0F24 */  lhu     $t7, 0x0F24($v0)           ## 8015F584
/* 02BF8 80AB3988 35F81000 */  ori     $t8, $t7, 0x1000           ## $t8 = 00001000
/* 02BFC 80AB398C A4580F24 */  sh      $t8, 0x0F24($v0)           ## 8015F584
.L80AB3990:
/* 02C00 80AB3990 ACD90278 */  sw      $t9, 0x0278($a2)           ## 00000278
.L80AB3994:
/* 02C04 80AB3994 8CC80004 */  lw      $t0, 0x0004($a2)           ## 00000004
/* 02C08 80AB3998 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02C0C 80AB399C 01014824 */  and     $t1, $t0, $at              
/* 02C10 80AB39A0 10000032 */  beq     $zero, $zero, .L80AB3A6C   
/* 02C14 80AB39A4 ACC90004 */  sw      $t1, 0x0004($a2)           ## 00000004
.L80AB39A8:
/* 02C18 80AB39A8 0C042F6F */  jal     func_8010BDBC              
/* 02C1C 80AB39AC AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02C20 80AB39B0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02C24 80AB39B4 1441002D */  bne     $v0, $at, .L80AB3A6C       
/* 02C28 80AB39B8 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 02C2C 80AB39BC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02C30 80AB39C0 0C041AF2 */  jal     func_80106BC8              
/* 02C34 80AB39C4 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 02C38 80AB39C8 10400028 */  beq     $v0, $zero, .L80AB3A6C     
/* 02C3C 80AB39CC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 02C40 80AB39D0 8FAA0034 */  lw      $t2, 0x0034($sp)           
/* 02C44 80AB39D4 97A20022 */  lhu     $v0, 0x0022($sp)           
/* 02C48 80AB39D8 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 02C4C 80AB39DC 2401601D */  addiu   $at, $zero, 0x601D         ## $at = 0000601D
/* 02C50 80AB39E0 006A1821 */  addu    $v1, $v1, $t2              
/* 02C54 80AB39E4 1441000E */  bne     $v0, $at, .L80AB3A20       
/* 02C58 80AB39E8 906304BD */  lbu     $v1, 0x04BD($v1)           ## 000104BD
/* 02C5C 80AB39EC 10600006 */  beq     $v1, $zero, .L80AB3A08     
/* 02C60 80AB39F0 240B601E */  addiu   $t3, $zero, 0x601E         ## $t3 = 0000601E
/* 02C64 80AB39F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02C68 80AB39F8 10610005 */  beq     $v1, $at, .L80AB3A10       
/* 02C6C 80AB39FC 240C601F */  addiu   $t4, $zero, 0x601F         ## $t4 = 0000601F
/* 02C70 80AB3A00 10000005 */  beq     $zero, $zero, .L80AB3A18   
/* 02C74 80AB3A04 240D6020 */  addiu   $t5, $zero, 0x6020         ## $t5 = 00006020
.L80AB3A08:
/* 02C78 80AB3A08 10000015 */  beq     $zero, $zero, .L80AB3A60   
/* 02C7C 80AB3A0C A4CB010E */  sh      $t3, 0x010E($a2)           ## 0000010E
.L80AB3A10:
/* 02C80 80AB3A10 10000013 */  beq     $zero, $zero, .L80AB3A60   
/* 02C84 80AB3A14 A4CC010E */  sh      $t4, 0x010E($a2)           ## 0000010E
.L80AB3A18:
/* 02C88 80AB3A18 10000011 */  beq     $zero, $zero, .L80AB3A60   
/* 02C8C 80AB3A1C A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
.L80AB3A20:
/* 02C90 80AB3A20 24016020 */  addiu   $at, $zero, 0x6020         ## $at = 00006020
/* 02C94 80AB3A24 14410008 */  bne     $v0, $at, .L80AB3A48       
/* 02C98 80AB3A28 00000000 */  nop
/* 02C9C 80AB3A2C 14600004 */  bne     $v1, $zero, .L80AB3A40     
/* 02CA0 80AB3A30 240F6022 */  addiu   $t7, $zero, 0x6022         ## $t7 = 00006022
/* 02CA4 80AB3A34 240E6021 */  addiu   $t6, $zero, 0x6021         ## $t6 = 00006021
/* 02CA8 80AB3A38 10000009 */  beq     $zero, $zero, .L80AB3A60   
/* 02CAC 80AB3A3C A4CE010E */  sh      $t6, 0x010E($a2)           ## 0000010E
.L80AB3A40:
/* 02CB0 80AB3A40 10000007 */  beq     $zero, $zero, .L80AB3A60   
/* 02CB4 80AB3A44 A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
.L80AB3A48:
/* 02CB8 80AB3A48 14600004 */  bne     $v1, $zero, .L80AB3A5C     
/* 02CBC 80AB3A4C 24196027 */  addiu   $t9, $zero, 0x6027         ## $t9 = 00006027
/* 02CC0 80AB3A50 24186025 */  addiu   $t8, $zero, 0x6025         ## $t8 = 00006025
/* 02CC4 80AB3A54 10000002 */  beq     $zero, $zero, .L80AB3A60   
/* 02CC8 80AB3A58 A4D8010E */  sh      $t8, 0x010E($a2)           ## 0000010E
.L80AB3A5C:
/* 02CCC 80AB3A5C A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80AB3A60:
/* 02CD0 80AB3A60 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02CD4 80AB3A64 0C042DC8 */  jal     func_8010B720              
/* 02CD8 80AB3A68 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
.L80AB3A6C:
/* 02CDC 80AB3A6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CE0 80AB3A70 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02CE4 80AB3A74 03E00008 */  jr      $ra                        
/* 02CE8 80AB3A78 00000000 */  nop
