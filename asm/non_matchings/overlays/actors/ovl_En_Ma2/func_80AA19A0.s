glabel func_80AA19A0
/* 00000 80AA19A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80AA19A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80AA19A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0000C 80AA19AC 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00010 80AA19B0 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 00014 80AA19B4 10400003 */  beq     $v0, $zero, .L80AA19C4     
/* 00018 80AA19B8 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 0001C 80AA19BC 1000001A */  beq     $zero, $zero, .L80AA1A28   
/* 00020 80AA19C0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AA19C4:
/* 00024 80AA19C4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00028 80AA19C8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0002C 80AA19CC 946E0ED6 */  lhu     $t6, 0x0ED6($v1)           ## 8015F536
/* 00030 80AA19D0 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 00034 80AA19D4 51E00004 */  beql    $t7, $zero, .L80AA19E8     
/* 00038 80AA19D8 8C780010 */  lw      $t8, 0x0010($v1)           ## 8015E670
/* 0003C 80AA19DC 10000012 */  beq     $zero, $zero, .L80AA1A28   
/* 00040 80AA19E0 24022056 */  addiu   $v0, $zero, 0x2056         ## $v0 = 00002056
/* 00044 80AA19E4 8C780010 */  lw      $t8, 0x0010($v1)           ## 8015E670
.L80AA19E8:
/* 00048 80AA19E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0004C 80AA19EC 2402204C */  addiu   $v0, $zero, 0x204C         ## $v0 = 0000204C
/* 00050 80AA19F0 1701000D */  bne     $t8, $at, .L80AA1A28       
/* 00054 80AA19F4 00000000 */  nop
/* 00058 80AA19F8 94620F08 */  lhu     $v0, 0x0F08($v1)           ## 8015F568
/* 0005C 80AA19FC 30591000 */  andi    $t9, $v0, 0x1000           ## $t9 = 00000000
/* 00060 80AA1A00 13200003 */  beq     $t9, $zero, .L80AA1A10     
/* 00064 80AA1A04 30484000 */  andi    $t0, $v0, 0x4000           ## $t0 = 00000000
/* 00068 80AA1A08 10000007 */  beq     $zero, $zero, .L80AA1A28   
/* 0006C 80AA1A0C 24022052 */  addiu   $v0, $zero, 0x2052         ## $v0 = 00002052
.L80AA1A10:
/* 00070 80AA1A10 11000003 */  beq     $t0, $zero, .L80AA1A20     
/* 00074 80AA1A14 00000000 */  nop
/* 00078 80AA1A18 10000003 */  beq     $zero, $zero, .L80AA1A28   
/* 0007C 80AA1A1C 24022051 */  addiu   $v0, $zero, 0x2051         ## $v0 = 00002051
.L80AA1A20:
/* 00080 80AA1A20 10000001 */  beq     $zero, $zero, .L80AA1A28   
/* 00084 80AA1A24 24022050 */  addiu   $v0, $zero, 0x2050         ## $v0 = 00002050
.L80AA1A28:
/* 00088 80AA1A28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0008C 80AA1A2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00090 80AA1A30 03E00008 */  jr      $ra                        
/* 00094 80AA1A34 00000000 */  nop
