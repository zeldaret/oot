glabel EnPoDesert_Destroy
/* 0016C 80AD2E1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00170 80AD2E20 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00174 80AD2E24 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00178 80AD2E28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0017C 80AD2E2C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00180 80AD2E30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 80AD2E34 8DC60224 */  lw      $a2, 0x0224($t6)           ## 00000224
/* 00188 80AD2E38 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0018C 80AD2E3C 0C01E9F1 */  jal     LightContext_RemoveLight
              
/* 00190 80AD2E40 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00194 80AD2E44 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00198 80AD2E48 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0019C 80AD2E4C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001A0 80AD2E50 24A50238 */  addiu   $a1, $a1, 0x0238           ## $a1 = 00000238
/* 001A4 80AD2E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 80AD2E58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001AC 80AD2E5C 03E00008 */  jr      $ra                        
/* 001B0 80AD2E60 00000000 */  nop
