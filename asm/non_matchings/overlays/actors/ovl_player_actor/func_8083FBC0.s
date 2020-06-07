glabel func_8083FBC0
/* 0D9B0 8083FBC0 3C0E8086 */  lui     $t6, %hi(D_80858AB4)       ## $t6 = 80860000
/* 0D9B4 8083FBC4 8DCE8AB4 */  lw      $t6, %lo(D_80858AB4)($t6)  
/* 0D9B8 8083FBC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0D9BC 8083FBCC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0D9C0 8083FBD0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0D9C4 8083FBD4 95CF000C */  lhu     $t7, 0x000C($t6)           ## 8086000C
/* 0D9C8 8083FBD8 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0D9CC 8083FBDC 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 0D9D0 8083FBE0 01E1C027 */  nor     $t8, $t7, $at              
/* 0D9D4 8083FBE4 13000014 */  beq     $t8, $zero, .L8083FC38     
/* 0D9D8 8083FBE8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0D9DC 8083FBEC 94990088 */  lhu     $t9, 0x0088($a0)           ## 00000088
/* 0D9E0 8083FBF0 3C028085 */  lui     $v0, %hi(D_808535F0)       ## $v0 = 80850000
/* 0D9E4 8083FBF4 33280200 */  andi    $t0, $t9, 0x0200           ## $t0 = 00000000
/* 0D9E8 8083FBF8 51000010 */  beql    $t0, $zero, .L8083FC3C     
/* 0D9EC 8083FBFC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0D9F0 8083FC00 8C4235F0 */  lw      $v0, %lo(D_808535F0)($v0)  
/* 0D9F4 8083FC04 30490008 */  andi    $t1, $v0, 0x0008           ## $t1 = 00000000
/* 0D9F8 8083FC08 15200009 */  bne     $t1, $zero, .L8083FC30     
/* 0D9FC 8083FC0C 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 0DA00 8083FC10 15400007 */  bne     $t2, $zero, .L8083FC30     
/* 0DA04 8083FC14 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 0DA08 8083FC18 8CE50074 */  lw      $a1, 0x0074($a3)           ## 00000074
/* 0DA0C 8083FC1C 90E6007C */  lbu     $a2, 0x007C($a3)           ## 0000007C
/* 0DA10 8083FC20 0C010793 */  jal     func_80041E4C              
/* 0DA14 8083FC24 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0DA18 8083FC28 10400003 */  beq     $v0, $zero, .L8083FC38     
/* 0DA1C 8083FC2C 8FA70018 */  lw      $a3, 0x0018($sp)           
.L8083FC30:
/* 0DA20 8083FC30 10000009 */  beq     $zero, $zero, .L8083FC58   
/* 0DA24 8083FC34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083FC38:
/* 0DA28 8083FC38 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L8083FC3C:
/* 0DA2C 8083FC3C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0DA30 8083FC40 0C20FEDF */  jal     func_8083FB7C              
/* 0DA34 8083FC44 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0DA38 8083FC48 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0DA3C 8083FC4C 0C20C9A6 */  jal     func_80832698              
/* 0DA40 8083FC50 24056814 */  addiu   $a1, $zero, 0x6814         ## $a1 = 00006814
/* 0DA44 8083FC54 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083FC58:
/* 0DA48 8083FC58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0DA4C 8083FC5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0DA50 8083FC60 03E00008 */  jr      $ra                        
/* 0DA54 8083FC64 00000000 */  nop
