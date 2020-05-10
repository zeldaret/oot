glabel ObjKibako2_Destroy
/* 003E4 80B95DB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E8 80B95DB8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 80B95DBC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003F0 80B95DC0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003F4 80B95DC4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 003F8 80B95DC8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003FC 80B95DCC AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00400 80B95DD0 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00404 80B95DD4 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 00408 80B95DD8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0040C 80B95DDC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00410 80B95DE0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00414 80B95DE4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00418 80B95DE8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0041C 80B95DEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00420 80B95DF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00424 80B95DF4 03E00008 */  jr      $ra                        
/* 00428 80B95DF8 00000000 */  nop
