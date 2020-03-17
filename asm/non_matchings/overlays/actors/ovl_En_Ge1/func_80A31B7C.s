glabel func_80A31B7C
/* 0120C 80A31B7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01210 80A31B80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01214 80A31B84 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01218 80A31B88 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0121C 80A31B8C 0C042F6F */  jal     func_8010BDBC              
/* 01220 80A31B90 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01224 80A31B94 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01228 80A31B98 5441000D */  bnel    $v0, $at, .L80A31BD0       
/* 0122C 80A31B9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01230 80A31BA0 0C041AF2 */  jal     func_80106BC8              
/* 01234 80A31BA4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01238 80A31BA8 50400009 */  beql    $v0, $zero, .L80A31BD0     
/* 0123C 80A31BAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01240 80A31BB0 0C041B33 */  jal     func_80106CCC              
/* 01244 80A31BB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01248 80A31BB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0124C 80A31BBC 3C0E80A3 */  lui     $t6, %hi(func_80A31FE0)    ## $t6 = 80A30000
/* 01250 80A31BC0 25CE1FE0 */  addiu   $t6, $t6, %lo(func_80A31FE0) ## $t6 = 80A31FE0
/* 01254 80A31BC4 0C28C352 */  jal     func_80A30D48              
/* 01258 80A31BC8 AC8E02B4 */  sw      $t6, 0x02B4($a0)           ## 000002B4
/* 0125C 80A31BCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A31BD0:
/* 01260 80A31BD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01264 80A31BD4 03E00008 */  jr      $ra                        
/* 01268 80A31BD8 00000000 */  nop


