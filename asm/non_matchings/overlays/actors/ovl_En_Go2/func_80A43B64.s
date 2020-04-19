glabel func_80A43B64
/* 00E34 80A43B64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E38 80A43B68 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E3C 80A43B6C 3C058012 */  lui     $a1, %hi(gBitFlags)
/* 00E40 80A43B70 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00E44 80A43B74 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00E48 80A43B78 24A57120 */  addiu   $a1, %lo(gBitFlags)
/* 00E4C 80A43B7C 8CAE0004 */  lw      $t6, 0x0004($a1)           ## 80127124
/* 00E50 80A43B80 8C6200A4 */  lw      $v0, 0x00A4($v1)           ## 8015E704
/* 00E54 80A43B84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E58 80A43B88 01C27824 */  and     $t7, $t6, $v0              
/* 00E5C 80A43B8C 51E00007 */  beql    $t7, $zero, .L80A43BAC     
/* 00E60 80A43B90 8CB9004C */  lw      $t9, 0x004C($a1)           ## 8012716C
/* 00E64 80A43B94 8C780004 */  lw      $t8, 0x0004($v1)           ## 8015E664
/* 00E68 80A43B98 57000004 */  bnel    $t8, $zero, .L80A43BAC     
/* 00E6C 80A43B9C 8CB9004C */  lw      $t9, 0x004C($a1)           ## 8012716C
/* 00E70 80A43BA0 10000023 */  beq     $zero, $zero, .L80A43C30   
/* 00E74 80A43BA4 24023043 */  addiu   $v0, $zero, 0x3043         ## $v0 = 00003043
/* 00E78 80A43BA8 8CB9004C */  lw      $t9, 0x004C($a1)           ## 8012716C
.L80A43BAC:
/* 00E7C 80A43BAC 3C0A8012 */  lui     $t2, %hi(gUpgradeMasks+8)
/* 00E80 80A43BB0 3C0C8012 */  lui     $t4, %hi(gUpgradeShifts+2)
/* 00E84 80A43BB4 03224024 */  and     $t0, $t9, $v0              
/* 00E88 80A43BB8 51000004 */  beql    $t0, $zero, .L80A43BCC     
/* 00E8C 80A43BBC 8C6900A0 */  lw      $t1, 0x00A0($v1)           ## 8015E700
/* 00E90 80A43BC0 1000001B */  beq     $zero, $zero, .L80A43C30   
/* 00E94 80A43BC4 24023027 */  addiu   $v0, $zero, 0x3027         ## $v0 = 00003027
/* 00E98 80A43BC8 8C6900A0 */  lw      $t1, 0x00A0($v1)           ## 8015E700
.L80A43BCC:
/* 00E9C 80A43BCC 8D4A71B8 */  lw      $t2, %lo(gUpgradeMasks+8)($t2)
/* 00EA0 80A43BD0 918C71F6 */  lbu     $t4, %lo(gUpgradeShifts+2)($t4)
/* 00EA4 80A43BD4 012A5824 */  and     $t3, $t1, $t2              
/* 00EA8 80A43BD8 018B6807 */  srav    $t5, $t3, $t4              
/* 00EAC 80A43BDC 11A00003 */  beq     $t5, $zero, .L80A43BEC     
/* 00EB0 80A43BE0 00000000 */  nop
/* 00EB4 80A43BE4 10000011 */  beq     $zero, $zero, .L80A43C2C   
/* 00EB8 80A43BE8 2403302C */  addiu   $v1, $zero, 0x302C         ## $v1 = 0000302C
.L80A43BEC:
/* 00EBC 80A43BEC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00EC0 80A43BF0 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 00EC4 80A43BF4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00EC8 80A43BF8 14400003 */  bne     $v0, $zero, .L80A43C08     
/* 00ECC 80A43BFC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00ED0 80A43C00 10000009 */  beq     $zero, $zero, .L80A43C28   
/* 00ED4 80A43C04 24023017 */  addiu   $v0, $zero, 0x3017         ## $v0 = 00003017
.L80A43C08:
/* 00ED8 80A43C08 946E0F16 */  lhu     $t6, 0x0F16($v1)           ## 8015F576
/* 00EDC 80A43C0C 24033018 */  addiu   $v1, $zero, 0x3018         ## $v1 = 00003018
/* 00EE0 80A43C10 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 00EE4 80A43C14 11E00003 */  beq     $t7, $zero, .L80A43C24     
/* 00EE8 80A43C18 00000000 */  nop
/* 00EEC 80A43C1C 10000001 */  beq     $zero, $zero, .L80A43C24   
/* 00EF0 80A43C20 24033019 */  addiu   $v1, $zero, 0x3019         ## $v1 = 00003019
.L80A43C24:
/* 00EF4 80A43C24 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00003019
.L80A43C28:
/* 00EF8 80A43C28 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00003019
.L80A43C2C:
/* 00EFC 80A43C2C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003019
.L80A43C30:
/* 00F00 80A43C30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F04 80A43C34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F08 80A43C38 03E00008 */  jr      $ra                        
/* 00F0C 80A43C3C 00000000 */  nop
