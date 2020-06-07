glabel EnSt_Destroy
/* 01BA0 80B06430 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01BA4 80B06434 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 01BA8 80B06438 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 01BAC 80B0643C AFB40028 */  sw      $s4, 0x0028($sp)           
/* 01BB0 80B06440 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01BB4 80B06444 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01BB8 80B06448 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 01BBC 80B0644C AFB1001C */  sw      $s1, 0x001C($sp)           
/* 01BC0 80B06450 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01BC4 80B06454 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01BC8 80B06458 0C009C27 */  jal     Effect_Delete              
/* 01BCC 80B0645C 8E650404 */  lw      $a1, 0x0404($s3)           ## 00000404
/* 01BD0 80B06460 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01BD4 80B06464 26710194 */  addiu   $s1, $s3, 0x0194           ## $s1 = 00000194
/* 01BD8 80B06468 241201C8 */  addiu   $s2, $zero, 0x01C8         ## $s2 = 000001C8
.L80B0646C:
/* 01BDC 80B0646C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01BE0 80B06470 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 01BE4 80B06474 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000194
/* 01BE8 80B06478 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 01BEC 80B0647C 1612FFFB */  bne     $s0, $s2, .L80B0646C       
/* 01BF0 80B06480 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 000001E0
/* 01BF4 80B06484 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01BF8 80B06488 0C016F32 */  jal     Collider_DestroyJntSph              
/* 01BFC 80B0648C 2665035C */  addiu   $a1, $s3, 0x035C           ## $a1 = 0000035C
/* 01C00 80B06490 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01C04 80B06494 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01C08 80B06498 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 01C0C 80B0649C 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 01C10 80B064A0 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 01C14 80B064A4 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 01C18 80B064A8 03E00008 */  jr      $ra                        
/* 01C1C 80B064AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
