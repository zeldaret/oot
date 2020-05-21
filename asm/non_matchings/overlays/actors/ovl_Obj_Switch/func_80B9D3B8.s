glabel func_80B9D3B8
/* 001A8 80B9D3B8 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 001AC 80B9D3BC AFB50034 */  sw      $s5, 0x0034($sp)           
/* 001B0 80B9D3C0 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 001B4 80B9D3C4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 001B8 80B9D3C8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 001BC 80B9D3CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C0 80B9D3D0 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 001C4 80B9D3D4 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 001C8 80B9D3D8 26A50180 */  addiu   $a1, $s5, 0x0180           ## $a1 = 00000180
/* 001CC 80B9D3DC 00C0B025 */  or      $s6, $a2, $zero            ## $s6 = 00000000
/* 001D0 80B9D3E0 AFBE0040 */  sw      $s8, 0x0040($sp)           
/* 001D4 80B9D3E4 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 001D8 80B9D3E8 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 001DC 80B9D3EC AFB3002C */  sw      $s3, 0x002C($sp)           
/* 001E0 80B9D3F0 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 001E4 80B9D3F4 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 001E8 80B9D3F8 0C0171F8 */  jal     Collider_InitTris              
/* 001EC 80B9D3FC AFA50054 */  sw      $a1, 0x0054($sp)           
/* 001F0 80B9D400 26AE01A0 */  addiu   $t6, $s5, 0x01A0           ## $t6 = 000001A0
/* 001F4 80B9D404 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 001F8 80B9D408 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001FC 80B9D40C 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00200 80B9D410 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 00204 80B9D414 0C0172EB */  jal     Collider_SetTris              
/* 00208 80B9D418 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 00000000
/* 0020C 80B9D41C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00210 80B9D420 26B30024 */  addiu   $s3, $s5, 0x0024           ## $s3 = 00000024
/* 00214 80B9D424 27BE0064 */  addiu   $s8, $sp, 0x0064           ## $s8 = FFFFFFDC
/* 00218 80B9D428 27B70058 */  addiu   $s7, $sp, 0x0058           ## $s7 = FFFFFFD0
/* 0021C 80B9D42C 27B4007C */  addiu   $s4, $sp, 0x007C           ## $s4 = FFFFFFF4
/* 00220 80B9D430 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L80B9D434:
/* 00224 80B9D434 27B00058 */  addiu   $s0, $sp, 0x0058           ## $s0 = FFFFFFD0
.L80B9D438:
/* 00228 80B9D438 8ECF000C */  lw      $t7, 0x000C($s6)           ## 0000000C
/* 0022C 80B9D43C 0012C100 */  sll     $t8, $s2,  4               
/* 00230 80B9D440 0312C023 */  subu    $t8, $t8, $s2              
/* 00234 80B9D444 0018C080 */  sll     $t8, $t8,  2               
/* 00238 80B9D448 01F8C821 */  addu    $t9, $t7, $t8              
/* 0023C 80B9D44C 03312821 */  addu    $a1, $t9, $s1              
/* 00240 80B9D450 24A50018 */  addiu   $a1, $a1, 0x0018           ## $a1 = 00000018
/* 00244 80B9D454 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 00248 80B9D458 0C2E7484 */  jal     func_80B9D210              
/* 0024C 80B9D45C 86A60016 */  lh      $a2, 0x0016($s5)           ## 00000016
/* 00250 80B9D460 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 00254 80B9D464 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000024
/* 00258 80B9D468 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 0025C 80B9D46C 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFFD0
/* 00260 80B9D470 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFDC
/* 00264 80B9D474 1614FFF0 */  bne     $s0, $s4, .L80B9D438       
/* 00268 80B9D478 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 0026C 80B9D47C 27A80070 */  addiu   $t0, $sp, 0x0070           ## $t0 = FFFFFFE8
/* 00270 80B9D480 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00274 80B9D484 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00278 80B9D488 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0027C 80B9D48C 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFD0
/* 00280 80B9D490 0C0189E8 */  jal     func_800627A0              
/* 00284 80B9D494 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFDC
/* 00288 80B9D498 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0028C 80B9D49C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00290 80B9D4A0 5641FFE4 */  bnel    $s2, $at, .L80B9D434       
/* 00294 80B9D4A4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00298 80B9D4A8 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 0029C 80B9D4AC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002A0 80B9D4B0 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 002A4 80B9D4B4 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 002A8 80B9D4B8 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 002AC 80B9D4BC 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 002B0 80B9D4C0 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 002B4 80B9D4C4 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 002B8 80B9D4C8 8FB7003C */  lw      $s7, 0x003C($sp)           
/* 002BC 80B9D4CC 8FBE0040 */  lw      $s8, 0x0040($sp)           
/* 002C0 80B9D4D0 03E00008 */  jr      $ra                        
/* 002C4 80B9D4D4 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
