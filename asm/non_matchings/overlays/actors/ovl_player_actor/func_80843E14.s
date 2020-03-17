glabel func_80843E14
/* 11C04 80843E14 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 11C08 80843E18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 11C0C 80843E1C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 11C10 80843E20 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 11C14 80843E24 0C20C9A6 */  jal     func_80832698              
/* 11C18 80843E28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 11C1C 80843E2C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 11C20 80843E30 8DC403AC */  lw      $a0, 0x03AC($t6)           ## 000003AC
/* 11C24 80843E34 50800008 */  beql    $a0, $zero, .L80843E58     
/* 11C28 80843E38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 11C2C 80843E3C 848F0000 */  lh      $t7, 0x0000($a0)           ## 00000000
/* 11C30 80843E40 240100A1 */  addiu   $at, $zero, 0x00A1         ## $at = 000000A1
/* 11C34 80843E44 55E10004 */  bnel    $t7, $at, .L80843E58       
/* 11C38 80843E48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 11C3C 80843E4C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 11C40 80843E50 24056862 */  addiu   $a1, $zero, 0x6862         ## $a1 = 00006862
/* 11C44 80843E54 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80843E58:
/* 11C48 80843E58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 11C4C 80843E5C 03E00008 */  jr      $ra                        
/* 11C50 80843E60 00000000 */  nop


