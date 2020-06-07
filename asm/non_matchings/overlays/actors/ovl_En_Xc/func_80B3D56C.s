.late_rodata
glabel D_80B42210
    .float 0.01

glabel D_80B42214
    .float 1.2

glabel D_80B42218
    .float 0.01

glabel D_80B4221C
    .float 1.2

.text
glabel func_80B3D56C
/* 0138C 80B3D56C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01390 80B3D570 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01394 80B3D574 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 01398 80B3D578 44811000 */  mtc1    $at, $f2                   ## $f2 = 9.00
/* 0139C 80B3D57C C4800268 */  lwc1    $f0, 0x0268($a0)           ## 00000268
/* 013A0 80B3D580 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 013A4 80B3D584 4602003C */  c.lt.s  $f0, $f2                   
/* 013A8 80B3D588 00000000 */  nop
/* 013AC 80B3D58C 45020005 */  bc1fl   .L80B3D5A4                 
/* 013B0 80B3D590 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 013B4 80B3D594 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 013B8 80B3D598 10000024 */  beq     $zero, $zero, .L80B3D62C   
/* 013BC 80B3D59C E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 013C0 80B3D5A0 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
.L80B3D5A4:
/* 013C4 80B3D5A4 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 013C8 80B3D5A8 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 013CC 80B3D5AC 460C003C */  c.lt.s  $f0, $f12                  
/* 013D0 80B3D5B0 00000000 */  nop
/* 013D4 80B3D5B4 45000011 */  bc1f    .L80B3D5FC                 
/* 013D8 80B3D5B8 00000000 */  nop
/* 013DC 80B3D5BC 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 013E0 80B3D5C0 3C0180B4 */  lui     $at, %hi(D_80B42210)       ## $at = 80B40000
/* 013E4 80B3D5C4 C42A2210 */  lwc1    $f10, %lo(D_80B42210)($at) 
/* 013E8 80B3D5C8 85CF1458 */  lh      $t7, 0x1458($t6)           ## 80161458
/* 013EC 80B3D5CC 3C0180B4 */  lui     $at, %hi(D_80B42214)       ## $at = 80B40000
/* 013F0 80B3D5D0 C4322214 */  lwc1    $f18, %lo(D_80B42214)($at) 
/* 013F4 80B3D5D4 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 013F8 80B3D5D8 00000000 */  nop
/* 013FC 80B3D5DC 46803220 */  cvt.s.w $f8, $f6                   
/* 01400 80B3D5E0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01404 80B3D5E4 46020201 */  sub.s   $f8, $f0, $f2              
/* 01408 80B3D5E8 46128100 */  add.s   $f4, $f16, $f18            
/* 0140C 80B3D5EC 460C2183 */  div.s   $f6, $f4, $f12             
/* 01410 80B3D5F0 46083282 */  mul.s   $f10, $f6, $f8             
/* 01414 80B3D5F4 1000000D */  beq     $zero, $zero, .L80B3D62C   
/* 01418 80B3D5F8 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
.L80B3D5FC:
/* 0141C 80B3D5FC 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 01420 80B3D600 3C0180B4 */  lui     $at, %hi(D_80B42218)       ## $at = 80B40000
/* 01424 80B3D604 C4242218 */  lwc1    $f4, %lo(D_80B42218)($at)  
/* 01428 80B3D608 87191458 */  lh      $t9, 0x1458($t8)           ## 80161458
/* 0142C 80B3D60C 3C0180B4 */  lui     $at, %hi(D_80B4221C)       ## $at = 80B40000
/* 01430 80B3D610 C428221C */  lwc1    $f8, %lo(D_80B4221C)($at)  
/* 01434 80B3D614 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01438 80B3D618 00000000 */  nop
/* 0143C 80B3D61C 468084A0 */  cvt.s.w $f18, $f16                 
/* 01440 80B3D620 46049182 */  mul.s   $f6, $f18, $f4             
/* 01444 80B3D624 46083280 */  add.s   $f10, $f6, $f8             
/* 01448 80B3D628 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
.L80B3D62C:
/* 0144C 80B3D62C 0C00B638 */  jal     Actor_MoveForward
              
/* 01450 80B3D630 00000000 */  nop
/* 01454 80B3D634 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01458 80B3D638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0145C 80B3D63C 03E00008 */  jr      $ra                        
/* 01460 80B3D640 00000000 */  nop
