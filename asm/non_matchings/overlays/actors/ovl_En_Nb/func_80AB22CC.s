.rdata
glabel D_80AB5050
    .asciz "En_Nb_Kidnap_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.text
glabel func_80AB22CC
/* 0153C 80AB22CC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01540 80AB22D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01544 80AB22D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01548 80AB22D8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0154C 80AB22DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01550 80AB22E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01554 80AB22E4 0C2AC4BB */  jal     func_80AB12EC              
/* 01558 80AB22E8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0155C 80AB22EC 5040002A */  beql    $v0, $zero, .L80AB2398     
/* 01560 80AB22F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01564 80AB22F4 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 01568 80AB22F8 8E03028C */  lw      $v1, 0x028C($s0)           ## 0000028C
/* 0156C 80AB22FC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01570 80AB2300 50C30025 */  beql    $a2, $v1, .L80AB2398       
/* 01574 80AB2304 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01578 80AB2308 10C1000C */  beq     $a2, $at, .L80AB233C       
/* 0157C 80AB230C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01580 80AB2310 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01584 80AB2314 10C1000E */  beq     $a2, $at, .L80AB2350       
/* 01588 80AB2318 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0158C 80AB231C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01590 80AB2320 10C1000F */  beq     $a2, $at, .L80AB2360       
/* 01594 80AB2324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01598 80AB2328 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0159C 80AB232C 10C10010 */  beq     $a2, $at, .L80AB2370       
/* 015A0 80AB2330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015A4 80AB2334 10000012 */  beq     $zero, $zero, .L80AB2380   
/* 015A8 80AB2338 3C0480AB */  lui     $a0, %hi(D_80AB5050)       ## $a0 = 80AB0000
.L80AB233C:
/* 015AC 80AB233C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 015B0 80AB2340 0C2AC852 */  jal     func_80AB2148              
/* 015B4 80AB2344 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015B8 80AB2348 10000011 */  beq     $zero, $zero, .L80AB2390   
/* 015BC 80AB234C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80AB2350:
/* 015C0 80AB2350 0C2AC878 */  jal     func_80AB21E0              
/* 015C4 80AB2354 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015C8 80AB2358 1000000D */  beq     $zero, $zero, .L80AB2390   
/* 015CC 80AB235C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80AB2360:
/* 015D0 80AB2360 0C2AC895 */  jal     func_80AB2254              
/* 015D4 80AB2364 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015D8 80AB2368 10000009 */  beq     $zero, $zero, .L80AB2390   
/* 015DC 80AB236C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80AB2370:
/* 015E0 80AB2370 0C00B55C */  jal     Actor_Kill
              
/* 015E4 80AB2374 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015E8 80AB2378 10000005 */  beq     $zero, $zero, .L80AB2390   
/* 015EC 80AB237C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80AB2380:
/* 015F0 80AB2380 24845050 */  addiu   $a0, $a0, %lo(D_80AB5050)  ## $a0 = 00005050
/* 015F4 80AB2384 0C00084C */  jal     osSyncPrintf
              
/* 015F8 80AB2388 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 015FC 80AB238C 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80AB2390:
/* 01600 80AB2390 AE06028C */  sw      $a2, 0x028C($s0)           ## 0000028C
/* 01604 80AB2394 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB2398:
/* 01608 80AB2398 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0160C 80AB239C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01610 80AB23A0 03E00008 */  jr      $ra                        
/* 01614 80AB23A4 00000000 */  nop
