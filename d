[39m0:    addiu   sp,sp,-0x28[0m                         [39m  [39m0:    addiu   sp,sp,-0x28[0m                       
[39m4:    sw      a1,0x2c(sp)[0m                         [39m  [39m4:    sw      a1,0x2c(sp)[0m                       
[39m8:    sw      ra,0x1c(sp)[0m                         [39m  [39m8:    sw      ra,0x1c(sp)[0m                       
[39mc:    sw      s0,0x18(sp)[0m                         [39m  [39mc:    sw      s0,0x18(sp)[0m                       
[39m10:    lui     a1,%hi(D_80B43F5C)[0m                 [39m  [39m10:    lui     a1,%hi(D_80B43F5C)[0m               
[39m14:    move    s0,a0   [0m                           [39m  [39m14:    move    s0,a0   [0m                         
[39m18:    jal     Actor_ProcessInitChain[0m             [39m  [39m18:    jal     Actor_ProcessInitChain[0m           
[39m1c:    addiu   a1,a1,%lo(D_80B43F5C)[0m              [39m  [39m1c:    addiu   a1,a1,%lo(D_80B43F5C)[0m            
[39m20:    lui     a2,%hi(ActorShadow_DrawFunc_Circle)[0m[39m  [39m20:    lui     a2,%hi(ActorShadow_DrawFunc_Circle)[0m
[39m24:    lui     a3,0x3ecc[0m                          [39m  [39m24:    lui     a3,0x3ecc[0m                        
[39m28:    ori     a3,a3,0xcccd[0m                       [39m  [39m28:    ori     a3,a3,0xcccd[0m                     
[39m2c:    addiu   a2,a2,%lo(ActorShadow_DrawFunc_Circle)[0m[39m  [39m2c:    addiu   a2,a2,%lo(ActorShadow_DrawFunc_Circle)[0m
[39m30:    addiu   a0,s0,0xb4[0m                         [39m  [39m30:    addiu   a0,s0,0xb4[0m                       
[39m34:    jal     ActorShape_Init[0m                    [39m  [39m34:    jal     ActorShape_Init[0m                  
[39m38:    li      a1,0    [0m                           [39m  [39m38:    li      a1,0    [0m                         
[39m3c:    addiu   a1,s0,0x154[0m                        [39m  [39m3c:    addiu   a1,s0,0x154[0m                      
[39m40:    sw      a1,0x20(sp)[0m                        [39m  [39m40:    sw      a1,0x20(sp)[0m                      
[39m44:    jal     Collider_InitCylinder[0m              [39m  [39m44:    jal     Collider_InitCylinder[0m            
[39m48:    lw      a0,0x2c(sp)[0m                        [39m  [39m48:    lw      a0,0x2c(sp)[0m                      
[39m4c:    lui     a3,%hi(D_80B43F30)[0m                 [39m  [39m4c:    lui     a3,%hi(D_80B43F30)[0m               
[39m50:    lw      a1,0x20(sp)[0m                        [39m  [39m50:    lw      a1,0x20(sp)[0m                      
[39m54:    addiu   a3,a3,%lo(D_80B43F30)[0m              [39m  [39m54:    addiu   a3,a3,%lo(D_80B43F30)[0m            
[39m58:    lw      a0,0x2c(sp)[0m                        [39m  [39m58:    lw      a0,0x2c(sp)[0m                      
[39m5c:    jal     Collider_SetCylinder[0m               [39m  [39m5c:    jal     Collider_SetCylinder[0m             
[39m60:    move    a2,s0   [0m                           [39m  [39m60:    move    a2,s0   [0m                         
[39m64:    lh      t6,0x1c(s0)[0m                        [39m  [39m64:    lh      t6,0x1c(s0)[0m                      
[33m68:    lui     [35mt1[39m,%hi(func_80B43A94)[0m              [33mr [33m68:    lui     [35mt8[39m,%hi(func_80B43A94)[0m            
[33m6c:    addiu   [35mt1[39m,[35mt1[39m,%lo(func_80B43A94)[0m           [33mr [33m6c:    addiu   [35mt8[39m,[35mt8[39m,%lo(func_80B43A94)[0m         
[39m70:    addiu   t7,t6,1 [0m                           [39m  [39m70:    addiu   t7,t6,1 [0m                         
[39m74:    sh      t7,0x1c(s0)[0m                        [39m  [39m74:    sh      t7,0x1c(s0)[0m                      
[94m78:    lbu     t8,0x1d(s0)[0m                        [94m| [94m78:    lh      t9,0x1c(s0)[0m                      
[39m7c:    sb      zero,0x152(s0)[0m                     [39m  [39m7c:    sb      zero,0x152(s0)[0m                   
[33m80:    sw      [35mt1[39m,0x14c([36ms0[39m)[0m                       [33mr [33m80:    sw      [35mt8[39m,0x14c([36ms0[39m)[0m                     
[33m84:    sll     [32mt9[39m,[31mt8[39m,0x2[0m                          [33mr [33m84:    sll     [32mt0[39m,[31mt9[39m,0x2[0m                        
[33m88:    addu    [32mt9[39m,[32mt9[39m,[31mt8[39m[0m                           [33mr [33m88:    addu    [32mt0[39m,[32mt0[39m,[31mt9[39m[0m                         
[33m8c:    sll     [32mt9[39m,[32mt9[39m,0x1[0m                          [33mr [33m8c:    sll     [32mt0[39m,[32mt0[39m,0x1[0m                        
[33m90:    addiu   [93mt0[39m,[32mt9[39m,0x14[0m                         [33mr [33m90:    addiu   [93mt1[39m,[32mt0[39m,0x14[0m                       
[33m94:    sh      [93mt0[39m,0x150([36ms0[39m)[0m                       [33mr [33m94:    sh      [93mt1[39m,0x150([36ms0[39m)[0m                     
[39m98:    lw      ra,0x1c(sp)[0m                        [39m  [39m98:    lw      ra,0x1c(sp)[0m                      
[39m9c:    lw      s0,0x18(sp)[0m                        [39m  [39m9c:    lw      s0,0x18(sp)[0m                      
[39ma0:    addiu   sp,sp,0x28[0m                         [39m  [39ma0:    addiu   sp,sp,0x28[0m                       
[39ma4:    jr      ra      [0m                           [39m  [39ma4:    jr      ra      [0m                         
[39ma8:    nop     [0m                                   [39m  [39ma8:    nop     [0m                                 
[39mac:    addiu   sp,sp,-0x18[0m                        [39m  [39mac:    addiu   sp,sp,-0x18[0m                      
[39mb0:    move    a2,a0   [0m                           [39m  [39mb0:    move    a2,a0   [0m                         
[39mb4:    sw      ra,0x14(sp)[0m                        [39m  [39mb4:    sw      ra,0x14(sp)[0m                      
[39mb8:    move    a0,a1   [0m                           [39m  [39mb8:    move    a0,a1   [0m                         
[39mbc:    jal     Collider_DestroyCylinder[0m           [39m  [39mbc:    jal     Collider_DestroyCylinder[0m         
[39mc0:    addiu   a1,a2,0x154[0m                        [39m  [39mc0:    addiu   a1,a2,0x154[0m                      
[39mc4:    lw      ra,0x14(sp)[0m                        [39m  [39mc4:    lw      ra,0x14(sp)[0m                      
[39mc8:    addiu   sp,sp,0x18[0m                         [39m  [39mc8:    addiu   sp,sp,0x18[0m                       
[39mcc:    jr      ra      [0m                           [39m  [39mcc:    jr      ra      [0m                         
[39md0:    nop     [0m                                   [39m  [39md0:    nop     [0m                                 
[39md4:    sw      a1,4(sp)[0m                           [39m  [39md4:    sw      a1,4(sp)[0m                         
[39md8:    lh      v0,0x150(a0)[0m                       [39m  [39md8:    lh      v0,0x150(a0)[0m                     
[39mdc:    lui     t9,%hi(func_80B43AD4)[0m              [39m  [39mdc:    lui     t9,%hi(func_80B43AD4)[0m            
[39me0:    beqz    v0,f0   [0m [35m~>[39m                        [39m  [39me0:    beqz    v0,f0   [0m [35m~>[39m                      
[39me4:    addiu   t6,v0,-1[0m                           [39m  [39me4:    addiu   t6,v0,-1[0m                         
[39me8:    sh      t6,0x150(a0)[0m                       [39m  [39me8:    sh      t6,0x150(a0)[0m                     
[39mec:    lh      v0,0x150(a0)[0m                       [39m  [39mec:    lh      v0,0x150(a0)[0m                     
[39mf0: [35m~>[39m[39m bnez    v0,10c  [0m [36m~>[39m                        [39m  [39mf0: [35m~>[39m[39m bnez    v0,10c  [0m [36m~>[39m                      
[39mf4:    nop     [0m                                   [39m  [39mf4:    nop     [0m                                 
[39mf8:    lw      t7,4(a0)[0m                           [39m  [39mf8:    lw      t7,4(a0)[0m                         
[39mfc:    addiu   t9,t9,%lo(func_80B43AD4)[0m           [39m  [39mfc:    addiu   t9,t9,%lo(func_80B43AD4)[0m         
[39m100:    sw      t9,0x14c(a0)[0m                      [39m  [39m100:    sw      t9,0x14c(a0)[0m                    
[39m104:    ori     t8,t7,0x1005[0m                      [39m  [39m104:    ori     t8,t7,0x1005[0m                    
[39m108:    sw      t8,4(a0)[0m                          [39m  [39m108:    sw      t8,4(a0)[0m                        
[39m10c: [36m~>[39m[39m jr      ra      [0m                          [39m  [39m10c: [36m~>[39m[39m jr      ra      [0m                        
[39m110:    nop     [0m                                  [39m  [39m110:    nop     [0m                                
[39m114:    addiu   sp,sp,-0x18[0m                       [39m  [39m114:    addiu   sp,sp,-0x18[0m                     
[39m118:    sw      ra,0x14(sp)[0m                       [39m  [39m118:    sw      ra,0x14(sp)[0m                     
[39m11c:    sw      a1,0x1c(sp)[0m                       [39m  [39m11c:    sw      a1,0x1c(sp)[0m                     
[39m120:    lh      t6,0x150(a0)[0m                      [39m  [39m120:    lh      t6,0x150(a0)[0m                    
[39m124:    lh      t8,0xb6(a0)[0m                       [39m  [39m124:    lh      t8,0xb6(a0)[0m                     
[39m128:    lui     t1,%hi(func_80B43B6C)[0m             [39m  [39m128:    lui     t1,%hi(func_80B43B6C)[0m           
[39m12c:    addiu   t7,t6,0xa0[0m                        [39m  [39m12c:    addiu   t7,t6,0xa0[0m                      
[39m130:    sh      t7,0x150(a0)[0m                      [39m  [39m130:    sh      t7,0x150(a0)[0m                    
[39m134:    lh      v0,0x150(a0)[0m                      [39m  [39m134:    lh      v0,0x150(a0)[0m                    
[39m138:    move    a3,a0   [0m                          [39m  [39m138:    move    a3,a0   [0m                        
[39m13c:    addiu   t1,t1,%lo(func_80B43B6C)[0m          [39m  [39m13c:    addiu   t1,t1,%lo(func_80B43B6C)[0m        
[39m140:    addu    t9,t8,v0[0m                          [39m  [39m140:    addu    t9,t8,v0[0m                        
[39m144:    slti    at,v0,0x2000[0m                      [39m  [39m144:    slti    at,v0,0x2000[0m                    
[39m148:    bnez    at,168  [0m [32m~>[39m                       [39m  [39m148:    bnez    at,168  [0m [32m~>[39m                     
[39m14c:    sh      t9,0xb6(a0)[0m                       [39m  [39m14c:    sh      t9,0xb6(a0)[0m                     
[39m150:    lui     at,0x4120[0m                         [39m  [39m150:    lui     at,0x4120[0m                       
[39m154:    lh      t0,0x8a(a0)[0m                       [39m  [39m154:    lh      t0,0x8a(a0)[0m                     
[39m158:    mtc1    at,$f4  [0m                          [39m  [39m158:    mtc1    at,$f4  [0m                        
[39m15c:    sw      t1,0x14c(a0)[0m                      [39m  [39m15c:    sw      t1,0x14c(a0)[0m                    
[39m160:    sh      t0,0x32(a0)[0m                       [39m  [39m160:    sh      t0,0x32(a0)[0m                     
[39m164:    swc1    $f4,0x68(a0)[0m                      [39m  [39m164:    swc1    $f4,0x68(a0)[0m                    
[39m168: [32m~>[39m[39m lui     at,0x41f0[0m                         [39m  [39m168: [32m~>[39m[39m lui     at,0x41f0[0m                       
[39m16c:    mtc1    at,$f8  [0m                          [39m  [39m16c:    mtc1    at,$f8  [0m                        
[39m170:    lwc1    $f6,0xc(a3)[0m                       [39m  [39m170:    lwc1    $f6,0xc(a3)[0m                     
[39m174:    sw      a3,0x18(sp)[0m                       [39m  [39m174:    sw      a3,0x18(sp)[0m                     
[39m178:    addiu   a0,a3,0x28[0m                        [39m  [39m178:    addiu   a0,a3,0x28[0m                      
[39m17c:    add.s   $f10,$f6,$f8[0m                      [39m  [39m17c:    add.s   $f10,$f6,$f8[0m                    
[39m180:    lui     a2,0x3f80[0m                         [39m  [39m180:    lui     a2,0x3f80[0m                       
[39m184:    mfc1    a1,$f10 [0m                          [39m  [39m184:    mfc1    a1,$f10 [0m                        
[39m188:    jal     Math_ApproxF[0m                      [39m  [39m188:    jal     Math_ApproxF[0m                    
[39m18c:    nop     [0m                                  [39m  [39m18c:    nop     [0m                                
[39m190:    lw      a0,0x18(sp)[0m                       [39m  [39m190:    lw      a0,0x18(sp)[0m                     
[39m194:    jal     func_8002F974[0m                     [39m  [39m194:    jal     func_8002F974[0m                   
[39m198:    li      a1,0x3179[0m                         [39m  [39m198:    li      a1,0x3179[0m                       
[39m19c:    lw      ra,0x14(sp)[0m                       [39m  [39m19c:    lw      ra,0x14(sp)[0m                     
[39m1a0:    addiu   sp,sp,0x18[0m                        [39m  [39m1a0:    addiu   sp,sp,0x18[0m                      
[39m1a4:    jr      ra      [0m                          [39m  [39m1a4:    jr      ra      [0m                        
[39m1a8:    nop     [0m                                  [39m  [39m1a8:    nop     [0m                                
[39m1ac:    addiu   sp,sp,-0x18[0m                       [39m  [39m1ac:    addiu   sp,sp,-0x18[0m                     
[39m1b0:    sw      ra,0x14(sp)[0m                       [39m  [39m1b0:    sw      ra,0x14(sp)[0m                     
[39m1b4:    sw      a1,0x1c(sp)[0m                       [39m  [39m1b4:    sw      a1,0x1c(sp)[0m                     
[39m1b8:    lh      t6,0xb6(a0)[0m                       [39m  [39m1b8:    lh      t6,0xb6(a0)[0m                     
[39m1bc:    lh      t7,0x150(a0)[0m                      [39m  [39m1bc:    lh      t7,0x150(a0)[0m                    
[39m1c0:    lui     at,%hi(D_80B43FAC)[0m                [39m  [39m1c0:    lui     at,%hi(D_80B43FAC)[0m              
[39m1c4:    lwc1    $f6,0x90(a0)[0m                      [39m  [39m1c4:    lwc1    $f6,0x90(a0)[0m                    
[39m1c8:    addu    t8,t6,t7[0m                          [39m  [39m1c8:    addu    t8,t6,t7[0m                        
[39m1cc:    sh      t8,0xb6(a0)[0m                       [39m  [39m1cc:    sh      t8,0xb6(a0)[0m                     
[39m1d0:    lwc1    $f4,%lo(D_80B43FAC)(at)[0m           [39m  [39m1d0:    lwc1    $f4,%lo(D_80B43FAC)(at)[0m         
[39m1d4:    c.lt.s  $f4,$f6 [0m                          [39m  [39m1d4:    c.lt.s  $f4,$f6 [0m                        
[39m1d8:    nop     [0m                                  [39m  [39m1d8:    nop     [0m                                
[39m1dc:    bc1f    1f4     [0m [31m~>[39m                       [39m  [39m1dc:    bc1f    1f4     [0m [31m~>[39m                     
[39m1e0:    nop     [0m                                  [39m  [39m1e0:    nop     [0m                                
[39m1e4:    jal     Actor_Kill[0m                        [39m  [39m1e4:    jal     Actor_Kill[0m                      
[39m1e8:    nop     [0m                                  [39m  [39m1e8:    nop     [0m                                
[39m1ec:    b       200     [0m [93m~>[39m                       [39m  [39m1ec:    b       200     [0m [93m~>[39m                     
[39m1f0:    lw      ra,0x14(sp)[0m                       [39m  [39m1f0:    lw      ra,0x14(sp)[0m                     
[39m1f4: [31m~>[39m[39m jal     func_8002F974[0m                     [39m  [39m1f4: [31m~>[39m[39m jal     func_8002F974[0m                   
[39m1f8:    li      a1,0x3179[0m                         [39m  [39m1f8:    li      a1,0x3179[0m                       
[39m1fc:    lw      ra,0x14(sp)[0m                       [39m  [39m1fc:    lw      ra,0x14(sp)[0m                     
[39m200: [93m~>[39m[39m addiu   sp,sp,0x18[0m                        [39m  [39m200: [93m~>[39m[39m addiu   sp,sp,0x18[0m                      
[39m204:    jr      ra      [0m                          [39m  [39m204:    jr      ra      [0m                        
[39m208:    nop     [0m                                  [39m  [39m208:    nop     [0m                                
[39m20c:    addiu   sp,sp,-0x30[0m                       [39m  [39m20c:    addiu   sp,sp,-0x30[0m                     
[39m210:    sw      a0,0x30(sp)[0m                       [39m  [39m210:    sw      a0,0x30(sp)[0m                     
[39m214:    sw      a1,0x34(sp)[0m                       [39m  [39m214:    sw      a1,0x34(sp)[0m                     
[39m218:    move    a0,a1   [0m                          [39m  [39m218:    move    a0,a1   [0m                        
[39m21c:    lw      a1,0x30(sp)[0m                       [39m  [39m21c:    lw      a1,0x30(sp)[0m                     
[39m220:    lui     t1,0x600[0m                          [39m  [39m220:    lui     t1,0x600[0m                        
[39m224:    sw      ra,0x2c(sp)[0m                       [39m  [39m224:    sw      ra,0x2c(sp)[0m                     
[39m228:    addiu   t1,t1,0xa60[0m                       [39m  [39m228:    addiu   t1,t1,0xa60[0m                     
[39m22c:    li      t6,0x514[0m                          [39m  [39m22c:    li      t6,0x514[0m                        
[39m230:    li      t7,0x12c[0m                          [39m  [39m230:    li      t7,0x12c[0m                        
[39m234:    li      t8,0xf  [0m                          [39m  [39m234:    li      t8,0xf  [0m                        
[39m238:    li      t9,0x5f [0m                          [39m  [39m238:    li      t9,0x5f [0m                        
[39m23c:    li      t0,0xa  [0m                          [39m  [39m23c:    li      t0,0xa  [0m                        
[39m240:    sw      t0,0x20(sp)[0m                       [39m  [39m240:    sw      t0,0x20(sp)[0m                     
[39m244:    sw      t9,0x1c(sp)[0m                       [39m  [39m244:    sw      t9,0x1c(sp)[0m                     
[39m248:    sw      t8,0x18(sp)[0m                       [39m  [39m248:    sw      t8,0x18(sp)[0m                     
[39m24c:    sw      t7,0x14(sp)[0m                       [39m  [39m24c:    sw      t7,0x14(sp)[0m                     
[39m250:    sw      t6,0x10(sp)[0m                       [39m  [39m250:    sw      t6,0x10(sp)[0m                     
[39m254:    sw      t1,0x24(sp)[0m                       [39m  [39m254:    sw      t1,0x24(sp)[0m                     
[39m258:    lui     a2,0x4100[0m                         [39m  [39m258:    lui     a2,0x4100[0m                       
[39m25c:    move    a3,zero [0m                          [39m  [39m25c:    move    a3,zero [0m                        
[39m260:    jal     func_800297A4[0m                     [39m  [39m260:    jal     func_800297A4[0m                   
[39m264:    addiu   a1,a1,0x24[0m                        [39m  [39m264:    addiu   a1,a1,0x24[0m                      
[39m268:    jal     Actor_Kill[0m                        [39m  [39m268:    jal     Actor_Kill[0m                      
[39m26c:    lw      a0,0x30(sp)[0m                       [39m  [39m26c:    lw      a0,0x30(sp)[0m                     
[39m270:    lw      ra,0x2c(sp)[0m                       [39m  [39m270:    lw      ra,0x2c(sp)[0m                     
[39m274:    addiu   sp,sp,0x30[0m                        [39m  [39m274:    addiu   sp,sp,0x30[0m                      
[39m278:    jr      ra      [0m                          [39m  [39m278:    jr      ra      [0m                        
[39m27c:    nop     [0m                                  [39m  [39m27c:    nop     [0m                                
[39m280:    addiu   sp,sp,-0x38[0m                       [39m  [39m280:    addiu   sp,sp,-0x38[0m                     
[39m284:    sw      ra,0x24(sp)[0m                       [39m  [39m284:    sw      ra,0x24(sp)[0m                     
[39m288:    sw      s1,0x20(sp)[0m                       [39m  [39m288:    sw      s1,0x20(sp)[0m                     
[39m28c:    sw      s0,0x1c(sp)[0m                       [39m  [39m28c:    sw      s0,0x1c(sp)[0m                     
[39m290:    lbu     v1,0x164(a0)[0m                      [39m  [39m290:    lbu     v1,0x164(a0)[0m                    
[39m294:    move    s0,a0   [0m                          [39m  [39m294:    move    s0,a0   [0m                        
[39m298:    move    s1,a1   [0m                          [39m  [39m298:    move    s1,a1   [0m                        
[39m29c:    andi    t6,v1,0x2[0m                         [39m  [39m29c:    andi    t6,v1,0x2[0m                       
[39m2a0:    bnez    t6,300  [0m [95m~>[39m                       [39m  [39m2a0:    bnez    t6,300  [0m [95m~>[39m                     
[39m2a4:    addiu   a1,s0,0x24[0m                        [39m  [39m2a4:    addiu   a1,s0,0x24[0m                      
[39m2a8:    lbu     t7,0x165(a0)[0m                      [39m  [39m2a8:    lbu     t7,0x165(a0)[0m                    
[39m2ac:    andi    t8,t7,0x2[0m                         [39m  [39m2ac:    andi    t8,t7,0x2[0m                       
[39m2b0:    bnezl   t8,304  [0m [95m~>[39m                       [39m  [39m2b0:    bnezl   t8,304  [0m [95m~>[39m                     
[39m2b4:    lbu     t7,0x165(s0)[0m                      [39m  [39m2b4:    lbu     t7,0x165(s0)[0m                    
[39m2b8:    lbu     t9,0x166(a0)[0m                      [39m  [39m2b8:    lbu     t9,0x166(a0)[0m                    
[39m2bc:    andi    t0,t9,0x2[0m                         [39m  [39m2bc:    andi    t0,t9,0x2[0m                       
[39m2c0:    beqzl   t0,2e0  [0m [96m~>[39m                       [39m  [39m2c0:    beqzl   t0,2e0  [0m [96m~>[39m                     
[39m2c4:    lw      v0,0x14c(s0)[0m                      [39m  [39m2c4:    lw      v0,0x14c(s0)[0m                    
[39m2c8:    lw      t1,0x160(a0)[0m                      [39m  [39m2c8:    lw      t1,0x160(a0)[0m                    
[39m2cc:    li      at,0x6b [0m                          [39m  [39m2cc:    li      at,0x6b [0m                        
[39m2d0:    lh      t2,0(t1)[0m                          [39m  [39m2d0:    lh      t2,0(t1)[0m                        
[39m2d4:    bnel    t2,at,304[0m [95m~>[39m                      [39m  [39m2d4:    bnel    t2,at,304[0m [95m~>[39m                    
[39m2d8:    lbu     t7,0x165(s0)[0m                      [39m  [39m2d8:    lbu     t7,0x165(s0)[0m                    
[39m2dc: [96m~>[39m[39m lw      v0,0x14c(s0)[0m                      [39m  [39m2dc: [96m~>[39m[39m lw      v0,0x14c(s0)[0m                    
[39m2e0:    lui     t3,%hi(func_80B43B6C)[0m             [39m  [39m2e0:    lui     t3,%hi(func_80B43B6C)[0m           
[39m2e4:    addiu   t3,t3,%lo(func_80B43B6C)[0m          [39m  [39m2e4:    addiu   t3,t3,%lo(func_80B43B6C)[0m        
[39m2e8:    bnel    t3,v0,350[0m [92m~>[39m                      [39m  [39m2e8:    bnel    t3,v0,350[0m [92m~>[39m                    
[39m2ec:    move    a0,s0   [0m                          [39m  [39m2ec:    move    a0,s0   [0m                        
[39m2f0:    lhu     t4,0x88(s0)[0m                       [39m  [39m2f0:    lhu     t4,0x88(s0)[0m                     
[39m2f4:    andi    t5,t4,0x8[0m                         [39m  [39m2f4:    andi    t5,t4,0x8[0m                       
[39m2f8:    beqzl   t5,350  [0m [92m~>[39m                       [39m  [39m2f8:    beqzl   t5,350  [0m [92m~>[39m                     
[39m2fc:    move    a0,s0   [0m                          [39m  [39m2fc:    move    a0,s0   [0m                        
[39m300: [95m~>[39m[39m lbu     t7,0x165(s0)[0m                      [39m  [39m300: [95m~>[39m[39m lbu     t7,0x165(s0)[0m                    
[39m304:    lbu     t9,0x166(s0)[0m                      [39m  [39m304:    lbu     t9,0x166(s0)[0m                    
[39m308:    lw      t1,4(s0)[0m                          [39m  [39m308:    lw      t1,4(s0)[0m                        
[39m30c:    li      at,-6   [0m                          [39m  [39m30c:    li      at,-6   [0m                        
[39m310:    andi    t6,v1,0xfffd[0m                      [39m  [39m310:    andi    t6,v1,0xfffd[0m                    
[39m314:    andi    t8,t7,0xfffd[0m                      [39m  [39m314:    andi    t8,t7,0xfffd[0m                    
[39m318:    andi    t0,t9,0xfffd[0m                      [39m  [39m318:    andi    t0,t9,0xfffd[0m                    
[39m31c:    and     t2,t1,at[0m                          [39m  [39m31c:    and     t2,t1,at[0m                        
[39m320:    sb      t6,0x164(s0)[0m                      [39m  [39m320:    sb      t6,0x164(s0)[0m                    
[39m324:    sb      t8,0x165(s0)[0m                      [39m  [39m324:    sb      t8,0x165(s0)[0m                    
[39m328:    sb      t0,0x166(s0)[0m                      [39m  [39m328:    sb      t0,0x166(s0)[0m                    
[39m32c:    sw      t2,4(s0)[0m                          [39m  [39m32c:    sw      t2,4(s0)[0m                        
[39m330:    move    a0,s1   [0m                          [39m  [39m330:    move    a0,s1   [0m                        
[39m334:    li      a2,0x1e [0m                          [39m  [39m334:    li      a2,0x1e [0m                        
[39m338:    jal     Audio_PlaySoundAtPosition[0m         [39m  [39m338:    jal     Audio_PlaySoundAtPosition[0m       
[39m33c:    li      a3,0x38c0[0m                         [39m  [39m33c:    li      a3,0x38c0[0m                       
[39m340:    lui     t3,%hi(func_80B43BCC)[0m             [39m  [39m340:    lui     t3,%hi(func_80B43BCC)[0m           
[39m344:    addiu   v0,t3,%lo(func_80B43BCC)[0m          [39m  [39m344:    addiu   v0,t3,%lo(func_80B43BCC)[0m        
[39m348:    sw      v0,0x14c(s0)[0m                      [39m  [39m348:    sw      v0,0x14c(s0)[0m                    
[39m34c: [92m~>[39m[39m move    a0,s0   [0m                          [39m  [39m34c: [92m~>[39m[39m move    a0,s0   [0m                        
[39m350:    jalr    v0      [0m                          [39m  [39m350:    jalr    v0      [0m                        
[39m354:    move    a1,s1   [0m                          [39m  [39m354:    move    a1,s1   [0m                        
[39m358:    jal     Actor_MoveForward[0m                 [39m  [39m358:    jal     Actor_MoveForward[0m               
[39m35c:    move    a0,s0   [0m                          [39m  [39m35c:    move    a0,s0   [0m                        
[39m360:    lw      v0,0x14c(s0)[0m                      [39m  [39m360:    lw      v0,0x14c(s0)[0m                    
[39m364:    lui     t4,%hi(func_80B43A94)[0m             [39m  [39m364:    lui     t4,%hi(func_80B43A94)[0m           
[39m368:    addiu   t4,t4,%lo(func_80B43A94)[0m          [39m  [39m368:    addiu   t4,t4,%lo(func_80B43A94)[0m        
[39m36c:    beq     t4,v0,400[0m [90m~>[39m                      [39m  [39m36c:    beq     t4,v0,400[0m [90m~>[39m                    
[39m370:    lui     t5,%hi(func_80B43BCC)[0m             [39m  [39m370:    lui     t5,%hi(func_80B43BCC)[0m           
[39m374:    addiu   t5,t5,%lo(func_80B43BCC)[0m          [39m  [39m374:    addiu   t5,t5,%lo(func_80B43BCC)[0m        
[39m378:    beq     t5,v0,400[0m [90m~>[39m                      [39m  [39m378:    beq     t5,v0,400[0m [90m~>[39m                    
[39m37c:    move    a0,s1   [0m                          [39m  [39m37c:    move    a0,s1   [0m                        
[39m380:    lui     at,0x4100[0m                         [39m  [39m380:    lui     at,0x4100[0m                       
[39m384:    mtc1    at,$f4  [0m                          [39m  [39m384:    mtc1    at,$f4  [0m                        
[39m388:    li      t6,5    [0m                          [39m  [39m388:    li      t6,5    [0m                        
[39m38c:    sw      t6,0x14(sp)[0m                       [39m  [39m38c:    sw      t6,0x14(sp)[0m                     
[39m390:    move    a1,s0   [0m                          [39m  [39m390:    move    a1,s0   [0m                        
[39m394:    lui     a2,0x40a0[0m                         [39m  [39m394:    lui     a2,0x40a0[0m                       
[39m398:    lui     a3,0x41a0[0m                         [39m  [39m398:    lui     a3,0x41a0[0m                       
[39m39c:    jal     func_8002E4B4[0m                     [39m  [39m39c:    jal     func_8002E4B4[0m                   
[39m3a0:    swc1    $f4,0x10(sp)[0m                      [39m  [39m3a0:    swc1    $f4,0x10(sp)[0m                    
[39m3a4:    addiu   a1,s0,0x154[0m                       [39m  [39m3a4:    addiu   a1,s0,0x154[0m                     
[39m3a8:    sw      a1,0x28(sp)[0m                       [39m  [39m3a8:    sw      a1,0x28(sp)[0m                     
[39m3ac:    jal     Collider_CylinderUpdate[0m           [39m  [39m3ac:    jal     Collider_CylinderUpdate[0m         
[39m3b0:    move    a0,s0   [0m                          [39m  [39m3b0:    move    a0,s0   [0m                        
[39m3b4:    lw      t7,4(s0)[0m                          [39m  [39m3b4:    lw      t7,4(s0)[0m                        
[39m3b8:    lui     at,0x100[0m                          [39m  [39m3b8:    lui     at,0x100[0m                        
[39m3bc:    move    a0,s1   [0m                          [39m  [39m3bc:    move    a0,s1   [0m                        
[39m3c0:    or      t8,t7,at[0m                          [39m  [39m3c0:    or      t8,t7,at[0m                        
[39m3c4:    lui     at,0x1  [0m                          [39m  [39m3c4:    lui     at,0x1  [0m                        
[39m3c8:    ori     at,at,0x1e60[0m                      [39m  [39m3c8:    ori     at,at,0x1e60[0m                    
[39m3cc:    sw      t8,4(s0)[0m                          [39m  [39m3cc:    sw      t8,4(s0)[0m                        
[39m3d0:    addu    a1,s1,at[0m                          [39m  [39m3d0:    addu    a1,s1,at[0m                        
[39m3d4:    sw      a1,0x2c(sp)[0m                       [39m  [39m3d4:    sw      a1,0x2c(sp)[0m                     
[39m3d8:    jal     CollisionCheck_SetAT[0m              [39m  [39m3d8:    jal     CollisionCheck_SetAT[0m            
[39m3dc:    lw      a2,0x28(sp)[0m                       [39m  [39m3dc:    lw      a2,0x28(sp)[0m                     
[39m3e0:    move    a0,s1   [0m                          [39m  [39m3e0:    move    a0,s1   [0m                        
[39m3e4:    lw      a1,0x2c(sp)[0m                       [39m  [39m3e4:    lw      a1,0x2c(sp)[0m                     
[39m3e8:    jal     CollisionCheck_SetAC[0m              [39m  [39m3e8:    jal     CollisionCheck_SetAC[0m            
[39m3ec:    lw      a2,0x28(sp)[0m                       [39m  [39m3ec:    lw      a2,0x28(sp)[0m                     
[39m3f0:    move    a0,s1   [0m                          [39m  [39m3f0:    move    a0,s1   [0m                        
[39m3f4:    lw      a1,0x2c(sp)[0m                       [39m  [39m3f4:    lw      a1,0x2c(sp)[0m                     
[39m3f8:    jal     CollisionCheck_SetOC[0m              [39m  [39m3f8:    jal     CollisionCheck_SetOC[0m            
[39m3fc:    lw      a2,0x28(sp)[0m                       [39m  [39m3fc:    lw      a2,0x28(sp)[0m                     
[39m400: [90m~>[39m[39m move    a0,s0   [0m                          [39m  [39m400: [90m~>[39m[39m move    a0,s0   [0m                        
[39m404:    jal     Actor_SetHeight[0m                   [39m  [39m404:    jal     Actor_SetHeight[0m                 
[39m408:    lui     a1,0x4080[0m                         [39m  [39m408:    lui     a1,0x4080[0m                       
[39m40c:    lw      ra,0x24(sp)[0m                       [39m  [39m40c:    lw      ra,0x24(sp)[0m                     
[39m410:    lw      s0,0x1c(sp)[0m                       [39m  [39m410:    lw      s0,0x1c(sp)[0m                     
[39m414:    lw      s1,0x20(sp)[0m                       [39m  [39m414:    lw      s1,0x20(sp)[0m                     
[39m418:    jr      ra      [0m                          [39m  [39m418:    jr      ra      [0m                        
[39m41c:    addiu   sp,sp,0x38[0m                        [39m  [39m41c:    addiu   sp,sp,0x38[0m                      
[39m420:    addiu   sp,sp,-0x48[0m                       [39m  [39m420:    addiu   sp,sp,-0x48[0m                     
[39m424:    sw      ra,0x1c(sp)[0m                       [39m  [39m424:    sw      ra,0x1c(sp)[0m                     
[39m428:    sw      s0,0x18(sp)[0m                       [39m  [39m428:    sw      s0,0x18(sp)[0m                     
[39m42c:    sw      a0,0x48(sp)[0m                       [39m  [39m42c:    sw      a0,0x48(sp)[0m                     
[39m430:    sw      a1,0x4c(sp)[0m                       [39m  [39m430:    sw      a1,0x4c(sp)[0m                     
[39m434:    lw      a1,0(a1)[0m                          [39m  [39m434:    lw      a1,0(a1)[0m                        
[39m438:    lui     a2,%hi(D_80B43F70)[0m                [39m  [39m438:    lui     a2,%hi(D_80B43F70)[0m              
[39m43c:    addiu   a2,a2,%lo(D_80B43F70)[0m             [39m  [39m43c:    addiu   a2,a2,%lo(D_80B43F70)[0m           
[39m440:    addiu   a0,sp,0x30[0m                        [39m  [39m440:    addiu   a0,sp,0x30[0m                      
[39m444:    li      a3,0x16e[0m                          [39m  [39m444:    li      a3,0x16e[0m                        
[39m448:    jal     Graph_OpenDisps[0m                   [39m  [39m448:    jal     Graph_OpenDisps[0m                 
[39m44c:    move    s0,a1   [0m                          [39m  [39m44c:    move    s0,a1   [0m                        
[39m450:    lw      t7,0x4c(sp)[0m                       [39m  [39m450:    lw      t7,0x4c(sp)[0m                     
[39m454:    jal     func_80093D18[0m                     [39m  [39m454:    jal     func_80093D18[0m                   
[39m458:    lw      a0,0(t7)[0m                          [39m  [39m458:    lw      a0,0(t7)[0m                        
[39m45c:    lw      v0,0x2c0(s0)[0m                      [39m  [39m45c:    lw      v0,0x2c0(s0)[0m                    
[39m460:    lui     t9,0xdb06[0m                         [39m  [39m460:    lui     t9,0xdb06[0m                       
[39m464:    ori     t9,t9,0x20[0m                        [39m  [39m464:    ori     t9,t9,0x20[0m                      
[39m468:    addiu   t8,v0,8 [0m                          [39m  [39m468:    addiu   t8,v0,8 [0m                        
[39m46c:    sw      t8,0x2c0(s0)[0m                      [39m  [39m46c:    sw      t8,0x2c0(s0)[0m                    
[39m470:    sw      t9,0(v0)[0m                          [39m  [39m470:    sw      t9,0(v0)[0m                        
[39m474:    lw      t0,0x48(sp)[0m                       [39m  [39m474:    lw      t0,0x48(sp)[0m                     
[39m478:    lui     a0,%hi(D_80B43F64)[0m                [39m  [39m478:    lui     a0,%hi(D_80B43F64)[0m              
[39m47c:    lui     t7,%hi(gSegments)[0m                 [39m  [39m47c:    lui     t7,%hi(gSegments)[0m               
[39m480:    lbu     t1,0x152(t0)[0m                      [39m  [39m480:    lbu     t1,0x152(t0)[0m                    
[39m484:    lui     at,0xff [0m                          [39m  [39m484:    lui     at,0xff [0m                        
[39m488:    ori     at,at,0xffff[0m                      [39m  [39m488:    ori     at,at,0xffff[0m                    
[39m48c:    sll     t2,t1,0x2[0m                         [39m  [39m48c:    sll     t2,t1,0x2[0m                       
[39m490:    addu    a0,a0,t2[0m                          [39m  [39m490:    addu    a0,a0,t2[0m                        
[39m494:    lw      a0,%lo(D_80B43F64)(a0)[0m            [39m  [39m494:    lw      a0,%lo(D_80B43F64)(a0)[0m          
[39m498:    lui     t1,0xda38[0m                         [39m  [39m498:    lui     t1,0xda38[0m                       
[39m49c:    ori     t1,t1,0x3[0m                         [39m  [39m49c:    ori     t1,t1,0x3[0m                       
[39m4a0:    sll     t4,a0,0x4[0m                         [39m  [39m4a0:    sll     t4,a0,0x4[0m                       
[39m4a4:    srl     t5,t4,0x1c[0m                        [39m  [39m4a4:    srl     t5,t4,0x1c[0m                      
[39m4a8:    sll     t6,t5,0x2[0m                         [39m  [39m4a8:    sll     t6,t5,0x2[0m                       
[39m4ac:    addu    t7,t7,t6[0m                          [39m  [39m4ac:    addu    t7,t7,t6[0m                        
[39m4b0:    lw      t7,%lo(gSegments)(t7)[0m             [39m  [39m4b0:    lw      t7,%lo(gSegments)(t7)[0m           
[39m4b4:    and     t3,a0,at[0m                          [39m  [39m4b4:    and     t3,a0,at[0m                        
[39m4b8:    lui     at,0x8000[0m                         [39m  [39m4b8:    lui     at,0x8000[0m                       
[39m4bc:    addu    t8,t3,t7[0m                          [39m  [39m4bc:    addu    t8,t3,t7[0m                        
[39m4c0:    addu    t9,t8,at[0m                          [39m  [39m4c0:    addu    t9,t8,at[0m                        
[39m4c4:    sw      t9,4(v0)[0m                          [39m  [39m4c4:    sw      t9,4(v0)[0m                        
[39m4c8:    lw      v0,0x2c0(s0)[0m                      [39m  [39m4c8:    lw      v0,0x2c0(s0)[0m                    
[39m4cc:    lui     a1,%hi(D_80B43F84)[0m                [39m  [39m4cc:    lui     a1,%hi(D_80B43F84)[0m              
[39m4d0:    addiu   a1,a1,%lo(D_80B43F84)[0m             [39m  [39m4d0:    addiu   a1,a1,%lo(D_80B43F84)[0m           
[39m4d4:    addiu   t0,v0,8 [0m                          [39m  [39m4d4:    addiu   t0,v0,8 [0m                        
[39m4d8:    sw      t0,0x2c0(s0)[0m                      [39m  [39m4d8:    sw      t0,0x2c0(s0)[0m                    
[39m4dc:    sw      t1,0(v0)[0m                          [39m  [39m4dc:    sw      t1,0(v0)[0m                        
[39m4e0:    lw      t2,0x4c(sp)[0m                       [39m  [39m4e0:    lw      t2,0x4c(sp)[0m                     
[39m4e4:    li      a2,0x175[0m                          [39m  [39m4e4:    li      a2,0x175[0m                        
[39m4e8:    lw      a0,0(t2)[0m                          [39m  [39m4e8:    lw      a0,0(t2)[0m                        
[39m4ec:    jal     Matrix_NewMtx[0m                     [39m  [39m4ec:    jal     Matrix_NewMtx[0m                   
[39m4f0:    sw      v0,0x28(sp)[0m                       [39m  [39m4f0:    sw      v0,0x28(sp)[0m                     
[39m4f4:    lw      v1,0x28(sp)[0m                       [39m  [39m4f4:    lw      v1,0x28(sp)[0m                     
[39m4f8:    lui     t6,0x600[0m                          [39m  [39m4f8:    lui     t6,0x600[0m                        
[39m4fc:    addiu   t6,t6,0x970[0m                       [39m  [39m4fc:    addiu   t6,t6,0x970[0m                     
[39m500:    sw      v0,4(v1)[0m                          [39m  [39m500:    sw      v0,4(v1)[0m                        
[39m504:    lw      v0,0x2c0(s0)[0m                      [39m  [39m504:    lw      v0,0x2c0(s0)[0m                    
[39m508:    lui     t5,0xde00[0m                         [39m  [39m508:    lui     t5,0xde00[0m                       
[39m50c:    lui     a2,%hi(D_80B43F98)[0m                [39m  [39m50c:    lui     a2,%hi(D_80B43F98)[0m              
[39m510:    addiu   t4,v0,8 [0m                          [39m  [39m510:    addiu   t4,v0,8 [0m                        
[39m514:    sw      t4,0x2c0(s0)[0m                      [39m  [39m514:    sw      t4,0x2c0(s0)[0m                    
[39m518:    sw      t6,4(v0)[0m                          [39m  [39m518:    sw      t6,4(v0)[0m                        
[39m51c:    sw      t5,0(v0)[0m                          [39m  [39m51c:    sw      t5,0(v0)[0m                        
[39m520:    lw      t3,0x4c(sp)[0m                       [39m  [39m520:    lw      t3,0x4c(sp)[0m                     
[39m524:    addiu   a2,a2,%lo(D_80B43F98)[0m             [39m  [39m524:    addiu   a2,a2,%lo(D_80B43F98)[0m           
[39m528:    addiu   a0,sp,0x30[0m                        [39m  [39m528:    addiu   a0,sp,0x30[0m                      
[39m52c:    li      a3,0x17a[0m                          [39m  [39m52c:    li      a3,0x17a[0m                        
[39m530:    jal     Graph_CloseDisps[0m                  [39m  [39m530:    jal     Graph_CloseDisps[0m                
[39m534:    lw      a1,0(t3)[0m                          [39m  [39m534:    lw      a1,0(t3)[0m                        
[39m538:    lw      ra,0x1c(sp)[0m                       [39m  [39m538:    lw      ra,0x1c(sp)[0m                     
[39m53c:    lw      s0,0x18(sp)[0m                       [39m  [39m53c:    lw      s0,0x18(sp)[0m                     
[39m540:    addiu   sp,sp,0x48[0m                        [39m  [39m540:    addiu   sp,sp,0x48[0m                      
[39m544:    jr      ra      [0m                          [39m  [39m544:    jr      ra      [0m                        
[39m548:    nop     [0m                                  [39m  [39m548:    nop     [0m                                
[39m54c:    nop     [0m                                  [39m  [39m54c:    nop     [0m                                