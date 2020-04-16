.rdata
glabel D_80891800
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80891840
    .asciz "../z_bg_ice_shelter.c"
    .balign 4

.text
glabel func_80890874
/* 00134 80890874 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00138 80890878 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0013C 8089087C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00140 80890880 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00144 80890884 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00148 80890888 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 0014C 8089088C AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00150 80890890 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00154 80890894 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00158 80890898 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 0015C 8089089C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00160 808908A0 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 00164 808908A4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00168 808908A8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0016C 808908AC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 00170 808908B0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00174 808908B4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00178 808908B8 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 0017C 808908BC 1441000A */  bne     $v0, $at, .L808908E8       
/* 00180 808908C0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00184 808908C4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00188 808908C8 3C048089 */  lui     $a0, %hi(D_80891800)       ## $a0 = 80890000
/* 0018C 808908CC 3C058089 */  lui     $a1, %hi(D_80891840)       ## $a1 = 80890000
/* 00190 808908D0 86070000 */  lh      $a3, 0x0000($s0)           ## 00000000
/* 00194 808908D4 24A51840 */  addiu   $a1, $a1, %lo(D_80891840)  ## $a1 = 80891840
/* 00198 808908D8 24841800 */  addiu   $a0, $a0, %lo(D_80891800)  ## $a0 = 80891800
/* 0019C 808908DC 2406016A */  addiu   $a2, $zero, 0x016A         ## $a2 = 0000016A
/* 001A0 808908E0 0C00084C */  jal     osSyncPrintf
              
/* 001A4 808908E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
.L808908E8:
/* 001A8 808908E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001AC 808908EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 001B0 808908F0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 001B4 808908F4 03E00008 */  jr      $ra                        
/* 001B8 808908F8 00000000 */  nop
