.late_rodata
glabel D_808A7DF4
 .word 0x44504000

.text
glabel func_808A658C
/* 0037C 808A658C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00380 808A6590 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00384 808A6594 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00388 808A6598 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 0038C 808A659C AFA00058 */  sw      $zero, 0x0058($sp)         
/* 00390 808A65A0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00394 808A65A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00398 808A65A8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0039C 808A65AC 35CF0030 */  ori     $t7, $t6, 0x0030           ## $t7 = 00000030
/* 003A0 808A65B0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 003A4 808A65B4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 003A8 808A65B8 24847860 */  addiu   $a0, $a0, 0x7860           ## $a0 = 06007860
/* 003AC 808A65BC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 003B0 808A65C0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFF8
/* 003B4 808A65C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 003B8 808A65C8 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 003BC 808A65CC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 003C0 808A65D0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 003C4 808A65D4 8FA70058 */  lw      $a3, 0x0058($sp)           
/* 003C8 808A65D8 92030168 */  lbu     $v1, 0x0168($s0)           ## 00000168
/* 003CC 808A65DC AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003D0 808A65E0 14600043 */  bne     $v1, $zero, .L808A66F0     
/* 003D4 808A65E4 00000000 */  nop
/* 003D8 808A65E8 92080169 */  lbu     $t0, 0x0169($s0)           ## 00000169
/* 003DC 808A65EC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 003E0 808A65F0 3C18808A */  lui     $t8, %hi(D_808A7D78)       ## $t8 = 808A0000
/* 003E4 808A65F4 1101003E */  beq     $t0, $at, .L808A66F0       
/* 003E8 808A65F8 00081040 */  sll     $v0, $t0,  1               
/* 003EC 808A65FC 0302C021 */  addu    $t8, $t8, $v0              
/* 003F0 808A6600 87187D78 */  lh      $t8, %lo(D_808A7D78)($t8)  
/* 003F4 808A6604 3C19808A */  lui     $t9, %hi(D_808A7D80)       ## $t9 = 808A0000
/* 003F8 808A6608 0322C821 */  addu    $t9, $t9, $v0              
/* 003FC 808A660C 44982000 */  mtc1    $t8, $f4                   ## $f4 = -0.00
/* 00400 808A6610 87397D80 */  lh      $t9, %lo(D_808A7D80)($t9)  
/* 00404 808A6614 250D0001 */  addiu   $t5, $t0, 0x0001           ## $t5 = 00000001
/* 00408 808A6618 468021A0 */  cvt.s.w $f6, $f4                   
/* 0040C 808A661C 44995000 */  mtc1    $t9, $f10                  ## $f10 = -0.00
/* 00410 808A6620 000D7300 */  sll     $t6, $t5, 12               
/* 00414 808A6624 00037A00 */  sll     $t7, $v1,  8               
/* 00418 808A6628 01CFC021 */  addu    $t8, $t6, $t7              
/* 0041C 808A662C 46805420 */  cvt.s.w $f16, $f10                 
/* 00420 808A6630 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00424 808A6634 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00428 808A6638 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0042C 808A663C 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00430 808A6640 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00434 808A6644 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 00438 808A6648 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 0043C 808A664C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00440 808A6650 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00444 808A6654 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00448 808A6658 860B00B8 */  lh      $t3, 0x00B8($s0)           ## 000000B8
/* 0044C 808A665C 24070093 */  addiu   $a3, $zero, 0x0093         ## $a3 = 00000093
/* 00450 808A6660 256CC000 */  addiu   $t4, $t3, 0xC000           ## $t4 = FFFFC000
/* 00454 808A6664 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00458 808A6668 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0045C 808A666C 03195021 */  addu    $t2, $t8, $t9              
/* 00460 808A6670 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00464 808A6674 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 00468 808A6678 54400006 */  bnel    $v0, $zero, .L808A6694     
/* 0046C 808A667C 920B0169 */  lbu     $t3, 0x0169($s0)           ## 00000169
/* 00470 808A6680 0C00B55C */  jal     Actor_Kill
              
/* 00474 808A6684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00478 808A6688 10000028 */  beq     $zero, $zero, .L808A672C   
/* 0047C 808A668C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00480 808A6690 920B0169 */  lbu     $t3, 0x0169($s0)           ## 00000169
.L808A6694:
/* 00484 808A6694 15600016 */  bne     $t3, $zero, .L808A66F0     
/* 00488 808A6698 00000000 */  nop
/* 0048C 808A669C 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00490 808A66A0 8C43011C */  lw      $v1, 0x011C($v0)           ## 0000011C
/* 00494 808A66A4 54600006 */  bnel    $v1, $zero, .L808A66C0     
/* 00498 808A66A8 8C64011C */  lw      $a0, 0x011C($v1)           ## 0000011C
/* 0049C 808A66AC 0C00B55C */  jal     Actor_Kill
              
/* 004A0 808A66B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A4 808A66B4 1000001D */  beq     $zero, $zero, .L808A672C   
/* 004A8 808A66B8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 004AC 808A66BC 8C64011C */  lw      $a0, 0x011C($v1)           ## 0000011C
.L808A66C0:
/* 004B0 808A66C0 54800008 */  bnel    $a0, $zero, .L808A66E4     
/* 004B4 808A66C4 AE040118 */  sw      $a0, 0x0118($s0)           ## 00000118
/* 004B8 808A66C8 0C00B55C */  jal     Actor_Kill
              
/* 004BC 808A66CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004C0 808A66D0 0C00B55C */  jal     Actor_Kill
              
/* 004C4 808A66D4 8E04011C */  lw      $a0, 0x011C($s0)           ## 0000011C
/* 004C8 808A66D8 10000014 */  beq     $zero, $zero, .L808A672C   
/* 004CC 808A66DC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 004D0 808A66E0 AE040118 */  sw      $a0, 0x0118($s0)           ## 00000118
.L808A66E4:
/* 004D4 808A66E4 8C4C011C */  lw      $t4, 0x011C($v0)           ## 0000011C
/* 004D8 808A66E8 8D8D011C */  lw      $t5, 0x011C($t4)           ## 0000011C
/* 004DC 808A66EC ADB0011C */  sw      $s0, 0x011C($t5)           ## 0000011C
.L808A66F0:
/* 004E0 808A66F0 3C01808A */  lui     $at, %hi(D_808A7DF4)       ## $at = 808A0000
/* 004E4 808A66F4 C4327DF4 */  lwc1    $f18, %lo(D_808A7DF4)($at) 
/* 004E8 808A66F8 260E0024 */  addiu   $t6, $s0, 0x0024           ## $t6 = 00000024
/* 004EC 808A66FC 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 004F0 808A6700 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 004F4 808A6704 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 004F8 808A6708 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 004FC 808A670C 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFF4
/* 00500 808A6710 0C00F269 */  jal     func_8003C9A4              
/* 00504 808A6714 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00508 808A6718 3C0F808A */  lui     $t7, %hi(func_808A68D0)    ## $t7 = 808A0000
/* 0050C 808A671C 25EF68D0 */  addiu   $t7, $t7, %lo(func_808A68D0) ## $t7 = 808A68D0
/* 00510 808A6720 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 00514 808A6724 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 00518 808A6728 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808A672C:
/* 0051C 808A672C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00520 808A6730 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00524 808A6734 03E00008 */  jr      $ra                        
/* 00528 808A6738 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


