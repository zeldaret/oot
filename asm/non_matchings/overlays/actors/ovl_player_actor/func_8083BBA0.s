glabel func_8083BBA0
/* 09990 8083BBA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 09994 8083BBA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 09998 8083BBA8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0999C 8083BBAC 0C20EEC8 */  jal     func_8083BB20              
/* 099A0 8083BBB0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 099A4 8083BBB4 1040000E */  beq     $v0, $zero, .L8083BBF0     
/* 099A8 8083BBB8 3C0E8085 */  lui     $t6, %hi(D_808535E4)       ## $t6 = 80850000
/* 099AC 8083BBBC 8DCE35E4 */  lw      $t6, %lo(D_808535E4)($t6)  
/* 099B0 8083BBC0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 099B4 8083BBC4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 099B8 8083BBC8 11C10009 */  beq     $t6, $at, .L8083BBF0       
/* 099BC 8083BBCC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 099C0 8083BBD0 3C014090 */  lui     $at, 0x4090                ## $at = 40900000
/* 099C4 8083BBD4 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.50
/* 099C8 8083BBD8 24060011 */  addiu   $a2, $zero, 0x0011         ## $a2 = 00000011
/* 099CC 8083BBDC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 099D0 8083BBE0 0C20EEA4 */  jal     func_8083BA90              
/* 099D4 8083BBE4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 099D8 8083BBE8 10000002 */  beq     $zero, $zero, .L8083BBF4   
/* 099DC 8083BBEC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BBF0:
/* 099E0 8083BBF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083BBF4:
/* 099E4 8083BBF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 099E8 8083BBF8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 099EC 8083BBFC 03E00008 */  jr      $ra                        
/* 099F0 8083BC00 00000000 */  nop
