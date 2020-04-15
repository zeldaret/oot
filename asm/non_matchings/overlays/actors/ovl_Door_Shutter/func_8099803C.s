glabel func_8099803C
/* 01D9C 8099803C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01DA0 80998040 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01DA4 80998044 00073C00 */  sll     $a3, $a3, 16               
/* 01DA8 80998048 00073C03 */  sra     $a3, $a3, 16               
/* 01DAC 8099804C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01DB0 80998050 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DB4 80998054 00072C00 */  sll     $a1, $a3, 16               
/* 01DB8 80998058 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01DBC 8099805C 0C030129 */  jal     func_800C04A4              
/* 01DC0 80998060 00052C03 */  sra     $a1, $a1, 16               
/* 01DC4 80998064 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 01DC8 80998068 0C024BE2 */  jal     Quake_Add              
/* 01DCC 8099806C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01DD0 80998070 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 01DD4 80998074 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 01DD8 80998078 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 01DDC 8099807C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 01DE0 80998080 0C02A7DB */  jal     func_800A9F6C              
/* 01DE4 80998084 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 01DE8 80998088 87A40026 */  lh      $a0, 0x0026($sp)           
/* 01DEC 8099808C 0C024B6B */  jal     Quake_SetSpeed              
/* 01DF0 80998090 24054E20 */  addiu   $a1, $zero, 0x4E20         ## $a1 = 00004E20
/* 01DF4 80998094 87A40026 */  lh      $a0, 0x0026($sp)           
/* 01DF8 80998098 87A5002E */  lh      $a1, 0x002E($sp)           
/* 01DFC 8099809C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01E00 809980A0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01E04 809980A4 0C024B9C */  jal     Quake_SetQuakeValues              
/* 01E08 809980A8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01E0C 809980AC 87A40026 */  lh      $a0, 0x0026($sp)           
/* 01E10 809980B0 0C024B7C */  jal     Quake_SetCountdown              
/* 01E14 809980B4 87A50032 */  lh      $a1, 0x0032($sp)           
/* 01E18 809980B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E1C 809980BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01E20 809980C0 03E00008 */  jr      $ra                        
/* 01E24 809980C4 00000000 */  nop
/* 01E28 809980C8 00000000 */  nop
/* 01E2C 809980CC 00000000 */  nop
