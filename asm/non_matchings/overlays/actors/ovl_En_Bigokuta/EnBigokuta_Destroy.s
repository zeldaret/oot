glabel EnBigokuta_Destroy
/* 00168 809BCDC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0016C 809BCDCC AFB20020 */  sw      $s2, 0x0020($sp)           
/* 00170 809BCDD0 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00174 809BCDD4 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 00178 809BCDD8 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0017C 809BCDDC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00180 809BCDE0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 809BCDE4 AFB40028 */  sw      $s4, 0x0028($sp)           
/* 00188 809BCDE8 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 0018C 809BCDEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00190 809BCDF0 0C016F32 */  jal     func_8005BCC8              
/* 00194 809BCDF4 2645028C */  addiu   $a1, $s2, 0x028C           ## $a1 = 0000028C
/* 00198 809BCDF8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0019C 809BCDFC 265102EC */  addiu   $s1, $s2, 0x02EC           ## $s1 = 000002EC
/* 001A0 809BCE00 24140098 */  addiu   $s4, $zero, 0x0098         ## $s4 = 00000098
.L809BCE04:
/* 001A4 809BCE04 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 001A8 809BCE08 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001AC 809BCE0C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000002EC
/* 001B0 809BCE10 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 001B4 809BCE14 1614FFFB */  bne     $s0, $s4, .L809BCE04       
/* 001B8 809BCE18 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000338
/* 001BC 809BCE1C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 001C0 809BCE20 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001C4 809BCE24 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 001C8 809BCE28 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 001CC 809BCE2C 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 001D0 809BCE30 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 001D4 809BCE34 03E00008 */  jr      $ra                        
/* 001D8 809BCE38 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
