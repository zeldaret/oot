.late_rodata
glabel D_80A6692C
    .float 0.2

.text
glabel func_80A61778
/* 06488 80A61778 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0648C 80A6177C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 06490 80A61780 8C8E0210 */  lw      $t6, 0x0210($a0)           ## 00000210
/* 06494 80A61784 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 06498 80A61788 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0649C 80A6178C 55C10007 */  bnel    $t6, $at, .L80A617AC       
/* 064A0 80A61790 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 064A4 80A61794 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 064A8 80A61798 0C296E72 */  jal     func_80A5B9C8              
/* 064AC 80A6179C AFA70028 */  sw      $a3, 0x0028($sp)           
/* 064B0 80A617A0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 064B4 80A617A4 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 064B8 80A617A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A617AC:
/* 064BC 80A617AC 00A14021 */  addu    $t0, $a1, $at              
/* 064C0 80A617B0 950F072E */  lhu     $t7, 0x072E($t0)           ## 0000072E
/* 064C4 80A617B4 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 064C8 80A617B8 55E00005 */  bnel    $t7, $zero, .L80A617D0     
/* 064CC 80A617BC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 064D0 80A617C0 8CF803A8 */  lw      $t8, 0x03A8($a3)           ## 000003A8
/* 064D4 80A617C4 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 064D8 80A617C8 ACF903A8 */  sw      $t9, 0x03A8($a3)           ## 000003A8
/* 064DC 80A617CC AFA5002C */  sw      $a1, 0x002C($sp)           
.L80A617D0:
/* 064E0 80A617D0 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 064E4 80A617D4 0C03D696 */  jal     func_800F5A58              
/* 064E8 80A617D8 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 064EC 80A617DC 3C0680A6 */  lui     $a2, %hi(D_80A66730)       ## $a2 = 80A60000
/* 064F0 80A617E0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 064F4 80A617E4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 064F8 80A617E8 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 064FC 80A617EC 0C298487 */  jal     func_80A6121C              
/* 06500 80A617F0 24C66730 */  addiu   $a2, $a2, %lo(D_80A66730)  ## $a2 = 80A66730
/* 06504 80A617F4 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 06508 80A617F8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0650C 80A617FC 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 06510 80A61800 8CE303A4 */  lw      $v1, 0x03A4($a3)           ## 000003A4
/* 06514 80A61804 8FAB0020 */  lw      $t3, 0x0020($sp)           
/* 06518 80A61808 30690001 */  andi    $t1, $v1, 0x0001           ## $t1 = 00000000
/* 0651C 80A6180C 55200005 */  bnel    $t1, $zero, .L80A61824     
/* 06520 80A61810 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06524 80A61814 8CEA03A8 */  lw      $t2, 0x03A8($a3)           ## 000003A8
/* 06528 80A61818 2941002E */  slti    $at, $t2, 0x002E           
/* 0652C 80A6181C 14200015 */  bne     $at, $zero, .L80A61874     
/* 06530 80A61820 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A61824:
/* 06534 80A61824 11610013 */  beq     $t3, $at, .L80A61874       
/* 06538 80A61828 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 0653C 80A6182C 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 06540 80A61830 948C1404 */  lhu     $t4, 0x1404($a0)           ## 8015FA64
/* 06544 80A61834 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 06548 80A61838 240D03B0 */  addiu   $t5, $zero, 0x03B0         ## $t5 = 000003B0
/* 0654C 80A6183C 1181000D */  beq     $t4, $at, .L80A61874       
/* 06550 80A61840 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 06554 80A61844 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06558 80A61848 AC800008 */  sw      $zero, 0x0008($a0)         ## 8015E668
/* 0655C 80A6184C 00250821 */  addu    $at, $at, $a1              
/* 06560 80A61850 A42D1E1A */  sh      $t5, 0x1E1A($at)           ## 00011E1A
/* 06564 80A61854 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06568 80A61858 00250821 */  addu    $at, $at, $a1              
/* 0656C 80A6185C A02E1E15 */  sb      $t6, 0x1E15($at)           ## 00011E15
/* 06570 80A61860 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06574 80A61864 00250821 */  addu    $at, $at, $a1              
/* 06578 80A61868 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 0657C 80A6186C A02F1E5E */  sb      $t7, 0x1E5E($at)           ## 00011E5E
/* 06580 80A61870 8CE303A4 */  lw      $v1, 0x03A4($a3)           ## 000003A4
.L80A61874:
/* 06584 80A61874 9502072E */  lhu     $v0, 0x072E($t0)           ## 0000072E
/* 06588 80A61878 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 0658C 80A6187C 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 06590 80A61880 10400018 */  beq     $v0, $zero, .L80A618E4     
/* 06594 80A61884 30780002 */  andi    $t8, $v1, 0x0002           ## $t8 = 00000000
/* 06598 80A61888 17000016 */  bne     $t8, $zero, .L80A618E4     
/* 0659C 80A6188C 00000000 */  nop
/* 065A0 80A61890 94990F2A */  lhu     $t9, 0x0F2A($a0)           ## 8015F58A
/* 065A4 80A61894 33290001 */  andi    $t1, $t9, 0x0001           ## $t1 = 00000000
/* 065A8 80A61898 5120000B */  beql    $t1, $zero, .L80A618C8     
/* 065AC 80A6189C 948C1406 */  lhu     $t4, 0x1406($a0)           ## 8015FA66
/* 065B0 80A618A0 948A1406 */  lhu     $t2, 0x1406($a0)           ## 8015FA66
/* 065B4 80A618A4 346B0004 */  ori     $t3, $v1, 0x0004           ## $t3 = 00000004
/* 065B8 80A618A8 294105DC */  slti    $at, $t2, 0x05DC           
/* 065BC 80A618AC 1420000D */  bne     $at, $zero, .L80A618E4     
/* 065C0 80A618B0 00000000 */  nop
/* 065C4 80A618B4 ACEB03A4 */  sw      $t3, 0x03A4($a3)           ## 000003A4
/* 065C8 80A618B8 9502072E */  lhu     $v0, 0x072E($t0)           ## 0000072E
/* 065CC 80A618BC 10000009 */  beq     $zero, $zero, .L80A618E4   
/* 065D0 80A618C0 01601825 */  or      $v1, $t3, $zero            ## $v1 = 00000004
/* 065D4 80A618C4 948C1406 */  lhu     $t4, 0x1406($a0)           ## 8015FA66
.L80A618C8:
/* 065D8 80A618C8 346D0004 */  ori     $t5, $v1, 0x0004           ## $t5 = 00000004
/* 065DC 80A618CC 298103E8 */  slti    $at, $t4, 0x03E8           
/* 065E0 80A618D0 14200004 */  bne     $at, $zero, .L80A618E4     
/* 065E4 80A618D4 00000000 */  nop
/* 065E8 80A618D8 ACED03A4 */  sw      $t5, 0x03A4($a3)           ## 000003A4
/* 065EC 80A618DC 9502072E */  lhu     $v0, 0x072E($t0)           ## 0000072E
/* 065F0 80A618E0 01A01825 */  or      $v1, $t5, $zero            ## $v1 = 00000004
.L80A618E4:
/* 065F4 80A618E4 10400002 */  beq     $v0, $zero, .L80A618F0     
/* 065F8 80A618E8 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 065FC 80A618EC 11C00009 */  beq     $t6, $zero, .L80A61914     
.L80A618F0:
/* 06600 80A618F0 306F0004 */  andi    $t7, $v1, 0x0004           ## $t7 = 00000004
/* 06604 80A618F4 11E00007 */  beq     $t7, $zero, .L80A61914     
/* 06608 80A618F8 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 0660C 80A618FC 0061C024 */  and     $t8, $v1, $at              
/* 06610 80A61900 ACF803A4 */  sw      $t8, 0x03A4($a3)           ## 000003A4
/* 06614 80A61904 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 06618 80A61908 0C03E803 */  jal     Audio_SetBGM
              
/* 0661C 80A6190C 24040041 */  addiu   $a0, $zero, 0x0041         ## $a0 = 00000041
/* 06620 80A61910 8FA70028 */  lw      $a3, 0x0028($sp)           
.L80A61914:
/* 06624 80A61914 8CF903A0 */  lw      $t9, 0x03A0($a3)           ## 000003A0
/* 06628 80A61918 5720000A */  bnel    $t9, $zero, .L80A61944     
/* 0662C 80A6191C 8CE20210 */  lw      $v0, 0x0210($a3)           ## 00000210
/* 06630 80A61920 8CE90210 */  lw      $t1, 0x0210($a3)           ## 00000210
/* 06634 80A61924 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 06638 80A61928 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0663C 80A6192C 11200004 */  beq     $t1, $zero, .L80A61940     
/* 06640 80A61930 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 06644 80A61934 0C298510 */  jal     func_80A61440              
/* 06648 80A61938 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 0664C 80A6193C 8FA70028 */  lw      $a3, 0x0028($sp)           
.L80A61940:
/* 06650 80A61940 8CE20210 */  lw      $v0, 0x0210($a3)           ## 00000210
.L80A61944:
/* 06654 80A61944 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 06658 80A61948 24E401AC */  addiu   $a0, $a3, 0x01AC           ## $a0 = 000001AC
/* 0665C 80A6194C 14410006 */  bne     $v0, $at, .L80A61968       
/* 06660 80A61950 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 06664 80A61954 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 06668 80A61958 C4E60068 */  lwc1    $f6, 0x0068($a3)           ## 00000068
/* 0666C 80A6195C 46083002 */  mul.s   $f0, $f6, $f8              
/* 06670 80A61960 10000015 */  beq     $zero, $zero, .L80A619B8   
/* 06674 80A61964 E4E001C8 */  swc1    $f0, 0x01C8($a3)           ## 000001C8
.L80A61968:
/* 06678 80A61968 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0667C 80A6196C 14410006 */  bne     $v0, $at, .L80A61988       
/* 06680 80A61970 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 06684 80A61974 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.25
/* 06688 80A61978 C4EA0068 */  lwc1    $f10, 0x0068($a3)          ## 00000068
/* 0668C 80A6197C 46105002 */  mul.s   $f0, $f10, $f16            
/* 06690 80A61980 1000000D */  beq     $zero, $zero, .L80A619B8   
/* 06694 80A61984 E4E001C8 */  swc1    $f0, 0x01C8($a3)           ## 000001C8
.L80A61988:
/* 06698 80A61988 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0669C 80A6198C 14410006 */  bne     $v0, $at, .L80A619A8       
/* 066A0 80A61990 3C0180A6 */  lui     $at, %hi(D_80A6692C)       ## $at = 80A60000
/* 066A4 80A61994 C424692C */  lwc1    $f4, %lo(D_80A6692C)($at)  
/* 066A8 80A61998 C4F20068 */  lwc1    $f18, 0x0068($a3)          ## 00000068
/* 066AC 80A6199C 46049002 */  mul.s   $f0, $f18, $f4             
/* 066B0 80A619A0 10000005 */  beq     $zero, $zero, .L80A619B8   
/* 066B4 80A619A4 E4E001C8 */  swc1    $f0, 0x01C8($a3)           ## 000001C8
.L80A619A8:
/* 066B8 80A619A8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 066BC 80A619AC 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 066C0 80A619B0 00000000 */  nop
/* 066C4 80A619B4 E4E001C8 */  swc1    $f0, 0x01C8($a3)           ## 000001C8
.L80A619B8:
/* 066C8 80A619B8 0C02927F */  jal     SkelAnime_Update
              
/* 066CC 80A619BC AFA70028 */  sw      $a3, 0x0028($sp)           
/* 066D0 80A619C0 1440000A */  bne     $v0, $zero, .L80A619EC     
/* 066D4 80A619C4 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 066D8 80A619C8 8CEA0210 */  lw      $t2, 0x0210($a3)           ## 00000210
/* 066DC 80A619CC 5540000A */  bnel    $t2, $zero, .L80A619F8     
/* 066E0 80A619D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 066E4 80A619D4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 066E8 80A619D8 C4E80068 */  lwc1    $f8, 0x0068($a3)           ## 00000068
/* 066EC 80A619DC 46083032 */  c.eq.s  $f6, $f8                   
/* 066F0 80A619E0 00000000 */  nop
/* 066F4 80A619E4 45030004 */  bc1tl   .L80A619F8                 
/* 066F8 80A619E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A619EC:
/* 066FC 80A619EC 0C298510 */  jal     func_80A61440              
/* 06700 80A619F0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 06704 80A619F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A619F8:
/* 06708 80A619F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0670C 80A619FC 03E00008 */  jr      $ra                        
/* 06710 80A61A00 00000000 */  nop
