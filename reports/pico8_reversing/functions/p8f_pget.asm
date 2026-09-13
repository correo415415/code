00000000004622f0  48638fd0000000                   movsxd rcx, dword ptr [rdi + 0xd0]
00000000004622f7  31c0                             xor eax, eax
00000000004622f9  83f901                           cmp ecx, 1
00000000004622fc  0f8eae000000                     jle 0x4623b0
0000000000462302  53                               push rbx
0000000000462303  4889c8                           mov rax, rcx
0000000000462306  4889fb                           mov rbx, rdi
0000000000462309  48c1e004                         shl rax, 4
000000000046230d  4883ec10                         sub rsp, 0x10
0000000000462311  488b5710                         mov rdx, qword ptr [rdi + 0x10]
0000000000462315  4889d7                           mov rdi, rdx
0000000000462318  4829c7                           sub rdi, rax
000000000046231b  837f0803                         cmp dword ptr [rdi + 8], 3
000000000046231f  7567                             jne 0x462388
0000000000462321  8b37                             mov esi, dword ptr [rdi]
0000000000462323  c1fe10                           sar esi, 0x10
0000000000462326  bf01000000                       mov edi, 1
000000000046232b  4829cf                           sub rdi, rcx
000000000046232e  48c1e704                         shl rdi, 4
0000000000462332  4801d7                           add rdi, rdx
0000000000462335  837f0803                         cmp dword ptr [rdi + 8], 3
0000000000462339  0f85a1000000                     jne 0x4623e0
000000000046233f  8b07                             mov eax, dword ptr [rdi]
0000000000462341  c1f810                           sar eax, 0x10
0000000000462344  2b35a2b47900                     sub esi, dword ptr [rip + 0x79b4a2]
000000000046234a  2b05a0b47900                     sub eax, dword ptr [rip + 0x79b4a0]
0000000000462350  f605ef227a0010                   test byte ptr [rip + 0x7a22ef], 0x10
0000000000462357  740c                             je 0x462365
0000000000462359  6683fe7f                         cmp si, 0x7f
000000000046235d  7759                             ja 0x4623b8
000000000046235f  6683f87f                         cmp ax, 0x7f
0000000000462363  7753                             ja 0x4623b8
0000000000462365  488b3d14657700                   mov rdi, qword ptr [rip + 0x776514]
000000000046236c  0fbfd0                           movsx edx, ax
000000000046236f  0fbff6                           movsx esi, si
0000000000462372  e8b9850500                       call 0x4ba930
0000000000462377  4883c410                         add rsp, 0x10
000000000046237b  c1e010                           shl eax, 0x10
000000000046237e  2500000f00                       and eax, 0xf0000
0000000000462383  5b                               pop rbx
0000000000462384  c3                               ret 
0000000000462385  0f1f00                           nop dword ptr [rax]
0000000000462388  e8335bfbff                       call 0x417ec0
000000000046238d  48638bd0000000                   movsxd rcx, dword ptr [rbx + 0xd0]
0000000000462394  c1f810                           sar eax, 0x10
0000000000462397  488b5310                         mov rdx, qword ptr [rbx + 0x10]
000000000046239b  89c6                             mov esi, eax
000000000046239d  31c0                             xor eax, eax
000000000046239f  83f901                           cmp ecx, 1
00000000004623a2  7ea0                             jle 0x462344
00000000004623a4  eb80                             jmp 0x462326
00000000004623a6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004623b0  f3c3                             repz ret 
00000000004623b2  660f1f440000                     nop word ptr [rax + rax]
00000000004623b8  488b3549c37900                   mov rsi, qword ptr [rip + 0x79c349]
00000000004623bf  488d3d9a647700                   lea rdi, [rip + 0x77649a]
00000000004623c6  ba5b5f0000                       mov edx, 0x5f5b
00000000004623cb  e8d05e0100                       call 0x4782a0
00000000004623d0  4883c410                         add rsp, 0x10
00000000004623d4  c1e010                           shl eax, 0x10
00000000004623d7  5b                               pop rbx
00000000004623d8  c3                               ret 
00000000004623d9  0f1f8000000000                   nop dword ptr [rax]
00000000004623e0  8974240c                         mov dword ptr [rsp + 0xc], esi
00000000004623e4  e8d75afbff                       call 0x417ec0
00000000004623e9  8b74240c                         mov esi, dword ptr [rsp + 0xc]
00000000004623ed  c1f810                           sar eax, 0x10
00000000004623f0  e94fffffff                       jmp 0x462344
