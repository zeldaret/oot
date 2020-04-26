glabel BgMenkuriEye_Update
/* 00100 8089BD70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00104 8089BD74 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00108 8089BD78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0010C 8089BD7C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00110 8089BD80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00114 8089BD84 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00118 8089BD88 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0011C 8089BD8C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00120 8089BD90 54400012 */  bnel    $v0, $zero, .L8089BDDC     
/* 00124 8089BD94 92040161 */  lbu     $a0, 0x0161($s0)           ## 00000161
/* 00128 8089BD98 8602014C */  lh      $v0, 0x014C($s0)           ## 0000014C
/* 0012C 8089BD9C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00130 8089BDA0 5041000E */  beql    $v0, $at, .L8089BDDC       
/* 00134 8089BDA4 92040161 */  lbu     $a0, 0x0161($s0)           ## 00000161
/* 00138 8089BDA8 10400003 */  beq     $v0, $zero, .L8089BDB8     
/* 0013C 8089BDAC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00140 8089BDB0 A60E014C */  sh      $t6, 0x014C($s0)           ## 0000014C
/* 00144 8089BDB4 8602014C */  lh      $v0, 0x014C($s0)           ## 0000014C
.L8089BDB8:
/* 00148 8089BDB8 14400007 */  bne     $v0, $zero, .L8089BDD8     
/* 0014C 8089BDBC 3C06808A */  lui     $a2, %hi(D_8089C1A0)       ## $a2 = 808A0000
/* 00150 8089BDC0 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00154 8089BDC4 24C6C1A0 */  addiu   $a2, $a2, %lo(D_8089C1A0)  ## $a2 = 8089C1A0
/* 00158 8089BDC8 A60F014C */  sh      $t7, 0x014C($s0)           ## 0000014C
/* 0015C 8089BDCC 8CD80000 */  lw      $t8, 0x0000($a2)           ## 8089C1A0
/* 00160 8089BDD0 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 00164 8089BDD4 ACD90000 */  sw      $t9, 0x0000($a2)           ## 8089C1A0
.L8089BDD8:
/* 00168 8089BDD8 92040161 */  lbu     $a0, 0x0161($s0)           ## 00000161
.L8089BDDC:
/* 0016C 8089BDDC 3C06808A */  lui     $a2, %hi(D_8089C1A0)       ## $a2 = 808A0000
/* 00170 8089BDE0 24C6C1A0 */  addiu   $a2, $a2, %lo(D_8089C1A0)  ## $a2 = 8089C1A0
/* 00174 8089BDE4 30880002 */  andi    $t0, $a0, 0x0002           ## $t0 = 00000000
/* 00178 8089BDE8 5100002D */  beql    $t0, $zero, .L8089BEA0     
/* 0017C 8089BDEC 8609014C */  lh      $t1, 0x014C($s0)           ## 0000014C
/* 00180 8089BDF0 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 00184 8089BDF4 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00188 8089BDF8 852A0032 */  lh      $t2, 0x0032($t1)           ## 00000032
/* 0018C 8089BDFC 014B1023 */  subu    $v0, $t2, $t3              
/* 00190 8089BE00 00021400 */  sll     $v0, $v0, 16               
/* 00194 8089BE04 00021403 */  sra     $v0, $v0, 16               
/* 00198 8089BE08 04400003 */  bltz    $v0, .L8089BE18            
/* 0019C 8089BE0C 00021823 */  subu    $v1, $zero, $v0            
/* 001A0 8089BE10 10000001 */  beq     $zero, $zero, .L8089BE18   
/* 001A4 8089BE14 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8089BE18:
/* 001A8 8089BE18 28615001 */  slti    $at, $v1, 0x5001           
/* 001AC 8089BE1C 54200020 */  bnel    $at, $zero, .L8089BEA0     
/* 001B0 8089BE20 8609014C */  lh      $t1, 0x014C($s0)           ## 0000014C
/* 001B4 8089BE24 860D014C */  lh      $t5, 0x014C($s0)           ## 0000014C
/* 001B8 8089BE28 308CFFFD */  andi    $t4, $a0, 0xFFFD           ## $t4 = 00000000
/* 001BC 8089BE2C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 001C0 8089BE30 15A1000F */  bne     $t5, $at, .L8089BE70       
/* 001C4 8089BE34 A20C0161 */  sb      $t4, 0x0161($s0)           ## 00000161
/* 001C8 8089BE38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001CC 8089BE3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 001D0 8089BE40 24053847 */  addiu   $a1, $zero, 0x3847         ## $a1 = 00003847
/* 001D4 8089BE44 3C06808A */  lui     $a2, %hi(D_8089C1A0)       ## $a2 = 808A0000
/* 001D8 8089BE48 24C6C1A0 */  addiu   $a2, $a2, %lo(D_8089C1A0)  ## $a2 = 8089C1A0
/* 001DC 8089BE4C 8CCE0000 */  lw      $t6, 0x0000($a2)           ## 8089C1A0
/* 001E0 8089BE50 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 001E4 8089BE54 25C20001 */  addiu   $v0, $t6, 0x0001           ## $v0 = 00000001
/* 001E8 8089BE58 28410005 */  slti    $at, $v0, 0x0005           
/* 001EC 8089BE5C 14200003 */  bne     $at, $zero, .L8089BE6C     
/* 001F0 8089BE60 ACC20000 */  sw      $v0, 0x0000($a2)           ## 8089C1A0
/* 001F4 8089BE64 10000002 */  beq     $zero, $zero, .L8089BE70   
/* 001F8 8089BE68 ACD80000 */  sw      $t8, 0x0000($a2)           ## 8089C1A0
.L8089BE6C:
/* 001FC 8089BE6C ACC20000 */  sw      $v0, 0x0000($a2)           ## 8089C1A0
.L8089BE70:
/* 00200 8089BE70 241901A0 */  addiu   $t9, $zero, 0x01A0         ## $t9 = 000001A0
/* 00204 8089BE74 A619014C */  sh      $t9, 0x014C($s0)           ## 0000014C
/* 00208 8089BE78 8CC80000 */  lw      $t0, 0x0000($a2)           ## 8089C1A0
/* 0020C 8089BE7C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00210 8089BE80 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00214 8089BE84 55010006 */  bnel    $t0, $at, .L8089BEA0       
/* 00218 8089BE88 8609014C */  lh      $t1, 0x014C($s0)           ## 0000014C
/* 0021C 8089BE8C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00220 8089BE90 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00224 8089BE94 0C01E221 */  jal     func_80078884              
/* 00228 8089BE98 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 0022C 8089BE9C 8609014C */  lh      $t1, 0x014C($s0)           ## 0000014C
.L8089BEA0:
/* 00230 8089BEA0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00234 8089BEA4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00238 8089BEA8 15210005 */  bne     $t1, $at, .L8089BEC0       
/* 0023C 8089BEAC 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00240 8089BEB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00244 8089BEB4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00248 8089BEB8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0024C 8089BEBC 00812821 */  addu    $a1, $a0, $at              
.L8089BEC0:
/* 00250 8089BEC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00254 8089BEC4 0C00B56E */  jal     Actor_SetHeight
              
/* 00258 8089BEC8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0025C 8089BECC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00260 8089BED0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00264 8089BED4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00268 8089BED8 03E00008 */  jr      $ra                        
/* 0026C 8089BEDC 00000000 */  nop
