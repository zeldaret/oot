glabel func_80B43BCC
/* 0020C 80B43BCC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00210 80B43BD0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00214 80B43BD4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00218 80B43BD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0021C 80B43BDC 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00220 80B43BE0 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 00224 80B43BE4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00228 80B43BE8 25290A60 */  addiu   $t1, $t1, 0x0A60           ## $t1 = 06000A60
/* 0022C 80B43BEC 240E0514 */  addiu   $t6, $zero, 0x0514         ## $t6 = 00000514
/* 00230 80B43BF0 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 00234 80B43BF4 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 00238 80B43BF8 2419005F */  addiu   $t9, $zero, 0x005F         ## $t9 = 0000005F
/* 0023C 80B43BFC 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00240 80B43C00 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00244 80B43C04 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00248 80B43C08 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0024C 80B43C0C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00250 80B43C10 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00254 80B43C14 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00258 80B43C18 3C064100 */  lui     $a2, 0x4100                ## $a2 = 41000000
/* 0025C 80B43C1C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00260 80B43C20 0C00A5E9 */  jal     func_800297A4              
/* 00264 80B43C24 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00268 80B43C28 0C00B55C */  jal     Actor_Kill
              
/* 0026C 80B43C2C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00270 80B43C30 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00274 80B43C34 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00278 80B43C38 03E00008 */  jr      $ra                        
/* 0027C 80B43C3C 00000000 */  nop


