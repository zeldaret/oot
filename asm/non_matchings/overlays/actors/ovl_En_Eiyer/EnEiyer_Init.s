glabel EnEiyer_Init
/* 00000 809FFFA0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00004 809FFFA4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00008 809FFFA8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0000C 809FFFAC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00010 809FFFB0 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00014 809FFFB4 3C0580A0 */  lui     $a1, %hi(D_80A019C4)       ## $a1 = 80A00000
/* 00018 809FFFB8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0001C 809FFFBC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 809FFFC0 24A519C4 */  addiu   $a1, $a1, %lo(D_80A019C4)  ## $a1 = 80A019C4
/* 00024 809FFFC4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00028 809FFFC8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0002C 809FFFCC 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 00030 809FFFD0 3C054416 */  lui     $a1, 0x4416                ## $a1 = 44160000
/* 00034 809FFFD4 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 809FFFD8 3C074282 */  lui     $a3, 0x4282                ## $a3 = 42820000
/* 0003C 809FFFDC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00040 809FFFE0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00044 809FFFE4 262E0198 */  addiu   $t6, $s1, 0x0198           ## $t6 = 00000198
/* 00048 809FFFE8 262F020A */  addiu   $t7, $s1, 0x020A           ## $t7 = 0000020A
/* 0004C 809FFFEC 24180013 */  addiu   $t8, $zero, 0x0013         ## $t8 = 00000013
/* 00050 809FFFF0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00054 809FFFF4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00058 809FFFF8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0005C 809FFFFC 24E712AC */  addiu   $a3, $a3, 0x12AC           ## $a3 = 060012AC
/* 00060 80A00000 24C63410 */  addiu   $a2, $a2, 0x3410           ## $a2 = 06003410
/* 00064 80A00004 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00068 80A00008 0C02915F */  jal     SkelAnime_Init
              
/* 0006C 80A0000C 2625014C */  addiu   $a1, $s1, 0x014C           ## $a1 = 0000014C
/* 00070 80A00010 26250288 */  addiu   $a1, $s1, 0x0288           ## $a1 = 00000288
/* 00074 80A00014 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00078 80A00018 0C0170D9 */  jal     Collider_AllocCylinder
              
/* 0007C 80A0001C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00080 80A00020 3C0780A0 */  lui     $a3, %hi(D_80A01970)       ## $a3 = 80A00000
/* 00084 80A00024 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00088 80A00028 24E71970 */  addiu   $a3, $a3, %lo(D_80A01970)  ## $a3 = 80A01970
/* 0008C 80A0002C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00090 80A00030 0C01712B */  jal     Collider_InitCylinder
              
/* 00094 80A00034 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00098 80A00038 3C0580A0 */  lui     $a1, %hi(D_80A019A4)       ## $a1 = 80A00000
/* 0009C 80A0003C 3C0680A0 */  lui     $a2, %hi(D_80A0199C)       ## $a2 = 80A00000
/* 000A0 80A00040 24C6199C */  addiu   $a2, $a2, %lo(D_80A0199C)  ## $a2 = 80A0199C
/* 000A4 80A00044 24A519A4 */  addiu   $a1, $a1, %lo(D_80A019A4)  ## $a1 = 80A019A4
/* 000A8 80A00048 0C0187B5 */  jal     func_80061ED4              
/* 000AC 80A0004C 26240098 */  addiu   $a0, $s1, 0x0098           ## $a0 = 00000098
/* 000B0 80A00050 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
/* 000B4 80A00054 28410003 */  slti    $at, $v0, 0x0003           
/* 000B8 80A00058 10200039 */  beq     $at, $zero, .L80A00140     
/* 000BC 80A0005C 00000000 */  nop
/* 000C0 80A00060 C6240008 */  lwc1    $f4, 0x0008($s1)           ## 00000008
/* 000C4 80A00064 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 000C8 80A00068 26041C24 */  addiu   $a0, $s0, 0x1C24           ## $a0 = 00001C24
/* 000CC 80A0006C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000D0 80A00070 C626000C */  lwc1    $f6, 0x000C($s1)           ## 0000000C
/* 000D4 80A00074 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 000D8 80A00078 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000DC 80A0007C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 000E0 80A00080 C6280010 */  lwc1    $f8, 0x0010($s1)           ## 00000010
/* 000E4 80A00084 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000E8 80A00088 2407003A */  addiu   $a3, $zero, 0x003A         ## $a3 = 0000003A
/* 000EC 80A0008C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 000F0 80A00090 863900B6 */  lh      $t9, 0x00B6($s1)           ## 000000B6
/* 000F4 80A00094 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 000F8 80A00098 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 000FC 80A0009C 27284000 */  addiu   $t0, $t9, 0x4000           ## $t0 = 00004000
/* 00100 80A000A0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00104 80A000A4 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00108 80A000A8 54400006 */  bnel    $v0, $zero, .L80A000C4     
/* 0010C 80A000AC 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
/* 00110 80A000B0 0C00B55C */  jal     Actor_Kill
              
/* 00114 80A000B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00118 80A000B8 1000002C */  beq     $zero, $zero, .L80A0016C   
/* 0011C 80A000BC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00120 80A000C0 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
.L80A000C4:
/* 00124 80A000C4 1440001E */  bne     $v0, $zero, .L80A00140     
/* 00128 80A000C8 00000000 */  nop
/* 0012C 80A000CC 8E24011C */  lw      $a0, 0x011C($s1)           ## 0000011C
/* 00130 80A000D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00134 80A000D4 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 00138 80A000D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
.L80A000DC:
/* 0013C 80A000DC 12000004 */  beq     $s0, $zero, .L80A000F0     
/* 00140 80A000E0 00000000 */  nop
/* 00144 80A000E4 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00148 80A000E8 1443FFFC */  bne     $v0, $v1, .L80A000DC       
/* 0014C 80A000EC 8E10011C */  lw      $s0, 0x011C($s0)           ## 0000011C
.L80A000F0:
/* 00150 80A000F0 5043000B */  beql    $v0, $v1, .L80A00120       
/* 00154 80A000F4 AC910118 */  sw      $s1, 0x0118($a0)           ## 00000118
/* 00158 80A000F8 1220001B */  beq     $s1, $zero, .L80A00168     
/* 0015C 80A000FC 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000000
.L80A00100:
/* 00160 80A00100 0C00B55C */  jal     Actor_Kill
              
/* 00164 80A00104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00168 80A00108 8E10011C */  lw      $s0, 0x011C($s0)           ## 0000011C
/* 0016C 80A0010C 1600FFFC */  bne     $s0, $zero, .L80A00100     
/* 00170 80A00110 00000000 */  nop
/* 00174 80A00114 10000015 */  beq     $zero, $zero, .L80A0016C   
/* 00178 80A00118 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0017C 80A0011C AC910118 */  sw      $s1, 0x0118($a0)           ## 00000118
.L80A00120:
/* 00180 80A00120 8E2A011C */  lw      $t2, 0x011C($s1)           ## 0000011C
/* 00184 80A00124 8D4B011C */  lw      $t3, 0x011C($t2)           ## 0000011C
/* 00188 80A00128 AD710118 */  sw      $s1, 0x0118($t3)           ## 00000118
/* 0018C 80A0012C 8E2C011C */  lw      $t4, 0x011C($s1)           ## 0000011C
/* 00190 80A00130 8D8D011C */  lw      $t5, 0x011C($t4)           ## 0000011C
/* 00194 80A00134 8DAE011C */  lw      $t6, 0x011C($t5)           ## 0000011C
/* 00198 80A00138 ADD10118 */  sw      $s1, 0x0118($t6)           ## 00000118
/* 0019C 80A0013C 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
.L80A00140:
/* 001A0 80A00140 10400003 */  beq     $v0, $zero, .L80A00150     
/* 001A4 80A00144 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 001A8 80A00148 14410005 */  bne     $v0, $at, .L80A00160       
/* 001AC 80A0014C 00000000 */  nop
.L80A00150:
/* 001B0 80A00150 0C280086 */  jal     func_80A00218              
/* 001B4 80A00154 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B8 80A00158 10000004 */  beq     $zero, $zero, .L80A0016C   
/* 001BC 80A0015C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A00160:
/* 001C0 80A00160 0C2800ED */  jal     func_80A003B4              
/* 001C4 80A00164 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A00168:
/* 001C8 80A00168 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80A0016C:
/* 001CC 80A0016C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 001D0 80A00170 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 001D4 80A00174 03E00008 */  jr      $ra                        
/* 001D8 80A00178 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
