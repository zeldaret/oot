glabel func_80826BA8
/* 13388 80826BA8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1338C 80826BAC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 13390 80826BB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 13394 80826BB4 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 13398 80826BB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1339C 80826BBC 00B02821 */  addu    $a1, $a1, $s0              
/* 133A0 80826BC0 3C048083 */  lui     $a0, %hi(D_8082FDE8)       ## $a0 = 80830000
/* 133A4 80826BC4 2484FDE8 */  addiu   $a0, $a0, %lo(D_8082FDE8)  ## $a0 = 8082FDE8
/* 133A8 80826BC8 0C00084C */  jal     osSyncPrintf
              
/* 133AC 80826BCC 84A5074E */  lh      $a1, 0x074E($a1)           ## 0001074E
/* 133B0 80826BD0 0C209ABB */  jal     func_80826AEC              
/* 133B4 80826BD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 133B8 80826BD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 133BC 80826BDC 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 133C0 80826BE0 02011821 */  addu    $v1, $s0, $at              
/* 133C4 80826BE4 84650236 */  lh      $a1, 0x0236($v1)           ## 00000236
/* 133C8 80826BE8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 133CC 80826BEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 133D0 80826BF0 24A5FFFD */  addiu   $a1, $a1, 0xFFFD           ## $a1 = FFFFFFFD
/* 133D4 80826BF4 00052C00 */  sll     $a1, $a1, 16               
/* 133D8 80826BF8 0C02023F */  jal     func_800808FC              
/* 133DC 80826BFC 00052C03 */  sra     $a1, $a1, 16               
/* 133E0 80826C00 860200A4 */  lh      $v0, 0x00A4($s0)           ## 000000A4
/* 133E4 80826C04 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 133E8 80826C08 04400013 */  bltz    $v0, .L80826C58            
/* 133EC 80826C0C 28410011 */  slti    $at, $v0, 0x0011           
/* 133F0 80826C10 10200011 */  beq     $at, $zero, .L80826C58     
/* 133F4 80826C14 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 133F8 80826C18 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 133FC 80826C1C 8479021A */  lh      $t9, 0x021A($v1)           ## 0000021A
/* 13400 80826C20 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 13404 80826C24 85CF0F50 */  lh      $t7, 0x0F50($t6)           ## 80160F50
/* 13408 80826C28 342104F0 */  ori     $at, $at, 0x04F0           ## $at = 000104F0
/* 1340C 80826C2C 240507F8 */  addiu   $a1, $zero, 0x07F8         ## $a1 = 000007F8
/* 13410 80826C30 25F80003 */  addiu   $t8, $t7, 0x0003           ## $t8 = 00000003
/* 13414 80826C34 17190008 */  bne     $t8, $t9, .L80826C58       
/* 13418 80826C38 2407000E */  addiu   $a3, $zero, 0x000E         ## $a3 = 0000000E
/* 1341C 80826C3C 02011021 */  addu    $v0, $s0, $at              
/* 13420 80826C40 8C44013C */  lw      $a0, 0x013C($v0)           ## 0000013C
/* 13424 80826C44 8446025E */  lh      $a2, 0x025E($v0)           ## 0000025E
/* 13428 80826C48 0C207DB9 */  jal     func_8081F6E4              
/* 1342C 80826C4C AFA30024 */  sw      $v1, 0x0024($sp)           
/* 13430 80826C50 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 13434 80826C54 860200A4 */  lh      $v0, 0x00A4($s0)           ## 000000A4
.L80826C58:
/* 13438 80826C58 04400011 */  bltz    $v0, .L80826CA0            
/* 1343C 80826C5C 28410011 */  slti    $at, $v0, 0x0011           
/* 13440 80826C60 1020000F */  beq     $at, $zero, .L80826CA0     
/* 13444 80826C64 3C088016 */  lui     $t0, %hi(gGameInfo)
/* 13448 80826C68 8D08FA90 */  lw      $t0, %lo(gGameInfo)($t0)
/* 1344C 80826C6C 846B021A */  lh      $t3, 0x021A($v1)           ## 0000021A
/* 13450 80826C70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 13454 80826C74 85090F50 */  lh      $t1, 0x0F50($t0)           ## 80160F50
/* 13458 80826C78 342104F0 */  ori     $at, $at, 0x04F0           ## $at = 000104F0
/* 1345C 80826C7C 02011021 */  addu    $v0, $s0, $at              
/* 13460 80826C80 252A0003 */  addiu   $t2, $t1, 0x0003           ## $t2 = 00000003
/* 13464 80826C84 154B0006 */  bne     $t2, $t3, .L80826CA0       
/* 13468 80826C88 240507F8 */  addiu   $a1, $zero, 0x07F8         ## $a1 = 000007F8
/* 1346C 80826C8C 8C44013C */  lw      $a0, 0x013C($v0)           ## 0000013C
/* 13470 80826C90 8446025E */  lh      $a2, 0x025E($v0)           ## 0000025E
/* 13474 80826C94 2407000E */  addiu   $a3, $zero, 0x000E         ## $a3 = 0000000E
/* 13478 80826C98 0C207DB9 */  jal     func_8081F6E4              
/* 1347C 80826C9C 24840800 */  addiu   $a0, $a0, 0x0800           ## $a0 = 00000800
.L80826CA0:
/* 13480 80826CA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 13484 80826CA4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 13488 80826CA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1348C 80826CAC 03E00008 */  jr      $ra                        
/* 13490 80826CB0 00000000 */  nop
