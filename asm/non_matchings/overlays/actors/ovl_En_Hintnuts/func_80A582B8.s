glabel func_80A582B8
/* 010B8 80A582B8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 010BC 80A582BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010C0 80A582C0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 010C4 80A582C4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 010C8 80A582C8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010CC 80A582CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010D0 80A582D0 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 010D4 80A582D4 240E0100 */  addiu   $t6, $zero, 0x0100         ## $t6 = 00000100
/* 010D8 80A582D8 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 010DC 80A582DC 8465008A */  lh      $a1, 0x008A($v1)           ## 0000008A
/* 010E0 80A582E0 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 010E4 80A582E4 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 010E8 80A582E8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 010EC 80A582EC 246400B6 */  addiu   $a0, $v1, 0x00B6           ## $a0 = 000000B6
/* 010F0 80A582F0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 010F4 80A582F4 0C042F6F */  jal     func_8010BDBC              
/* 010F8 80A582F8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 010FC 80A582FC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01100 80A58300 14410003 */  bne     $v0, $at, .L80A58310       
/* 01104 80A58304 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01108 80A58308 0C295DE4 */  jal     func_80A57790              
/* 0110C 80A5830C 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80A58310:
/* 01110 80A58310 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01114 80A58314 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01118 80A58318 03E00008 */  jr      $ra                        
/* 0111C 80A5831C 00000000 */  nop


