glabel func_80A79500
/* 00550 80A79500 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00554 80A79504 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00558 80A79508 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0055C 80A7950C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00560 80A79510 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00564 80A79514 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00568 80A79518 A7AE001E */  sh      $t6, 0x001E($sp)           
/* 0056C 80A7951C 0C042F6F */  jal     func_8010BDBC              
/* 00570 80A79520 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00574 80A79524 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 00578 80A79528 3C0480A8 */  lui     $a0, %hi(D_80A7B9D0)       ## $a0 = 80A80000
/* 0057C 80A7952C 2484B9D0 */  addiu   $a0, $a0, %lo(D_80A7B9D0)  ## $a0 = 80A7B9D0
/* 00580 80A79530 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00584 80A79534 0C00084C */  jal     osSyncPrintf
              
/* 00588 80A79538 95E6010E */  lhu     $a2, 0x010E($t7)           ## 0000010E
/* 0058C 80A7953C 0C042F6F */  jal     func_8010BDBC              
/* 00590 80A79540 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00594 80A79544 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 00598 80A79548 1020001A */  beq     $at, $zero, .L80A795B4     
/* 0059C 80A7954C 0002C080 */  sll     $t8, $v0,  2               
/* 005A0 80A79550 3C0180A8 */  lui     $at, %hi(jtbl_80A7BA6C)       ## $at = 80A80000
/* 005A4 80A79554 00380821 */  addu    $at, $at, $t8              
/* 005A8 80A79558 8C38BA6C */  lw      $t8, %lo(jtbl_80A7BA6C)($at)  
/* 005AC 80A7955C 03000008 */  jr      $t8                        
/* 005B0 80A79560 00000000 */  nop
glabel L80A79564
/* 005B4 80A79564 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005B8 80A79568 0C29E473 */  jal     func_80A791CC              
/* 005BC 80A7956C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 005C0 80A79570 10000010 */  beq     $zero, $zero, .L80A795B4   
/* 005C4 80A79574 A7A2001E */  sh      $v0, 0x001E($sp)           
glabel L80A79578
/* 005C8 80A79578 0C041AF2 */  jal     func_80106BC8              
/* 005CC 80A7957C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005D0 80A79580 1040000C */  beq     $v0, $zero, .L80A795B4     
/* 005D4 80A79584 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005D8 80A79588 0C29E493 */  jal     func_80A7924C              
/* 005DC 80A7958C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 005E0 80A79590 10000008 */  beq     $zero, $zero, .L80A795B4   
/* 005E4 80A79594 A7A2001E */  sh      $v0, 0x001E($sp)           
glabel L80A79598
/* 005E8 80A79598 0C041AF2 */  jal     func_80106BC8              
/* 005EC 80A7959C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005F0 80A795A0 10400004 */  beq     $v0, $zero, .L80A795B4     
/* 005F4 80A795A4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 005F8 80A795A8 0C29E527 */  jal     func_80A7949C              
/* 005FC 80A795AC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00600 80A795B0 A7A2001E */  sh      $v0, 0x001E($sp)           
glabel L80A795B4
.L80A795B4:
/* 00604 80A795B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00608 80A795B8 87A2001E */  lh      $v0, 0x001E($sp)           
/* 0060C 80A795BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00610 80A795C0 03E00008 */  jr      $ra                        
/* 00614 80A795C4 00000000 */  nop


