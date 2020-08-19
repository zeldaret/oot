.rdata
glabel D_809A90C0
    .asciz "Effect_SS_Ice_Smoke_ct():バンク Object_Bank_Fzが有りません。\n"
    .balign 4

.text
glabel EffectSsIceSmoke_Init
/* 00000 809A8BF0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00004 809A8BF4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00008 809A8BF8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0000C 809A8BFC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00010 809A8C00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 809A8C04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 809A8C08 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0001C 809A8C0C 00812021 */  addu    $a0, $a0, $at              
/* 00020 809A8C10 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00024 809A8C14 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 00028 809A8C18 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 0002C 809A8C1C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00030 809A8C20 24050114 */  addiu   $a1, $zero, 0x0114         ## $a1 = 00000114
/* 00034 809A8C24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00038 809A8C28 04400032 */  bltz    $v0, .L809A8CF4            
/* 0003C 809A8C2C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00040 809A8C30 0C026062 */  jal     Object_IsLoaded
              
/* 00044 809A8C34 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00048 809A8C38 1040002E */  beq     $v0, $zero, .L809A8CF4     
/* 0004C 809A8C3C 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00050 809A8C40 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 00054 809A8C44 3C028016 */  lui     $v0, %hi(gSegments)
/* 00058 809A8C48 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 0005C 809A8C4C 24426FA8 */  addiu   $v0, %lo(gSegments)
/* 00060 809A8C50 0018C900 */  sll     $t9, $t8,  4               
/* 00064 809A8C54 8C4E0018 */  lw      $t6, 0x0018($v0)           ## 80166FC0
/* 00068 809A8C58 0338C821 */  addu    $t9, $t9, $t8              
/* 0006C 809A8C5C 0019C880 */  sll     $t9, $t9,  2               
/* 00070 809A8C60 01F94021 */  addu    $t0, $t7, $t9              
/* 00074 809A8C64 01284821 */  addu    $t1, $t1, $t0              
/* 00078 809A8C68 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 0007C 809A8C6C 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 00080 809A8C70 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00084 809A8C74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00088 809A8C78 01215021 */  addu    $t2, $t1, $at              
/* 0008C 809A8C7C AC4A0018 */  sw      $t2, 0x0018($v0)           ## 80166FC0
/* 00090 809A8C80 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00094 809A8C84 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00098 809A8C88 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0009C 809A8C8C 2604000C */  addiu   $a0, $s0, 0x000C           ## $a0 = 0000000C
/* 000A0 809A8C90 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 000A4 809A8C94 24A5000C */  addiu   $a1, $a1, 0x000C           ## $a1 = 0000000C
/* 000A8 809A8C98 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 000AC 809A8C9C 26040018 */  addiu   $a0, $s0, 0x0018           ## $a0 = 00000018
/* 000B0 809A8CA0 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 000B4 809A8CA4 24A50018 */  addiu   $a1, $a1, 0x0018           ## $a1 = 00000018
/* 000B8 809A8CA8 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 000BC 809A8CAC A6000042 */  sh      $zero, 0x0042($s0)         ## 00000042
/* 000C0 809A8CB0 3C18809B */  lui     $t8, %hi(func_809A8D18)    ## $t8 = 809B0000
/* 000C4 809A8CB4 A60B0040 */  sh      $t3, 0x0040($s0)           ## 00000040
/* 000C8 809A8CB8 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 000CC 809A8CBC 3C0F809B */  lui     $t7, %hi(func_809A9030)    ## $t7 = 809B0000
/* 000D0 809A8CC0 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 000D4 809A8CC4 858D0024 */  lh      $t5, 0x0024($t4)           ## 00000024
/* 000D8 809A8CC8 27188D18 */  addiu   $t8, $t8, %lo(func_809A8D18) ## $t8 = 809A8D18
/* 000DC 809A8CCC 25EF9030 */  addiu   $t7, $t7, %lo(func_809A9030) ## $t7 = 809A9030
/* 000E0 809A8CD0 A60E005C */  sh      $t6, 0x005C($s0)           ## 0000005C
/* 000E4 809A8CD4 AE180028 */  sw      $t8, 0x0028($s0)           ## 00000028
/* 000E8 809A8CD8 AE0F0024 */  sw      $t7, 0x0024($s0)           ## 00000024
/* 000EC 809A8CDC A60D0044 */  sh      $t5, 0x0044($s0)           ## 00000044
/* 000F0 809A8CE0 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 000F4 809A8CE4 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 000F8 809A8CE8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 000FC 809A8CEC 10000005 */  beq     $zero, $zero, .L809A8D04   
/* 00100 809A8CF0 AC396FC0 */  sw      $t9, %lo(gSegments+0x18)($at)
.L809A8CF4:
/* 00104 809A8CF4 3C04809B */  lui     $a0, %hi(D_809A90C0)       ## $a0 = 809B0000
/* 00108 809A8CF8 0C00084C */  jal     osSyncPrintf
              
/* 0010C 809A8CFC 248490C0 */  addiu   $a0, $a0, %lo(D_809A90C0)  ## $a0 = 809A90C0
/* 00110 809A8D00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809A8D04:
/* 00114 809A8D04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00118 809A8D08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0011C 809A8D0C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00120 809A8D10 03E00008 */  jr      $ra                        
/* 00124 809A8D14 00000000 */  nop
