glabel func_8084BDFC
/* 19BEC 8084BDFC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 19BF0 8084BE00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 19BF4 8084BE04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 19BF8 8084BE08 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 19BFC 8084BE0C 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 19C00 8084BE10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 19C04 8084BE14 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 19C08 8084BE18 35CF0040 */  ori     $t7, $t6, 0x0040           ## $t7 = 00000040
/* 19C0C 8084BE1C AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 19C10 8084BE20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 19C14 8084BE24 0C028EF0 */  jal     func_800A3BC0              
/* 19C18 8084BE28 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 19C1C 8084BE2C 10400009 */  beq     $v0, $zero, .L8084BE54     
/* 19C20 8084BE30 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 19C24 8084BE34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19C28 8084BE38 0C20CB92 */  jal     func_80832E48              
/* 19C2C 8084BE3C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 19C30 8084BE40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19C34 8084BE44 0C20F03A */  jal     func_8083C0E8              
/* 19C38 8084BE48 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 19C3C 8084BE4C 10000021 */  beq     $zero, $zero, .L8084BED4   
/* 19C40 8084BE50 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084BE54:
/* 19C44 8084BE54 C60401C4 */  lwc1    $f4, 0x01C4($s0)           ## 000001C4
/* 19C48 8084BE58 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 19C4C 8084BE5C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 19C50 8084BE60 46062201 */  sub.s   $f8, $f4, $f6              
/* 19C54 8084BE64 44054000 */  mfc1    $a1, $f8                   
/* 19C58 8084BE68 0C02914C */  jal     func_800A4530              
/* 19C5C 8084BE6C 00000000 */  nop
/* 19C60 8084BE70 10400005 */  beq     $v0, $zero, .L8084BE88     
/* 19C64 8084BE74 3C014208 */  lui     $at, 0x4208                ## $at = 42080000
/* 19C68 8084BE78 0C20CA28 */  jal     func_808328A0              
/* 19C6C 8084BE7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19C70 8084BE80 10000014 */  beq     $zero, $zero, .L8084BED4   
/* 19C74 8084BE84 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084BE88:
/* 19C78 8084BE88 C60A01C4 */  lwc1    $f10, 0x01C4($s0)          ## 000001C4
/* 19C7C 8084BE8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 19C80 8084BE90 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 19C84 8084BE94 46105481 */  sub.s   $f18, $f10, $f16           
/* 19C88 8084BE98 44059000 */  mfc1    $a1, $f18                  
/* 19C8C 8084BE9C 0C02914C */  jal     func_800A4530              
/* 19C90 8084BEA0 00000000 */  nop
/* 19C94 8084BEA4 1040000A */  beq     $v0, $zero, .L8084BED0     
/* 19C98 8084BEA8 24019FFF */  addiu   $at, $zero, 0x9FFF         ## $at = FFFF9FFF
/* 19C9C 8084BEAC 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
/* 19CA0 8084BEB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19CA4 8084BEB4 24050831 */  addiu   $a1, $zero, 0x0831         ## $a1 = 00000831
/* 19CA8 8084BEB8 0301C824 */  and     $t9, $t8, $at              
/* 19CAC 8084BEBC 0C00BDF7 */  jal     func_8002F7DC              
/* 19CB0 8084BEC0 AE19067C */  sw      $t9, 0x067C($s0)           ## 0000067C
/* 19CB4 8084BEC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19CB8 8084BEC8 0C20C9A6 */  jal     func_80832698              
/* 19CBC 8084BECC 24056804 */  addiu   $a1, $zero, 0x6804         ## $a1 = 00006804
.L8084BED0:
/* 19CC0 8084BED0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084BED4:
/* 19CC4 8084BED4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 19CC8 8084BED8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 19CCC 8084BEDC 03E00008 */  jr      $ra                        
/* 19CD0 8084BEE0 00000000 */  nop
