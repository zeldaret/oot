glabel func_808A72AC
/* 0109C 808A72AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 010A0 808A72B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010A4 808A72B4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 010A8 808A72B8 908E0181 */  lbu     $t6, 0x0181($a0)           ## 00000181
/* 010AC 808A72BC 3C02808B */  lui     $v0, %hi(D_808A80A0)       ## $v0 = 808B0000
/* 010B0 808A72C0 244280A0 */  addiu   $v0, $v0, %lo(D_808A80A0)  ## $v0 = 808A80A0
/* 010B4 808A72C4 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 010B8 808A72C8 11E00013 */  beq     $t7, $zero, .L808A7318     
/* 010BC 808A72CC 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 010C0 808A72D0 90580000 */  lbu     $t8, 0x0000($v0)           ## 808A80A0
/* 010C4 808A72D4 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 010C8 808A72D8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 010CC 808A72DC 37190020 */  ori     $t9, $t8, 0x0020           ## $t9 = 00000020
/* 010D0 808A72E0 A0590000 */  sb      $t9, 0x0000($v0)           ## 808A80A0
/* 010D4 808A72E4 A488016C */  sh      $t0, 0x016C($a0)           ## 0000016C
/* 010D8 808A72E8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 010DC 808A72EC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 010E0 808A72F0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 010E4 808A72F4 0C00D09B */  jal     func_8003426C              
/* 010E8 808A72F8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 010EC 808A72FC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 010F0 808A7300 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 010F4 808A7304 240538EF */  addiu   $a1, $zero, 0x38EF         ## $a1 = 000038EF
/* 010F8 808A7308 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 010FC 808A730C 3C0A808A */  lui     $t2, %hi(func_808A7328)    ## $t2 = 808A0000
/* 01100 808A7310 254A7328 */  addiu   $t2, $t2, %lo(func_808A7328) ## $t2 = 808A7328
/* 01104 808A7314 AC8A0164 */  sw      $t2, 0x0164($a0)           ## 00000164
.L808A7318:
/* 01108 808A7318 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0110C 808A731C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01110 808A7320 03E00008 */  jr      $ra                        
/* 01114 808A7324 00000000 */  nop
