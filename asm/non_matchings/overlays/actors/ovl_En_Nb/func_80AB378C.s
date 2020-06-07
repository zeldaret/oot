glabel func_80AB378C
/* 029FC 80AB378C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02A00 80AB3790 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A04 80AB3794 0C2ACDA1 */  jal     func_80AB3684              
/* 02A08 80AB3798 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02A0C 80AB379C 1040000C */  beq     $v0, $zero, .L80AB37D0     
/* 02A10 80AB37A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02A14 80AB37A4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02A18 80AB37A8 24A54E60 */  addiu   $a1, $a1, 0x4E60           ## $a1 = 06004E60
/* 02A1C 80AB37AC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02A20 80AB37B0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02A24 80AB37B4 0C2AC528 */  jal     func_80AB14A0              
/* 02A28 80AB37B8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02A2C 80AB37BC 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02A30 80AB37C0 240E0019 */  addiu   $t6, $zero, 0x0019         ## $t6 = 00000019
/* 02A34 80AB37C4 ADEE0278 */  sw      $t6, 0x0278($t7)           ## 00000278
/* 02A38 80AB37C8 0C2ACD98 */  jal     func_80AB3660              
/* 02A3C 80AB37CC 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80AB37D0:
/* 02A40 80AB37D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02A44 80AB37D4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02A48 80AB37D8 03E00008 */  jr      $ra                        
/* 02A4C 80AB37DC 00000000 */  nop
