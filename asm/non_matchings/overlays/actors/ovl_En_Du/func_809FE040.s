glabel func_809FE040
/* 00410 809FE040 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00414 809FE044 3C0F80A0 */  lui     $t7, %hi(D_809FF3D0)       ## $t7 = 80A00000
/* 00418 809FE048 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0041C 809FE04C 25EFF3D0 */  addiu   $t7, $t7, %lo(D_809FF3D0)  ## $t7 = 809FF3D0
/* 00420 809FE050 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809FF3D0
/* 00424 809FE054 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809FF3D4
/* 00428 809FE058 27AE0020 */  addiu   $t6, $sp, 0x0020           ## $t6 = FFFFFFE0
/* 0042C 809FE05C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE0
/* 00430 809FE060 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE4
/* 00434 809FE064 8DF8000C */  lw      $t8, 0x000C($t7)           ## 809FF3DC
/* 00438 809FE068 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809FF3D8
/* 0043C 809FE06C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00440 809FE070 ADD8000C */  sw      $t8, 0x000C($t6)           ## FFFFFFEC
/* 00444 809FE074 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE8
/* 00448 809FE078 8DF90010 */  lw      $t9, 0x0010($t7)           ## 809FF3E0
/* 0044C 809FE07C 8DF80014 */  lw      $t8, 0x0014($t7)           ## 809FF3E4
/* 00450 809FE080 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00454 809FE084 ADD90010 */  sw      $t9, 0x0010($t6)           ## FFFFFFF0
/* 00458 809FE088 ADD80014 */  sw      $t8, 0x0014($t6)           ## FFFFFFF4
/* 0045C 809FE08C 8DF8001C */  lw      $t8, 0x001C($t7)           ## 809FF3EC
/* 00460 809FE090 8DF90018 */  lw      $t9, 0x0018($t7)           ## 809FF3E8
/* 00464 809FE094 ADD8001C */  sw      $t8, 0x001C($t6)           ## FFFFFFFC
/* 00468 809FE098 ADD90018 */  sw      $t9, 0x0018($t6)           ## FFFFFFF8
/* 0046C 809FE09C 8CC5015C */  lw      $a1, 0x015C($a2)           ## 0000015C
/* 00470 809FE0A0 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 00474 809FE0A4 0C0295B2 */  jal     func_800A56C8              
/* 00478 809FE0A8 AFA4001C */  sw      $a0, 0x001C($sp)           
/* 0047C 809FE0AC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00480 809FE0B0 10400010 */  beq     $v0, $zero, .L809FE0F4     
/* 00484 809FE0B4 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 00488 809FE0B8 84C801E6 */  lh      $t0, 0x01E6($a2)           ## 000001E6
/* 0048C 809FE0BC 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 00490 809FE0C0 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00494 809FE0C4 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00498 809FE0C8 A4C901E6 */  sh      $t1, 0x01E6($a2)           ## 000001E6
/* 0049C 809FE0CC 84C201E6 */  lh      $v0, 0x01E6($a2)           ## 000001E6
/* 004A0 809FE0D0 28410008 */  slti    $at, $v0, 0x0008           
/* 004A4 809FE0D4 54200004 */  bnel    $at, $zero, .L809FE0E8     
/* 004A8 809FE0D8 00025080 */  sll     $t2, $v0,  2               
/* 004AC 809FE0DC A4C001E6 */  sh      $zero, 0x01E6($a2)         ## 000001E6
/* 004B0 809FE0E0 84C201E6 */  lh      $v0, 0x01E6($a2)           ## 000001E6
/* 004B4 809FE0E4 00025080 */  sll     $t2, $v0,  2               
.L809FE0E8:
/* 004B8 809FE0E8 03AA3021 */  addu    $a2, $sp, $t2              
/* 004BC 809FE0EC 0C00D3B0 */  jal     func_80034EC0              
/* 004C0 809FE0F0 8CC60020 */  lw      $a2, 0x0020($a2)           ## 00000020
.L809FE0F4:
/* 004C4 809FE0F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004C8 809FE0F8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 004CC 809FE0FC 03E00008 */  jr      $ra                        
/* 004D0 809FE100 00000000 */  nop


