00000000004094d0  4156                             push r14
00000000004094d2  4155                             push r13
00000000004094d4  4154                             push r12
00000000004094d6  55                               push rbp
00000000004094d7  53                               push rbx
00000000004094d8  4883ec20                         sub rsp, 0x20
00000000004094dc  64488b042528000000               mov rax, qword ptr fs:[0x28]
00000000004094e5  4889442418                       mov qword ptr [rsp + 0x18], rax
00000000004094ea  31c0                             xor eax, eax
00000000004094ec  8b055a4d4c00                     mov eax, dword ptr [rip + 0x4c4d5a]
00000000004094f2  83f805                           cmp eax, 5
00000000004094f5  0f84a5020000                     je 0x4097a0
00000000004094fb  83c001                           add eax, 1
00000000004094fe  488b2d83f37c00                   mov rbp, qword ptr [rip + 0x7cf383]
0000000000409505  c60510915d0000                   mov byte ptr [rip + 0x5d9110], 0
000000000040950c  89053a4d4c00                     mov dword ptr [rip + 0x4c4d3a], eax
0000000000409512  31c0                             xor eax, eax
0000000000409514  e857361000                       call 0x50cb70
0000000000409519  8b1dc5407f00                     mov ebx, dword ptr [rip + 0x7f40c5]
000000000040951f  890503925d00                     mov dword ptr [rip + 0x5d9203], eax
0000000000409525  85db                             test ebx, ebx
0000000000409527  7427                             je 0x409550
0000000000409529  488b442418                       mov rax, qword ptr [rsp + 0x18]
000000000040952e  644833042528000000               xor rax, qword ptr fs:[0x28]
0000000000409537  0f852a0b0000                     jne 0x40a067
000000000040953d  4883c420                         add rsp, 0x20
0000000000409541  5b                               pop rbx
0000000000409542  5d                               pop rbp
0000000000409543  415c                             pop r12
0000000000409545  415d                             pop r13
0000000000409547  415e                             pop r14
0000000000409549  c3                               ret 
000000000040954a  660f1f440000                     nop word ptr [rax + rax]
0000000000409550  488b3d11de7c00                   mov rdi, qword ptr [rip + 0x7cde11]
0000000000409557  e8a4f60a00                       call 0x4b8c00
000000000040955c  8b0526588000                     mov eax, dword ptr [rip + 0x805826]
0000000000409562  85c0                             test eax, eax
0000000000409564  0f8456020000                     je 0x4097c0
000000000040956a  8b1560407f00                     mov edx, dword ptr [rip + 0x7f4060]
0000000000409570  85d2                             test edx, edx
0000000000409572  0f8568050000                     jne 0x409ae0
0000000000409578  83f801                           cmp eax, 1
000000000040957b  0f8489090000                     je 0x409f0a
0000000000409581  83f802                           cmp eax, 2
0000000000409584  0f8474090000                     je 0x409efe
000000000040958a  8b3540765a00                     mov esi, dword ptr [rip + 0x5a7640]
0000000000409590  85f6                             test esi, esi
0000000000409592  7417                             je 0x4095ab
0000000000409594  8b0d4e407f00                     mov ecx, dword ptr [rip + 0x7f404e]
000000000040959a  85c9                             test ecx, ecx
000000000040959c  750d                             jne 0x4095ab
000000000040959e  833d2b407f0001                   cmp dword ptr [rip + 0x7f402b], 1
00000000004095a5  0f8429090000                     je 0x409ed4
00000000004095ab  8b053f407f00                     mov eax, dword ptr [rip + 0x7f403f]
00000000004095b1  85c0                             test eax, eax
00000000004095b3  751b                             jne 0x4095d0
00000000004095b5  8b0539835a00                     mov eax, dword ptr [rip + 0x5a8339]
00000000004095bb  85c0                             test eax, eax
00000000004095bd  7511                             jne 0x4095d0
00000000004095bf  8b0513f37c00                     mov eax, dword ptr [rip + 0x7cf313]
00000000004095c5  85c0                             test eax, eax
00000000004095c7  0f84fb080000                     je 0x409ec8
00000000004095cd  0f1f00                           nop dword ptr [rax]
00000000004095d0  488b2d91dd7c00                   mov rbp, qword ptr [rip + 0x7cdd91]
00000000004095d7  488b3deaf27c00                   mov rdi, qword ptr [rip + 0x7cf2ea]
00000000004095de  4531c9                           xor r9d, r9d
00000000004095e1  6880000000                       push 0x80
00000000004095e6  6880000000                       push 0x80
00000000004095eb  4531c0                           xor r8d, r8d
00000000004095ee  31c9                             xor ecx, ecx
00000000004095f0  31d2                             xor edx, edx
00000000004095f2  4889ee                           mov rsi, rbp
00000000004095f5  e8467b0c00                       call 0x4d1140
00000000004095fa  8b05e8825a00                     mov eax, dword ptr [rip + 0x5a82e8]
0000000000409600  415d                             pop r13
0000000000409602  415e                             pop r14
0000000000409604  85c0                             test eax, eax
0000000000409606  750c                             jne 0x409614
0000000000409608  448b25e5825a00                   mov r12d, dword ptr [rip + 0x5a82e5]
000000000040960f  4585e4                           test r12d, r12d
0000000000409612  7408                             je 0x40961c
0000000000409614  4889ef                           mov rdi, rbp
0000000000409617  e8e4f3ffff                       call 0x408a00
000000000040961c  448b1dcd3f7f00                   mov r11d, dword ptr [rip + 0x7f3fcd]
0000000000409623  4585db                           test r11d, r11d
0000000000409626  0f8e64020000                     jle 0x409890
000000000040962c  833d9d3f7f0001                   cmp dword ptr [rip + 0x7f3f9d], 1
0000000000409633  0f8437040000                     je 0x409a70
0000000000409639  488b35e0905d00                   mov rsi, qword ptr [rip + 0x5d90e0]
0000000000409640  488b3d21dd7c00                   mov rdi, qword ptr [rip + 0x7cdd21]
0000000000409647  31d2                             xor edx, edx
0000000000409649  6880000000                       push 0x80
000000000040964e  6880000000                       push 0x80
0000000000409653  4531c9                           xor r9d, r9d
0000000000409656  4531c0                           xor r8d, r8d
0000000000409659  31c9                             xor ecx, ecx
000000000040965b  e8e07a0c00                       call 0x4d1140
0000000000409660  31c0                             xor eax, eax
0000000000409662  e809351000                       call 0x50cb70
0000000000409667  3b05a78f5d00                     cmp eax, dword ptr [rip + 0x5d8fa7]
000000000040966d  415e                             pop r14
000000000040966f  5a                               pop rdx
0000000000409670  0f8c7a020000                     jl 0x4098f0
0000000000409676  803d9f8f5d0000                   cmp byte ptr [rip + 0x5d8f9f], 0
000000000040967d  0f855d060000                     jne 0x409ce0
0000000000409683  31c0                             xor eax, eax
0000000000409685  e8e6341000                       call 0x50cb70
000000000040968a  2b0598905d00                     sub eax, dword ptr [rip + 0x5d9098]
0000000000409690  890592905d00                     mov dword ptr [rip + 0x5d9092], eax
0000000000409696  31c0                             xor eax, eax
0000000000409698  e8d3341000                       call 0x50cb70
000000000040969d  8b1db1945d00                     mov ebx, dword ptr [rip + 0x5d94b1]
00000000004096a3  39d8                             cmp eax, ebx
00000000004096a5  0f8c15020000                     jl 0x4098c0
00000000004096ab  448b1d9e945d00                   mov r11d, dword ptr [rip + 0x5d949e]
00000000004096b2  4585db                           test r11d, r11d
00000000004096b5  0f85ed010000                     jne 0x4098a8
00000000004096bb  803d0e337f0000                   cmp byte ptr [rip + 0x7f330e], 0
00000000004096c2  0f8558010000                     jne 0x409820
00000000004096c8  448b15e5735a00                   mov r10d, dword ptr [rip + 0x5a73e5]
00000000004096cf  4585d2                           test r10d, r10d
00000000004096d2  0f8548010000                     jne 0x409820
00000000004096d8  448b0d093f7f00                   mov r9d, dword ptr [rip + 0x7f3f09]
00000000004096df  4585c9                           test r9d, r9d
00000000004096e2  0f8438010000                     je 0x409820
00000000004096e8  448b0561945d00                   mov r8d, dword ptr [rip + 0x5d9461]
00000000004096ef  4585c0                           test r8d, r8d
00000000004096f2  0f8528010000                     jne 0x409820
00000000004096f8  f60547af7f0001                   test byte ptr [rip + 0x7faf47], 1
00000000004096ff  0f841b010000                     je 0x409820
0000000000409705  488b155cdc7c00                   mov rdx, qword ptr [rip + 0x7cdc5c]
000000000040970c  8b02                             mov eax, dword ptr [rdx]
000000000040970e  8d687f                           lea ebp, [rax + 0x7f]
0000000000409711  85c0                             test eax, eax
0000000000409713  0f49e8                           cmovns ebp, eax
0000000000409716  c1fd07                           sar ebp, 7
0000000000409719  837a047f                         cmp dword ptr [rdx + 4], 0x7f
000000000040971d  0f8e2f010000                     jle 0x409852
0000000000409723  85ed                             test ebp, ebp
0000000000409725  0f8e27010000                     jle 0x409852
000000000040972b  4531e4                           xor r12d, r12d
000000000040972e  4531f6                           xor r14d, r14d
0000000000409731  0f1f8000000000                   nop dword ptr [rax]
0000000000409738  4589e5                           mov r13d, r12d
000000000040973b  31db                             xor ebx, ebx
000000000040973d  41c1e507                         shl r13d, 7
0000000000409741  eb10                             jmp 0x409753
0000000000409743  0f1f440000                       nop dword ptr [rax + rax]
0000000000409748  83c301                           add ebx, 1
000000000040974b  39dd                             cmp ebp, ebx
000000000040974d  0f8475060000                     je 0x409dc8
0000000000409753  89d8                             mov eax, ebx
0000000000409755  99                               cdq 
0000000000409756  f7fd                             idiv ebp
0000000000409758  428d3c32                         lea edi, [rdx + r14]
000000000040975c  8d47ff                           lea eax, [rdi - 1]
000000000040975f  83f802                           cmp eax, 2
0000000000409762  77e4                             ja 0x409748
0000000000409764  e817efffff                       call 0x408680
0000000000409769  488b35f8db7c00                   mov rsi, qword ptr [rip + 0x7cdbf8]
0000000000409770  488b3d51f17c00                   mov rdi, qword ptr [rip + 0x7cf151]
0000000000409777  4189d8                           mov r8d, ebx
000000000040977a  6880000000                       push 0x80
000000000040977f  6880000000                       push 0x80
0000000000409784  31c9                             xor ecx, ecx
0000000000409786  4589e9                           mov r9d, r13d
0000000000409789  41c1e007                         shl r8d, 7
000000000040978d  31d2                             xor edx, edx
000000000040978f  e8ac790c00                       call 0x4d1140
0000000000409794  59                               pop rcx
0000000000409795  5e                               pop rsi
0000000000409796  ebb0                             jmp 0x409748
0000000000409798  0f1f840000000000                 nop dword ptr [rax + rax]
00000000004097a0  31c0                             xor eax, eax
00000000004097a2  e8c9331000                       call 0x50cb70
00000000004097a7  89059b4a4c00                     mov dword ptr [rip + 0x4c4a9b], eax
00000000004097ad  8b05994a4c00                     mov eax, dword ptr [rip + 0x4c4a99]
00000000004097b3  e943fdffff                       jmp 0x4094fb
00000000004097b8  0f1f840000000000                 nop dword ptr [rax + rax]
00000000004097c0  8b050e3e7f00                     mov eax, dword ptr [rip + 0x7f3e0e]
00000000004097c6  85c0                             test eax, eax
00000000004097c8  0f8520030000                     jne 0x409aee
00000000004097ce  8b05fc3d7f00                     mov eax, dword ptr [rip + 0x7f3dfc]
00000000004097d4  85c0                             test eax, eax
00000000004097d6  0f85aefdffff                     jne 0x40958a
00000000004097dc  833d013e7f0001                   cmp dword ptr [rip + 0x7f3e01], 1
00000000004097e3  0f84a1fdffff                     je 0x40958a
00000000004097e9  8b0591558000                     mov eax, dword ptr [rip + 0x805591]
00000000004097ef  85c0                             test eax, eax
00000000004097f1  0f8593fdffff                     jne 0x40958a
00000000004097f7  448b358e558000                   mov r14d, dword ptr [rip + 0x80558e]
00000000004097fe  4585f6                           test r14d, r14d
0000000000409801  0f8583fdffff                     jne 0x40958a
0000000000409807  be01000000                       mov esi, 1
000000000040980c  bf01000000                       mov edi, 1
0000000000409811  e8daccffff                       call 0x4064f0
0000000000409816  e96ffdffff                       jmp 0x40958a
000000000040981b  0f1f440000                       nop dword ptr [rax + rax]
0000000000409820  31ff                             xor edi, edi
0000000000409822  bb01000000                       mov ebx, 1
0000000000409827  4c8d2552f07c00                   lea r12, [rip + 0x7cf052]
000000000040982e  e82d7f0600                       call 0x471760
0000000000409833  eb0c                             jmp 0x409841
0000000000409835  0f1f00                           nop dword ptr [rax]
0000000000409838  498b3cdc                         mov rdi, qword ptr [r12 + rbx*8]
000000000040983c  e8bff30a00                       call 0x4b8c00
0000000000409841  89dd                             mov ebp, ebx
0000000000409843  31c0                             xor eax, eax
0000000000409845  4883c301                         add rbx, 1
0000000000409849  e8c27f0600                       call 0x471810
000000000040984e  39e8                             cmp eax, ebp
0000000000409850  7fe6                             jg 0x409838
0000000000409852  8b3d0c9b5d00                     mov edi, dword ptr [rip + 0x5d9b0c]
0000000000409858  85ff                             test edi, edi
000000000040985a  0f85f8010000                     jne 0x409a58
0000000000409860  8b1582805a00                     mov edx, dword ptr [rip + 0x5a8082]
0000000000409866  85d2                             test edx, edx
0000000000409868  0f84d2010000                     je 0x409a40
000000000040986e  8b3560725a00                     mov esi, dword ptr [rip + 0x5a7260]
0000000000409874  83fe7f                           cmp esi, 0x7f
0000000000409877  0f8eacfcffff                     jle 0x409529
000000000040987d  488b3de4da7c00                   mov rdi, qword ptr [rip + 0x7cdae4]
0000000000409884  e817eaffff                       call 0x4082a0
0000000000409889  e99bfcffff                       jmp 0x409529
000000000040988e  6690                             nop 
0000000000409890  813d5a3d7f008c000000             cmp dword ptr [rip + 0x7f3d5a], 0x8c
000000000040989a  0f8e99fdffff                     jle 0x409639
00000000004098a0  e987fdffff                       jmp 0x40962c
00000000004098a5  0f1f00                           nop dword ptr [rax]
00000000004098a8  488b3db9da7c00                   mov rdi, qword ptr [rip + 0x7cdab9]
00000000004098af  e85cf5ffff                       call 0x408e10
00000000004098b4  e902feffff                       jmp 0x4096bb
00000000004098b9  0f1f8000000000                   nop dword ptr [rax]
00000000004098c0  31c0                             xor eax, eax
00000000004098c2  81eb95000000                     sub ebx, 0x95
00000000004098c8  e8a3321000                       call 0x50cb70
00000000004098cd  39c3                             cmp ebx, eax
00000000004098cf  0f8fd6fdffff                     jg 0x4096ab
00000000004098d5  488b3d8cda7c00                   mov rdi, qword ptr [rip + 0x7cda8c]
00000000004098dc  e83ffaffff                       call 0x409320
00000000004098e1  e9c5fdffff                       jmp 0x4096ab
00000000004098e6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004098f0  31c0                             xor eax, eax
00000000004098f2  e879321000                       call 0x50cb70
00000000004098f7  8b2d138d5d00                     mov ebp, dword ptr [rip + 0x5d8d13]
00000000004098fd  89c1                             mov ecx, eax
00000000004098ff  29e8                             sub eax, ebp
0000000000409901  3dc7000000                       cmp eax, 0xc7
0000000000409906  7f17                             jg 0x40991f
0000000000409908  bac8000000                       mov edx, 0xc8
000000000040990d  29c2                             sub edx, eax
000000000040990f  89d3                             mov ebx, edx
0000000000409911  bacdcccccc                       mov edx, 0xcccccccd
0000000000409916  89d8                             mov eax, ebx
0000000000409918  f7e2                             mul edx
000000000040991a  c1ea04                           shr edx, 4
000000000040991d  89d3                             mov ebx, edx
000000000040991f  8b15ef8c5d00                     mov edx, dword ptr [rip + 0x5d8cef]
0000000000409925  29ca                             sub edx, ecx
0000000000409927  81fac7000000                     cmp edx, 0xc7
000000000040992d  7f15                             jg 0x409944
000000000040992f  bbc8000000                       mov ebx, 0xc8
0000000000409934  29d3                             sub ebx, edx
0000000000409936  bacdcccccc                       mov edx, 0xcccccccd
000000000040993b  89d8                             mov eax, ebx
000000000040993d  f7e2                             mul edx
000000000040993f  c1ea04                           shr edx, 4
0000000000409942  89d3                             mov ebx, edx
0000000000409944  85ed                             test ebp, ebp
0000000000409946  0f84f4030000                     je 0x409d40
000000000040994c  448d437f                         lea r8d, [rbx + 0x7f]
0000000000409950  448d6379                         lea r12d, [rbx + 0x79]
0000000000409954  89dd                             mov ebp, ebx
0000000000409956  488d1db38b5d00                   lea rbx, [rip + 0x5d8bb3]
000000000040995d  488d3de4822200                   lea rdi, [rip + 0x2282e4]
0000000000409964  b915000000                       mov ecx, 0x15
0000000000409969  4c8b15f8d97c00                   mov r10, qword ptr [rip + 0x7cd9f8]
0000000000409970  4889de                           mov rsi, rbx
0000000000409973  f3a6                             repe cmpsb byte ptr [rsi], byte ptr [rdi]
0000000000409975  0f97c0                           seta al
0000000000409978  1c00                             sbb al, 0
000000000040997a  84c0                             test al, al
000000000040997c  0f8476040000                     je 0x409df8
0000000000409982  488d3dd4822200                   lea rdi, [rip + 0x2282d4]
0000000000409989  b918000000                       mov ecx, 0x18
000000000040998e  4889de                           mov rsi, rbx
0000000000409991  f3a6                             repe cmpsb byte ptr [rsi], byte ptr [rdi]
0000000000409993  0f97c0                           seta al
0000000000409996  1c00                             sbb al, 0
0000000000409998  84c0                             test al, al
000000000040999a  0f85d0030000                     jne 0x409d70
00000000004099a0  8d5577                           lea edx, [rbp + 0x77]
00000000004099a3  4c89d7                           mov rdi, r10
00000000004099a6  4531c9                           xor r9d, r9d
00000000004099a9  b965000000                       mov ecx, 0x65
00000000004099ae  31f6                             xor esi, esi
00000000004099b0  e80bf80a00                       call 0x4b91c0
00000000004099b5  488b3dacd97c00                   mov rdi, qword ptr [rip + 0x7cd9ac]
00000000004099bc  8d5578                           lea edx, [rbp + 0x78]
00000000004099bf  448d457e                         lea r8d, [rbp + 0x7e]
00000000004099c3  41b906000000                     mov r9d, 6
00000000004099c9  b97f000000                       mov ecx, 0x7f
00000000004099ce  be01000000                       mov esi, 1
00000000004099d3  e8b8050b00                       call 0x4b9f90
00000000004099d8  4883ec08                         sub rsp, 8
00000000004099dc  488b3d85d97c00                   mov rdi, qword ptr [rip + 0x7cd985]
00000000004099e3  488b151eef7c00                   mov rdx, qword ptr [rip + 0x7cef1e]
00000000004099ea  6a01                             push 1
00000000004099ec  41b901000000                     mov r9d, 1
00000000004099f2  4589e0                           mov r8d, r12d
00000000004099f5  b910000000                       mov ecx, 0x10
00000000004099fa  4889de                           mov rsi, rbx
00000000004099fd  e87e5a0b00                       call 0x4bf480
0000000000409a02  488b05f7ee7c00                   mov rax, qword ptr [rip + 0x7ceef7]
0000000000409a09  448d4c2d70                       lea r9d, [rbp + rbp + 0x70]
0000000000409a0e  41b86d000000                     mov r8d, 0x6d
0000000000409a14  488b00                           mov rax, qword ptr [rax]
0000000000409a17  488bb818070000                   mov rdi, qword ptr [rax + 0x718]
0000000000409a1e  6a0f                             push 0xf
0000000000409a20  6a11                             push 0x11
0000000000409a22  488b353fd97c00                   mov rsi, qword ptr [rip + 0x7cd93f]
0000000000409a29  31c9                             xor ecx, ecx
0000000000409a2b  31d2                             xor edx, edx
0000000000409a2d  e8fe150b00                       call 0x4bb030
0000000000409a32  4883c420                         add rsp, 0x20
0000000000409a36  e948fcffff                       jmp 0x409683
0000000000409a3b  0f1f440000                       nop dword ptr [rax + rax]
0000000000409a40  488b3d21d97c00                   mov rdi, qword ptr [rip + 0x7cd921]
0000000000409a47  e8b4600300                       call 0x43fb00
0000000000409a4c  e91dfeffff                       jmp 0x40986e
0000000000409a51  0f1f8000000000                   nop dword ptr [rax]
0000000000409a58  488b3d09d97c00                   mov rdi, qword ptr [rip + 0x7cd909]
0000000000409a5f  e83c650300                       call 0x43ffa0
0000000000409a64  e9f7fdffff                       jmp 0x409860
0000000000409a69  0f1f8000000000                   nop dword ptr [rax]
0000000000409a70  448b15713b7f00                   mov r10d, dword ptr [rip + 0x7f3b71]
0000000000409a77  4585d2                           test r10d, r10d
0000000000409a7a  0f84b9fbffff                     je 0x409639
0000000000409a80  448b0d49715a00                   mov r9d, dword ptr [rip + 0x5a7149]
0000000000409a87  4585c9                           test r9d, r9d
0000000000409a8a  0f8ee0040000                     jle 0x409f70
0000000000409a90  488b0569ee7c00                   mov rax, qword ptr [rip + 0x7cee69]
0000000000409a97  8b15f3528000                     mov edx, dword ptr [rip + 0x8052f3]
0000000000409a9d  488b08                           mov rcx, qword ptr [rax]
0000000000409aa0  89d0                             mov eax, edx
0000000000409aa2  c1e81f                           shr eax, 0x1f
0000000000409aa5  01d0                             add eax, edx
0000000000409aa7  d1f8                             sar eax, 1
0000000000409aa9  83e00f                           and eax, 0xf
0000000000409aac  488d04c528070000                 lea rax, [rax*8 + 0x728]
0000000000409ab4  488b3c01                         mov rdi, qword ptr [rcx + rax]
0000000000409ab8  6a0c                             push 0xc
0000000000409aba  6a0c                             push 0xc
0000000000409abc  31c9                             xor ecx, ecx
0000000000409abe  4889ee                           mov rsi, rbp
0000000000409ac1  41b903000000                     mov r9d, 3
0000000000409ac7  41b803000000                     mov r8d, 3
0000000000409acd  31d2                             xor edx, edx
0000000000409acf  e85c150b00                       call 0x4bb030
0000000000409ad4  59                               pop rcx
0000000000409ad5  5e                               pop rsi
0000000000409ad6  e95efbffff                       jmp 0x409639
0000000000409adb  0f1f440000                       nop dword ptr [rax + rax]
0000000000409ae0  8b05ee3a7f00                     mov eax, dword ptr [rip + 0x7f3aee]
0000000000409ae6  85c0                             test eax, eax
0000000000409ae8  0f849cfaffff                     je 0x40958a
0000000000409aee  31d2                             xor edx, edx
0000000000409af0  31f6                             xor esi, esi
0000000000409af2  41b905000000                     mov r9d, 5
0000000000409af8  41b880000000                     mov r8d, 0x80
0000000000409afe  b980000000                       mov ecx, 0x80
0000000000409b03  4889ef                           mov rdi, rbp
0000000000409b06  e885040b00                       call 0x4b9f90
0000000000409b0b  833dc23a7f0001                   cmp dword ptr [rip + 0x7f3ac2], 1
0000000000409b12  0f8468030000                     je 0x409e80
0000000000409b18  31d2                             xor edx, edx
0000000000409b1a  31f6                             xor esi, esi
0000000000409b1c  41b908000000                     mov r9d, 8
0000000000409b22  41b807000000                     mov r8d, 7
0000000000409b28  b980000000                       mov ecx, 0x80
0000000000409b2d  4889ef                           mov rdi, rbp
0000000000409b30  e85b040b00                       call 0x4b9f90
0000000000409b35  41b908000000                     mov r9d, 8
0000000000409b3b  41b87f000000                     mov r8d, 0x7f
0000000000409b41  b980000000                       mov ecx, 0x80
0000000000409b46  ba79000000                       mov edx, 0x79
0000000000409b4b  31f6                             xor esi, esi
0000000000409b4d  4889ef                           mov rdi, rbp
0000000000409b50  e83b040b00                       call 0x4b9f90
0000000000409b55  31f6                             xor esi, esi
0000000000409b57  bf07000000                       mov edi, 7
0000000000409b5c  e80f490b00                       call 0x4be470
0000000000409b61  31c0                             xor eax, eax
0000000000409b63  e808d30400                       call 0x456e70
0000000000409b68  488d542414                       lea rdx, [rsp + 0x14]
0000000000409b6d  488d742410                       lea rsi, [rsp + 0x10]
0000000000409b72  488d7c240c                       lea rdi, [rsp + 0xc]
0000000000409b77  e8a4681000                       call 0x510420
0000000000409b7c  448b6c2414                       mov r13d, dword ptr [rsp + 0x14]
0000000000409b81  4585ed                           test r13d, r13d
0000000000409b84  0f84ce010000                     je 0x409d58
0000000000409b8a  833dab4e800059                   cmp dword ptr [rip + 0x804eab], 0x59
0000000000409b91  0f8486030000                     je 0x409f1d
0000000000409b97  448b257e3c7f00                   mov r12d, dword ptr [rip + 0x7f3c7e]
0000000000409b9e  8b44240c                         mov eax, dword ptr [rsp + 0xc]
0000000000409ba2  8b542410                         mov edx, dword ptr [rsp + 0x10]
0000000000409ba6  4585e4                           test r12d, r12d
0000000000409ba9  7525                             jne 0x409bd0
0000000000409bab  833d223a7f0001                   cmp dword ptr [rip + 0x7f3a22], 1
0000000000409bb2  751c                             jne 0x409bd0
0000000000409bb4  448b5c2414                       mov r11d, dword ptr [rsp + 0x14]
0000000000409bb9  4585db                           test r11d, r11d
0000000000409bbc  7512                             jne 0x409bd0
0000000000409bbe  390590464c00                     cmp dword ptr [rip + 0x4c4690], eax
0000000000409bc4  750a                             jne 0x409bd0
0000000000409bc6  391584464c00                     cmp dword ptr [rip + 0x4c4684], edx
0000000000409bcc  740c                             je 0x409bda
0000000000409bce  6690                             nop 
0000000000409bd0  c705c6975d0000000000             mov dword ptr [rip + 0x5d97c6], 0
0000000000409bda  890574464c00                     mov dword ptr [rip + 0x4c4674], eax
0000000000409be0  31c0                             xor eax, eax
0000000000409be2  891568464c00                     mov dword ptr [rip + 0x4c4668], edx
0000000000409be8  e8832f1000                       call 0x50cb70
0000000000409bed  3b05ad975d00                     cmp eax, dword ptr [rip + 0x5d97ad]
0000000000409bf3  0f8c91f9ffff                     jl 0x40958a
0000000000409bf9  4863053c4e8000                   movsxd rax, dword ptr [rip + 0x804e3c]
0000000000409c00  85c0                             test eax, eax
0000000000409c02  0f8482f9ffff                     je 0x40958a
0000000000409c08  488b15f1ec7c00                   mov rdx, qword ptr [rip + 0x7cecf1]
0000000000409c0f  488b12                           mov rdx, qword ptr [rdx]
0000000000409c12  488b3cc2                         mov rdi, qword ptr [rdx + rax*8]
0000000000409c16  8b7704                           mov esi, dword ptr [rdi + 4]
0000000000409c19  8b0f                             mov ecx, dword ptr [rdi]
0000000000409c1b  89f2                             mov edx, esi
0000000000409c1d  89c8                             mov eax, ecx
0000000000409c1f  56                               push rsi
0000000000409c20  c1ea1f                           shr edx, 0x1f
0000000000409c23  51                               push rcx
0000000000409c24  c1e81f                           shr eax, 0x1f
0000000000409c27  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
0000000000409c2c  448b44241c                       mov r8d, dword ptr [rsp + 0x1c]
0000000000409c31  01f2                             add edx, esi
0000000000409c33  01c8                             add eax, ecx
0000000000409c35  d1fa                             sar edx, 1
0000000000409c37  31c9                             xor ecx, ecx
0000000000409c39  d1f8                             sar eax, 1
0000000000409c3b  4889ee                           mov rsi, rbp
0000000000409c3e  4129d1                           sub r9d, edx
0000000000409c41  4129c0                           sub r8d, eax
0000000000409c44  31d2                             xor edx, edx
0000000000409c46  e8e5130b00                       call 0x4bb030
0000000000409c4b  833de24d8000ff                   cmp dword ptr [rip + 0x804de2], -1
0000000000409c52  4159                             pop r9
0000000000409c54  415a                             pop r10
0000000000409c56  0f842ef9ffff                     je 0x40958a
0000000000409c5c  8b7c2410                         mov edi, dword ptr [rsp + 0x10]
0000000000409c60  8b44240c                         mov eax, dword ptr [rsp + 0xc]
0000000000409c64  41b907000000                     mov r9d, 7
0000000000409c6a  8d480e                           lea ecx, [rax + 0xe]
0000000000409c6d  8d5704                           lea edx, [rdi + 4]
0000000000409c70  8d7006                           lea esi, [rax + 6]
0000000000409c73  448d470a                         lea r8d, [rdi + 0xa]
0000000000409c77  4889ef                           mov rdi, rbp
0000000000409c7a  e811030b00                       call 0x4b9f90
0000000000409c7f  448b05ae4d8000                   mov r8d, dword ptr [rip + 0x804dae]
0000000000409c86  488d0da67f2200                   lea rcx, [rip + 0x227fa6]
0000000000409c8d  488d3dac027100                   lea rdi, [rip + 0x7102ac]
0000000000409c94  ba00100000                       mov edx, 0x1000
0000000000409c99  be01000000                       mov esi, 1
0000000000409c9e  31c0                             xor eax, eax
0000000000409ca0  e82ba6ffff                       call 0x4042d0
0000000000409ca5  8b44240c                         mov eax, dword ptr [rsp + 0xc]
0000000000409ca9  4883ec08                         sub rsp, 8
0000000000409cad  488b1554ec7c00                   mov rdx, qword ptr [rip + 0x7cec54]
0000000000409cb4  6a0e                             push 0xe
0000000000409cb6  488d3583027100                   lea rsi, [rip + 0x710283]
0000000000409cbd  4889ef                           mov rdi, rbp
0000000000409cc0  41b901000000                     mov r9d, 1
0000000000409cc6  8d4807                           lea ecx, [rax + 7]
0000000000409cc9  8b442420                         mov eax, dword ptr [rsp + 0x20]
0000000000409ccd  448d4005                         lea r8d, [rax + 5]
0000000000409cd1  e8aa570b00                       call 0x4bf480
0000000000409cd6  5f                               pop rdi
0000000000409cd7  4158                             pop r8
0000000000409cd9  e9acf8ffff                       jmp 0x40958a
0000000000409cde  6690                             nop 
0000000000409ce0  488b3d81d67c00                   mov rdi, qword ptr [rip + 0x7cd681]
0000000000409ce7  41b908000000                     mov r9d, 8
0000000000409ced  41b87f000000                     mov r8d, 0x7f
0000000000409cf3  b980000000                       mov ecx, 0x80
0000000000409cf8  ba79000000                       mov edx, 0x79
0000000000409cfd  31f6                             xor esi, esi
0000000000409cff  e88c020b00                       call 0x4b9f90
0000000000409d04  4883ec08                         sub rsp, 8
0000000000409d08  488b15f9eb7c00                   mov rdx, qword ptr [rip + 0x7cebf9]
0000000000409d0f  488b3d52d67c00                   mov rdi, qword ptr [rip + 0x7cd652]
0000000000409d16  6a02                             push 2
0000000000409d18  488d35fd885d00                   lea rsi, [rip + 0x5d88fd]
0000000000409d1f  41b901000000                     mov r9d, 1
0000000000409d25  41b87a000000                     mov r8d, 0x7a
0000000000409d2b  b901000000                       mov ecx, 1
0000000000409d30  e84b570b00                       call 0x4bf480
0000000000409d35  5b                               pop rbx
0000000000409d36  5d                               pop rbp
0000000000409d37  e947f9ffff                       jmp 0x409683
0000000000409d3c  0f1f4000                         nop dword ptr [rax]
0000000000409d40  41bc79000000                     mov r12d, 0x79
0000000000409d46  41b87f000000                     mov r8d, 0x7f
0000000000409d4c  e905fcffff                       jmp 0x409956
0000000000409d51  0f1f8000000000                   nop dword ptr [rax]
0000000000409d58  c705d24c8000ffffffff             mov dword ptr [rip + 0x804cd2], 0xffffffff
0000000000409d62  e923feffff                       jmp 0x409b8a
0000000000409d67  660f1f840000000000               nop word ptr [rax + rax]
0000000000409d70  4489e2                           mov edx, r12d
0000000000409d73  4c89d7                           mov rdi, r10
0000000000409d76  41b908000000                     mov r9d, 8
0000000000409d7c  b980000000                       mov ecx, 0x80
0000000000409d81  31f6                             xor esi, esi
0000000000409d83  e808020b00                       call 0x4b9f90
0000000000409d88  8b058a885d00                     mov eax, dword ptr [rip + 0x5d888a]
0000000000409d8e  4883ec08                         sub rsp, 8
0000000000409d92  488b156feb7c00                   mov rdx, qword ptr [rip + 0x7ceb6f]
0000000000409d99  488b3dc8d57c00                   mov rdi, qword ptr [rip + 0x7cd5c8]
0000000000409da0  448d457a                         lea r8d, [rbp + 0x7a]
0000000000409da4  41b901000000                     mov r9d, 1
0000000000409daa  b901000000                       mov ecx, 1
0000000000409daf  4889de                           mov rsi, rbx
0000000000409db2  50                               push rax
0000000000409db3  e8c8560b00                       call 0x4bf480
0000000000409db8  415c                             pop r12
0000000000409dba  415d                             pop r13
0000000000409dbc  e9c2f8ffff                       jmp 0x409683
0000000000409dc1  0f1f8000000000                   nop dword ptr [rax]
0000000000409dc8  488b0599d57c00                   mov rax, qword ptr [rip + 0x7cd599]
0000000000409dcf  4183c401                         add r12d, 1
0000000000409dd3  4101ee                           add r14d, ebp
0000000000409dd6  8b5004                           mov edx, dword ptr [rax + 4]
0000000000409dd9  8d427f                           lea eax, [rdx + 0x7f]
0000000000409ddc  85d2                             test edx, edx
0000000000409dde  0f49c2                           cmovns eax, edx
0000000000409de1  c1f807                           sar eax, 7
0000000000409de4  4439e0                           cmp eax, r12d
0000000000409de7  0f8f4bf9ffff                     jg 0x409738
0000000000409ded  e960faffff                       jmp 0x409852
0000000000409df2  660f1f440000                     nop word ptr [rax + rax]
0000000000409df8  8d5577                           lea edx, [rbp + 0x77]
0000000000409dfb  4c89d7                           mov rdi, r10
0000000000409dfe  4531c9                           xor r9d, r9d
0000000000409e01  b965000000                       mov ecx, 0x65
0000000000409e06  31f6                             xor esi, esi
0000000000409e08  e8b3f30a00                       call 0x4b91c0
0000000000409e0d  488b3d54d57c00                   mov rdi, qword ptr [rip + 0x7cd554]
0000000000409e14  8d5578                           lea edx, [rbp + 0x78]
0000000000409e17  448d457e                         lea r8d, [rbp + 0x7e]
0000000000409e1b  41b906000000                     mov r9d, 6
0000000000409e21  b964000000                       mov ecx, 0x64
0000000000409e26  be01000000                       mov esi, 1
0000000000409e2b  e860010b00                       call 0x4b9f90
0000000000409e30  4883ec08                         sub rsp, 8
0000000000409e34  488b3d2dd57c00                   mov rdi, qword ptr [rip + 0x7cd52d]
0000000000409e3b  488b15c6ea7c00                   mov rdx, qword ptr [rip + 0x7ceac6]
0000000000409e42  6a01                             push 1
0000000000409e44  41b901000000                     mov r9d, 1
0000000000409e4a  4589e0                           mov r8d, r12d
0000000000409e4d  b910000000                       mov ecx, 0x10
0000000000409e52  4889de                           mov rsi, rbx
0000000000409e55  e826560b00                       call 0x4bf480
0000000000409e5a  488b059fea7c00                   mov rax, qword ptr [rip + 0x7cea9f]
0000000000409e61  448d4c2d70                       lea r9d, [rbp + rbp + 0x70]
0000000000409e66  41b802000000                     mov r8d, 2
0000000000409e6c  488b00                           mov rax, qword ptr [rax]
0000000000409e6f  488bb810070000                   mov rdi, qword ptr [rax + 0x710]
0000000000409e76  6a0f                             push 0xf
0000000000409e78  6a0f                             push 0xf
0000000000409e7a  e9a3fbffff                       jmp 0x409a22
0000000000409e7f  90                               nop 
0000000000409e80  8b051a6d5a00                     mov eax, dword ptr [rip + 0x5a6d1a]
0000000000409e86  83f801                           cmp eax, 1
0000000000409e89  0f8667010000                     jbe 0x409ff6
0000000000409e8f  83f802                           cmp eax, 2
0000000000409e92  0f8486010000                     je 0x40a01e
0000000000409e98  83f803                           cmp eax, 3
0000000000409e9b  0f8577fcffff                     jne 0x409b18
0000000000409ea1  41b905000000                     mov r9d, 5
0000000000409ea7  41b880000000                     mov r8d, 0x80
0000000000409ead  b980000000                       mov ecx, 0x80
0000000000409eb2  31d2                             xor edx, edx
0000000000409eb4  31f6                             xor esi, esi
0000000000409eb6  4889ef                           mov rdi, rbp
0000000000409eb9  e8d2000b00                       call 0x4b9f90
0000000000409ebe  e955fcffff                       jmp 0x409b18
0000000000409ec3  0f1f440000                       nop dword ptr [rax + rax]
0000000000409ec8  31ff                             xor edi, edi
0000000000409eca  e8b1e7ffff                       call 0x408680
0000000000409ecf  e9fcf6ffff                       jmp 0x4095d0
0000000000409ed4  488b35ede97c00                   mov rsi, qword ptr [rip + 0x7ce9ed]
0000000000409edb  6880000000                       push 0x80
0000000000409ee0  31d2                             xor edx, edx
0000000000409ee2  6880000000                       push 0x80
0000000000409ee7  4531c9                           xor r9d, r9d
0000000000409eea  4531c0                           xor r8d, r8d
0000000000409eed  31c9                             xor ecx, ecx
0000000000409eef  4889ef                           mov rdi, rbp
0000000000409ef2  e849720c00                       call 0x4d1140
0000000000409ef7  58                               pop rax
0000000000409ef8  5a                               pop rdx
0000000000409ef9  e9d2f6ffff                       jmp 0x4095d0
0000000000409efe  31c0                             xor eax, eax
0000000000409f00  e80bb60900                       call 0x4a5510
0000000000409f05  e980f6ffff                       jmp 0x40958a
0000000000409f0a  4889ef                           mov rdi, rbp
0000000000409f0d  e8ce7d0900                       call 0x4a1ce0
0000000000409f12  8b05704e8000                     mov eax, dword ptr [rip + 0x804e70]
0000000000409f18  e964f6ffff                       jmp 0x409581
0000000000409f1d  31c0                             xor eax, eax
0000000000409f1f  e8bc470b00                       call 0x4be6e0
0000000000409f24  89c7                             mov edi, eax
0000000000409f26  e865470b00                       call 0x4be690
0000000000409f2b  4885c0                           test rax, rax
0000000000409f2e  0f8463fcffff                     je 0x409b97
0000000000409f34  83780c13                         cmp dword ptr [rax + 0xc], 0x13
0000000000409f38  0f8f59fcffff                     jg 0x409b97
0000000000409f3e  83781013                         cmp dword ptr [rax + 0x10], 0x13
0000000000409f42  0f8f4ffcffff                     jg 0x409b97
0000000000409f48  f6401401                         test byte ptr [rax + 0x14], 1
0000000000409f4c  0f8445fcffff                     je 0x409b97
0000000000409f52  837c241401                       cmp dword ptr [rsp + 0x14], 1
0000000000409f57  19c0                             sbb eax, eax
0000000000409f59  83c05e                           add eax, 0x5e
0000000000409f5c  8905da4a8000                     mov dword ptr [rip + 0x804ada], eax
0000000000409f62  e930fcffff                       jmp 0x409b97
0000000000409f67  660f1f840000000000               nop word ptr [rax + rax]
0000000000409f70  448b05a1424c00                   mov r8d, dword ptr [rip + 0x4c42a1]
0000000000409f77  4585c0                           test r8d, r8d
0000000000409f7a  0f8510fbffff                     jne 0x409a90
0000000000409f80  8b3d8e865d00                     mov edi, dword ptr [rip + 0x5d868e]
0000000000409f86  85ff                             test edi, edi
0000000000409f88  7422                             je 0x409fac
0000000000409f8a  488d357f855d00                   lea rsi, [rip + 0x5d857f]
0000000000409f91  488d3da07c2200                   lea rdi, [rip + 0x227ca0]
0000000000409f98  b910000000                       mov ecx, 0x10
0000000000409f9d  f3a6                             repe cmpsb byte ptr [rsi], byte ptr [rdi]
0000000000409f9f  0f97c0                           seta al
0000000000409fa2  1c00                             sbb al, 0
0000000000409fa4  84c0                             test al, al
0000000000409fa6  0f84e4faffff                     je 0x409a90
0000000000409fac  488b054de97c00                   mov rax, qword ptr [rip + 0x7ce94d]
0000000000409fb3  488b30                           mov rsi, qword ptr [rax]
0000000000409fb6  8b05d44d8000                     mov eax, dword ptr [rip + 0x804dd4]
0000000000409fbc  89c1                             mov ecx, eax
0000000000409fbe  c1e91f                           shr ecx, 0x1f
0000000000409fc1  01c1                             add ecx, eax
0000000000409fc3  d1f9                             sar ecx, 1
0000000000409fc5  83f8ff                           cmp eax, -1
0000000000409fc8  7c79                             jl 0x40a043
0000000000409fca  baabaaaaaa                       mov edx, 0xaaaaaaab
0000000000409fcf  89c8                             mov eax, ecx
0000000000409fd1  f7e2                             mul edx
0000000000409fd3  89d0                             mov eax, edx
0000000000409fd5  c1e803                           shr eax, 3
0000000000409fd8  8d0440                           lea eax, [rax + rax*2]
0000000000409fdb  c1e002                           shl eax, 2
0000000000409fde  29c1                             sub ecx, eax
0000000000409fe0  89c8                             mov eax, ecx
0000000000409fe2  05d4000000                       add eax, 0xd4
0000000000409fe7  4898                             cdqe 
0000000000409fe9  48c1e003                         shl rax, 3
0000000000409fed  488b3c06                         mov rdi, qword ptr [rsi + rax]
0000000000409ff1  e9c2faffff                       jmp 0x409ab8
0000000000409ff6  41b901000000                     mov r9d, 1
0000000000409ffc  41b880000000                     mov r8d, 0x80
000000000040a002  b980000000                       mov ecx, 0x80
000000000040a007  31d2                             xor edx, edx
000000000040a009  31f6                             xor esi, esi
000000000040a00b  4889ef                           mov rdi, rbp
000000000040a00e  e87dff0a00                       call 0x4b9f90
000000000040a013  8b05876b5a00                     mov eax, dword ptr [rip + 0x5a6b87]
000000000040a019  e971feffff                       jmp 0x409e8f
000000000040a01e  4531c9                           xor r9d, r9d
000000000040a021  41b880000000                     mov r8d, 0x80
000000000040a027  b980000000                       mov ecx, 0x80
000000000040a02c  31d2                             xor edx, edx
000000000040a02e  31f6                             xor esi, esi
000000000040a030  4889ef                           mov rdi, rbp
000000000040a033  e858ff0a00                       call 0x4b9f90
000000000040a038  8b05626b5a00                     mov eax, dword ptr [rip + 0x5a6b62]
000000000040a03e  e955feffff                       jmp 0x409e98
000000000040a043  f7d9                             neg ecx
000000000040a045  bfabaaaaaa                       mov edi, 0xaaaaaaab
000000000040a04a  89c8                             mov eax, ecx
000000000040a04c  f7e7                             mul edi
000000000040a04e  89d0                             mov eax, edx
000000000040a050  c1e803                           shr eax, 3
000000000040a053  8d0440                           lea eax, [rax + rax*2]
000000000040a056  c1e002                           shl eax, 2
000000000040a059  29c8                             sub eax, ecx
000000000040a05b  8d480c                           lea ecx, [rax + 0xc]
000000000040a05e  89c8                             mov eax, ecx
000000000040a060  f7e7                             mul edi
000000000040a062  e96cffffff                       jmp 0x409fd3
000000000040a067  e834a0ffff                       call 0x4040a0
