glabel func_809C99C4
/* 00C04 809C99C4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00C08 809C99C8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00C0C 809C99CC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00C10 809C99D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C14 809C99D4 0C016C66 */  jal     func_8005B198              
/* 00C18 809C99D8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00C1C 809C99DC 920E0002 */  lbu     $t6, 0x0002($s0)           ## 00000002
/* 00C20 809C99E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C24 809C99E4 3C05809D */  lui     $a1, %hi(func_809C9A7C)    ## $a1 = 809D0000
/* 00C28 809C99E8 104E0004 */  beq     $v0, $t6, .L809C99FC       
/* 00C2C 809C99EC 00000000 */  nop
/* 00C30 809C99F0 8E0F01A8 */  lw      $t7, 0x01A8($s0)           ## 000001A8
/* 00C34 809C99F4 51E0001D */  beql    $t7, $zero, .L809C9A6C     
/* 00C38 809C99F8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809C99FC:
/* 00C3C 809C99FC 0C272370 */  jal     func_809C8DC0              
/* 00C40 809C9A00 24A59A7C */  addiu   $a1, $a1, %lo(func_809C9A7C) ## $a1 = 809C9A7C
/* 00C44 809C9A04 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00C48 809C9A08 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00C4C 809C9A0C AE0001A8 */  sw      $zero, 0x01A8($s0)         ## 000001A8
/* 00C50 809C9A10 8E070008 */  lw      $a3, 0x0008($s0)           ## 00000008
/* 00C54 809C9A14 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00C58 809C9A18 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00C5C 809C9A1C 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 00C60 809C9A20 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00C64 809C9A24 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00C68 809C9A28 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00C6C 809C9A2C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00C70 809C9A30 2406008C */  addiu   $a2, $zero, 0x008C         ## $a2 = 0000008C
/* 00C74 809C9A34 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00C78 809C9A38 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00C7C 809C9A3C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00C80 809C9A40 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00C84 809C9A44 3C198013 */  lui     $t9, %hi(D_801333E8)
/* 00C88 809C9A48 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00C8C 809C9A4C 273933E8 */  addiu   $t9, %lo(D_801333E8)
/* 00C90 809C9A50 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00C94 809C9A54 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00C98 809C9A58 2404287B */  addiu   $a0, $zero, 0x287B         ## $a0 = 0000287B
/* 00C9C 809C9A5C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00CA0 809C9A60 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00CA4 809C9A64 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00CA8 809C9A68 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809C9A6C:
/* 00CAC 809C9A6C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00CB0 809C9A70 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00CB4 809C9A74 03E00008 */  jr      $ra                        
/* 00CB8 809C9A78 00000000 */  nop
