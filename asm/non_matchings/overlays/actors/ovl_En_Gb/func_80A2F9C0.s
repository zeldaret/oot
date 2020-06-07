glabel func_80A2F9C0
/* 00840 80A2F9C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00844 80A2F9C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00848 80A2F9C8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0084C 80A2F9CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00850 80A2F9D0 0C042F6F */  jal     func_8010BDBC              
/* 00854 80A2F9D4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00858 80A2F9D8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0085C 80A2F9DC 54410019 */  bnel    $v0, $at, .L80A2FA44       
/* 00860 80A2F9E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00864 80A2F9E4 0C041AF2 */  jal     func_80106BC8              
/* 00868 80A2F9E8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0086C 80A2F9EC 10400014 */  beq     $v0, $zero, .L80A2FA40     
/* 00870 80A2F9F0 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00874 80A2F9F4 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00878 80A2F9F8 94620F0E */  lhu     $v0, 0x0F0E($v1)           ## 8015F56E
/* 0087C 80A2F9FC 304E0040 */  andi    $t6, $v0, 0x0040           ## $t6 = 00000000
/* 00880 80A2FA00 15C00002 */  bne     $t6, $zero, .L80A2FA0C     
/* 00884 80A2FA04 344F0040 */  ori     $t7, $v0, 0x0040           ## $t7 = 00000040
/* 00888 80A2FA08 A46F0F0E */  sh      $t7, 0x0F0E($v1)           ## 8015F56E
.L80A2FA0C:
/* 0088C 80A2FA0C 0C28BC60 */  jal     func_80A2F180              
/* 00890 80A2FA10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00894 80A2FA14 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00898 80A2FA18 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0089C 80A2FA1C 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 008A0 80A2FA20 0C023B67 */  jal     func_8008ED9C              
/* 008A4 80A2FA24 8C851C44 */  lw      $a1, 0x1C44($a0)           ## 00001C44
/* 008A8 80A2FA28 0C021CC3 */  jal     Rupees_ChangeBy              
/* 008AC 80A2FA2C 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 008B0 80A2FA30 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 008B4 80A2FA34 3C1980A3 */  lui     $t9, %hi(func_80A2F83C)    ## $t9 = 80A30000
/* 008B8 80A2FA38 2739F83C */  addiu   $t9, $t9, %lo(func_80A2F83C) ## $t9 = 80A2F83C
/* 008BC 80A2FA3C AD190238 */  sw      $t9, 0x0238($t0)           ## 00000238
.L80A2FA40:
/* 008C0 80A2FA40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A2FA44:
/* 008C4 80A2FA44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008C8 80A2FA48 03E00008 */  jr      $ra                        
/* 008CC 80A2FA4C 00000000 */  nop
