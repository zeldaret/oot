.late_rodata
glabel D_80B22B80
    .float 0.3

.text
glabel EnTp_Init
/* 00008 80B20DE8 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0000C 80B20DEC AFB60060 */  sw      $s6, 0x0060($sp)           
/* 00010 80B20DF0 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00014 80B20DF4 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 00018 80B20DF8 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 0001C 80B20DFC 3C0580B2 */  lui     $a1, %hi(sInitChain)       ## $a1 = 80B20000
/* 00020 80B20E00 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00024 80B20E04 AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 00028 80B20E08 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 0002C 80B20E0C AFB5005C */  sw      $s5, 0x005C($sp)           
/* 00030 80B20E10 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 00034 80B20E14 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00038 80B20E18 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 0003C 80B20E1C AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00040 80B20E20 F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00044 80B20E24 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00048 80B20E28 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 0004C 80B20E2C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00050 80B20E30 24A52AE4 */  addiu   $a1, $a1, %lo(sInitChain)  ## $a1 = 80B22AE4
/* 00054 80B20E34 3C0F80B2 */  lui     $t7, %hi(sDamageTable)       ## $t7 = 80B20000
/* 00058 80B20E38 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0005C 80B20E3C 25EF2AC4 */  addiu   $t7, $t7, %lo(sDamageTable)  ## $t7 = 80B22AC4
/* 00060 80B20E40 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 00064 80B20E44 3C073E0F */  lui     $a3, 0x3E0F                ## $a3 = 3E0F0000
/* 00068 80B20E48 A26E001F */  sb      $t6, 0x001F($s3)           ## 0000001F
/* 0006C 80B20E4C AE6F0098 */  sw      $t7, 0x0098($s3)           ## 00000098
/* 00070 80B20E50 34E75C29 */  ori     $a3, $a3, 0x5C29           ## $a3 = 3E0F5C29
/* 00074 80B20E54 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 00078 80B20E58 266400B4 */  addiu   $a0, $s3, 0x00B4           ## $a0 = 000000B4
/* 0007C 80B20E5C 0C00AC78 */  jal     ActorShape_Init
              
/* 00080 80B20E60 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00084 80B20E64 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00088 80B20E68 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0008C 80B20E6C 26700174 */  addiu   $s0, $s3, 0x0174           ## $s0 = 00000174
/* 00090 80B20E70 AE600150 */  sw      $zero, 0x0150($s3)         ## 00000150
/* 00094 80B20E74 A27800AF */  sb      $t8, 0x00AF($s3)           ## 000000AF
/* 00098 80B20E78 0260A825 */  or      $s5, $s3, $zero            ## $s5 = 00000000
/* 0009C 80B20E7C A679015E */  sh      $t9, 0x015E($s3)           ## 0000015E
/* 000A0 80B20E80 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000174
/* 000A4 80B20E84 0C016EFE */  jal     Collider_InitJntSph              
/* 000A8 80B20E88 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 000AC 80B20E8C 3C0780B2 */  lui     $a3, %hi(sJntSphInit)       ## $a3 = 80B20000
/* 000B0 80B20E90 26680194 */  addiu   $t0, $s3, 0x0194           ## $t0 = 00000194
/* 000B4 80B20E94 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 000B8 80B20E98 24E72AB4 */  addiu   $a3, $a3, %lo(sJntSphInit)  ## $a3 = 80B22AB4
/* 000BC 80B20E9C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 000C0 80B20EA0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000174
/* 000C4 80B20EA4 0C017014 */  jal     Collider_SetJntSph              
/* 000C8 80B20EA8 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 000CC 80B20EAC 8663001C */  lh      $v1, 0x001C($s3)           ## 0000001C
/* 000D0 80B20EB0 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 000D4 80B20EB4 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 000D8 80B20EB8 04610051 */  bgez    $v1, .L80B21000            
/* 000DC 80B20EBC 00000000 */  nop
/* 000E0 80B20EC0 926A0185 */  lbu     $t2, 0x0185($s3)           ## 00000185
/* 000E4 80B20EC4 8E6D0190 */  lw      $t5, 0x0190($s3)           ## 00000190
/* 000E8 80B20EC8 A2690117 */  sb      $t1, 0x0117($s3)           ## 00000117
/* 000EC 80B20ECC 354B0004 */  ori     $t3, $t2, 0x0004           ## $t3 = 00000004
/* 000F0 80B20ED0 A660015A */  sh      $zero, 0x015A($s3)         ## 0000015A
/* 000F4 80B20ED4 A26B0185 */  sb      $t3, 0x0185($s3)           ## 00000185
/* 000F8 80B20ED8 A5AC0036 */  sh      $t4, 0x0036($t5)           ## 00000036
/* 000FC 80B20EDC 8E620190 */  lw      $v0, 0x0190($s3)           ## 00000190
/* 00100 80B20EE0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00104 80B20EE4 844E0036 */  lh      $t6, 0x0036($v0)           ## 00000036
/* 00108 80B20EE8 0C2C86E4 */  jal     EnTp_Head_SetupWait              
/* 0010C 80B20EEC A44E002E */  sh      $t6, 0x002E($v0)           ## 0000002E
/* 00110 80B20EF0 8E780024 */  lw      $t8, 0x0024($s3)           ## 00000024
/* 00114 80B20EF4 8E790004 */  lw      $t9, 0x0004($s3)           ## 00000004
/* 00118 80B20EF8 8E6F0028 */  lw      $t7, 0x0028($s3)           ## 00000028
/* 0011C 80B20EFC AE780038 */  sw      $t8, 0x0038($s3)           ## 00000038
/* 00120 80B20F00 8E78002C */  lw      $t8, 0x002C($s3)           ## 0000002C
/* 00124 80B20F04 37280015 */  ori     $t0, $t9, 0x0015           ## $t0 = 00000015
/* 00128 80B20F08 AE680004 */  sw      $t0, 0x0004($s3)           ## 00000004
/* 0012C 80B20F0C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00130 80B20F10 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 00134 80B20F14 AE6F003C */  sw      $t7, 0x003C($s3)           ## 0000003C
/* 00138 80B20F18 0C00B58B */  jal     Actor_SetScale
              
/* 0013C 80B20F1C AE780040 */  sw      $t8, 0x0040($s3)           ## 00000040
/* 00140 80B20F20 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 00144 80B20F24 4481C000 */  mtc1    $at, $f24                  ## $f24 = 0.75
/* 00148 80B20F28 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0014C 80B20F2C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 6.00
/* 00150 80B20F30 3C0180B2 */  lui     $at, %hi(D_80B22B80)       ## $at = 80B20000
/* 00154 80B20F34 C4342B80 */  lwc1    $f20, %lo(D_80B22B80)($at) 
/* 00158 80B20F38 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0015C 80B20F3C 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00160 80B20F40 26D71C24 */  addiu   $s7, $s6, 0x1C24           ## $s7 = 00001C24
/* 00164 80B20F44 241E0002 */  addiu   $s8, $zero, 0x0002         ## $s8 = 00000002
/* 00168 80B20F48 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
.L80B20F4C:
/* 0016C 80B20F4C 8E670024 */  lw      $a3, 0x0024($s3)           ## 00000024
/* 00170 80B20F50 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00001C24
/* 00174 80B20F54 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00178 80B20F58 C666002C */  lwc1    $f6, 0x002C($s3)           ## 0000002C
/* 0017C 80B20F5C AFB40024 */  sw      $s4, 0x0024($sp)           
/* 00180 80B20F60 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00184 80B20F64 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00188 80B20F68 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0018C 80B20F6C 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00190 80B20F70 24060035 */  addiu   $a2, $zero, 0x0035         ## $a2 = 00000035
/* 00194 80B20F74 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00198 80B20F78 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0019C 80B20F7C 1040001A */  beq     $v0, $zero, .L80B20FE8     
/* 001A0 80B20F80 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 001A4 80B20F84 AEA2011C */  sw      $v0, 0x011C($s5)           ## 0000011C
/* 001A8 80B20F88 00110823 */  subu    $at, $zero, $s1            
/* 001AC 80B20F8C 26290001 */  addiu   $t1, $s1, 0x0001           ## $t1 = 00000001
/* 001B0 80B20F90 00019080 */  sll     $s2, $at,  2               
/* 001B4 80B20F94 4405A000 */  mfc1    $a1, $f20                  
/* 001B8 80B20F98 AC550118 */  sw      $s5, 0x0118($v0)           ## 00000118
/* 001BC 80B20F9C A4490162 */  sh      $t1, 0x0162($v0)           ## 00000162
/* 001C0 80B20FA0 AC5301D4 */  sw      $s3, 0x01D4($v0)           ## 000001D4
/* 001C4 80B20FA4 02419021 */  addu    $s2, $s2, $at              
/* 001C8 80B20FA8 0C00B58B */  jal     Actor_SetScale
              
/* 001CC 80B20FAC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 001D0 80B20FB0 44914000 */  mtc1    $s1, $f8                   ## $f8 = 0.00
/* 001D4 80B20FB4 163E0006 */  bne     $s1, $s8, .L80B20FD0       
/* 001D8 80B20FB8 468042A0 */  cvt.s.w $f10, $f8                  
/* 001DC 80B20FBC 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 001E0 80B20FC0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 001E4 80B20FC4 AE0C0150 */  sw      $t4, 0x0150($s0)           ## 00000150
/* 001E8 80B20FC8 354B0015 */  ori     $t3, $t2, 0x0015           ## $t3 = 00000015
/* 001EC 80B20FCC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L80B20FD0:
/* 001F0 80B20FD0 46185402 */  mul.s   $f16, $f10, $f24           
/* 001F4 80B20FD4 A612015C */  sh      $s2, 0x015C($s0)           ## 0000015C
/* 001F8 80B20FD8 A612015A */  sh      $s2, 0x015A($s0)           ## 0000015A
/* 001FC 80B20FDC 0200A825 */  or      $s5, $s0, $zero            ## $s5 = 00000000
/* 00200 80B20FE0 4610B481 */  sub.s   $f18, $f22, $f16           
/* 00204 80B20FE4 E612016C */  swc1    $f18, 0x016C($s0)          ## 0000016C
.L80B20FE8:
/* 00208 80B20FE8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 0020C 80B20FEC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00210 80B20FF0 5621FFD6 */  bnel    $s1, $at, .L80B20F4C       
/* 00214 80B20FF4 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
/* 00218 80B20FF8 1000000A */  beq     $zero, $zero, .L80B21024   
/* 0021C 80B20FFC 8FBF006C */  lw      $ra, 0x006C($sp)           
.L80B21000:
/* 00220 80B21000 14600005 */  bne     $v1, $zero, .L80B21018     
/* 00224 80B21004 00000000 */  nop
/* 00228 80B21008 0C2C8421 */  jal     EnTp_Tail_SetupFollowHead              
/* 0022C 80B2100C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00230 80B21010 10000004 */  beq     $zero, $zero, .L80B21024   
/* 00234 80B21014 8FBF006C */  lw      $ra, 0x006C($sp)           
.L80B21018:
/* 00238 80B21018 0C2C85FF */  jal     EnTp_Fragment_SetupFade              
/* 0023C 80B2101C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00240 80B21020 8FBF006C */  lw      $ra, 0x006C($sp)           
.L80B21024:
/* 00244 80B21024 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00248 80B21028 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 0024C 80B2102C D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 00250 80B21030 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00254 80B21034 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00258 80B21038 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 0025C 80B2103C 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00260 80B21040 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00264 80B21044 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00268 80B21048 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 0026C 80B2104C 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 00270 80B21050 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 00274 80B21054 03E00008 */  jr      $ra                        
/* 00278 80B21058 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
