glabel BgHidanKowarerukabe_Update
/* 00C0C 8088AC2C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C10 8088AC30 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00C14 8088AC34 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00C18 8088AC38 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00C1C 8088AC3C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00C20 8088AC40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C24 8088AC44 26260164 */  addiu   $a2, $s1, 0x0164           ## $a2 = 00000164
/* 00C28 8088AC48 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C2C 8088AC4C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000164
/* 00C30 8088AC50 0C00CD90 */  jal     func_80033640              
/* 00C34 8088AC54 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00C38 8088AC58 1040001E */  beq     $v0, $zero, .L8088ACD4     
/* 00C3C 8088AC5C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00C40 8088AC60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C44 8088AC64 0C222AE8 */  jal     func_8088ABA0              
/* 00C48 8088AC68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C4C 8088AC6C 8625001C */  lh      $a1, 0x001C($s1)           ## 0000001C
/* 00C50 8088AC70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C54 8088AC74 00052A03 */  sra     $a1, $a1,  8               
/* 00C58 8088AC78 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00C5C 8088AC7C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00C60 8088AC80 862E001C */  lh      $t6, 0x001C($s1)           ## 0000001C
/* 00C64 8088AC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C68 8088AC88 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 00C6C 8088AC8C 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00C70 8088AC90 15E00008 */  bne     $t7, $zero, .L8088ACB4     
/* 00C74 8088AC94 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00C78 8088AC98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C7C 8088AC9C 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 00C80 8088ACA0 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00C84 8088ACA4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00C88 8088ACA8 24072802 */  addiu   $a3, $zero, 0x2802         ## $a3 = 00002802
/* 00C8C 8088ACAC 10000003 */  beq     $zero, $zero, .L8088ACBC   
/* 00C90 8088ACB0 00000000 */  nop
.L8088ACB4:
/* 00C94 8088ACB4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00C98 8088ACB8 24072810 */  addiu   $a3, $zero, 0x2810         ## $a3 = 00002810
.L8088ACBC:
/* 00C9C 8088ACBC 0C01E221 */  jal     func_80078884              
/* 00CA0 8088ACC0 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00CA4 8088ACC4 0C00B55C */  jal     Actor_Kill
              
/* 00CA8 8088ACC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CAC 8088ACCC 10000007 */  beq     $zero, $zero, .L8088ACEC   
/* 00CB0 8088ACD0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088ACD4:
/* 00CB4 8088ACD4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00CB8 8088ACD8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00CBC 8088ACDC 02012821 */  addu    $a1, $s0, $at              
/* 00CC0 8088ACE0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00CC4 8088ACE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC8 8088ACE8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088ACEC:
/* 00CCC 8088ACEC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00CD0 8088ACF0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00CD4 8088ACF4 03E00008 */  jr      $ra                        
/* 00CD8 8088ACF8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


