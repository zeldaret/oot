glabel func_80B9DE38
/* 00C28 80B9DE38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C2C 80B9DE3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C30 80B9DE40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C34 80B9DE44 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C38 80B9DE48 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00C3C 80B9DE4C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00C40 80B9DE50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C44 80B9DE54 00031903 */  sra     $v1, $v1,  4               
/* 00C48 80B9DE58 30630007 */  andi    $v1, $v1, 0x0007           ## $v1 = 00000000
/* 00C4C 80B9DE5C 00031C00 */  sll     $v1, $v1, 16               
/* 00C50 80B9DE60 00031C03 */  sra     $v1, $v1, 16               
/* 00C54 80B9DE64 10610003 */  beq     $v1, $at, .L80B9DE74       
/* 00C58 80B9DE68 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00C5C 80B9DE6C 1461000C */  bne     $v1, $at, .L80B9DEA0       
/* 00C60 80B9DE70 00000000 */  nop
.L80B9DE74:
/* 00C64 80B9DE74 920E016E */  lbu     $t6, 0x016E($s0)           ## 0000016E
/* 00C68 80B9DE78 11C00009 */  beq     $t6, $zero, .L80B9DEA0     
/* 00C6C 80B9DE7C 00000000 */  nop
/* 00C70 80B9DE80 0C016C66 */  jal     func_8005B198              
/* 00C74 80B9DE84 A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00C78 80B9DE88 920F0002 */  lbu     $t7, 0x0002($s0)           ## 00000002
/* 00C7C 80B9DE8C 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00C80 80B9DE90 104F0003 */  beq     $v0, $t7, .L80B9DEA0       
/* 00C84 80B9DE94 00000000 */  nop
/* 00C88 80B9DE98 8618016C */  lh      $t8, 0x016C($s0)           ## 0000016C
/* 00C8C 80B9DE9C 1F00001A */  bgtz    $t8, .L80B9DF08            
.L80B9DEA0:
/* 00C90 80B9DEA0 3C0180BA */  lui     $at, %hi(D_80B9EF78)       ## $at = 80BA0000
/* 00C94 80B9DEA4 C426EF78 */  lwc1    $f6, %lo(D_80B9EF78)($at)  
/* 00C98 80B9DEA8 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 00C9C 80B9DEAC 3C0180BA */  lui     $at, %hi(D_80B9EF7C)       ## $at = 80BA0000
/* 00CA0 80B9DEB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA4 80B9DEB4 46062200 */  add.s   $f8, $f4, $f6              
/* 00CA8 80B9DEB8 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 00CAC 80B9DEBC C430EF7C */  lwc1    $f16, %lo(D_80B9EF7C)($at) 
/* 00CB0 80B9DEC0 C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00CB4 80B9DEC4 460A803E */  c.le.s  $f16, $f10                 
/* 00CB8 80B9DEC8 00000000 */  nop
/* 00CBC 80B9DECC 4502000F */  bc1fl   .L80B9DF0C                 
/* 00CC0 80B9DED0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CC4 80B9DED4 0C2E7692 */  jal     func_80B9DA48              
/* 00CC8 80B9DED8 A7A30026 */  sh      $v1, 0x0026($sp)           
/* 00CCC 80B9DEDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CD0 80B9DEE0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CD4 80B9DEE4 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00CD8 80B9DEE8 87A30026 */  lh      $v1, 0x0026($sp)           
/* 00CDC 80B9DEEC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CE0 80B9DEF0 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 00CE4 80B9DEF4 14610004 */  bne     $v1, $at, .L80B9DF08       
/* 00CE8 80B9DEF8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00CEC 80B9DEFC C60C008C */  lwc1    $f12, 0x008C($s0)          ## 0000008C
/* 00CF0 80B9DF00 0C02A800 */  jal     func_800AA000              
/* 00CF4 80B9DF04 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
.L80B9DF08:
/* 00CF8 80B9DF08 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DF0C:
/* 00CFC 80B9DF0C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D00 80B9DF10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D04 80B9DF14 03E00008 */  jr      $ra                        
/* 00D08 80B9DF18 00000000 */  nop


