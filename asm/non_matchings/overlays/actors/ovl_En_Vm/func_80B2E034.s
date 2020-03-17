glabel func_80B2E034
/* 00BD4 80B2E034 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BD8 80B2E038 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00BDC 80B2E03C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE0 80B2E040 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00BE4 80B2E044 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00BE8 80B2E048 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BEC 80B2E04C 0C00CD90 */  jal     func_80033640              
/* 00BF0 80B2E050 26050268 */  addiu   $a1, $s0, 0x0268           ## $a1 = 00000268
/* 00BF4 80B2E054 5040000B */  beql    $v0, $zero, .L80B2E084     
/* 00BF8 80B2E058 92020345 */  lbu     $v0, 0x0345($s0)           ## 00000345
/* 00BFC 80B2E05C 920E00AF */  lbu     $t6, 0x00AF($s0)           ## 000000AF
/* 00C00 80B2E060 3C0480B3 */  lui     $a0, %hi(D_80B2EBB0)       ## $a0 = 80B30000
/* 00C04 80B2E064 2484EBB0 */  addiu   $a0, $a0, %lo(D_80B2EBB0)  ## $a0 = 80B2EBB0
/* 00C08 80B2E068 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00C0C 80B2E06C A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00C10 80B2E070 0C00084C */  jal     osSyncPrintf
              
/* 00C14 80B2E074 31E500FF */  andi    $a1, $t7, 0x00FF           ## $a1 = 000000FF
/* 00C18 80B2E078 1000000C */  beq     $zero, $zero, .L80B2E0AC   
/* 00C1C 80B2E07C 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
/* 00C20 80B2E080 92020345 */  lbu     $v0, 0x0345($s0)           ## 00000345
.L80B2E084:
/* 00C24 80B2E084 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00C28 80B2E088 5300002B */  beql    $t8, $zero, .L80B2E138     
/* 00C2C 80B2E08C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00C30 80B2E090 8E19021C */  lw      $t9, 0x021C($s0)           ## 0000021C
/* 00C34 80B2E094 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C38 80B2E098 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 00C3C 80B2E09C 53210026 */  beql    $t9, $at, .L80B2E138       
/* 00C40 80B2E0A0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00C44 80B2E0A4 A2080345 */  sb      $t0, 0x0345($s0)           ## 00000345
/* 00C48 80B2E0A8 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
.L80B2E0AC:
/* 00C4C 80B2E0AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C50 80B2E0B0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00C54 80B2E0B4 1120000A */  beq     $t1, $zero, .L80B2E0E0     
/* 00C58 80B2E0B8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00C5C 80B2E0BC 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 00C60 80B2E0C0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00C64 80B2E0C4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00C68 80B2E0C8 0C00D09B */  jal     func_8003426C              
/* 00C6C 80B2E0CC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00C70 80B2E0D0 0C2CB732 */  jal     func_80B2DCC8              
/* 00C74 80B2E0D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C78 80B2E0D8 10000017 */  beq     $zero, $zero, .L80B2E138   
/* 00C7C 80B2E0DC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B2E0E0:
/* 00C80 80B2E0E0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00C84 80B2E0E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00C88 80B2E0E8 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00C8C 80B2E0EC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00C90 80B2E0F0 46062200 */  add.s   $f8, $f4, $f6              
/* 00C94 80B2E0F4 240B0601 */  addiu   $t3, $zero, 0x0601         ## $t3 = 00000601
/* 00C98 80B2E0F8 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 00C9C 80B2E0FC 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00CA0 80B2E100 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00CA4 80B2E104 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00CA8 80B2E108 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00CAC 80B2E10C AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 00CB0 80B2E110 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00CB4 80B2E114 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00CB8 80B2E118 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00CBC 80B2E11C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00CC0 80B2E120 10400002 */  beq     $v0, $zero, .L80B2E12C     
/* 00CC4 80B2E124 00000000 */  nop
/* 00CC8 80B2E128 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L80B2E12C:
/* 00CCC 80B2E12C 0C2CB79F */  jal     func_80B2DE7C              
/* 00CD0 80B2E130 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD4 80B2E134 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B2E138:
/* 00CD8 80B2E138 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00CDC 80B2E13C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00CE0 80B2E140 03E00008 */  jr      $ra                        
/* 00CE4 80B2E144 00000000 */  nop


