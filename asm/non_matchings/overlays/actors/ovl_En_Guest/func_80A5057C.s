glabel func_80A5057C
/* 0035C 80A5057C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00360 80A50580 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00364 80A50584 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00368 80A50588 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0036C 80A5058C 0C042F6F */  jal     func_8010BDBC              
/* 00370 80A50590 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00374 80A50594 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00378 80A50598 54410009 */  bnel    $v0, $at, .L80A505C0       
/* 0037C 80A5059C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00380 80A505A0 0C041AF2 */  jal     func_80106BC8              
/* 00384 80A505A4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00388 80A505A8 10400004 */  beq     $v0, $zero, .L80A505BC     
/* 0038C 80A505AC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00390 80A505B0 3C0E80A5 */  lui     $t6, %hi(func_80A50518)    ## $t6 = 80A50000
/* 00394 80A505B4 25CE0518 */  addiu   $t6, $t6, %lo(func_80A50518) ## $t6 = 80A50518
/* 00398 80A505B8 ADEE0250 */  sw      $t6, 0x0250($t7)           ## 00000250
.L80A505BC:
/* 0039C 80A505BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A505C0:
/* 003A0 80A505C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003A4 80A505C4 03E00008 */  jr      $ra                        
/* 003A8 80A505C8 00000000 */  nop
