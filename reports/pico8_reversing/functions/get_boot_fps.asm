0000000000409490  31c0                             xor eax, eax
0000000000409492  833db34d4c0005                   cmp dword ptr [rip + 0x4c4db3], 5
0000000000409499  7f05                             jg 0x4094a0
000000000040949b  f3c3                             repz ret 
000000000040949d  0f1f00                           nop dword ptr [rax]
00000000004094a0  4883ec08                         sub rsp, 8
00000000004094a4  e8c7361000                       call 0x50cb70
00000000004094a9  8b3d9d4d4c00                     mov edi, dword ptr [rip + 0x4c4d9d]
00000000004094af  2b05934d4c00                     sub eax, dword ptr [rip + 0x4c4d93]
00000000004094b5  4883c408                         add rsp, 8
00000000004094b9  8d77fb                           lea esi, [rdi - 5]
00000000004094bc  99                               cdq 
00000000004094bd  f7fe                             idiv esi
00000000004094bf  89c1                             mov ecx, eax
00000000004094c1  b8e8030000                       mov eax, 0x3e8
00000000004094c6  99                               cdq 
00000000004094c7  f7f9                             idiv ecx
00000000004094c9  c3                               ret 
