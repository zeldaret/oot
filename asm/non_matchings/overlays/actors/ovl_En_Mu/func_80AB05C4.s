glabel func_80AB05C4
/* 001A4 80AB05C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A8 80AB05C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001AC 80AB05CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B0 80AB05D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001B4 80AB05D4 0C042F6F */  jal     func_8010BDBC              
/* 001B8 80AB05D8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 001BC 80AB05DC 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 001C0 80AB05E0 1020000D */  beq     $at, $zero, .L80AB0618     
/* 001C4 80AB05E4 00027080 */  sll     $t6, $v0,  2               
/* 001C8 80AB05E8 3C0180AB */  lui     $at, %hi(jtbl_80AB0C90)       ## $at = 80AB0000
/* 001CC 80AB05EC 002E0821 */  addu    $at, $at, $t6              
/* 001D0 80AB05F0 8C2E0C90 */  lw      $t6, %lo(jtbl_80AB0C90)($at)  
/* 001D4 80AB05F4 01C00008 */  jr      $t6                        
/* 001D8 80AB05F8 00000000 */  nop
glabel L80AB05FC
/* 001DC 80AB05FC 10000007 */  beq     $zero, $zero, .L80AB061C   
/* 001E0 80AB0600 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AB0604
/* 001E4 80AB0604 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001E8 80AB0608 0C2AC10A */  jal     func_80AB0428              
/* 001EC 80AB060C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001F0 80AB0610 10000002 */  beq     $zero, $zero, .L80AB061C   
/* 001F4 80AB0614 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AB0618:
/* 001F8 80AB0618 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AB061C:
/* 001FC 80AB061C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00200 80AB0620 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00204 80AB0624 03E00008 */  jr      $ra                        
/* 00208 80AB0628 00000000 */  nop


