glabel func_80AD8234
/* 00AF4 80AD8234 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AF8 80AD8238 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00AFC 80AD823C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00B00 80AD8240 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B04 80AD8244 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B08 80AD8248 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B0C 80AD824C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00B10 80AD8250 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00B14 80AD8254 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00B18 80AD8258 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00B1C 80AD825C 0C042F6F */  jal     func_8010BDBC              
/* 00B20 80AD8260 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00B24 80AD8264 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B28 80AD8268 14410017 */  bne     $v0, $at, .L80AD82C8       
/* 00B2C 80AD826C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B30 80AD8270 0C041AF2 */  jal     func_80106BC8              
/* 00B34 80AD8274 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B38 80AD8278 5040001D */  beql    $v0, $zero, .L80AD82F0     
/* 00B3C 80AD827C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B40 80AD8280 920E0194 */  lbu     $t6, 0x0194($s0)           ## 00000194
/* 00B44 80AD8284 2406002E */  addiu   $a2, $zero, 0x002E         ## $a2 = 0000002E
/* 00B48 80AD8288 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B4C 80AD828C 11C00006 */  beq     $t6, $zero, .L80AD82A8     
/* 00B50 80AD8290 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B54 80AD8294 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B58 80AD8298 0C00CE50 */  jal     Actor_SetTextWithPrefix
              
/* 00B5C 80AD829C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B60 80AD82A0 10000004 */  beq     $zero, $zero, .L80AD82B4   
/* 00B64 80AD82A4 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
.L80AD82A8:
/* 00B68 80AD82A8 0C00CE50 */  jal     Actor_SetTextWithPrefix
              
/* 00B6C 80AD82AC 2406002D */  addiu   $a2, $zero, 0x002D         ## $a2 = 0000002D
/* 00B70 80AD82B0 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
.L80AD82B4:
/* 00B74 80AD82B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B78 80AD82B8 0C042DC8 */  jal     func_8010B720              
/* 00B7C 80AD82BC A605019C */  sh      $a1, 0x019C($s0)           ## 0000019C
/* 00B80 80AD82C0 1000000B */  beq     $zero, $zero, .L80AD82F0   
/* 00B84 80AD82C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD82C8:
/* 00B88 80AD82C8 0C00BCCD */  jal     func_8002F334              
/* 00B8C 80AD82CC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00B90 80AD82D0 10400006 */  beq     $v0, $zero, .L80AD82EC     
/* 00B94 80AD82D4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00B98 80AD82D8 A420FA2E */  sh      $zero, -0x05D2($at)        ## 8015FA2E
/* 00B9C 80AD82DC 3C0F80AE */  lui     $t7, %hi(func_80AD830C)    ## $t7 = 80AE0000
/* 00BA0 80AD82E0 25EF830C */  addiu   $t7, $t7, %lo(func_80AD830C) ## $t7 = 80AD830C
/* 00BA4 80AD82E4 A6000196 */  sh      $zero, 0x0196($s0)         ## 00000196
/* 00BA8 80AD82E8 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
.L80AD82EC:
/* 00BAC 80AD82EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD82F0:
/* 00BB0 80AD82F0 0C00BE5D */  jal     func_8002F974              
/* 00BB4 80AD82F4 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 00BB8 80AD82F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BBC 80AD82FC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00BC0 80AD8300 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00BC4 80AD8304 03E00008 */  jr      $ra                        
/* 00BC8 80AD8308 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


