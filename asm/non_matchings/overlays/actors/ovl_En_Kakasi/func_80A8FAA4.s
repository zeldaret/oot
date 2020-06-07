.rdata
glabel D_80A8FE98
    .asciz "game_play->message.msg_mode=%d\n"
    .balign 4

.text
glabel func_80A8FAA4
/* 00934 80A8FAA4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00938 80A8FAA8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0093C 80A8FAAC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00940 80A8FAB0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00944 80A8FAB4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00948 80A8FAB8 00A11021 */  addu    $v0, $a1, $at              
/* 0094C 80A8FABC 944E04C6 */  lhu     $t6, 0x04C6($v0)           ## 000004C6
/* 00950 80A8FAC0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00954 80A8FAC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00958 80A8FAC8 11C10005 */  beq     $t6, $at, .L80A8FAE0       
/* 0095C 80A8FACC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00960 80A8FAD0 0C2A3CC8 */  jal     func_80A8F320              
/* 00964 80A8FAD4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00968 80A8FAD8 10000033 */  beq     $zero, $zero, .L80A8FBA8   
/* 0096C 80A8FADC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A8FAE0:
/* 00970 80A8FAE0 3C0480A9 */  lui     $a0, %hi(D_80A8FE98)       ## $a0 = 80A90000
/* 00974 80A8FAE4 904503DC */  lbu     $a1, 0x03DC($v0)           ## 000003DC
/* 00978 80A8FAE8 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 0097C 80A8FAEC 0C00084C */  jal     osSyncPrintf
              
/* 00980 80A8FAF0 2484FE98 */  addiu   $a0, $a0, %lo(D_80A8FE98)  ## $a0 = 80A8FE98
/* 00984 80A8FAF4 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00988 80A8FAF8 904F03DC */  lbu     $t7, 0x03DC($v0)           ## 000003DC
/* 0098C 80A8FAFC 55E0002A */  bnel    $t7, $zero, .L80A8FBA8     
/* 00990 80A8FB00 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00994 80A8FB04 92180194 */  lbu     $t8, 0x0194($s0)           ## 00000194
/* 00998 80A8FB08 24094078 */  addiu   $t1, $zero, 0x4078         ## $t1 = 00004078
/* 0099C 80A8FB0C 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 009A0 80A8FB10 1300000B */  beq     $t8, $zero, .L80A8FB40     
/* 009A4 80A8FB14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009A8 80A8FB18 24194077 */  addiu   $t9, $zero, 0x4077         ## $t9 = 00004077
/* 009AC 80A8FB1C 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 009B0 80A8FB20 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 009B4 80A8FB24 A6080196 */  sh      $t0, 0x0196($s0)           ## 00000196
/* 009B8 80A8FB28 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 00004077
/* 009BC 80A8FB2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009C0 80A8FB30 0C042DA0 */  jal     func_8010B680              
/* 009C4 80A8FB34 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 009C8 80A8FB38 10000006 */  beq     $zero, $zero, .L80A8FB54   
/* 009CC 80A8FB3C 00000000 */  nop
.L80A8FB40:
/* 009D0 80A8FB40 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 009D4 80A8FB44 A60A0196 */  sh      $t2, 0x0196($s0)           ## 00000196
/* 009D8 80A8FB48 3125FFFF */  andi    $a1, $t1, 0xFFFF           ## $a1 = 00000000
/* 009DC 80A8FB4C 0C042DA0 */  jal     func_8010B680              
/* 009E0 80A8FB50 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80A8FB54:
/* 009E4 80A8FB54 3C0B80A9 */  lui     $t3, %hi(func_80A8FBB8)    ## $t3 = 80A90000
/* 009E8 80A8FB58 256BFBB8 */  addiu   $t3, $t3, %lo(func_80A8FBB8) ## $t3 = 80A8FBB8
/* 009EC 80A8FB5C AE0B014C */  sw      $t3, 0x014C($s0)           ## 0000014C
/* 009F0 80A8FB60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009F4 80A8FB64 0C0200FC */  jal     func_800803F0              
/* 009F8 80A8FB68 86050208 */  lh      $a1, 0x0208($s0)           ## 00000208
/* 009FC 80A8FB6C 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00A00 80A8FB70 A60C0208 */  sh      $t4, 0x0208($s0)           ## 00000208
/* 00A04 80A8FB74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A08 80A8FB78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A0C 80A8FB7C 240508D4 */  addiu   $a1, $zero, 0x08D4         ## $a1 = 000008D4
/* 00A10 80A8FB80 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00A14 80A8FB84 0C02003E */  jal     func_800800F8              
/* 00A18 80A8FB88 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00A1C 80A8FB8C A6020208 */  sh      $v0, 0x0208($s0)           ## 00000208
/* 00A20 80A8FB90 860D0208 */  lh      $t5, 0x0208($s0)           ## 00000208
/* 00A24 80A8FB94 000D7080 */  sll     $t6, $t5,  2               
/* 00A28 80A8FB98 022E7821 */  addu    $t7, $s1, $t6              
/* 00A2C 80A8FB9C 0C016C69 */  jal     func_8005B1A4              
/* 00A30 80A8FBA0 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 00A34 80A8FBA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A8FBA8:
/* 00A38 80A8FBA8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00A3C 80A8FBAC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00A40 80A8FBB0 03E00008 */  jr      $ra                        
/* 00A44 80A8FBB4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
