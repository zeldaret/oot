glabel func_80A71530
/* 01F80 80A71530 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F84 80A71534 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F88 80A71538 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F8C 80A7153C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01F90 80A71540 0C042F6F */  jal     func_8010BDBC              
/* 01F94 80A71544 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01F98 80A71548 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01F9C 80A7154C 54410020 */  bnel    $v0, $at, .L80A715D0       
/* 01FA0 80A71550 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FA4 80A71554 0C041AF2 */  jal     func_80106BC8              
/* 01FA8 80A71558 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01FAC 80A7155C 1040001B */  beq     $v0, $zero, .L80A715CC     
/* 01FB0 80A71560 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01FB4 80A71564 8DC20260 */  lw      $v0, 0x0260($t6)           ## 00000260
/* 01FB8 80A71568 2401003E */  addiu   $at, $zero, 0x003E         ## $at = 0000003E
/* 01FBC 80A7156C 10410005 */  beq     $v0, $at, .L80A71584       
/* 01FC0 80A71570 2401004D */  addiu   $at, $zero, 0x004D         ## $at = 0000004D
/* 01FC4 80A71574 1041000B */  beq     $v0, $at, .L80A715A4       
/* 01FC8 80A71578 00000000 */  nop
/* 01FCC 80A7157C 10000010 */  beq     $zero, $zero, .L80A715C0   
/* 01FD0 80A71580 8FA80018 */  lw      $t0, 0x0018($sp)           
.L80A71584:
/* 01FD4 80A71584 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01FD8 80A71588 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01FDC 80A7158C 944F0F2A */  lhu     $t7, 0x0F2A($v0)           ## 8015F58A
/* 01FE0 80A71590 A44013C4 */  sh      $zero, 0x13C4($v0)         ## 8015FA24
/* 01FE4 80A71594 A040141C */  sb      $zero, 0x141C($v0)         ## 8015FA7C
/* 01FE8 80A71598 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 01FEC 80A7159C 10000007 */  beq     $zero, $zero, .L80A715BC   
/* 01FF0 80A715A0 A4580F2A */  sh      $t8, 0x0F2A($v0)           ## 8015F58A
.L80A715A4:
/* 01FF4 80A715A4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01FF8 80A715A8 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 01FFC 80A715AC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 02000 80A715B0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 02004 80A715B4 A44013C4 */  sh      $zero, 0x13C4($v0)         ## 8015FA24
/* 02008 80A715B8 A040141C */  sb      $zero, 0x141C($v0)         ## 8015FA7C
.L80A715BC:
/* 0200C 80A715BC 8FA80018 */  lw      $t0, 0x0018($sp)           
.L80A715C0:
/* 02010 80A715C0 3C1980A7 */  lui     $t9, %hi(func_80A7127C)    ## $t9 = 80A70000
/* 02014 80A715C4 2739127C */  addiu   $t9, $t9, %lo(func_80A7127C) ## $t9 = 80A7127C
/* 02018 80A715C8 AD190190 */  sw      $t9, 0x0190($t0)           ## 00000190
.L80A715CC:
/* 0201C 80A715CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A715D0:
/* 02020 80A715D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02024 80A715D4 03E00008 */  jr      $ra                        
/* 02028 80A715D8 00000000 */  nop
