glabel func_809F1100
/* 00820 809F1100 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00824 809F1104 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00828 809F1108 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 0082C 809F110C AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00830 809F1110 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 00834 809F1114 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00838 809F1118 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 0083C 809F111C AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00840 809F1120 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00844 809F1124 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00848 809F1128 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0084C 809F112C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00850 809F1130 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00854 809F1134 848E0158 */  lh      $t6, 0x0158($a0)           ## 00000158
/* 00858 809F1138 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0085C 809F113C 51C00049 */  beql    $t6, $zero, .L809F1264     
/* 00860 809F1140 8648015C */  lh      $t0, 0x015C($s2)           ## 0000015C
/* 00864 809F1144 848F015A */  lh      $t7, 0x015A($a0)           ## 0000015A
/* 00868 809F1148 8C9801D8 */  lw      $t8, 0x01D8($a0)           ## 000001D8
/* 0086C 809F114C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00870 809F1150 24900004 */  addiu   $s0, $a0, 0x0004           ## $s0 = 00000004
/* 00874 809F1154 A70F0274 */  sh      $t7, 0x0274($t8)           ## 00000274
/* 00878 809F1158 8C8801D8 */  lw      $t0, 0x01D8($a0)           ## 000001D8
/* 0087C 809F115C 84990158 */  lh      $t9, 0x0158($a0)           ## 00000158
/* 00880 809F1160 24140009 */  addiu   $s4, $zero, 0x0009         ## $s4 = 00000009
/* 00884 809F1164 A5190270 */  sh      $t9, 0x0270($t0)           ## 00000270
/* 00888 809F1168 8C8901D8 */  lw      $t1, 0x01D8($a0)           ## 000001D8
/* 0088C 809F116C A1200278 */  sb      $zero, 0x0278($t1)         ## 00000278
.L809F1170:
/* 00890 809F1170 864A015A */  lh      $t2, 0x015A($s2)           ## 0000015A
/* 00894 809F1174 8E0B01D8 */  lw      $t3, 0x01D8($s0)           ## 000001DC
/* 00898 809F1178 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000005
/* 0089C 809F117C 26100010 */  addiu   $s0, $s0, 0x0010           ## $s0 = 00000014
/* 008A0 809F1180 A56A0274 */  sh      $t2, 0x0274($t3)           ## 00000274
/* 008A4 809F1184 864C0158 */  lh      $t4, 0x0158($s2)           ## 00000158
/* 008A8 809F1188 8E0D01C8 */  lw      $t5, 0x01C8($s0)           ## 000001DC
/* 008AC 809F118C A5AC0270 */  sh      $t4, 0x0270($t5)           ## 00000270
/* 008B0 809F1190 8E0E01C8 */  lw      $t6, 0x01C8($s0)           ## 000001DC
/* 008B4 809F1194 A1C00278 */  sb      $zero, 0x0278($t6)         ## 00000278
/* 008B8 809F1198 864F015A */  lh      $t7, 0x015A($s2)           ## 0000015A
/* 008BC 809F119C 8E1801CC */  lw      $t8, 0x01CC($s0)           ## 000001E0
/* 008C0 809F11A0 A70F0274 */  sh      $t7, 0x0274($t8)           ## 00000274
/* 008C4 809F11A4 86590158 */  lh      $t9, 0x0158($s2)           ## 00000158
/* 008C8 809F11A8 8E0801CC */  lw      $t0, 0x01CC($s0)           ## 000001E0
/* 008CC 809F11AC A5190270 */  sh      $t9, 0x0270($t0)           ## 00000270
/* 008D0 809F11B0 8E0901CC */  lw      $t1, 0x01CC($s0)           ## 000001E0
/* 008D4 809F11B4 A1200278 */  sb      $zero, 0x0278($t1)         ## 00000278
/* 008D8 809F11B8 864A015A */  lh      $t2, 0x015A($s2)           ## 0000015A
/* 008DC 809F11BC 8E0B01D0 */  lw      $t3, 0x01D0($s0)           ## 000001E4
/* 008E0 809F11C0 A56A0274 */  sh      $t2, 0x0274($t3)           ## 00000274
/* 008E4 809F11C4 864C0158 */  lh      $t4, 0x0158($s2)           ## 00000158
/* 008E8 809F11C8 8E0D01D0 */  lw      $t5, 0x01D0($s0)           ## 000001E4
/* 008EC 809F11CC A5AC0270 */  sh      $t4, 0x0270($t5)           ## 00000270
/* 008F0 809F11D0 8E0E01D0 */  lw      $t6, 0x01D0($s0)           ## 000001E4
/* 008F4 809F11D4 A1C00278 */  sb      $zero, 0x0278($t6)         ## 00000278
/* 008F8 809F11D8 8E1801D4 */  lw      $t8, 0x01D4($s0)           ## 000001E8
/* 008FC 809F11DC 864F015A */  lh      $t7, 0x015A($s2)           ## 0000015A
/* 00900 809F11E0 A70F0274 */  sh      $t7, 0x0274($t8)           ## 00000274
/* 00904 809F11E4 8E0801D4 */  lw      $t0, 0x01D4($s0)           ## 000001E8
/* 00908 809F11E8 86590158 */  lh      $t9, 0x0158($s2)           ## 00000158
/* 0090C 809F11EC A5190270 */  sh      $t9, 0x0270($t0)           ## 00000270
/* 00910 809F11F0 8E0901D4 */  lw      $t1, 0x01D4($s0)           ## 000001E8
/* 00914 809F11F4 1454FFDE */  bne     $v0, $s4, .L809F1170       
/* 00918 809F11F8 A1200278 */  sb      $zero, 0x0278($t1)         ## 00000278
/* 0091C 809F11FC 8E4301FC */  lw      $v1, 0x01FC($s2)           ## 000001FC
/* 00920 809F1200 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00924 809F1204 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00928 809F1208 846A023E */  lh      $t2, 0x023E($v1)           ## 0000023E
/* 0092C 809F120C 55410004 */  bnel    $t2, $at, .L809F1220       
/* 00930 809F1210 846C024A */  lh      $t4, 0x024A($v1)           ## 0000024A
/* 00934 809F1214 10000009 */  beq     $zero, $zero, .L809F123C   
/* 00938 809F1218 A46B024E */  sh      $t3, 0x024E($v1)           ## 0000024E
/* 0093C 809F121C 846C024A */  lh      $t4, 0x024A($v1)           ## 0000024A
.L809F1220:
/* 00940 809F1220 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 00944 809F1224 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00948 809F1228 51800004 */  beql    $t4, $zero, .L809F123C     
/* 0094C 809F122C A46E023E */  sh      $t6, 0x023E($v1)           ## 0000023E
/* 00950 809F1230 10000002 */  beq     $zero, $zero, .L809F123C   
/* 00954 809F1234 A46D024E */  sh      $t5, 0x024E($v1)           ## 0000024E
/* 00958 809F1238 A46E023E */  sh      $t6, 0x023E($v1)           ## 0000023E
.L809F123C:
/* 0095C 809F123C 8E4F01FC */  lw      $t7, 0x01FC($s2)           ## 000001FC
/* 00960 809F1240 3C19809F */  lui     $t9, %hi(func_809F1374)    ## $t9 = 809F0000
/* 00964 809F1244 27391374 */  addiu   $t9, $t9, %lo(func_809F1374) ## $t9 = 809F1374
/* 00968 809F1248 A5E00240 */  sh      $zero, 0x0240($t7)         ## 00000240
/* 0096C 809F124C A640015A */  sh      $zero, 0x015A($s2)         ## 0000015A
/* 00970 809F1250 8658015A */  lh      $t8, 0x015A($s2)           ## 0000015A
/* 00974 809F1254 AE59014C */  sw      $t9, 0x014C($s2)           ## 0000014C
/* 00978 809F1258 10000039 */  beq     $zero, $zero, .L809F1340   
/* 0097C 809F125C A6580158 */  sh      $t8, 0x0158($s2)           ## 00000158
/* 00980 809F1260 8648015C */  lh      $t0, 0x015C($s2)           ## 0000015C
.L809F1264:
/* 00984 809F1264 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00988 809F1268 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0098C 809F126C 15010034 */  bne     $t0, $at, .L809F1340       
/* 00990 809F1270 02408025 */  or      $s0, $s2, $zero            ## $s0 = 00000000
/* 00994 809F1274 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00998 809F1278 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 0099C 809F127C 2416000A */  addiu   $s6, $zero, 0x000A         ## $s6 = 0000000A
/* 009A0 809F1280 27B50064 */  addiu   $s5, $sp, 0x0064           ## $s5 = FFFFFFEC
/* 009A4 809F1284 24140009 */  addiu   $s4, $zero, 0x0009         ## $s4 = 00000009
.L809F1288:
/* 009A8 809F1288 8E4301FC */  lw      $v1, 0x01FC($s2)           ## 000001FC
/* 009AC 809F128C 24530001 */  addiu   $s3, $v0, 0x0001           ## $s3 = 00000001
/* 009B0 809F1290 304B0001 */  andi    $t3, $v0, 0x0001           ## $t3 = 00000000
/* 009B4 809F1294 8C6A0024 */  lw      $t2, 0x0024($v1)           ## 00000024
/* 009B8 809F1298 847100B6 */  lh      $s1, 0x00B6($v1)           ## 000000B6
/* 009BC 809F129C 44932000 */  mtc1    $s3, $f4                   ## $f4 = 0.00
/* 009C0 809F12A0 AEAA0000 */  sw      $t2, 0x0000($s5)           ## FFFFFFEC
/* 009C4 809F12A4 8C690028 */  lw      $t1, 0x0028($v1)           ## 00000028
/* 009C8 809F12A8 00118823 */  subu    $s1, $zero, $s1            
/* 009CC 809F12AC 00118C00 */  sll     $s1, $s1, 16               
/* 009D0 809F12B0 AEA90004 */  sw      $t1, 0x0004($s5)           ## FFFFFFF0
/* 009D4 809F12B4 8C6A002C */  lw      $t2, 0x002C($v1)           ## 0000002C
/* 009D8 809F12B8 00118C03 */  sra     $s1, $s1, 16               
/* 009DC 809F12BC 15600004 */  bne     $t3, $zero, .L809F12D0     
/* 009E0 809F12C0 AEAA0008 */  sw      $t2, 0x0008($s5)           ## FFFFFFF4
/* 009E4 809F12C4 2631A628 */  addiu   $s1, $s1, 0xA628           ## $s1 = FFFFA628
/* 009E8 809F12C8 00118C00 */  sll     $s1, $s1, 16               
/* 009EC 809F12CC 00118C03 */  sra     $s1, $s1, 16               
.L809F12D0:
/* 009F0 809F12D0 468021A0 */  cvt.s.w $f6, $f4                   
/* 009F4 809F12D4 8E0C01D8 */  lw      $t4, 0x01D8($s0)           ## 000001D8
/* 009F8 809F12D8 00112400 */  sll     $a0, $s1, 16               
/* 009FC 809F12DC 00042403 */  sra     $a0, $a0, 16               
/* 00A00 809F12E0 A596025A */  sh      $s6, 0x025A($t4)           ## 0000025A
/* 00A04 809F12E4 46183202 */  mul.s   $f8, $f6, $f24             
/* 00A08 809F12E8 46184500 */  add.s   $f20, $f8, $f24            
/* 00A0C 809F12EC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00A10 809F12F0 4600A586 */  mov.s   $f22, $f20                 
/* 00A14 809F12F4 46140282 */  mul.s   $f10, $f0, $f20            
/* 00A18 809F12F8 C7B00064 */  lwc1    $f16, 0x0064($sp)          
/* 00A1C 809F12FC 8E0D01D8 */  lw      $t5, 0x01D8($s0)           ## 000001D8
/* 00A20 809F1300 00112400 */  sll     $a0, $s1, 16               
/* 00A24 809F1304 00042403 */  sra     $a0, $a0, 16               
/* 00A28 809F1308 46105480 */  add.s   $f18, $f10, $f16           
/* 00A2C 809F130C E5B20288 */  swc1    $f18, 0x0288($t5)          ## 00000288
/* 00A30 809F1310 8E0E01D8 */  lw      $t6, 0x01D8($s0)           ## 000001D8
/* 00A34 809F1314 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 00A38 809F1318 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00A3C 809F131C E5C4028C */  swc1    $f4, 0x028C($t6)           ## 0000028C
/* 00A40 809F1320 46160182 */  mul.s   $f6, $f0, $f22             
/* 00A44 809F1324 C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 00A48 809F1328 8E0F01D8 */  lw      $t7, 0x01D8($s0)           ## 000001D8
/* 00A4C 809F132C 02601025 */  or      $v0, $s3, $zero            ## $v0 = 00000001
/* 00A50 809F1330 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 00000004
/* 00A54 809F1334 46083280 */  add.s   $f10, $f6, $f8             
/* 00A58 809F1338 1674FFD3 */  bne     $s3, $s4, .L809F1288       
/* 00A5C 809F133C E5EA0290 */  swc1    $f10, 0x0290($t7)          ## 00000290
.L809F1340:
/* 00A60 809F1340 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00A64 809F1344 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00A68 809F1348 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00A6C 809F134C D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00A70 809F1350 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A74 809F1354 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00A78 809F1358 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00A7C 809F135C 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00A80 809F1360 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00A84 809F1364 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00A88 809F1368 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00A8C 809F136C 03E00008 */  jr      $ra                        
/* 00A90 809F1370 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
