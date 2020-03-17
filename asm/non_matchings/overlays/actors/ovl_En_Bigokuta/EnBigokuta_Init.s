glabel EnBigokuta_Init
/* 00000 809BCC60 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 809BCC64 AFB30034 */  sw      $s3, 0x0034($sp)           
/* 00008 809BCC68 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 0000C 809BCC6C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00010 809BCC70 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00014 809BCC74 3C05809C */  lui     $a1, %hi(D_809BF488)       ## $a1 = 809C0000
/* 00018 809BCC78 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0001C 809BCC7C AFB40038 */  sw      $s4, 0x0038($sp)           
/* 00020 809BCC80 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00024 809BCC84 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00028 809BCC88 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0002C 809BCC8C 24A5F488 */  addiu   $a1, $a1, %lo(D_809BF488)  ## $a1 = 809BF488
/* 00030 809BCC90 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00034 809BCC94 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00038 809BCC98 264E019C */  addiu   $t6, $s2, 0x019C           ## $t6 = 0000019C
/* 0003C 809BCC9C 264F0214 */  addiu   $t7, $s2, 0x0214           ## $t7 = 00000214
/* 00040 809BCCA0 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00044 809BCCA4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00048 809BCCA8 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0004C 809BCCAC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00050 809BCCB0 24E714B8 */  addiu   $a3, $a3, 0x14B8           ## $a3 = 060014B8
/* 00054 809BCCB4 24C66BC0 */  addiu   $a2, $a2, 0x6BC0           ## $a2 = 06006BC0
/* 00058 809BCCB8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0005C 809BCCBC 0C0291BE */  jal     func_800A46F8              
/* 00060 809BCCC0 2645014C */  addiu   $a1, $s2, 0x014C           ## $a1 = 0000014C
/* 00064 809BCCC4 2650028C */  addiu   $s0, $s2, 0x028C           ## $s0 = 0000028C
/* 00068 809BCCC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000028C
/* 0006C 809BCCCC 0C016EFE */  jal     func_8005BBF8              
/* 00070 809BCCD0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00074 809BCCD4 3C07809C */  lui     $a3, %hi(D_809BF3F8)       ## $a3 = 809C0000
/* 00078 809BCCD8 265902AC */  addiu   $t9, $s2, 0x02AC           ## $t9 = 000002AC
/* 0007C 809BCCDC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00080 809BCCE0 24E7F3F8 */  addiu   $a3, $a3, %lo(D_809BF3F8)  ## $a3 = 809BF3F8
/* 00084 809BCCE4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00088 809BCCE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0000028C
/* 0008C 809BCCEC 0C017014 */  jal     func_8005C050              
/* 00090 809BCCF0 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00094 809BCCF4 8E4202A8 */  lw      $v0, 0x02A8($s2)           ## 000002A8
/* 00098 809BCCF8 3C10809C */  lui     $s0, %hi(D_809BF408)       ## $s0 = 809C0000
/* 0009C 809BCCFC 3C14809C */  lui     $s4, %hi(D_809BF460)       ## $s4 = 809C0000
/* 000A0 809BCD00 8448002E */  lh      $t0, 0x002E($v0)           ## 0000002E
/* 000A4 809BCD04 2694F460 */  addiu   $s4, $s4, %lo(D_809BF460)  ## $s4 = 809BF460
/* 000A8 809BCD08 2610F408 */  addiu   $s0, $s0, %lo(D_809BF408)  ## $s0 = 809BF408
/* 000AC 809BCD0C 265102EC */  addiu   $s1, $s2, 0x02EC           ## $s1 = 000002EC
/* 000B0 809BCD10 A4480036 */  sh      $t0, 0x0036($v0)           ## 00000036
.L809BCD14:
/* 000B4 809BCD14 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 000B8 809BCD18 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000BC 809BCD1C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000002EC
/* 000C0 809BCD20 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 000C4 809BCD24 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000002EC
/* 000C8 809BCD28 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 000CC 809BCD2C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000D0 809BCD30 02003825 */  or      $a3, $s0, $zero            ## $a3 = 809BF408
/* 000D4 809BCD34 2610002C */  addiu   $s0, $s0, 0x002C           ## $s0 = 809BF434
/* 000D8 809BCD38 1614FFF6 */  bne     $s0, $s4, .L809BCD14       
/* 000DC 809BCD3C 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 00000338
/* 000E0 809BCD40 3C05809C */  lui     $a1, %hi(D_809BF468)       ## $a1 = 809C0000
/* 000E4 809BCD44 3C06809C */  lui     $a2, %hi(D_809BF460)       ## $a2 = 809C0000
/* 000E8 809BCD48 24C6F460 */  addiu   $a2, $a2, %lo(D_809BF460)  ## $a2 = 809BF460
/* 000EC 809BCD4C 24A5F468 */  addiu   $a1, $a1, %lo(D_809BF468)  ## $a1 = 809BF468
/* 000F0 809BCD50 0C0187B5 */  jal     func_80061ED4              
/* 000F4 809BCD54 26440098 */  addiu   $a0, $s2, 0x0098           ## $a0 = 00000098
/* 000F8 809BCD58 8649001C */  lh      $t1, 0x001C($s2)           ## 0000001C
/* 000FC 809BCD5C 24100001 */  addiu   $s0, $zero, 0x0001         ## $s0 = 00000001
/* 00100 809BCD60 A2500194 */  sb      $s0, 0x0194($s2)           ## 00000194
/* 00104 809BCD64 15200009 */  bne     $t1, $zero, .L809BCD8C     
/* 00108 809BCD68 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0010C 809BCD6C 26651C24 */  addiu   $a1, $s3, 0x1C24           ## $a1 = 00001C24
/* 00110 809BCD70 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00114 809BCD74 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00118 809BCD78 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 0011C 809BCD7C 0C26F4C6 */  jal     func_809BD318              
/* 00120 809BCD80 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00124 809BCD84 10000009 */  beq     $zero, $zero, .L809BCDAC   
/* 00128 809BCD88 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809BCD8C:
/* 0012C 809BCD8C 0C26F4F8 */  jal     func_809BD3E0              
/* 00130 809BCD90 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00134 809BCD94 A640019A */  sh      $zero, 0x019A($s2)         ## 0000019A
/* 00138 809BCD98 A6500196 */  sh      $s0, 0x0196($s2)           ## 00000196
/* 0013C 809BCD9C 3C01809C */  lui     $at, %hi(D_809BF528)       ## $at = 809C0000
/* 00140 809BCDA0 C424F528 */  lwc1    $f4, %lo(D_809BF528)($at)  
/* 00144 809BCDA4 E644000C */  swc1    $f4, 0x000C($s2)           ## 0000000C
/* 00148 809BCDA8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809BCDAC:
/* 0014C 809BCDAC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00150 809BCDB0 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00154 809BCDB4 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00158 809BCDB8 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 0015C 809BCDBC 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00160 809BCDC0 03E00008 */  jr      $ra                        
/* 00164 809BCDC4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


