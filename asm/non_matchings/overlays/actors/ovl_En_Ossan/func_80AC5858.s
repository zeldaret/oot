.rdata
glabel D_80AC9244
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC9264
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC5858
/* 02BB8 80AC5858 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BBC 80AC585C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BC0 80AC5860 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BC4 80AC5864 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02BC8 80AC5868 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02BCC 80AC586C 0C2B1924 */  jal     func_80AC6490              
/* 02BD0 80AC5870 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BD4 80AC5874 14400009 */  bne     $v0, $zero, .L80AC589C     
/* 02BD8 80AC5878 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02BDC 80AC587C 3C0480AD */  lui     $a0, %hi(D_80AC9244)       ## $a0 = 80AD0000
/* 02BE0 80AC5880 3C0580AD */  lui     $a1, %hi(D_80AC9264)       ## $a1 = 80AD0000
/* 02BE4 80AC5884 24A59264 */  addiu   $a1, $a1, %lo(D_80AC9264)  ## $a1 = 80AC9264
/* 02BE8 80AC5888 24849244 */  addiu   $a0, $a0, %lo(D_80AC9244)  ## $a0 = 80AC9244
/* 02BEC 80AC588C 0C00084C */  jal     osSyncPrintf
              
/* 02BF0 80AC5890 24060AD3 */  addiu   $a2, $zero, 0x0AD3         ## $a2 = 00000AD3
/* 02BF4 80AC5894 10000017 */  beq     $zero, $zero, .L80AC58F4   
/* 02BF8 80AC5898 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC589C:
/* 02BFC 80AC589C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02C00 80AC58A0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02C04 80AC58A4 0C042F6F */  jal     func_8010BDBC              
/* 02C08 80AC58A8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 02C0C 80AC58AC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02C10 80AC58B0 1441000F */  bne     $v0, $at, .L80AC58F0       
/* 02C14 80AC58B4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02C18 80AC58B8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02C1C 80AC58BC 0C041AF2 */  jal     func_80106BC8              
/* 02C20 80AC58C0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02C24 80AC58C4 1040000A */  beq     $v0, $zero, .L80AC58F0     
/* 02C28 80AC58C8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02C2C 80AC58CC 90CF0252 */  lbu     $t7, 0x0252($a2)           ## 00000252
/* 02C30 80AC58D0 84CE01FE */  lh      $t6, 0x01FE($a2)           ## 000001FE
/* 02C34 80AC58D4 000FC080 */  sll     $t8, $t7,  2               
/* 02C38 80AC58D8 00D8C821 */  addu    $t9, $a2, $t8              
/* 02C3C 80AC58DC A4CE01FC */  sh      $t6, 0x01FC($a2)           ## 000001FC
/* 02C40 80AC58E0 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 02C44 80AC58E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02C48 80AC58E8 0C042DC8 */  jal     func_8010B720              
/* 02C4C 80AC58EC 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
.L80AC58F0:
/* 02C50 80AC58F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC58F4:
/* 02C54 80AC58F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C58 80AC58F8 03E00008 */  jr      $ra                        
/* 02C5C 80AC58FC 00000000 */  nop
