glabel func_80B14898
/* 00DF8 80B14898 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DFC 80B1489C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00E00 80B148A0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00E04 80B148A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E08 80B148A8 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00E0C 80B148AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E10 80B148B0 240E00FA */  addiu   $t6, $zero, 0x00FA         ## $t6 = 000000FA
/* 00E14 80B148B4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00E18 80B148B8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00E1C 80B148BC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00E20 80B148C0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00E24 80B148C4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00E28 80B148C8 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 00E2C 80B148CC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00E30 80B148D0 0C00CD20 */  jal     func_80033480              
/* 00E34 80B148D4 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00E38 80B148D8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00E3C 80B148DC 0C2C5206 */  jal     func_80B14818              
/* 00E40 80B148E0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00E44 80B148E4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00E48 80B148E8 849902CC */  lh      $t9, 0x02CC($a0)           ## 000002CC
/* 00E4C 80B148EC 57200004 */  bnel    $t9, $zero, .L80B14900     
/* 00E50 80B148F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E54 80B148F4 0C00B55C */  jal     Actor_Kill
              
/* 00E58 80B148F8 00000000 */  nop
/* 00E5C 80B148FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B14900:
/* 00E60 80B14900 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E64 80B14904 03E00008 */  jr      $ra                        
/* 00E68 80B14908 00000000 */  nop
