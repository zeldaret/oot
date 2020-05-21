glabel EnSsh_Destroy
/* 01678 80B038E8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0167C 80B038EC AFB30024 */  sw      $s3, 0x0024($sp)           
/* 01680 80B038F0 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 01684 80B038F4 AFB40028 */  sw      $s4, 0x0028($sp)           
/* 01688 80B038F8 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 0168C 80B038FC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01690 80B03900 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 01694 80B03904 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 01698 80B03908 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0169C 80B0390C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 016A0 80B03910 0C009C27 */  jal     Effect_Delete              
/* 016A4 80B03914 8E650538 */  lw      $a1, 0x0538($s3)           ## 00000538
/* 016A8 80B03918 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 016AC 80B0391C 267102FC */  addiu   $s1, $s3, 0x02FC           ## $s1 = 000002FC
/* 016B0 80B03920 241201C8 */  addiu   $s2, $zero, 0x01C8         ## $s2 = 000001C8
.L80B03924:
/* 016B4 80B03924 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 016B8 80B03928 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 016BC 80B0392C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000002FC
/* 016C0 80B03930 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 016C4 80B03934 1612FFFB */  bne     $s0, $s2, .L80B03924       
/* 016C8 80B03938 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000348
/* 016CC 80B0393C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 016D0 80B03940 0C016F32 */  jal     Collider_DestroyJntSph              
/* 016D4 80B03944 266504C4 */  addiu   $a1, $s3, 0x04C4           ## $a1 = 000004C4
/* 016D8 80B03948 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 016DC 80B0394C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 016E0 80B03950 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 016E4 80B03954 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 016E8 80B03958 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 016EC 80B0395C 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 016F0 80B03960 03E00008 */  jr      $ra                        
/* 016F4 80B03964 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
