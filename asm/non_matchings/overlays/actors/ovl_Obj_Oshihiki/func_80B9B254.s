glabel func_80B9B254
/* 000D4 80B9B254 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D8 80B9B258 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000DC 80B9B25C 908E01BE */  lbu     $t6, 0x01BE($a0)           ## 000001BE
/* 000E0 80B9B260 11C00003 */  beq     $t6, $zero, .L80B9B270     
/* 000E4 80B9B264 00000000 */  nop
/* 000E8 80B9B268 10000017 */  beq     $zero, $zero, .L80B9B2C8   
/* 000EC 80B9B26C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B9B270:
/* 000F0 80B9B270 0C023C0D */  jal     func_8008F034              
/* 000F4 80B9B274 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000F8 80B9B278 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000FC 80B9B27C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00100 80B9B280 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00104 80B9B284 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00108 80B9B288 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 0010C 80B9B28C 2F010008 */  sltiu   $at, $t8, 0x0008           
/* 00110 80B9B290 1020000D */  beq     $at, $zero, .L80B9B2C8     
/* 00114 80B9B294 0018C080 */  sll     $t8, $t8,  2               
/* 00118 80B9B298 3C0180BA */  lui     $at, %hi(jtbl_80B9CC98)       ## $at = 80BA0000
/* 0011C 80B9B29C 00380821 */  addu    $at, $at, $t8              
/* 00120 80B9B2A0 8C38CC98 */  lw      $t8, %lo(jtbl_80B9CC98)($at)  
/* 00124 80B9B2A4 03000008 */  jr      $t8                        
/* 00128 80B9B2A8 00000000 */  nop
glabel L80B9B2AC
/* 0012C 80B9B2AC 10000006 */  beq     $zero, $zero, .L80B9B2C8   
/* 00130 80B9B2B0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80B9B2B4
/* 00134 80B9B2B4 10000004 */  beq     $zero, $zero, .L80B9B2C8   
/* 00138 80B9B2B8 0003102A */  slt     $v0, $zero, $v1            
glabel L80B9B2BC
/* 0013C 80B9B2BC 28620002 */  slti    $v0, $v1, 0x0002           
/* 00140 80B9B2C0 10000001 */  beq     $zero, $zero, .L80B9B2C8   
/* 00144 80B9B2C4 38420001 */  xori    $v0, $v0, 0x0001           ## $v0 = 00000000
.L80B9B2C8:
/* 00148 80B9B2C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0014C 80B9B2CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00150 80B9B2D0 03E00008 */  jr      $ra                        
/* 00154 80B9B2D4 00000000 */  nop


