.rdata
glabel D_809CA830
    .asciz "Actor_Environment_Tbox_On() %d\n"
    .balign 4

.text
glabel func_809C9B28
/* 00D68 809C9B28 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00D6C 809C9B2C AFBF003C */  sw      $ra, 0x003C($sp)
/* 00D70 809C9B30 AFB00038 */  sw      $s0, 0x0038($sp)
/* 00D74 809C9B34 AFA5006C */  sw      $a1, 0x006C($sp)
/* 00D78 809C9B38 908F01F6 */  lbu     $t7, 0x01F6($a0)           ## 000001F6
/* 00D7C 809C9B3C 848201F4 */  lh      $v0, 0x01F4($a0)           ## 000001F4
/* 00D80 809C9B40 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00D84 809C9B44 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00D88 809C9B48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D8C 809C9B4C A08E01F7 */  sb      $t6, 0x01F7($a0)           ## 000001F7
/* 00D90 809C9B50 1040004C */  beq     $v0, $zero, .L809C9C84
/* 00D94 809C9B54 A09801F6 */  sb      $t8, 0x01F6($a0)           ## 000001F6
/* 00D98 809C9B58 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00D9C 809C9B5C 04410003 */  bgez    $v0, .L809C9B6C
/* 00DA0 809C9B60 8C63E664 */  lw      $v1, -0x199C($v1)          ## 8015E664
/* 00DA4 809C9B64 10000002 */  beq     $zero, $zero, .L809C9B70
/* 00DA8 809C9B68 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L809C9B6C:
/* 00DAC 809C9B6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809C9B70:
/* 00DB0 809C9B70 0002C880 */  sll     $t9, $v0,  2
/* 00DB4 809C9B74 00034080 */  sll     $t0, $v1,  2
/* 00DB8 809C9B78 03284821 */  addu    $t1, $t9, $t0
/* 00DBC 809C9B7C 3C05809D */  lui     $a1, %hi(D_809CA800)       ## $a1 = 809D0000
/* 00DC0 809C9B80 00A92821 */  addu    $a1, $a1, $t1
/* 00DC4 809C9B84 8CA4A800 */  lw      $a0, %lo(D_809CA800)($a1)
/* 00DC8 809C9B88 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00DCC 809C9B8C AFA40060 */  sw      $a0, 0x0060($sp)
/* 00DD0 809C9B90 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00DD4 809C9B94 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00DD8 809C9B98 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00DDC 809C9B9C 468021A0 */  cvt.s.w $f6, $f4
/* 00DE0 809C9BA0 8FA50060 */  lw      $a1, 0x0060($sp)
/* 00DE4 809C9BA4 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00DE8 809C9BA8 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 00DEC 809C9BAC 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00DF0 809C9BB0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00DF4 809C9BB4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00DF8 809C9BB8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00DFC 809C9BBC E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00E00 809C9BC0 3C05809D */  lui     $a1, %hi(func_809C9D70)    ## $a1 = 809D0000
/* 00E04 809C9BC4 24A59D70 */  addiu   $a1, $a1, %lo(func_809C9D70) ## $a1 = 809C9D70
/* 00E08 809C9BC8 0C272370 */  jal     func_809C8DC0
/* 00E0C 809C9BCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E10 809C9BD0 860B01F4 */  lh      $t3, 0x01F4($s0)           ## 000001F4
/* 00E14 809C9BD4 59600021 */  blezl   $t3, .L809C9C5C
/* 00E18 809C9BD8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00E1C 809C9BDC 920201F9 */  lbu     $v0, 0x01F9($s0)           ## 000001F9
/* 00E20 809C9BE0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00E24 809C9BE4 1041001C */  beq     $v0, $at, .L809C9C58
/* 00E28 809C9BE8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00E2C 809C9BEC 1041001A */  beq     $v0, $at, .L809C9C58
/* 00E30 809C9BF0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00E34 809C9BF4 10410018 */  beq     $v0, $at, .L809C9C58
/* 00E38 809C9BF8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00E3C 809C9BFC 50410017 */  beql    $v0, $at, .L809C9C5C
/* 00E40 809C9C00 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00E44 809C9C04 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00E48 809C9C08 8FA6006C */  lw      $a2, 0x006C($sp)
/* 00E4C 809C9C0C 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00E50 809C9C10 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00E54 809C9C14 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00E58 809C9C18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E5C 809C9C1C 240700AA */  addiu   $a3, $zero, 0x00AA         ## $a3 = 000000AA
/* 00E60 809C9C20 E7B00014 */  swc1    $f16, 0x0014($sp)
/* 00E64 809C9C24 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00E68 809C9C28 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00E6C 809C9C2C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00E70 809C9C30 860C00B4 */  lh      $t4, 0x00B4($s0)           ## 000000B4
/* 00E74 809C9C34 AFAC001C */  sw      $t4, 0x001C($sp)
/* 00E78 809C9C38 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 00E7C 809C9C3C AFAD0020 */  sw      $t5, 0x0020($sp)
/* 00E80 809C9C40 860E00B8 */  lh      $t6, 0x00B8($s0)           ## 000000B8
/* 00E84 809C9C44 AFAF0028 */  sw      $t7, 0x0028($sp)
/* 00E88 809C9C48 0C00C916 */  jal     Actor_SpawnAttached

/* 00E8C 809C9C4C AFAE0024 */  sw      $t6, 0x0024($sp)
/* 00E90 809C9C50 0C03D719 */  jal     func_800F5C64
/* 00E94 809C9C54 2404092B */  addiu   $a0, $zero, 0x092B         ## $a0 = 0000092B
.L809C9C58:
/* 00E98 809C9C58 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809C9C5C:
/* 00E9C 809C9C5C 3C04809D */  lui     $a0, %hi(D_809CA830)       ## $a0 = 809D0000
/* 00EA0 809C9C60 2484A830 */  addiu   $a0, $a0, %lo(D_809CA830)  ## $a0 = 809CA830
/* 00EA4 809C9C64 0C00084C */  jal     osSyncPrintf

/* 00EA8 809C9C68 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 00EAC 809C9C6C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00EB0 809C9C70 8FA4006C */  lw      $a0, 0x006C($sp)
/* 00EB4 809C9C74 0C00B331 */  jal     Flags_SetTreasure

/* 00EB8 809C9C78 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 00EBC 809C9C7C 10000038 */  beq     $zero, $zero, .L809C9D60
/* 00EC0 809C9C80 8FBF003C */  lw      $ra, 0x003C($sp)
.L809C9C84:
/* 00EC4 809C9C84 8FB8006C */  lw      $t8, 0x006C($sp)
/* 00EC8 809C9C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ECC 809C9C8C 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFE4
/* 00ED0 809C9C90 8F021C44 */  lw      $v0, 0x1C44($t8)           ## 00001C44
/* 00ED4 809C9C94 0C00B6F4 */  jal     func_8002DBD0
/* 00ED8 809C9C98 24460024 */  addiu   $a2, $v0, 0x0024           ## $a2 = 00000024
/* 00EDC 809C9C9C 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 00EE0 809C9CA0 C7A00054 */  lwc1    $f0, 0x0054($sp)
/* 00EE4 809C9CA4 44812000 */  mtc1    $at, $f4                   ## $f4 = -50.00
/* 00EE8 809C9CA8 00000000 */  nop
/* 00EEC 809C9CAC 4600203C */  c.lt.s  $f4, $f0
/* 00EF0 809C9CB0 00000000 */  nop
/* 00EF4 809C9CB4 45020021 */  bc1fl   .L809C9D3C
/* 00EF8 809C9CB8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00EFC 809C9CBC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00F00 809C9CC0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F04 809C9CC4 4606003C */  c.lt.s  $f0, $f6
/* 00F08 809C9CC8 C7A00050 */  lwc1    $f0, 0x0050($sp)
/* 00F0C 809C9CCC 4502001B */  bc1fl   .L809C9D3C
/* 00F10 809C9CD0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00F14 809C9CD4 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00F18 809C9CD8 46000005 */  abs.s   $f0, $f0
/* 00F1C 809C9CDC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00F20 809C9CE0 4608003C */  c.lt.s  $f0, $f8
/* 00F24 809C9CE4 C7A0004C */  lwc1    $f0, 0x004C($sp)
/* 00F28 809C9CE8 45020014 */  bc1fl   .L809C9D3C
/* 00F2C 809C9CEC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00F30 809C9CF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00F34 809C9CF4 46000005 */  abs.s   $f0, $f0
/* 00F38 809C9CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F3C 809C9CFC 460A003C */  c.lt.s  $f0, $f10
/* 00F40 809C9D00 24053000 */  addiu   $a1, $zero, 0x3000         ## $a1 = 00003000
/* 00F44 809C9D04 4502000D */  bc1fl   .L809C9D3C
/* 00F48 809C9D08 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00F4C 809C9D0C 0C00B7F2 */  jal     func_8002DFC8
/* 00F50 809C9D10 8FA6006C */  lw      $a2, 0x006C($sp)
/* 00F54 809C9D14 50400009 */  beql    $v0, $zero, .L809C9D3C
/* 00F58 809C9D18 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00F5C 809C9D1C 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
/* 00F60 809C9D20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F64 809C9D24 8FA5006C */  lw      $a1, 0x006C($sp)
/* 00F68 809C9D28 00063143 */  sra     $a2, $a2,  5
/* 00F6C 809C9D2C 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 00F70 809C9D30 0C00BD55 */  jal     func_8002F554
/* 00F74 809C9D34 00063023 */  subu    $a2, $zero, $a2
/* 00F78 809C9D38 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809C9D3C:
/* 00F7C 809C9D3C 8FA4006C */  lw      $a0, 0x006C($sp)
/* 00F80 809C9D40 0C00B32C */  jal     Flags_GetTreasure

/* 00F84 809C9D44 30A5001F */  andi    $a1, $a1, 0x001F           ## $a1 = 00000000
/* 00F88 809C9D48 10400004 */  beq     $v0, $zero, .L809C9D5C
/* 00F8C 809C9D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F90 809C9D50 3C05809D */  lui     $a1, %hi(func_809C9D70)    ## $a1 = 809D0000
/* 00F94 809C9D54 0C272370 */  jal     func_809C8DC0
/* 00F98 809C9D58 24A59D70 */  addiu   $a1, $a1, %lo(func_809C9D70) ## $a1 = 809C9D70
.L809C9D5C:
/* 00F9C 809C9D5C 8FBF003C */  lw      $ra, 0x003C($sp)
.L809C9D60:
/* 00FA0 809C9D60 8FB00038 */  lw      $s0, 0x0038($sp)
/* 00FA4 809C9D64 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00FA8 809C9D68 03E00008 */  jr      $ra
/* 00FAC 809C9D6C 00000000 */  nop
