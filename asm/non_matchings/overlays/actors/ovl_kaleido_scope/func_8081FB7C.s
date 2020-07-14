.rdata

glabel D_8082FAD0
    .asciz "kscope->kscp_pos+pt = %d\n"
    .balign 4

.text
glabel func_8081FB7C
/* 0C35C 8081FB7C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0C360 8081FB80 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0C364 8081FB84 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0C368 8081FB88 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0C36C 8081FB8C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0C370 8081FB90 A48E01E4 */  sh      $t6, 0x01E4($a0)           ## 000001E4
/* 0C374 8081FB94 A48001EA */  sh      $zero, 0x01EA($a0)         ## 000001EA
/* 0C378 8081FB98 93AF002F */  lbu     $t7, 0x002F($sp)           
/* 0C37C 8081FB9C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0C380 8081FBA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C384 8081FBA4 15E00013 */  bne     $t7, $zero, .L8081FBF4     
/* 0C388 8081FBA8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0C38C 8081FBAC 949801E8 */  lhu     $t8, 0x01E8($a0)           ## 000001E8
/* 0C390 8081FBB0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0C394 8081FBB4 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 0C398 8081FBB8 0018C840 */  sll     $t9, $t8,  1               
/* 0C39C 8081FBBC 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 0C3A0 8081FBC0 A48801E6 */  sh      $t0, 0x01E6($a0)           ## 000001E6
/* 0C3A4 8081FBC4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0C3A8 8081FBC8 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 0C3AC 8081FBCC 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0C3B0 8081FBD0 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 0C3B4 8081FBD4 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 0C3B8 8081FBD8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0C3BC 8081FBDC 24044825 */  addiu   $a0, $zero, 0x4825         ## $a0 = 00004825
/* 0C3C0 8081FBE0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0C3C4 8081FBE4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0C3C8 8081FBE8 240A000B */  addiu   $t2, $zero, 0x000B         ## $t2 = 0000000B
/* 0C3CC 8081FBEC 1000000F */  beq     $zero, $zero, .L8081FC2C   
/* 0C3D0 8081FBF0 A60A0238 */  sh      $t2, 0x0238($s0)           ## 00000238
.L8081FBF4:
/* 0C3D4 8081FBF4 960B01E8 */  lhu     $t3, 0x01E8($s0)           ## 000001E8
/* 0C3D8 8081FBF8 3C0D8013 */  lui     $t5, %hi(D_801333E8)
/* 0C3DC 8081FBFC 25AD33E8 */  addiu   $t5, %lo(D_801333E8)
/* 0C3E0 8081FC00 000B6040 */  sll     $t4, $t3,  1               
/* 0C3E4 8081FC04 A60C01E6 */  sh      $t4, 0x01E6($s0)           ## 000001E6
/* 0C3E8 8081FC08 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0C3EC 8081FC0C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 0C3F0 8081FC10 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0C3F4 8081FC14 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0C3F8 8081FC18 24044826 */  addiu   $a0, $zero, 0x4826         ## $a0 = 00004826
/* 0C3FC 8081FC1C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0C400 8081FC20 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0C404 8081FC24 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 0C408 8081FC28 A60E0238 */  sh      $t6, 0x0238($s0)           ## 00000238
.L8081FC2C:
/* 0C40C 8081FC2C 960F01E8 */  lhu     $t7, 0x01E8($s0)           ## 000001E8
/* 0C410 8081FC30 93A3002F */  lbu     $v1, 0x002F($sp)           
/* 0C414 8081FC34 3C068083 */  lui     $a2, %hi(D_8082AB6C)       ## $a2 = 80830000
/* 0C418 8081FC38 000FC080 */  sll     $t8, $t7,  2               
/* 0C41C 8081FC3C 24C6AB6C */  addiu   $a2, $a2, %lo(D_8082AB6C)  ## $a2 = 8082AB6C
/* 0C420 8081FC40 030FC021 */  addu    $t8, $t8, $t7              
/* 0C424 8081FC44 00031080 */  sll     $v0, $v1,  2               
/* 0C428 8081FC48 00D8C821 */  addu    $t9, $a2, $t8              
/* 0C42C 8081FC4C 00431021 */  addu    $v0, $v0, $v1              
/* 0C430 8081FC50 03224021 */  addu    $t0, $t9, $v0              
/* 0C434 8081FC54 91090001 */  lbu     $t1, 0x0001($t0)           ## 00000001
/* 0C438 8081FC58 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 0C43C 8081FC5C 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 0C440 8081FC60 A0E913E3 */  sb      $t1, 0x13E3($a3)           ## 8015FA43
/* 0C444 8081FC64 960A01E8 */  lhu     $t2, 0x01E8($s0)           ## 000001E8
/* 0C448 8081FC68 3C048083 */  lui     $a0, %hi(D_8082FAD0)       ## $a0 = 80830000
/* 0C44C 8081FC6C 2484FAD0 */  addiu   $a0, $a0, %lo(D_8082FAD0)  ## $a0 = 8082FAD0
/* 0C450 8081FC70 000A5880 */  sll     $t3, $t2,  2               
/* 0C454 8081FC74 016A5821 */  addu    $t3, $t3, $t2              
/* 0C458 8081FC78 00CB6021 */  addu    $t4, $a2, $t3              
/* 0C45C 8081FC7C 01826821 */  addu    $t5, $t4, $v0              
/* 0C460 8081FC80 91AE0002 */  lbu     $t6, 0x0002($t5)           ## 00000002
/* 0C464 8081FC84 A0EE13E4 */  sb      $t6, 0x13E4($a3)           ## 8015FA44
/* 0C468 8081FC88 960F01E8 */  lhu     $t7, 0x01E8($s0)           ## 000001E8
/* 0C46C 8081FC8C 000FC080 */  sll     $t8, $t7,  2               
/* 0C470 8081FC90 030FC021 */  addu    $t8, $t8, $t7              
/* 0C474 8081FC94 00D8C821 */  addu    $t9, $a2, $t8              
/* 0C478 8081FC98 03224021 */  addu    $t0, $t9, $v0              
/* 0C47C 8081FC9C 91090003 */  lbu     $t1, 0x0003($t0)           ## 00000003
/* 0C480 8081FCA0 A0E913E5 */  sb      $t1, 0x13E5($a3)           ## 8015FA45
/* 0C484 8081FCA4 960A01E8 */  lhu     $t2, 0x01E8($s0)           ## 000001E8
/* 0C488 8081FCA8 000A5880 */  sll     $t3, $t2,  2               
/* 0C48C 8081FCAC 016A5821 */  addu    $t3, $t3, $t2              
/* 0C490 8081FCB0 00CB6021 */  addu    $t4, $a2, $t3              
/* 0C494 8081FCB4 01826821 */  addu    $t5, $t4, $v0              
/* 0C498 8081FCB8 91AE0004 */  lbu     $t6, 0x0004($t5)           ## 00000004
/* 0C49C 8081FCBC A0EE13E6 */  sb      $t6, 0x13E6($a3)           ## 8015FA46
/* 0C4A0 8081FCC0 960F01E8 */  lhu     $t7, 0x01E8($s0)           ## 000001E8
/* 0C4A4 8081FCC4 0C00084C */  jal     osSyncPrintf
              
/* 0C4A8 8081FCC8 01E32821 */  addu    $a1, $t7, $v1              
/* 0C4AC 8081FCCC 3C078016 */  lui     $a3, %hi(gSaveContext)
/* 0C4B0 8081FCD0 24E7E660 */  addiu   $a3, %lo(gSaveContext)
/* 0C4B4 8081FCD4 A4E013EA */  sh      $zero, 0x13EA($a3)         ## 8015FA4A
/* 0C4B8 8081FCD8 0C020978 */  jal     Interface_ChangeAlpha              
/* 0C4BC 8081FCDC 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 0C4C0 8081FCE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0C4C4 8081FCE4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0C4C8 8081FCE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0C4CC 8081FCEC 03E00008 */  jr      $ra                        
/* 0C4D0 8081FCF0 00000000 */  nop
