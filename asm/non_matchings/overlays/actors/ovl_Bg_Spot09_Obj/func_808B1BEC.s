glabel func_808B1BEC
/* 0010C 808B1BEC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00110 808B1BF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00114 808B1BF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00118 808B1BF8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0011C 808B1BFC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00120 808B1C00 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00124 808B1C04 3C18808B */  lui     $t8, %hi(D_808B1F90)       ## $t8 = 808B0000
/* 00128 808B1C08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0012C 808B1C0C 000E7880 */  sll     $t7, $t6,  2               
/* 00130 808B1C10 030FC021 */  addu    $t8, $t8, $t7              
/* 00134 808B1C14 8F181F90 */  lw      $t8, %lo(D_808B1F90)($t8)  
/* 00138 808B1C18 53000011 */  beql    $t8, $zero, .L808B1C60     
/* 0013C 808B1C1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00140 808B1C20 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00144 808B1C24 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00148 808B1C28 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0014C 808B1C2C 3C04808B */  lui     $a0, %hi(D_808B1F90)       ## $a0 = 808B0000
/* 00150 808B1C30 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFF8
/* 00154 808B1C34 00194080 */  sll     $t0, $t9,  2               
/* 00158 808B1C38 00882021 */  addu    $a0, $a0, $t0              
/* 0015C 808B1C3C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00160 808B1C40 8C841F90 */  lw      $a0, %lo(D_808B1F90)($a0)  
/* 00164 808B1C44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00168 808B1C48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0016C 808B1C4C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00170 808B1C50 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00174 808B1C54 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00178 808B1C58 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0017C 808B1C5C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B1C60:
/* 00180 808B1C60 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00184 808B1C64 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00188 808B1C68 03E00008 */  jr      $ra                        
/* 0018C 808B1C6C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001


