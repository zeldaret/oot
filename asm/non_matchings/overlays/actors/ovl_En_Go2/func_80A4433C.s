glabel func_80A4433C
/* 0160C 80A4433C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01610 80A44340 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01614 80A44344 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01618 80A44348 0C042F6F */  jal     func_8010BDBC              
/* 0161C 80A4434C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01620 80A44350 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01624 80A44354 1441000B */  bne     $v0, $at, .L80A44384       
/* 01628 80A44358 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 0162C 80A4435C 95CF010E */  lhu     $t7, 0x010E($t6)           ## 0000010E
/* 01630 80A44360 2401300E */  addiu   $at, $zero, 0x300E         ## $at = 0000300E
/* 01634 80A44364 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01638 80A44368 15E10004 */  bne     $t7, $at, .L80A4437C       
/* 0163C 80A4436C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01640 80A44370 94580F14 */  lhu     $t8, 0x0F14($v0)           ## 8015F574
/* 01644 80A44374 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 01648 80A44378 A4590F14 */  sh      $t9, 0x0F14($v0)           ## 8015F574
.L80A4437C:
/* 0164C 80A4437C 10000002 */  beq     $zero, $zero, .L80A44388   
/* 01650 80A44380 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44384:
/* 01654 80A44384 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A44388:
/* 01658 80A44388 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0165C 80A4438C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01660 80A44390 03E00008 */  jr      $ra                        
/* 01664 80A44394 00000000 */  nop
