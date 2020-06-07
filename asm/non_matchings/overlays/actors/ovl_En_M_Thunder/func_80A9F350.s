glabel func_80A9F350
/* 00370 80A9F350 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00374 80A9F354 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00378 80A9F358 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0037C 80A9F35C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00380 80A9F360 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 00384 80A9F364 000E7B80 */  sll     $t7, $t6, 14               
/* 00388 80A9F368 05E3001E */  bgezl   $t7, .L80A9F3E4            
/* 0038C 80A9F36C 8C49067C */  lw      $t1, 0x067C($v0)           ## 0000067C
/* 00390 80A9F370 80580842 */  lb      $t8, 0x0842($v0)           ## 00000842
/* 00394 80A9F374 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00398 80A9F378 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0039C 80A9F37C 2B010018 */  slti    $at, $t8, 0x0018           
/* 003A0 80A9F380 14200013 */  bne     $at, $zero, .L80A9F3D0     
/* 003A4 80A9F384 24041823 */  addiu   $a0, $zero, 0x1823         ## $a0 = 00001823
/* 003A8 80A9F388 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 003AC 80A9F38C 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 003B0 80A9F390 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
/* 003B4 80A9F394 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 003B8 80A9F398 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 003BC 80A9F39C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 003C0 80A9F3A0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 003C4 80A9F3A4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 003C8 80A9F3A8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 003CC 80A9F3AC 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 003D0 80A9F3B0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 003D4 80A9F3B4 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 003D8 80A9F3B8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 003DC 80A9F3BC AFA80014 */  sw      $t0, 0x0014($sp)           
/* 003E0 80A9F3C0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 003E4 80A9F3C4 24041818 */  addiu   $a0, $zero, 0x1818         ## $a0 = 00001818
/* 003E8 80A9F3C8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 003EC 80A9F3CC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A9F3D0:
/* 003F0 80A9F3D0 0C00B55C */  jal     Actor_Kill
              
/* 003F4 80A9F3D4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 003F8 80A9F3D8 10000008 */  beq     $zero, $zero, .L80A9F3FC   
/* 003FC 80A9F3DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00400 80A9F3E0 8C49067C */  lw      $t1, 0x067C($v0)           ## 0000067C
.L80A9F3E4:
/* 00404 80A9F3E4 312A1000 */  andi    $t2, $t1, 0x1000           ## $t2 = 00000000
/* 00408 80A9F3E8 55400004 */  bnel    $t2, $zero, .L80A9F3FC     
/* 0040C 80A9F3EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00410 80A9F3F0 0C00B55C */  jal     Actor_Kill
              
/* 00414 80A9F3F4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00418 80A9F3F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9F3FC:
/* 0041C 80A9F3FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00420 80A9F400 03E00008 */  jr      $ra                        
/* 00424 80A9F404 00000000 */  nop
