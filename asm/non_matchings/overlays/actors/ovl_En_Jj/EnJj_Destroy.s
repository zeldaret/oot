glabel EnJj_Destroy
/* 00294 80A87A94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00298 80A87A98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0029C 80A87A9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002A0 80A87AA0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002A4 80A87AA4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 002A8 80A87AA8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 002AC 80A87AAC 10410007 */  beq     $v0, $at, .L80A87ACC       
/* 002B0 80A87AB0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 002B4 80A87AB4 10400010 */  beq     $v0, $zero, .L80A87AF8     
/* 002B8 80A87AB8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002BC 80A87ABC 5041000F */  beql    $v0, $at, .L80A87AFC       
/* 002C0 80A87AC0 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 002C4 80A87AC4 10000012 */  beq     $zero, $zero, .L80A87B10   
/* 002C8 80A87AC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87ACC:
/* 002CC 80A87ACC 8DE6014C */  lw      $a2, 0x014C($t7)           ## 0000014C
/* 002D0 80A87AD0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 002D4 80A87AD4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 002D8 80A87AD8 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 002DC 80A87ADC 24E50810 */  addiu   $a1, $a3, 0x0810           ## $a1 = 00000810
/* 002E0 80A87AE0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002E4 80A87AE4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002E8 80A87AE8 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 002EC 80A87AEC 24A502B0 */  addiu   $a1, $a1, 0x02B0           ## $a1 = 000002B0
/* 002F0 80A87AF0 10000007 */  beq     $zero, $zero, .L80A87B10   
/* 002F4 80A87AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87AF8:
/* 002F8 80A87AF8 8FB80018 */  lw      $t8, 0x0018($sp)           
.L80A87AFC:
/* 002FC 80A87AFC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00300 80A87B00 24E50810 */  addiu   $a1, $a3, 0x0810           ## $a1 = 00000810
/* 00304 80A87B04 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 00308 80A87B08 8F06014C */  lw      $a2, 0x014C($t8)           ## 0000014C
/* 0030C 80A87B0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87B10:
/* 00310 80A87B10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00314 80A87B14 03E00008 */  jr      $ra                        
/* 00318 80A87B18 00000000 */  nop
