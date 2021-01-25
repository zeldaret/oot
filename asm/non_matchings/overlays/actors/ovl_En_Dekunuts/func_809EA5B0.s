glabel func_809EA5B0
/* 01050 809EA5B0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01054 809EA5B4 AFB00044 */  sw      $s0, 0x0044($sp)           
/* 01058 809EA5B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0105C 809EA5BC AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01060 809EA5C0 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 01064 809EA5C4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01068 809EA5C8 0C02927F */  jal     SkelAnime_Update
              
/* 0106C 809EA5CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01070 809EA5D0 10400049 */  beq     $v0, $zero, .L809EA6F8     
/* 01074 809EA5D4 3C06809F */  lui     $a2, %hi(D_809EABB0)       ## $a2 = 809F0000
/* 01078 809EA5D8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0107C 809EA5DC 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 01080 809EA5E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 18.00
/* 01084 809EA5E4 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 01088 809EA5E8 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0108C 809EA5EC 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 01090 809EA5F0 24C6ABB0 */  addiu   $a2, $a2, %lo(D_809EABB0)  ## $a2 = 809EABB0
/* 01094 809EA5F4 46083280 */  add.s   $f10, $f6, $f8             
/* 01098 809EA5F8 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0109C 809EA5FC 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 010A0 809EA600 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 010A4 809EA604 E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 010A8 809EA608 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 010AC 809EA60C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 010B0 809EA610 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 010B4 809EA614 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 010B8 809EA618 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 010BC 809EA61C 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 010C0 809EA620 240B0096 */  addiu   $t3, $zero, 0x0096         ## $t3 = 00000096
/* 010C4 809EA624 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 010C8 809EA628 240D000D */  addiu   $t5, $zero, 0x000D         ## $t5 = 0000000D
/* 010CC 809EA62C AFAD0038 */  sw      $t5, 0x0038($sp)           
/* 010D0 809EA630 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 010D4 809EA634 AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 010D8 809EA638 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 010DC 809EA63C AFA90028 */  sw      $t1, 0x0028($sp)           
/* 010E0 809EA640 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 010E4 809EA644 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 010E8 809EA648 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 010EC 809EA64C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 010F0 809EA650 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 010F4 809EA654 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 010F8 809EA658 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 809EABB0
/* 010FC 809EA65C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01100 809EA660 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFF0
/* 01104 809EA664 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01108 809EA668 E7B00060 */  swc1    $f16, 0x0060($sp)          
/* 0110C 809EA66C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01110 809EA670 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01114 809EA674 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 01118 809EA678 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 0111C 809EA67C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01120 809EA680 46049180 */  add.s   $f6, $f18, $f4             
/* 01124 809EA684 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 01128 809EA688 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 0112C 809EA68C 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 01130 809EA690 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 01134 809EA694 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 01138 809EA698 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 0113C 809EA69C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 01140 809EA6A0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01144 809EA6A4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01148 809EA6A8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0114C 809EA6AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01150 809EA6B0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFF0
/* 01154 809EA6B4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 01158 809EA6B8 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst              
/* 0115C 809EA6BC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01160 809EA6C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01164 809EA6C4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01168 809EA6C8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0116C 809EA6CC 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01170 809EA6D0 24070030 */  addiu   $a3, $zero, 0x0030         ## $a3 = 00000030
/* 01174 809EA6D4 8E06011C */  lw      $a2, 0x011C($s0)           ## 0000011C
/* 01178 809EA6D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0117C 809EA6DC 26251C24 */  addiu   $a1, $s1, 0x1C24           ## $a1 = 00001C24
/* 01180 809EA6E0 10C00003 */  beq     $a2, $zero, .L809EA6F0     
/* 01184 809EA6E4 00000000 */  nop
/* 01188 809EA6E8 0C00CDD2 */  jal     Actor_ChangeCategory
              
/* 0118C 809EA6EC 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L809EA6F0:
/* 01190 809EA6F0 0C00B55C */  jal     Actor_Kill
              
/* 01194 809EA6F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EA6F8:
/* 01198 809EA6F8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 0119C 809EA6FC 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 011A0 809EA700 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 011A4 809EA704 03E00008 */  jr      $ra                        
/* 011A8 809EA708 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
