glabel EnPoRelay_Destroy
/* 00184 80AD78C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00188 80AD78C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0018C 80AD78CC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00190 80AD78D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00194 80AD78D4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00198 80AD78D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0019C 80AD78DC 8DC6027C */  lw      $a2, 0x027C($t6)           ## 0000027C
/* 001A0 80AD78E0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 001A4 80AD78E4 0C01E9F1 */  jal     Lights_Remove
              
/* 001A8 80AD78E8 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 001AC 80AD78EC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001B0 80AD78F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001B4 80AD78F4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B8 80AD78F8 24A50290 */  addiu   $a1, $a1, 0x0290           ## $a1 = 00000290
/* 001BC 80AD78FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C0 80AD7900 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C4 80AD7904 03E00008 */  jr      $ra                        
/* 001C8 80AD7908 00000000 */  nop
