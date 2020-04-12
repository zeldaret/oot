.rdata
glabel D_80990E64
    .asciz "Demo_Sa_inPresent_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.text
glabel func_8098FB68
/* 01708 8098FB68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0170C 8098FB6C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01710 8098FB70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01714 8098FB74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01718 8098FB78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0171C 8098FB7C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01720 8098FB80 0C26398C */  jal     func_8098E630              
/* 01724 8098FB84 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01728 8098FB88 5040002A */  beql    $v0, $zero, .L8098FC34     
/* 0172C 8098FB8C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01730 8098FB90 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 01734 8098FB94 8E0301AC */  lw      $v1, 0x01AC($s0)           ## 000001AC
/* 01738 8098FB98 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0173C 8098FB9C 50C30025 */  beql    $a2, $v1, .L8098FC34       
/* 01740 8098FBA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01744 8098FBA4 10C1000C */  beq     $a2, $at, .L8098FBD8       
/* 01748 8098FBA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0174C 8098FBAC 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01750 8098FBB0 10C1000D */  beq     $a2, $at, .L8098FBE8       
/* 01754 8098FBB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01758 8098FBB8 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 0175C 8098FBBC 10C1000F */  beq     $a2, $at, .L8098FBFC       
/* 01760 8098FBC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01764 8098FBC4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01768 8098FBC8 10C10010 */  beq     $a2, $at, .L8098FC0C       
/* 0176C 8098FBCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01770 8098FBD0 10000012 */  beq     $zero, $zero, .L8098FC1C   
/* 01774 8098FBD4 3C048099 */  lui     $a0, %hi(D_80990E64)       ## $a0 = 80990000
.L8098FBD8:
/* 01778 8098FBD8 0C263E61 */  jal     func_8098F984              
/* 0177C 8098FBDC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01780 8098FBE0 10000012 */  beq     $zero, $zero, .L8098FC2C   
/* 01784 8098FBE4 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8098FBE8:
/* 01788 8098FBE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0178C 8098FBEC 0C263E66 */  jal     func_8098F998              
/* 01790 8098FBF0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01794 8098FBF4 1000000D */  beq     $zero, $zero, .L8098FC2C   
/* 01798 8098FBF8 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8098FBFC:
/* 0179C 8098FBFC 0C263EA1 */  jal     func_8098FA84              
/* 017A0 8098FC00 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 017A4 8098FC04 10000009 */  beq     $zero, $zero, .L8098FC2C   
/* 017A8 8098FC08 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8098FC0C:
/* 017AC 8098FC0C 0C263EB8 */  jal     func_8098FAE0              
/* 017B0 8098FC10 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 017B4 8098FC14 10000005 */  beq     $zero, $zero, .L8098FC2C   
/* 017B8 8098FC18 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8098FC1C:
/* 017BC 8098FC1C 24840E64 */  addiu   $a0, $a0, %lo(D_80990E64)  ## $a0 = 00000E64
/* 017C0 8098FC20 0C00084C */  jal     osSyncPrintf
              
/* 017C4 8098FC24 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 017C8 8098FC28 8FA60020 */  lw      $a2, 0x0020($sp)           
.L8098FC2C:
/* 017CC 8098FC2C AE0601AC */  sw      $a2, 0x01AC($s0)           ## 000001AC
/* 017D0 8098FC30 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FC34:
/* 017D4 8098FC34 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 017D8 8098FC38 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 017DC 8098FC3C 03E00008 */  jr      $ra                        
/* 017E0 8098FC40 00000000 */  nop
