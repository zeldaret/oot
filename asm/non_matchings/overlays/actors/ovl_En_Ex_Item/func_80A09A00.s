.rdata
glabel D_80A0A01C
    .asciz "\x1b[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n\x1b[m"
    .balign 4

.text
glabel func_80A09A00
/* 00B60 80A09A00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B64 80A09A04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B68 80A09A08 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B6C 80A09A0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B70 80A09A10 0C042F6F */  jal     func_8010BDBC              
/* 00B74 80A09A14 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00B78 80A09A18 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00B7C 80A09A1C 5441000F */  bnel    $v0, $at, .L80A09A5C       
/* 00B80 80A09A20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B84 80A09A24 0C041AF2 */  jal     func_80106BC8              
/* 00B88 80A09A28 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B8C 80A09A2C 1040000A */  beq     $v0, $zero, .L80A09A58     
/* 00B90 80A09A30 3C0480A1 */  lui     $a0, %hi(D_80A0A01C)       ## $a0 = 80A10000
/* 00B94 80A09A34 0C00084C */  jal     osSyncPrintf
              
/* 00B98 80A09A38 2484A01C */  addiu   $a0, $a0, %lo(D_80A0A01C)  ## $a0 = 80A0A01C
/* 00B9C 80A09A3C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00BA0 80A09A40 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00BA4 80A09A44 944E0EF2 */  lhu     $t6, 0x0EF2($v0)           ## 8015F552
/* 00BA8 80A09A48 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BAC 80A09A4C 35CF2000 */  ori     $t7, $t6, 0x2000           ## $t7 = 00002000
/* 00BB0 80A09A50 0C00B55C */  jal     Actor_Kill
              
/* 00BB4 80A09A54 A44F0EF2 */  sh      $t7, 0x0EF2($v0)           ## 8015F552
.L80A09A58:
/* 00BB8 80A09A58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A09A5C:
/* 00BBC 80A09A5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BC0 80A09A60 03E00008 */  jr      $ra                        
/* 00BC4 80A09A64 00000000 */  nop
