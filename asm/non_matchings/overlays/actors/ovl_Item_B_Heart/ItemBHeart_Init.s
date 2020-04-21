glabel ItemBHeart_Init
/* 00000 80B85150 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80B85154 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00008 80B85158 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 80B8515C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 80B85160 0C00B35B */  jal     Flags_GetCollectible
              
/* 00014 80B85164 2405001F */  addiu   $a1, $zero, 0x001F         ## $a1 = 0000001F
/* 00018 80B85168 10400005 */  beq     $v0, $zero, .L80B85180     
/* 0001C 80B8516C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00020 80B85170 0C00B55C */  jal     Actor_Kill
              
/* 00024 80B85174 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00028 80B85178 1000000C */  beq     $zero, $zero, .L80B851AC   
/* 0002C 80B8517C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B85180:
/* 00030 80B85180 3C0580B8 */  lui     $a1, %hi(D_80B85530)       ## $a1 = 80B80000
/* 00034 80B85184 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00038 80B85188 24A55530 */  addiu   $a1, $a1, %lo(D_80B85530)  ## $a1 = 80B85530
/* 0003C 80B8518C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00040 80B85190 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 00044 80B85194 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 00048 80B85198 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0004C 80B8519C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00050 80B851A0 0C00AC78 */  jal     ActorShape_Init
              
/* 00054 80B851A4 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00058 80B851A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B851AC:
/* 0005C 80B851AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00060 80B851B0 03E00008 */  jr      $ra                        
/* 00064 80B851B4 00000000 */  nop
