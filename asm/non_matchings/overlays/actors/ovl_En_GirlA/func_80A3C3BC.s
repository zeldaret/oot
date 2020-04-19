glabel func_80A3C3BC
/* 01C6C 80A3C3BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01C70 80A3C3C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01C74 80A3C3C4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01C78 80A3C3C8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01C7C 80A3C3CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C80 80A3C3D0 0C00B58B */  jal     Actor_SetScale
              
/* 01C84 80A3C3D4 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 01C88 80A3C3D8 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 01C8C 80A3C3DC 44812000 */  mtc1    $at, $f4                   ## $f4 = 24.00
/* 01C90 80A3C3E0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01C94 80A3C3E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 01C98 80A3C3E8 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 01C9C 80A3C3EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CA0 80A3C3F0 E60600C4 */  swc1    $f6, 0x00C4($s0)           ## 000000C4
/* 01CA4 80A3C3F4 0C28EFD5 */  jal     func_80A3BF54              
/* 01CA8 80A3C3F8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01CAC 80A3C3FC 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01CB0 80A3C400 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CB4 80A3C404 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01CB8 80A3C408 0320F809 */  jalr    $ra, $t9                   
/* 01CBC 80A3C40C 00000000 */  nop
/* 01CC0 80A3C410 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CC4 80A3C414 0C00B56E */  jal     Actor_SetHeight
              
/* 01CC8 80A3C418 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 01CCC 80A3C41C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 01CD0 80A3C420 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 01CD4 80A3C424 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 01CD8 80A3C428 51C1000E */  beql    $t6, $at, .L80A3C464       
/* 01CDC 80A3C42C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CE0 80A3C430 860F01B4 */  lh      $t7, 0x01B4($s0)           ## 000001B4
/* 01CE4 80A3C434 260401B8 */  addiu   $a0, $s0, 0x01B8           ## $a0 = 000001B8
/* 01CE8 80A3C438 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01CEC 80A3C43C 11E00005 */  beq     $t7, $zero, .L80A3C454     
/* 01CF0 80A3C440 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 01CF4 80A3C444 861801B8 */  lh      $t8, 0x01B8($s0)           ## 000001B8
/* 01CF8 80A3C448 270801F4 */  addiu   $t0, $t8, 0x01F4           ## $t0 = 000001F4
/* 01CFC 80A3C44C 10000004 */  beq     $zero, $zero, .L80A3C460   
/* 01D00 80A3C450 A60801B8 */  sh      $t0, 0x01B8($s0)           ## 000001B8
.L80A3C454:
/* 01D04 80A3C454 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01D08 80A3C458 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01D0C 80A3C45C AFA00010 */  sw      $zero, 0x0010($sp)         
.L80A3C460:
/* 01D10 80A3C460 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3C464:
/* 01D14 80A3C464 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01D18 80A3C468 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D1C 80A3C46C 03E00008 */  jr      $ra                        
/* 01D20 80A3C470 00000000 */  nop
