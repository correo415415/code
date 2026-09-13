000000000041a3e0  4157                             push r15
000000000041a3e2  4156                             push r14
000000000041a3e4  4989fe                           mov r14, rdi
000000000041a3e7  4155                             push r13
000000000041a3e9  4154                             push r12
000000000041a3eb  55                               push rbp
000000000041a3ec  53                               push rbx
000000000041a3ed  4883ec78                         sub rsp, 0x78
000000000041a3f1  4c8b6720                         mov r12, qword ptr [rdi + 0x20]
000000000041a3f5  64488b042528000000               mov rax, qword ptr fs:[0x28]
000000000041a3fe  4889442468                       mov qword ptr [rsp + 0x68], rax
000000000041a403  31c0                             xor eax, eax
000000000041a405  488d7c2464                       lea rdi, [rsp + 0x64]
000000000041a40a  498b442438                       mov rax, qword ptr [r12 + 0x38]
000000000041a40f  4d89e7                           mov r15, r12
000000000041a412  48897c2430                       mov qword ptr [rsp + 0x30], rdi
000000000041a417  660f1f840000000000               nop word ptr [rax + rax]
000000000041a420  498b17                           mov rdx, qword ptr [r15]
000000000041a423  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041a427  448b0d42424b00                   mov r9d, dword ptr [rip + 0x4b4242]
000000000041a42e  8b3540424b00                     mov esi, dword ptr [rip + 0x4b4240]
000000000041a434  448b05c1e24a00                   mov r8d, dword ptr [rip + 0x4ae2c1]
000000000041a43b  488b3a                           mov rdi, qword ptr [rdx]
000000000041a43e  488b5718                         mov rdx, qword ptr [rdi + 0x18]
000000000041a442  48897c2410                       mov qword ptr [rsp + 0x10], rdi
000000000041a447  488b7a10                         mov rdi, qword ptr [rdx + 0x10]
000000000041a44b  48897c2408                       mov qword ptr [rsp + 8], rdi
000000000041a450  498d7e60                         lea rdi, [r14 + 0x60]
000000000041a454  48897c2420                       mov qword ptr [rsp + 0x20], rdi
000000000041a459  0f1f8000000000                   nop dword ptr [rax]
000000000041a460  488d5004                         lea rdx, [rax + 4]
000000000041a464  49895738                         mov qword ptr [r15 + 0x38], rdx
000000000041a468  8b28                             mov ebp, dword ptr [rax]
000000000041a46a  4489c8                           mov eax, r9d
000000000041a46d  09f0                             or eax, esi
000000000041a46f  4439c0                           cmp eax, r8d
000000000041a472  0f8fd8170000                     jg 0x41bc50
000000000041a478  4189ec                           mov r12d, ebp
000000000041a47b  89e8                             mov eax, ebp
000000000041a47d  8d4e02                           lea ecx, [rsi + 2]
000000000041a480  41c1ec06                         shr r12d, 6
000000000041a484  83e03f                           and eax, 0x3f
000000000041a487  410fb6fc                         movzx edi, r12b
000000000041a48b  890de3414b00                     mov dword ptr [rip + 0x4b41e3], ecx
000000000041a491  4989fd                           mov r13, rdi
000000000041a494  4989fc                           mov r12, rdi
000000000041a497  49c1e504                         shl r13, 4
000000000041a49b  83f833                           cmp eax, 0x33
000000000041a49e  4b8d1c2b                         lea rbx, [r11 + r13]
000000000041a4a2  0f87770e0000                     ja 0x41b31f
000000000041a4a8  488d15e1912100                   lea rdx, [rip + 0x2191e1]
000000000041a4af  48630482                         movsxd rax, dword ptr [rdx + rax*4]
000000000041a4b3  4801d0                           add rax, rdx
000000000041a4b6  ffe0                             jmp rax
000000000041a4b8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041a4c0  488b7c2410                       mov rdi, qword ptr [rsp + 0x10]
000000000041a4c5  c1ed0e                           shr ebp, 0xe
000000000041a4c8  488b4718                         mov rax, qword ptr [rdi + 0x18]
000000000041a4cc  4c8d6f20                         lea r13, [rdi + 0x20]
000000000041a4d0  488b4020                         mov rax, qword ptr [rax + 0x20]
000000000041a4d4  4c8b24e8                         mov r12, qword ptr [rax + rbp*8]
000000000041a4d8  498b742440                       mov rsi, qword ptr [r12 + 0x40]
000000000041a4dd  458b542450                       mov r10d, dword ptr [r12 + 0x50]
000000000041a4e2  498b4c2438                       mov rcx, qword ptr [r12 + 0x38]
000000000041a4e7  4885f6                           test rsi, rsi
000000000041a4ea  0f84a31e0000                     je 0x41c393
000000000041a4f0  4585d2                           test r10d, r10d
000000000041a4f3  0f8ef5180000                     jle 0x41bdee
000000000041a4f9  418d42ff                         lea eax, [r10 - 1]
000000000041a4fd  31d2                             xor edx, edx
000000000041a4ff  4889c5                           mov rbp, rax
000000000041a502  488d3cc508000000                 lea rdi, [rax*8 + 8]
000000000041a50a  eb23                             jmp 0x41a52f
000000000041a50c  0f1f4000                         nop dword ptr [rax]
000000000041a510  4c8b441620                       mov r8, qword ptr [rsi + rdx + 0x20]
000000000041a515  48c1e004                         shl rax, 4
000000000041a519  4c01d8                           add rax, r11
000000000041a51c  49394010                         cmp qword ptr [r8 + 0x10], rax
000000000041a520  752d                             jne 0x41a54f
000000000041a522  4883c208                         add rdx, 8
000000000041a526  4839d7                           cmp rdi, rdx
000000000041a529  0f84bf180000                     je 0x41bdee
000000000041a52f  807c510800                       cmp byte ptr [rcx + rdx*2 + 8], 0
000000000041a534  0fb6445109                       movzx eax, byte ptr [rcx + rdx*2 + 9]
000000000041a539  75d5                             jne 0x41a510
000000000041a53b  498b44c500                       mov rax, qword ptr [r13 + rax*8]
000000000041a540  4c8b441620                       mov r8, qword ptr [rsi + rdx + 0x20]
000000000041a545  488b4010                         mov rax, qword ptr [rax + 0x10]
000000000041a549  49394010                         cmp qword ptr [r8 + 0x10], rax
000000000041a54d  74d3                             je 0x41a522
000000000041a54f  8d14ed28000000                   lea edx, [rbp*8 + 0x28]
000000000041a556  be06000000                       mov esi, 6
000000000041a55b  4c89f7                           mov rdi, r14
000000000041a55e  4c895c2440                       mov qword ptr [rsp + 0x40], r11
000000000041a563  48894c2438                       mov qword ptr [rsp + 0x38], rcx
000000000041a568  4863d2                           movsxd rdx, edx
000000000041a56b  4489542428                       mov dword ptr [rsp + 0x28], r10d
000000000041a570  e83b350000                       call 0x41dab0
000000000041a575  448b542428                       mov r10d, dword ptr [rsp + 0x28]
000000000041a57a  488b4c2438                       mov rcx, qword ptr [rsp + 0x38]
000000000041a57f  4c8b5c2440                       mov r11, qword ptr [rsp + 0x40]
000000000041a584  4889442418                       mov qword ptr [rsp + 0x18], rax
000000000041a589  48c7401800000000                 mov qword ptr [rax + 0x18], 0
000000000041a591  4488500a                         mov byte ptr [rax + 0xa], r10b
000000000041a595  4963c2                           movsxd rax, r10d
000000000041a598  488d14ed08000000                 lea rdx, [rbp*8 + 8]
000000000041a5a0  31f6                             xor esi, esi
000000000041a5a2  488d3cc520000000                 lea rdi, [rax*8 + 0x20]
000000000041a5aa  4489542428                       mov dword ptr [rsp + 0x28], r10d
000000000041a5af  4c895c2440                       mov qword ptr [rsp + 0x40], r11
000000000041a5b4  48894c2438                       mov qword ptr [rsp + 0x38], rcx
000000000041a5b9  4829d7                           sub rdi, rdx
000000000041a5bc  48037c2418                       add rdi, qword ptr [rsp + 0x18]
000000000041a5c1  e85a93feff                       call 0x403920
000000000041a5c6  448b542428                       mov r10d, dword ptr [rsp + 0x28]
000000000041a5cb  488b442418                       mov rax, qword ptr [rsp + 0x18]
000000000041a5d0  4d8b4e18                         mov r9, qword ptr [r14 + 0x18]
000000000041a5d4  4585d2                           test r10d, r10d
000000000041a5d7  4c896018                         mov qword ptr [rax + 0x18], r12
000000000041a5db  488903                           mov qword ptr [rbx], rax
000000000041a5de  c7430846000000                   mov dword ptr [rbx + 8], 0x46
000000000041a5e5  0f8e0d1e0000                     jle 0x41c3f8
000000000041a5eb  488b4c2438                       mov rcx, qword ptr [rsp + 0x38]
000000000041a5f0  4c8d5020                         lea r10, [rax + 0x20]
000000000041a5f4  488d44e828                       lea rax, [rax + rbp*8 + 0x28]
000000000041a5f9  4c897c2448                       mov qword ptr [rsp + 0x48], r15
000000000041a5fe  4c89642450                       mov qword ptr [rsp + 0x50], r12
000000000041a603  48895c2458                       mov qword ptr [rsp + 0x58], rbx
000000000041a608  4d89d4                           mov r12, r10
000000000041a60b  4889c3                           mov rbx, rax
000000000041a60e  4c8d4109                         lea r8, [rcx + 9]
000000000041a612  4d89f2                           mov r10, r14
000000000041a615  4d89ee                           mov r14, r13
000000000041a618  4d89c7                           mov r15, r8
000000000041a61b  eb1d                             jmp 0x41a63a
000000000041a61d  0f1f00                           nop dword ptr [rax]
000000000041a620  498b04ee                         mov rax, qword ptr [r14 + rbp*8]
000000000041a624  4983c408                         add r12, 8
000000000041a628  4983c710                         add r15, 0x10
000000000041a62c  49894424f8                       mov qword ptr [r12 - 8], rax
000000000041a631  4939dc                           cmp r12, rbx
000000000041a634  0f84d3000000                     je 0x41a70d
000000000041a63a  41807fff00                       cmp byte ptr [r15 - 1], 0
000000000041a63f  410fb62f                         movzx ebp, byte ptr [r15]
000000000041a643  74db                             je 0x41a620
000000000041a645  498b4260                         mov rax, qword ptr [r10 + 0x60]
000000000041a649  48c1e504                         shl rbp, 4
000000000041a64d  48036c2440                       add rbp, qword ptr [rsp + 0x40]
000000000041a652  4885c0                           test rax, rax
000000000041a655  0f840b200000                     je 0x41c666
000000000041a65b  483b6810                         cmp rbp, qword ptr [rax + 0x10]
000000000041a65f  4989c5                           mov r13, rax
000000000041a662  0f87fe1f0000                     ja 0x41c666
000000000041a668  7518                             jne 0x41a682
000000000041a66a  e9731f0000                       jmp 0x41c5e2
000000000041a66f  90                               nop 
000000000041a670  483b6810                         cmp rbp, qword ptr [rax + 0x10]
000000000041a674  4889c2                           mov rdx, rax
000000000041a677  7711                             ja 0x41a68a
000000000041a679  0f84661f0000                     je 0x41c5e5
000000000041a67f  4989c5                           mov r13, rax
000000000041a682  488b00                           mov rax, qword ptr [rax]
000000000041a685  4885c0                           test rax, rax
000000000041a688  75e6                             jne 0x41a670
000000000041a68a  ba0a000000                       mov edx, 0xa
000000000041a68f  4c89d7                           mov rdi, r10
000000000041a692  b928000000                       mov ecx, 0x28
000000000041a697  31f6                             xor esi, esi
000000000041a699  4c894c2438                       mov qword ptr [rsp + 0x38], r9
000000000041a69e  4c89542428                       mov qword ptr [rsp + 0x28], r10
000000000041a6a3  e838310000                       call 0x41d7e0
000000000041a6a8  4c8b4c2438                       mov r9, qword ptr [rsp + 0x38]
000000000041a6ad  4c8b542428                       mov r10, qword ptr [rsp + 0x28]
000000000041a6b2  410fb65154                       movzx edx, byte ptr [r9 + 0x54]
000000000041a6b7  c640080a                         mov byte ptr [rax + 8], 0xa
000000000041a6bb  83e203                           and edx, 3
000000000041a6be  885009                           mov byte ptr [rax + 9], dl
000000000041a6c1  498b5500                         mov rdx, qword ptr [r13]
000000000041a6c5  488910                           mov qword ptr [rax], rdx
000000000041a6c8  49894500                         mov qword ptr [r13], rax
000000000041a6cc  4889c2                           mov rdx, rax
000000000041a6cf  48896810                         mov qword ptr [rax + 0x10], rbp
000000000041a6d3  498d81b0000000                   lea rax, [r9 + 0xb0]
000000000041a6da  48894218                         mov qword ptr [rdx + 0x18], rax
000000000041a6de  498b81d0000000                   mov rax, qword ptr [r9 + 0xd0]
000000000041a6e5  48894220                         mov qword ptr [rdx + 0x20], rax
000000000041a6e9  48895018                         mov qword ptr [rax + 0x18], rdx
000000000041a6ed  498991d0000000                   mov qword ptr [r9 + 0xd0], rdx
000000000041a6f4  4d8b4a18                         mov r9, qword ptr [r10 + 0x18]
000000000041a6f8  49891424                         mov qword ptr [r12], rdx
000000000041a6fc  4983c408                         add r12, 8
000000000041a700  4983c710                         add r15, 0x10
000000000041a704  4939dc                           cmp r12, rbx
000000000041a707  0f852dffffff                     jne 0x41a63a
000000000041a70d  4c8b642450                       mov r12, qword ptr [rsp + 0x50]
000000000041a712  4c8b7c2448                       mov r15, qword ptr [rsp + 0x48]
000000000041a717  4d89d6                           mov r14, r10
000000000041a71a  488b5c2458                       mov rbx, qword ptr [rsp + 0x58]
000000000041a71f  410fb6442409                     movzx eax, byte ptr [r12 + 9]
000000000041a725  a804                             test al, 4
000000000041a727  0f84d91c0000                     je 0x41c406
000000000041a72d  49837c244000                     cmp qword ptr [r12 + 0x40], 0
000000000041a733  0f84491f0000                     je 0x41c682
000000000041a739  83e0fb                           and eax, 0xfffffffb
000000000041a73c  4188442409                       mov byte ptr [r12 + 9], al
000000000041a741  498b8188000000                   mov rax, qword ptr [r9 + 0x88]
000000000041a748  4989442470                       mov qword ptr [r12 + 0x70], rax
000000000041a74d  4d89a188000000                   mov qword ptr [r9 + 0x88], r12
000000000041a754  4d8b4e18                         mov r9, qword ptr [r14 + 0x18]
000000000041a758  e9a91c0000                       jmp 0x41c406
000000000041a75d  0f1f00                           nop dword ptr [rax]
000000000041a760  4189ed                           mov r13d, ebp
000000000041a763  c1ed0e                           shr ebp, 0xe
000000000041a766  41c1ed17                         shr r13d, 0x17
000000000041a76a  81e5ff010000                     and ebp, 0x1ff
000000000041a770  4585ed                           test r13d, r13d
000000000041a773  750f                             jne 0x41a784
000000000041a775  4d8b6e10                         mov r13, qword ptr [r14 + 0x10]
000000000041a779  4929dd                           sub r13, rbx
000000000041a77c  49c1fd04                         sar r13, 4
000000000041a780  4183ed01                         sub r13d, 1
000000000041a784  85ed                             test ebp, ebp
000000000041a786  7511                             jne 0x41a799
000000000041a788  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041a78c  488d5004                         lea rdx, [rax + 4]
000000000041a790  49895738                         mov qword ptr [r15 + 0x38], rdx
000000000041a794  8b28                             mov ebp, dword ptr [rax]
000000000041a796  c1ed06                           shr ebp, 6
000000000041a799  8d45ff                           lea eax, [rbp - 1]
000000000041a79c  4c8b23                           mov r12, qword ptr [rbx]
000000000041a79f  6bc032                           imul eax, eax, 0x32
000000000041a7a2  4401e8                           add eax, r13d
000000000041a7a5  4139442438                       cmp dword ptr [r12 + 0x38], eax
000000000041a7aa  0f8c931b0000                     jl 0x41c343
000000000041a7b0  4585ed                           test r13d, r13d
000000000041a7b3  7e7b                             jle 0x41a830
000000000041a7b5  4963d5                           movsxd rdx, r13d
000000000041a7b8  89c7                             mov edi, eax
000000000041a7ba  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041a7bf  48c1e204                         shl rdx, 4
000000000041a7c3  4429ef                           sub edi, r13d
000000000041a7c6  4801d3                           add rbx, rdx
000000000041a7c9  4189fd                           mov r13d, edi
000000000041a7cc  89c2                             mov edx, eax
000000000041a7ce  6690                             nop 
000000000041a7d0  4889d9                           mov rcx, rbx
000000000041a7d3  4c89e6                           mov rsi, r12
000000000041a7d6  4c89f7                           mov rdi, r14
000000000041a7d9  8d6aff                           lea ebp, [rdx - 1]
000000000041a7dc  e87fba0000                       call 0x426260
000000000041a7e1  f6430840                         test byte ptr [rbx + 8], 0x40
000000000041a7e5  7439                             je 0x41a820
000000000041a7e7  488b03                           mov rax, qword ptr [rbx]
000000000041a7ea  f6400903                         test byte ptr [rax + 9], 3
000000000041a7ee  7430                             je 0x41a820
000000000041a7f0  410fb6442409                     movzx eax, byte ptr [r12 + 9]
000000000041a7f6  a804                             test al, 4
000000000041a7f8  7426                             je 0x41a820
000000000041a7fa  498b5618                         mov rdx, qword ptr [r14 + 0x18]
000000000041a7fe  83e0fb                           and eax, 0xfffffffb
000000000041a801  4188442409                       mov byte ptr [r12 + 9], al
000000000041a806  488b8288000000                   mov rax, qword ptr [rdx + 0x88]
000000000041a80d  4989442430                       mov qword ptr [r12 + 0x30], rax
000000000041a812  4c89a288000000                   mov qword ptr [rdx + 0x88], r12
000000000041a819  0f1f8000000000                   nop dword ptr [rax]
000000000041a820  4883eb10                         sub rbx, 0x10
000000000041a824  4439ed                           cmp ebp, r13d
000000000041a827  89ea                             mov edx, ebp
000000000041a829  75a5                             jne 0x41a7d0
000000000041a82b  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041a830  498b4708                         mov rax, qword ptr [r15 + 8]
000000000041a834  e99c070000                       jmp 0x41afd5
000000000041a839  0f1f8000000000                   nop dword ptr [rax]
000000000041a840  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041a844  89ce                             mov esi, ecx
000000000041a846  8b5318                           mov edx, dword ptr [rbx + 0x18]
000000000041a849  85d2                             test edx, edx
000000000041a84b  0f840ffcffff                     je 0x41a460
000000000041a851  488b4b10                         mov rcx, qword ptr [rbx + 0x10]
000000000041a855  c1ed0e                           shr ebp, 0xe
000000000041a858  895308                           mov dword ptr [rbx + 8], edx
000000000041a85b  488d84a80400f8ff                 lea rax, [rax + rbp*4 - 0x7fffc]
000000000041a863  48890b                           mov qword ptr [rbx], rcx
000000000041a866  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041a86a  e9f1fbffff                       jmp 0x41a460
000000000041a86f  90                               nop 
000000000041a870  8b4308                           mov eax, dword ptr [rbx + 8]
000000000041a873  83f803                           cmp eax, 3
000000000041a876  0f8429140000                     je 0x41bca5
000000000041a87c  83e00f                           and eax, 0xf
000000000041a87f  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041a884  83f804                           cmp eax, 4
000000000041a887  751f                             jne 0x41a8a8
000000000041a889  4c8b2b                           mov r13, qword ptr [rbx]
000000000041a88c  488d35c09d2100                   lea rsi, [rip + 0x219dc0]
000000000041a893  4d8d6518                         lea r12, [r13 + 0x18]
000000000041a897  4c89e7                           mov rdi, r12
000000000041a89a  e87192feff                       call 0x403b10
000000000041a89f  4885c0                           test rax, rax
000000000041a8a2  0f84d2130000                     je 0x41bc7a
000000000041a8a8  488d35e9ad2100                   lea rsi, [rip + 0x21ade9]
000000000041a8af  4c89f7                           mov rdi, r14
000000000041a8b2  31c0                             xor eax, eax
000000000041a8b4  e8371f0000                       call 0x41c7f0
000000000041a8b9  0f1f8000000000                   nop dword ptr [rax]
000000000041a8c0  448b5320                         mov r10d, dword ptr [rbx + 0x20]
000000000041a8c4  8b3b                             mov edi, dword ptr [rbx]
000000000041a8c6  8b5310                           mov edx, dword ptr [rbx + 0x10]
000000000041a8c9  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041a8cd  4401d7                           add edi, r10d
000000000041a8d0  4585d2                           test r10d, r10d
000000000041a8d3  0f8e33150000                     jle 0x41be0c
000000000041a8d9  39d7                             cmp edi, edx
000000000041a8db  0f8f2b150000                     jg 0x41be0c
000000000041a8e1  c1ed0e                           shr ebp, 0xe
000000000041a8e4  85ff                             test edi, edi
000000000041a8e6  89ce                             mov esi, ecx
000000000041a8e8  89ea                             mov edx, ebp
000000000041a8ea  488d84900400f8ff                 lea rax, [rax + rdx*4 - 0x7fffc]
000000000041a8f2  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041a8f6  893b                             mov dword ptr [rbx], edi
000000000041a8f8  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041a8ff  897b30                           mov dword ptr [rbx + 0x30], edi
000000000041a902  c7433803000000                   mov dword ptr [rbx + 0x38], 3
000000000041a909  0f8851fbffff                     js 0x41a460
000000000041a90f  baffffff7f                       mov edx, 0x7fffffff
000000000041a914  29fa                             sub edx, edi
000000000041a916  4439d2                           cmp edx, r10d
000000000041a919  0f8f41fbffff                     jg 0x41a460
000000000041a91f  c7432000000000                   mov dword ptr [rbx + 0x20], 0
000000000041a926  c7432803000000                   mov dword ptr [rbx + 0x28], 3
000000000041a92d  e92efbffff                       jmp 0x41a460
000000000041a932  660f1f440000                     nop word ptr [rax + rax]
000000000041a938  488b4320                         mov rax, qword ptr [rbx + 0x20]
000000000041a93c  89ea                             mov edx, ebp
000000000041a93e  488d7330                         lea rsi, [rbx + 0x30]
000000000041a942  c1ea0e                           shr edx, 0xe
000000000041a945  4883c360                         add rbx, 0x60
000000000041a949  81e2ff010000                     and edx, 0x1ff
000000000041a94f  488943f0                         mov qword ptr [rbx - 0x10], rax
000000000041a953  8b43c8                           mov eax, dword ptr [rbx - 0x38]
000000000041a956  8943f8                           mov dword ptr [rbx - 8], eax
000000000041a959  488b43b0                         mov rax, qword ptr [rbx - 0x50]
000000000041a95d  488943e0                         mov qword ptr [rbx - 0x20], rax
000000000041a961  8b43b8                           mov eax, dword ptr [rbx - 0x48]
000000000041a964  8943e8                           mov dword ptr [rbx - 0x18], eax
000000000041a967  488b43a0                         mov rax, qword ptr [rbx - 0x60]
000000000041a96b  488943d0                         mov qword ptr [rbx - 0x30], rax
000000000041a96f  8b43a8                           mov eax, dword ptr [rbx - 0x58]
000000000041a972  8943d8                           mov dword ptr [rbx - 0x28], eax
000000000041a975  410fb74646                       movzx eax, word ptr [r14 + 0x46]
000000000041a97a  49895e10                         mov qword ptr [r14 + 0x10], rbx
000000000041a97e  83c001                           add eax, 1
000000000041a981  663dc700                         cmp ax, 0xc7
000000000041a985  6641894646                       mov word ptr [r14 + 0x46], ax
000000000041a98a  7614                             jbe 0x41a9a0
000000000041a98c  663dc800                         cmp ax, 0xc8
000000000041a990  0f845b1d0000                     je 0x41c6f1
000000000041a996  663de000                         cmp ax, 0xe0
000000000041a99a  0f87441d0000                     ja 0x41c6e4
000000000041a9a0  4c89f7                           mov rdi, r14
000000000041a9a3  e8985e0000                       call 0x420840
000000000041a9a8  85c0                             test eax, eax
000000000041a9aa  0f84d6190000                     je 0x41c386
000000000041a9b0  498b4708                         mov rax, qword ptr [r15 + 8]
000000000041a9b4  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041a9b8  6641836e4601                     sub word ptr [r14 + 0x46], 1
000000000041a9be  448b0dab3c4b00                   mov r9d, dword ptr [rip + 0x4b3cab]
000000000041a9c5  8b35a93c4b00                     mov esi, dword ptr [rip + 0x4b3ca9]
000000000041a9cb  448b052add4a00                   mov r8d, dword ptr [rip + 0x4add2a]
000000000041a9d2  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041a9d6  498b5738                         mov rdx, qword ptr [r15 + 0x38]
000000000041a9da  488d4204                         lea rax, [rdx + 4]
000000000041a9de  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041a9e2  8b2a                             mov ebp, dword ptr [rdx]
000000000041a9e4  89eb                             mov ebx, ebp
000000000041a9e6  c1eb06                           shr ebx, 6
000000000041a9e9  0fb6db                           movzx ebx, bl
000000000041a9ec  48c1e304                         shl rbx, 4
000000000041a9f0  4c01db                           add rbx, r11
000000000041a9f3  e94efeffff                       jmp 0x41a846
000000000041a9f8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041aa00  c1ed17                           shr ebp, 0x17
000000000041aa03  85ed                             test ebp, ebp
000000000041aa05  740d                             je 0x41aa14
000000000041aa07  48c1e504                         shl rbp, 4
000000000041aa0b  488d442bf0                       lea rax, [rbx + rbp - 0x10]
000000000041aa10  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041aa14  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041aa19  488b4018                         mov rax, qword ptr [rax + 0x18]
000000000041aa1d  8b4060                           mov eax, dword ptr [rax + 0x60]
000000000041aa20  85c0                             test eax, eax
000000000041aa22  7e0b                             jle 0x41aa2f
000000000041aa24  4c89de                           mov rsi, r11
000000000041aa27  4c89f7                           mov rdi, r14
000000000041aa2a  e8e1340000                       call 0x41df10
000000000041aa2f  498b5620                         mov rdx, qword ptr [r14 + 0x20]
000000000041aa33  440fbf4220                       movsx r8d, word ptr [rdx + 0x20]
000000000041aa38  488b7a10                         mov rdi, qword ptr [rdx + 0x10]
000000000041aa3c  488b02                           mov rax, qword ptr [rdx]
000000000041aa3f  49897e20                         mov qword ptr [r14 + 0x20], rdi
000000000041aa43  4585c0                           test r8d, r8d
000000000041aa46  0f844f180000                     je 0x41c29b
000000000041aa4c  498b7610                         mov rsi, qword ptr [r14 + 0x10]
000000000041aa50  4489c2                           mov edx, r8d
000000000041aa53  eb1e                             jmp 0x41aa73
000000000041aa55  0f1f00                           nop dword ptr [rax]
000000000041aa58  4883c310                         add rbx, 0x10
000000000041aa5c  488b4bf0                         mov rcx, qword ptr [rbx - 0x10]
000000000041aa60  4883c010                         add rax, 0x10
000000000041aa64  83ea01                           sub edx, 1
000000000041aa67  488948f0                         mov qword ptr [rax - 0x10], rcx
000000000041aa6b  8b4bf8                           mov ecx, dword ptr [rbx - 8]
000000000041aa6e  8948f8                           mov dword ptr [rax - 8], ecx
000000000041aa71  7437                             je 0x41aaaa
000000000041aa73  4839f3                           cmp rbx, rsi
000000000041aa76  72e0                             jb 0x41aa58
000000000041aa78  85d2                             test edx, edx
000000000041aa7a  8d72ff                           lea esi, [rdx - 1]
000000000041aa7d  7e2b                             jle 0x41aaaa
000000000041aa7f  4889f1                           mov rcx, rsi
000000000041aa82  488d5008                         lea rdx, [rax + 8]
000000000041aa86  48c1e104                         shl rcx, 4
000000000041aa8a  488d4c0818                       lea rcx, [rax + rcx + 0x18]
000000000041aa8f  90                               nop 
000000000041aa90  c70200000000                     mov dword ptr [rdx], 0
000000000041aa96  4883c210                         add rdx, 0x10
000000000041aa9a  4839ca                           cmp rdx, rcx
000000000041aa9d  75f1                             jne 0x41aa90
000000000041aa9f  4883c601                         add rsi, 1
000000000041aaa3  48c1e604                         shl rsi, 4
000000000041aaa7  4801f0                           add rax, rsi
000000000041aaaa  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041aaae  41f6472204                       test byte ptr [r15 + 0x22], 4
000000000041aab3  0f848a1b0000                     je 0x41c643
000000000041aab9  4183f8ff                         cmp r8d, -1
000000000041aabd  0f85e7170000                     jne 0x41c2aa
000000000041aac3  488b4738                         mov rax, qword ptr [rdi + 0x38]
000000000041aac7  4989ff                           mov r15, rdi
000000000041aaca  e951f9ffff                       jmp 0x41a420
000000000041aacf  90                               nop 
000000000041aad0  85ff                             test edi, edi
000000000041aad2  742f                             je 0x41ab03
000000000041aad4  498b4730                         mov rax, qword ptr [r15 + 0x30]
000000000041aad8  4c89f7                           mov rdi, r14
000000000041aadb  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041aae0  4a8d7428f0                       lea rsi, [rax + r13 - 0x10]
000000000041aae5  e826340000                       call 0x41df10
000000000041aaea  448b0d7f3b4b00                   mov r9d, dword ptr [rip + 0x4b3b7f]
000000000041aaf1  8b0d7d3b4b00                     mov ecx, dword ptr [rip + 0x4b3b7d]
000000000041aaf7  448b05fedb4a00                   mov r8d, dword ptr [rip + 0x4adbfe]
000000000041aafe  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041ab03  c1ed0e                           shr ebp, 0xe
000000000041ab06  498b5738                         mov rdx, qword ptr [r15 + 0x38]
000000000041ab0a  89ce                             mov esi, ecx
000000000041ab0c  8d850100feff                     lea eax, [rbp - 0x1ffff]
000000000041ab12  4898                             cdqe 
000000000041ab14  488d0482                         lea rax, [rdx + rax*4]
000000000041ab18  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041ab1c  e93ff9ffff                       jmp 0x41a460
000000000041ab21  0f1f8000000000                   nop dword ptr [rax]
000000000041ab28  c1ed17                           shr ebp, 0x17
000000000041ab2b  4889de                           mov rsi, rbx
000000000041ab2e  4c89f7                           mov rdi, r14
000000000041ab31  89ea                             mov edx, ebp
000000000041ab33  48c1e204                         shl rdx, 4
000000000041ab37  4c01da                           add rdx, r11
000000000041ab3a  e841680000                       call 0x421380
000000000041ab3f  90                               nop 
000000000041ab40  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041ab44  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041ab48  448b0d213b4b00                   mov r9d, dword ptr [rip + 0x4b3b21]
000000000041ab4f  8b351f3b4b00                     mov esi, dword ptr [rip + 0x4b3b1f]
000000000041ab55  448b05a0db4a00                   mov r8d, dword ptr [rip + 0x4adba0]
000000000041ab5c  e9fff8ffff                       jmp 0x41a460
000000000041ab61  0f1f8000000000                   nop dword ptr [rax]
000000000041ab68  c1ed17                           shr ebp, 0x17
000000000041ab6b  ba01000000                       mov edx, 1
000000000041ab70  89e8                             mov eax, ebp
000000000041ab72  48c1e004                         shl rax, 4
000000000041ab76  4c01d8                           add rax, r11
000000000041ab79  8b7008                           mov esi, dword ptr [rax + 8]
000000000041ab7c  85f6                             test esi, esi
000000000041ab7e  7410                             je 0x41ab90
000000000041ab80  31d2                             xor edx, edx
000000000041ab82  83fe01                           cmp esi, 1
000000000041ab85  7509                             jne 0x41ab90
000000000041ab87  8b28                             mov ebp, dword ptr [rax]
000000000041ab89  31d2                             xor edx, edx
000000000041ab8b  85ed                             test ebp, ebp
000000000041ab8d  0f94c2                           sete dl
000000000041ab90  8913                             mov dword ptr [rbx], edx
000000000041ab92  c7430801000000                   mov dword ptr [rbx + 8], 1
000000000041ab99  89ce                             mov esi, ecx
000000000041ab9b  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041ab9f  e9bcf8ffff                       jmp 0x41a460
000000000041aba4  0f1f4000                         nop dword ptr [rax]
000000000041aba8  81e500c07f00                     and ebp, 0x7fc000
000000000041abae  8b4308                           mov eax, dword ptr [rbx + 8]
000000000041abb1  0f84b9110000                     je 0x41bd70
000000000041abb7  85c0                             test eax, eax
000000000041abb9  0f84c9110000                     je 0x41bd88
000000000041abbf  83f801                           cmp eax, 1
000000000041abc2  0f84411a0000                     je 0x41c609
000000000041abc8  498b7738                         mov rsi, qword ptr [r15 + 0x38]
000000000041abcc  8b1e                             mov ebx, dword ptr [rsi]
000000000041abce  89da                             mov edx, ebx
000000000041abd0  c1ea06                           shr edx, 6
000000000041abd3  81e2ff000000                     and edx, 0xff
000000000041abd9  743a                             je 0x41ac15
000000000041abdb  498b4f30                         mov rcx, qword ptr [r15 + 0x30]
000000000041abdf  4863d2                           movsxd rdx, edx
000000000041abe2  4c89f7                           mov rdi, r14
000000000041abe5  48c1e204                         shl rdx, 4
000000000041abe9  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041abee  488d7411f0                       lea rsi, [rcx + rdx - 0x10]
000000000041abf3  e818330000                       call 0x41df10
000000000041abf8  498b7738                         mov rsi, qword ptr [r15 + 0x38]
000000000041abfc  448b0d6d3a4b00                   mov r9d, dword ptr [rip + 0x4b3a6d]
000000000041ac03  8b0d6b3a4b00                     mov ecx, dword ptr [rip + 0x4b3a6b]
000000000041ac09  448b05ecda4a00                   mov r8d, dword ptr [rip + 0x4adaec]
000000000041ac10  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041ac15  89d8                             mov eax, ebx
000000000041ac17  c1e80e                           shr eax, 0xe
000000000041ac1a  2dffff0100                       sub eax, 0x1ffff
000000000041ac1f  4898                             cdqe 
000000000041ac21  488d448604                       lea rax, [rsi + rax*4 + 4]
000000000041ac26  89ce                             mov esi, ecx
000000000041ac28  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041ac2c  e92ff8ffff                       jmp 0x41a460
000000000041ac31  0f1f8000000000                   nop dword ptr [rax]
000000000041ac38  89e8                             mov eax, ebp
000000000041ac3a  c1e80e                           shr eax, 0xe
000000000041ac3d  f6c401                           test ah, 1
000000000041ac40  0f847c130000                     je 0x41bfc2
000000000041ac46  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041ac4b  0fb6c0                           movzx eax, al
000000000041ac4e  48c1e004                         shl rax, 4
000000000041ac52  488d1407                         lea rdx, [rdi + rax]
000000000041ac56  c1ed17                           shr ebp, 0x17
000000000041ac59  f7c500010000                     test ebp, 0x100
000000000041ac5f  0f844d130000                     je 0x41bfb2
000000000041ac65  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041ac6a  400fb6ed                         movzx ebp, bpl
000000000041ac6e  48c1e504                         shl rbp, 4
000000000041ac72  488d3428                         lea rsi, [rax + rbp]
000000000041ac76  4c89f7                           mov rdi, r14
000000000041ac79  e8b2990000                       call 0x424630
000000000041ac7e  4139c4                           cmp r12d, eax
000000000041ac81  7478                             je 0x41acfb
000000000041ac83  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041ac87  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041ac8b  4883c004                         add rax, 4
000000000041ac8f  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041ac93  448b0dd6394b00                   mov r9d, dword ptr [rip + 0x4b39d6]
000000000041ac9a  8b35d4394b00                     mov esi, dword ptr [rip + 0x4b39d4]
000000000041aca0  448b0555da4a00                   mov r8d, dword ptr [rip + 0x4ada55]
000000000041aca7  e9b4f7ffff                       jmp 0x41a460
000000000041acac  0f1f4000                         nop dword ptr [rax]
000000000041acb0  89e8                             mov eax, ebp
000000000041acb2  c1e80e                           shr eax, 0xe
000000000041acb5  f6c401                           test ah, 1
000000000041acb8  0f841e120000                     je 0x41bedc
000000000041acbe  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041acc3  0fb6c0                           movzx eax, al
000000000041acc6  48c1e004                         shl rax, 4
000000000041acca  488d1407                         lea rdx, [rdi + rax]
000000000041acce  c1ed17                           shr ebp, 0x17
000000000041acd1  f7c500010000                     test ebp, 0x100
000000000041acd7  0f84ef110000                     je 0x41becc
000000000041acdd  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041ace2  400fb6ed                         movzx ebp, bpl
000000000041ace6  48c1e504                         shl rbp, 4
000000000041acea  488d3428                         lea rsi, [rax + rbp]
000000000041acee  4c89f7                           mov rdi, r14
000000000041acf1  e8ea970000                       call 0x4244e0
000000000041acf6  4139c4                           cmp r12d, eax
000000000041acf9  7588                             jne 0x41ac83
000000000041acfb  498b5738                         mov rdx, qword ptr [r15 + 0x38]
000000000041acff  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041ad03  8b1a                             mov ebx, dword ptr [rdx]
000000000041ad05  89d8                             mov eax, ebx
000000000041ad07  c1e806                           shr eax, 6
000000000041ad0a  25ff000000                       and eax, 0xff
000000000041ad0f  741b                             je 0x41ad2c
000000000041ad11  4898                             cdqe 
000000000041ad13  4c89f7                           mov rdi, r14
000000000041ad16  48c1e004                         shl rax, 4
000000000041ad1a  498d7403f0                       lea rsi, [r11 + rax - 0x10]
000000000041ad1f  e8ec310000                       call 0x41df10
000000000041ad24  498b5738                         mov rdx, qword ptr [r15 + 0x38]
000000000041ad28  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041ad2c  c1eb0e                           shr ebx, 0xe
000000000041ad2f  8d830100feff                     lea eax, [rbx - 0x1ffff]
000000000041ad35  4898                             cdqe 
000000000041ad37  488d448204                       lea rax, [rdx + rax*4 + 4]
000000000041ad3c  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041ad40  e94effffff                       jmp 0x41ac93
000000000041ad45  0f1f00                           nop dword ptr [rax]
000000000041ad48  c1ed17                           shr ebp, 0x17
000000000041ad4b  83c601                           add esi, 1
000000000041ad4e  89ea                             mov edx, ebp
000000000041ad50  89351e394b00                     mov dword ptr [rip + 0x4b391e], esi
000000000041ad56  48c1e204                         shl rdx, 4
000000000041ad5a  4c01da                           add rdx, r11
000000000041ad5d  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041ad61  0f8557150000                     jne 0x41c2be
000000000041ad67  8b02                             mov eax, dword ptr [rdx]
000000000041ad69  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041ad70  f7d8                             neg eax
000000000041ad72  8903                             mov dword ptr [rbx], eax
000000000041ad74  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041ad78  e9e3f6ffff                       jmp 0x41a460
000000000041ad7d  0f1f00                           nop dword ptr [rax]
000000000041ad80  89e8                             mov eax, ebp
000000000041ad82  83c601                           add esi, 1
000000000041ad85  c1e817                           shr eax, 0x17
000000000041ad88  8935e6384b00                     mov dword ptr [rip + 0x4b38e6], esi
000000000041ad8e  f6c401                           test ah, 1
000000000041ad91  0f84d7100000                     je 0x41be6e
000000000041ad97  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041ad9c  0fb6c0                           movzx eax, al
000000000041ad9f  c1ed0e                           shr ebp, 0xe
000000000041ada2  48c1e004                         shl rax, 4
000000000041ada6  f7c500010000                     test ebp, 0x100
000000000041adac  488d1407                         lea rdx, [rdi + rax]
000000000041adb0  0f84d1100000                     je 0x41be87
000000000041adb6  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041adbb  400fb6ed                         movzx ebp, bpl
000000000041adbf  48c1e504                         shl rbp, 4
000000000041adc3  488d0c28                         lea rcx, [rax + rbp]
000000000041adc7  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041adcb  750a                             jne 0x41add7
000000000041adcd  83790803                         cmp dword ptr [rcx + 8], 3
000000000041add1  0f8460170000                     je 0x41c537
000000000041add7  41b818000000                     mov r8d, 0x18
000000000041addd  4889de                           mov rsi, rbx
000000000041ade0  4c89f7                           mov rdi, r14
000000000041ade3  e8c89a0000                       call 0x4248b0
000000000041ade8  e953fdffff                       jmp 0x41ab40
000000000041aded  0f1f00                           nop dword ptr [rax]
000000000041adf0  89e8                             mov eax, ebp
000000000041adf2  c1ed0e                           shr ebp, 0xe
000000000041adf5  81e5ff010000                     and ebp, 0x1ff
000000000041adfb  c1e817                           shr eax, 0x17
000000000041adfe  83ed01                           sub ebp, 1
000000000041ae01  85c0                             test eax, eax
000000000041ae03  740b                             je 0x41ae10
000000000041ae05  48c1e004                         shl rax, 4
000000000041ae09  4801d8                           add rax, rbx
000000000041ae0c  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041ae10  89ea                             mov edx, ebp
000000000041ae12  4889de                           mov rsi, rbx
000000000041ae15  4c89f7                           mov rdi, r14
000000000041ae18  e8235a0000                       call 0x420840
000000000041ae1d  85c0                             test eax, eax
000000000041ae1f  0f844b180000                     je 0x41c670
000000000041ae25  83fdff                           cmp ebp, -1
000000000041ae28  0f8412fdffff                     je 0x41ab40
000000000041ae2e  498b4708                         mov rax, qword ptr [r15 + 8]
000000000041ae32  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041ae36  e905fdffff                       jmp 0x41ab40
000000000041ae3b  0f1f440000                       nop dword ptr [rax + rax]
000000000041ae40  89e8                             mov eax, ebp
000000000041ae42  c1e817                           shr eax, 0x17
000000000041ae45  48c1e004                         shl rax, 4
000000000041ae49  4c01d8                           add rax, r11
000000000041ae4c  81e500c07f00                     and ebp, 0x7fc000
000000000041ae52  8b5008                           mov edx, dword ptr [rax + 8]
000000000041ae55  0f84e3110000                     je 0x41c03e
000000000041ae5b  85d2                             test edx, edx
000000000041ae5d  0f84250f0000                     je 0x41bd88
000000000041ae63  83fa01                           cmp edx, 1
000000000041ae66  0f84ba170000                     je 0x41c626
000000000041ae6c  488b00                           mov rax, qword ptr [rax]
000000000041ae6f  498b7738                         mov rsi, qword ptr [r15 + 0x38]
000000000041ae73  895308                           mov dword ptr [rbx + 8], edx
000000000041ae76  488903                           mov qword ptr [rbx], rax
000000000041ae79  e94efdffff                       jmp 0x41abcc
000000000041ae7e  6690                             nop 
000000000041ae80  89e8                             mov eax, ebp
000000000041ae82  c1e817                           shr eax, 0x17
000000000041ae85  f6c401                           test ah, 1
000000000041ae88  0f8497120000                     je 0x41c125
000000000041ae8e  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041ae93  0fb6c0                           movzx eax, al
000000000041ae96  48c1e004                         shl rax, 4
000000000041ae9a  488d1407                         lea rdx, [rdi + rax]
000000000041ae9e  c1ed0e                           shr ebp, 0xe
000000000041aea1  f7c500010000                     test ebp, 0x100
000000000041aea7  0f8465120000                     je 0x41c112
000000000041aead  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041aeb2  400fb6ed                         movzx ebp, bpl
000000000041aeb6  48c1e504                         shl rbp, 4
000000000041aeba  488d0c28                         lea rcx, [rax + rbp]
000000000041aebe  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041aec2  750a                             jne 0x41aece
000000000041aec4  83790803                         cmp dword ptr [rcx + 8], 3
000000000041aec8  0f8456160000                     je 0x41c524
000000000041aece  41b815000000                     mov r8d, 0x15
000000000041aed4  4889de                           mov rsi, rbx
000000000041aed7  4c89f7                           mov rdi, r14
000000000041aeda  e8d1990000                       call 0x4248b0
000000000041aedf  e95cfcffff                       jmp 0x41ab40
000000000041aee4  0f1f4000                         nop dword ptr [rax]
000000000041aee8  89e8                             mov eax, ebp
000000000041aeea  83c601                           add esi, 1
000000000041aeed  c1e817                           shr eax, 0x17
000000000041aef0  89357e374b00                     mov dword ptr [rip + 0x4b377e], esi
000000000041aef6  f6c401                           test ah, 1
000000000041aef9  0f8414100000                     je 0x41bf13
000000000041aeff  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041af04  0fb6c0                           movzx eax, al
000000000041af07  48c1e004                         shl rax, 4
000000000041af0b  488d1407                         lea rdx, [rdi + rax]
000000000041af0f  c1ed0e                           shr ebp, 0xe
000000000041af12  f7c500010000                     test ebp, 0x100
000000000041af18  0f84e20f0000                     je 0x41bf00
000000000041af1e  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041af23  400fb6ed                         movzx ebp, bpl
000000000041af27  48c1e504                         shl rbp, 4
000000000041af2b  488d0c28                         lea rcx, [rax + rbp]
000000000041af2f  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041af33  750a                             jne 0x41af3f
000000000041af35  83790803                         cmp dword ptr [rcx + 8], 3
000000000041af39  0f848f150000                     je 0x41c4ce
000000000041af3f  41b814000000                     mov r8d, 0x14
000000000041af45  4889de                           mov rsi, rbx
000000000041af48  4c89f7                           mov rdi, r14
000000000041af4b  e860990000                       call 0x4248b0
000000000041af50  e9ebfbffff                       jmp 0x41ab40
000000000041af55  0f1f00                           nop dword ptr [rax]
000000000041af58  89eb                             mov ebx, ebp
000000000041af5a  c1ed0e                           shr ebp, 0xe
000000000041af5d  4c89f7                           mov rdi, r14
000000000041af60  81e5ff010000                     and ebp, 0x1ff
000000000041af66  c1eb17                           shr ebx, 0x17
000000000041af69  4863c5                           movsxd rax, ebp
000000000041af6c  29dd                             sub ebp, ebx
000000000041af6e  4883c001                         add rax, 1
000000000041af72  8d7501                           lea esi, [rbp + 1]
000000000041af75  48c1e004                         shl rax, 4
000000000041af79  4901c3                           add r11, rax
000000000041af7c  4d895e10                         mov qword ptr [r14 + 0x10], r11
000000000041af80  e8eb640000                       call 0x421470
000000000041af85  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041af89  89d8                             mov eax, ebx
000000000041af8b  48c1e004                         shl rax, 4
000000000041af8f  4c01d8                           add rax, r11
000000000041af92  4d01dd                           add r13, r11
000000000041af95  488b10                           mov rdx, qword ptr [rax]
000000000041af98  49895500                         mov qword ptr [r13], rdx
000000000041af9c  8b5008                           mov edx, dword ptr [rax + 8]
000000000041af9f  41895508                         mov dword ptr [r13 + 8], edx
000000000041afa3  498b5618                         mov rdx, qword ptr [r14 + 0x18]
000000000041afa7  48837a1800                       cmp qword ptr [rdx + 0x18], 0
000000000041afac  0f8e7ef8ffff                     jle 0x41a830
000000000041afb2  498d5510                         lea rdx, [r13 + 0x10]
000000000041afb6  4939c5                           cmp r13, rax
000000000041afb9  4c89f7                           mov rdi, r14
000000000041afbc  480f43c2                         cmovae rax, rdx
000000000041afc0  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041afc4  e8673e0000                       call 0x41ee30
000000000041afc9  498b4708                         mov rax, qword ptr [r15 + 8]
000000000041afcd  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041afd1  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041afd5  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041afd9  448b0d90364b00                   mov r9d, dword ptr [rip + 0x4b3690]
000000000041afe0  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041afe4  8b358a364b00                     mov esi, dword ptr [rip + 0x4b368a]
000000000041afea  448b050bd74a00                   mov r8d, dword ptr [rip + 0x4ad70b]
000000000041aff1  e96af4ffff                       jmp 0x41a460
000000000041aff6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000041b000  89e8                             mov eax, ebp
000000000041b002  83c601                           add esi, 1
000000000041b005  c1e817                           shr eax, 0x17
000000000041b008  893566364b00                     mov dword ptr [rip + 0x4b3666], esi
000000000041b00e  f6c401                           test ah, 1
000000000041b011  0f84ec100000                     je 0x41c103
000000000041b017  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b01c  0fb6c0                           movzx eax, al
000000000041b01f  48c1e004                         shl rax, 4
000000000041b023  488d1407                         lea rdx, [rdi + rax]
000000000041b027  c1ed0e                           shr ebp, 0xe
000000000041b02a  f7c500010000                     test ebp, 0x100
000000000041b030  0f84830e0000                     je 0x41beb9
000000000041b036  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b03b  400fb6ed                         movzx ebp, bpl
000000000041b03f  48c1e504                         shl rbp, 4
000000000041b043  488d0c28                         lea rcx, [rax + rbp]
000000000041b047  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b04b  750a                             jne 0x41b057
000000000041b04d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b051  0f84bf140000                     je 0x41c516
000000000041b057  41b817000000                     mov r8d, 0x17
000000000041b05d  4889de                           mov rsi, rbx
000000000041b060  4c89f7                           mov rdi, r14
000000000041b063  e848980000                       call 0x4248b0
000000000041b068  e9d3faffff                       jmp 0x41ab40
000000000041b06d  0f1f00                           nop dword ptr [rax]
000000000041b070  89e8                             mov eax, ebp
000000000041b072  83c601                           add esi, 1
000000000041b075  c1e817                           shr eax, 0x17
000000000041b078  8935f6354b00                     mov dword ptr [rip + 0x4b35f6], esi
000000000041b07e  f6c401                           test ah, 1
000000000041b081  0f846d100000                     je 0x41c0f4
000000000041b087  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b08c  0fb6c0                           movzx eax, al
000000000041b08f  48c1e004                         shl rax, 4
000000000041b093  488d1407                         lea rdx, [rdi + rax]
000000000041b097  c1ed0e                           shr ebp, 0xe
000000000041b09a  f7c500010000                     test ebp, 0x100
000000000041b0a0  0f842e0f0000                     je 0x41bfd4
000000000041b0a6  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b0ab  400fb6ed                         movzx ebp, bpl
000000000041b0af  48c1e504                         shl rbp, 4
000000000041b0b3  488d0c28                         lea rcx, [rax + rbp]
000000000041b0b7  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b0bb  750a                             jne 0x41b0c7
000000000041b0bd  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b0c1  0f84be140000                     je 0x41c585
000000000041b0c7  41b816000000                     mov r8d, 0x16
000000000041b0cd  4889de                           mov rsi, rbx
000000000041b0d0  4c89f7                           mov rdi, r14
000000000041b0d3  e8d8970000                       call 0x4248b0
000000000041b0d8  e963faffff                       jmp 0x41ab40
000000000041b0dd  0f1f00                           nop dword ptr [rax]
000000000041b0e0  89e8                             mov eax, ebp
000000000041b0e2  c1e817                           shr eax, 0x17
000000000041b0e5  f6c401                           test ah, 1
000000000041b0e8  0f84b50e0000                     je 0x41bfa3
000000000041b0ee  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b0f3  0fb6c0                           movzx eax, al
000000000041b0f6  48c1e004                         shl rax, 4
000000000041b0fa  488d3407                         lea rsi, [rdi + rax]
000000000041b0fe  c1ed0e                           shr ebp, 0xe
000000000041b101  f7c500010000                     test ebp, 0x100
000000000041b107  0f84150e0000                     je 0x41bf22
000000000041b10d  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b112  400fb6ed                         movzx ebp, bpl
000000000041b116  31c9                             xor ecx, ecx
000000000041b118  48c1e504                         shl rbp, 4
000000000041b11c  488d1428                         lea rdx, [rax + rbp]
000000000041b120  8b4208                           mov eax, dword ptr [rdx + 8]
000000000041b123  394608                           cmp dword ptr [rsi + 8], eax
000000000041b126  0f84120e0000                     je 0x41bf3e
000000000041b12c  4139cc                           cmp r12d, ecx
000000000041b12f  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b133  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041b137  0f84210e0000                     je 0x41bf5e
000000000041b13d  4883c004                         add rax, 4
000000000041b141  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041b145  e949fbffff                       jmp 0x41ac93
000000000041b14a  660f1f440000                     nop word ptr [rax + rax]
000000000041b150  c1ed17                           shr ebp, 0x17
000000000041b153  85ed                             test ebp, ebp
000000000041b155  740c                             je 0x41b163
000000000041b157  48c1e504                         shl rbp, 4
000000000041b15b  488d042b                         lea rax, [rbx + rbp]
000000000041b15f  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041b163  baffffffff                       mov edx, 0xffffffff
000000000041b168  4889de                           mov rsi, rbx
000000000041b16b  4c89f7                           mov rdi, r14
000000000041b16e  e8cd560000                       call 0x420840
000000000041b173  85c0                             test eax, eax
000000000041b175  0f85c5f9ffff                     jne 0x41ab40
000000000041b17b  4d8b6620                         mov r12, qword ptr [r14 + 0x20]
000000000041b17f  498b2c24                         mov rbp, qword ptr [r12]
000000000041b183  498b742430                       mov rsi, qword ptr [r12 + 0x30]
000000000041b188  4d8b7c2410                       mov r15, qword ptr [r12 + 0x10]
000000000041b18d  488b4500                         mov rax, qword ptr [rbp]
000000000041b191  4d8b2f                           mov r13, qword ptr [r15]
000000000041b194  488b4018                         mov rax, qword ptr [rax + 0x18]
000000000041b198  0fb65878                         movzx ebx, byte ptr [rax + 0x78]
000000000041b19c  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041b1a1  488b4018                         mov rax, qword ptr [rax + 0x18]
000000000041b1a5  48c1e304                         shl rbx, 4
000000000041b1a9  4801f3                           add rbx, rsi
000000000041b1ac  8b5060                           mov edx, dword ptr [rax + 0x60]
000000000041b1af  85d2                             test edx, edx
000000000041b1b1  7e11                             jle 0x41b1c4
000000000041b1b3  498b7730                         mov rsi, qword ptr [r15 + 0x30]
000000000041b1b7  4c89f7                           mov rdi, r14
000000000041b1ba  e8512d0000                       call 0x41df10
000000000041b1bf  498b742430                       mov rsi, qword ptr [r12 + 0x30]
000000000041b1c4  4839dd                           cmp rbp, rbx
000000000041b1c7  7335                             jae 0x41b1fe
000000000041b1c9  4889e8                           mov rax, rbp
000000000041b1cc  488d5508                         lea rdx, [rbp + 8]
000000000041b1d0  498d4d08                         lea rcx, [r13 + 8]
000000000041b1d4  48f7d0                           not rax
000000000041b1d7  4801d8                           add rax, rbx
000000000041b1da  4883e0f0                         and rax, 0xfffffffffffffff0
000000000041b1de  488d7c0518                       lea rdi, [rbp + rax + 0x18]
000000000041b1e3  488b42f8                         mov rax, qword ptr [rdx - 8]
000000000041b1e7  4883c210                         add rdx, 0x10
000000000041b1eb  4883c110                         add rcx, 0x10
000000000041b1ef  488941e8                         mov qword ptr [rcx - 0x18], rax
000000000041b1f3  8b42f0                           mov eax, dword ptr [rdx - 0x10]
000000000041b1f6  8941f0                           mov dword ptr [rcx - 0x10], eax
000000000041b1f9  4839fa                           cmp rdx, rdi
000000000041b1fc  75e5                             jne 0x41b1e3
000000000041b1fe  4889f0                           mov rax, rsi
000000000041b201  4829e8                           sub rax, rbp
000000000041b204  4c01e8                           add rax, r13
000000000041b207  49894730                         mov qword ptr [r15 + 0x30], rax
000000000041b20b  498b4610                         mov rax, qword ptr [r14 + 0x10]
000000000041b20f  4829e8                           sub rax, rbp
000000000041b212  4901c5                           add r13, rax
000000000041b215  4d896e10                         mov qword ptr [r14 + 0x10], r13
000000000041b219  498b442438                       mov rax, qword ptr [r12 + 0x38]
000000000041b21e  4d896f08                         mov qword ptr [r15 + 8], r13
000000000041b222  41804f2240                       or byte ptr [r15 + 0x22], 0x40
000000000041b227  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041b22b  4d897e20                         mov qword ptr [r14 + 0x20], r15
000000000041b22f  e9ecf1ffff                       jmp 0x41a420
000000000041b234  0f1f4000                         nop dword ptr [rax]
000000000041b238  89ee                             mov esi, ebp
000000000041b23a  c1ed0e                           shr ebp, 0xe
000000000041b23d  c1ee17                           shr esi, 0x17
000000000041b240  48c1e604                         shl rsi, 4
000000000041b244  4c01de                           add rsi, r11
000000000041b247  f7c500010000                     test ebp, 0x100
000000000041b24d  488b06                           mov rax, qword ptr [rsi]
000000000041b250  48894310                         mov qword ptr [rbx + 0x10], rax
000000000041b254  8b4608                           mov eax, dword ptr [rsi + 8]
000000000041b257  894318                           mov dword ptr [rbx + 0x18], eax
000000000041b25a  0f84f60e0000                     je 0x41c156
000000000041b260  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b265  400fb6ed                         movzx ebp, bpl
000000000041b269  48c1e504                         shl rbp, 4
000000000041b26d  488d1428                         lea rdx, [rax + rbp]
000000000041b271  4889d9                           mov rcx, rbx
000000000041b274  4c89f7                           mov rdi, r14
000000000041b277  e8949e0000                       call 0x425110
000000000041b27c  e9bff8ffff                       jmp 0x41ab40
000000000041b281  0f1f8000000000                   nop dword ptr [rax]
000000000041b288  89e8                             mov eax, ebp
000000000041b28a  83c601                           add esi, 1
000000000041b28d  c1e817                           shr eax, 0x17
000000000041b290  8935de334b00                     mov dword ptr [rip + 0x4b33de], esi
000000000041b296  f6c401                           test ah, 1
000000000041b299  0f84ff0e0000                     je 0x41c19e
000000000041b29f  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b2a4  0fb6c0                           movzx eax, al
000000000041b2a7  48c1e004                         shl rax, 4
000000000041b2ab  488d1407                         lea rdx, [rdi + rax]
000000000041b2af  c1ed0e                           shr ebp, 0xe
000000000041b2b2  f7c500010000                     test ebp, 0x100
000000000041b2b8  0f84cd0e0000                     je 0x41c18b
000000000041b2be  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b2c3  400fb6ed                         movzx ebp, bpl
000000000041b2c7  48c1e504                         shl rbp, 4
000000000041b2cb  488d0c28                         lea rcx, [rax + rbp]
000000000041b2cf  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b2d3  750a                             jne 0x41b2df
000000000041b2d5  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b2d9  0f8481110000                     je 0x41c460
000000000041b2df  41b80d000000                     mov r8d, 0xd
000000000041b2e5  4889de                           mov rsi, rbx
000000000041b2e8  4c89f7                           mov rdi, r14
000000000041b2eb  e8c0950000                       call 0x4248b0
000000000041b2f0  e94bf8ffff                       jmp 0x41ab40
000000000041b2f5  0f1f00                           nop dword ptr [rax]
000000000041b2f8  c1ed17                           shr ebp, 0x17
000000000041b2fb  488d4308                         lea rax, [rbx + 8]
000000000041b2ff  48c1e504                         shl rbp, 4
000000000041b303  488d542b18                       lea rdx, [rbx + rbp + 0x18]
000000000041b308  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041b310  c70000000000                     mov dword ptr [rax], 0
000000000041b316  4883c010                         add rax, 0x10
000000000041b31a  4839d0                           cmp rax, rdx
000000000041b31d  75f1                             jne 0x41b310
000000000041b31f  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b323  89ce                             mov esi, ecx
000000000041b325  e936f1ffff                       jmp 0x41a460
000000000041b32a  660f1f440000                     nop word ptr [rax + rax]
000000000041b330  89e8                             mov eax, ebp
000000000041b332  c7430801000000                   mov dword ptr [rbx + 8], 1
000000000041b339  89ce                             mov esi, ecx
000000000041b33b  c1e817                           shr eax, 0x17
000000000041b33e  81e500c07f00                     and ebp, 0x7fc000
000000000041b344  8903                             mov dword ptr [rbx], eax
000000000041b346  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b34a  0f8410f1ffff                     je 0x41a460
000000000041b350  4883c004                         add rax, 4
000000000041b354  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041b358  e903f1ffff                       jmp 0x41a460
000000000041b35d  0f1f00                           nop dword ptr [rax]
000000000041b360  498b5738                         mov rdx, qword ptr [r15 + 0x38]
000000000041b364  488d4204                         lea rax, [rdx + 4]
000000000041b368  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041b36c  8b12                             mov edx, dword ptr [rdx]
000000000041b36e  c1ea06                           shr edx, 6
000000000041b371  48c1e204                         shl rdx, 4
000000000041b375  4803542408                       add rdx, qword ptr [rsp + 8]
000000000041b37a  488b32                           mov rsi, qword ptr [rdx]
000000000041b37d  8b5208                           mov edx, dword ptr [rdx + 8]
000000000041b380  488933                           mov qword ptr [rbx], rsi
000000000041b383  895308                           mov dword ptr [rbx + 8], edx
000000000041b386  89ce                             mov esi, ecx
000000000041b388  e9d3f0ffff                       jmp 0x41a460
000000000041b38d  0f1f00                           nop dword ptr [rax]
000000000041b390  c1ed0e                           shr ebp, 0xe
000000000041b393  83c601                           add esi, 1
000000000041b396  89e8                             mov eax, ebp
000000000041b398  8935d6324b00                     mov dword ptr [rip + 0x4b32d6], esi
000000000041b39e  48c1e004                         shl rax, 4
000000000041b3a2  4803442408                       add rax, qword ptr [rsp + 8]
000000000041b3a7  488b10                           mov rdx, qword ptr [rax]
000000000041b3aa  488913                           mov qword ptr [rbx], rdx
000000000041b3ad  8b4008                           mov eax, dword ptr [rax + 8]
000000000041b3b0  894308                           mov dword ptr [rbx + 8], eax
000000000041b3b3  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b3b7  e9a4f0ffff                       jmp 0x41a460
000000000041b3bc  0f1f4000                         nop dword ptr [rax]
000000000041b3c0  c1ed17                           shr ebp, 0x17
000000000041b3c3  83c601                           add esi, 1
000000000041b3c6  89e8                             mov eax, ebp
000000000041b3c8  8935a6324b00                     mov dword ptr [rip + 0x4b32a6], esi
000000000041b3ce  48c1e004                         shl rax, 4
000000000041b3d2  4c01d8                           add rax, r11
000000000041b3d5  ebd0                             jmp 0x41b3a7
000000000041b3d7  660f1f840000000000               nop word ptr [rax + rax]
000000000041b3e0  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041b3e5  4d89dc                           mov r12, r11
000000000041b3e8  4d2b27                           sub r12, qword ptr [r15]
000000000041b3eb  c1ed17                           shr ebp, 0x17
000000000041b3ee  83ed01                           sub ebp, 1
000000000041b3f1  488b4018                         mov rax, qword ptr [rax + 0x18]
000000000041b3f5  49c1fc04                         sar r12, 4
000000000041b3f9  0fb64078                         movzx eax, byte ptr [rax + 0x78]
000000000041b3fd  4129c4                           sub r12d, eax
000000000041b400  4183ec01                         sub r12d, 1
000000000041b404  83fdff                           cmp ebp, -1
000000000041b407  0f84ca0e0000                     je 0x41c2d7
000000000041b40d  85ed                             test ebp, ebp
000000000041b40f  7e30                             jle 0x41b441
000000000041b411  4585e4                           test r12d, r12d
000000000041b414  0f8f81090000                     jg 0x41bd9b
000000000041b41a  31c0                             xor eax, eax
000000000041b41c  4863d0                           movsxd rdx, eax
000000000041b41f  48c1e204                         shl rdx, 4
000000000041b423  488d541308                       lea rdx, [rbx + rdx + 8]
000000000041b428  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041b430  83c001                           add eax, 1
000000000041b433  c70200000000                     mov dword ptr [rdx], 0
000000000041b439  4883c210                         add rdx, 0x10
000000000041b43d  39c5                             cmp ebp, eax
000000000041b43f  7fef                             jg 0x41b430
000000000041b441  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b445  e949f8ffff                       jmp 0x41ac93
000000000041b44a  660f1f440000                     nop word ptr [rax + rax]
000000000041b450  89e8                             mov eax, ebp
000000000041b452  c1e80e                           shr eax, 0xe
000000000041b455  f6c401                           test ah, 1
000000000041b458  0f845f0d0000                     je 0x41c1bd
000000000041b45e  488b4c2408                       mov rcx, qword ptr [rsp + 8]
000000000041b463  0fb6c0                           movzx eax, al
000000000041b466  48c1e004                         shl rax, 4
000000000041b46a  4801c1                           add rcx, rax
000000000041b46d  c1ed17                           shr ebp, 0x17
000000000041b470  f7c500010000                     test ebp, 0x100
000000000041b476  0f84310d0000                     je 0x41c1ad
000000000041b47c  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b481  400fb6ed                         movzx ebp, bpl
000000000041b485  48c1e504                         shl rbp, 4
000000000041b489  488d1428                         lea rdx, [rax + rbp]
000000000041b48d  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041b492  488b44f820                       mov rax, qword ptr [rax + rdi*8 + 0x20]
000000000041b497  4c89f7                           mov rdi, r14
000000000041b49a  488b7010                         mov rsi, qword ptr [rax + 0x10]
000000000041b49e  e8eda90000                       call 0x425e90
000000000041b4a3  e998f6ffff                       jmp 0x41ab40
000000000041b4a8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041b4b0  89e8                             mov eax, ebp
000000000041b4b2  c1ed0e                           shr ebp, 0xe
000000000041b4b5  c1e817                           shr eax, 0x17
000000000041b4b8  f7c500010000                     test ebp, 0x100
000000000041b4be  0f84230b0000                     je 0x41bfe7
000000000041b4c4  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b4c9  400fb6ed                         movzx ebp, bpl
000000000041b4cd  48c1e504                         shl rbp, 4
000000000041b4d1  488d142f                         lea rdx, [rdi + rbp]
000000000041b4d5  488b7c2410                       mov rdi, qword ptr [rsp + 0x10]
000000000041b4da  4889d9                           mov rcx, rbx
000000000041b4dd  488b44c720                       mov rax, qword ptr [rdi + rax*8 + 0x20]
000000000041b4e2  4c89f7                           mov rdi, r14
000000000041b4e5  488b7010                         mov rsi, qword ptr [rax + 0x10]
000000000041b4e9  e8229c0000                       call 0x425110
000000000041b4ee  e94df6ffff                       jmp 0x41ab40
000000000041b4f3  0f1f440000                       nop dword ptr [rax + rax]
000000000041b4f8  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041b4fd  c1ed17                           shr ebp, 0x17
000000000041b500  89ce                             mov esi, ecx
000000000041b502  488b44e820                       mov rax, qword ptr [rax + rbp*8 + 0x20]
000000000041b507  488b4010                         mov rax, qword ptr [rax + 0x10]
000000000041b50b  488b10                           mov rdx, qword ptr [rax]
000000000041b50e  8b4008                           mov eax, dword ptr [rax + 8]
000000000041b511  488913                           mov qword ptr [rbx], rdx
000000000041b514  894308                           mov dword ptr [rbx + 8], eax
000000000041b517  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041b51b  e940efffff                       jmp 0x41a460
000000000041b520  89e8                             mov eax, ebp
000000000041b522  83c601                           add esi, 1
000000000041b525  c1e817                           shr eax, 0x17
000000000041b528  893546314b00                     mov dword ptr [rip + 0x4b3146], esi
000000000041b52e  f6c401                           test ah, 1
000000000041b531  0f84ab0c0000                     je 0x41c1e2
000000000041b537  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b53c  0fb6c0                           movzx eax, al
000000000041b53f  48c1e004                         shl rax, 4
000000000041b543  488d1407                         lea rdx, [rdi + rax]
000000000041b547  c1ed0e                           shr ebp, 0xe
000000000041b54a  f7c500010000                     test ebp, 0x100
000000000041b550  0f84790c0000                     je 0x41c1cf
000000000041b556  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b55b  400fb6ed                         movzx ebp, bpl
000000000041b55f  48c1e504                         shl rbp, 4
000000000041b563  488d0c28                         lea rcx, [rax + rbp]
000000000041b567  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b56b  750a                             jne 0x41b577
000000000041b56d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b571  0f8445100000                     je 0x41c5bc
000000000041b577  41b811000000                     mov r8d, 0x11
000000000041b57d  4889de                           mov rsi, rbx
000000000041b580  4c89f7                           mov rdi, r14
000000000041b583  e828930000                       call 0x4248b0
000000000041b588  e9b3f5ffff                       jmp 0x41ab40
000000000041b58d  0f1f00                           nop dword ptr [rax]
000000000041b590  89e8                             mov eax, ebp
000000000041b592  83c601                           add esi, 1
000000000041b595  c1e817                           shr eax, 0x17
000000000041b598  8935d6304b00                     mov dword ptr [rip + 0x4b30d6], esi
000000000041b59e  f6c401                           test ah, 1
000000000041b5a1  0f84660a0000                     je 0x41c00d
000000000041b5a7  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b5ac  0fb6c0                           movzx eax, al
000000000041b5af  48c1e004                         shl rax, 4
000000000041b5b3  488d1407                         lea rdx, [rdi + rax]
000000000041b5b7  c1ed0e                           shr ebp, 0xe
000000000041b5ba  f7c500010000                     test ebp, 0x100
000000000041b5c0  0f84340a0000                     je 0x41bffa
000000000041b5c6  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b5cb  400fb6ed                         movzx ebp, bpl
000000000041b5cf  48c1e504                         shl rbp, 4
000000000041b5d3  488d0c28                         lea rcx, [rax + rbp]
000000000041b5d7  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b5db  750a                             jne 0x41b5e7
000000000041b5dd  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b5e1  0f84e80f0000                     je 0x41c5cf
000000000041b5e7  41b810000000                     mov r8d, 0x10
000000000041b5ed  4889de                           mov rsi, rbx
000000000041b5f0  4c89f7                           mov rdi, r14
000000000041b5f3  e8b8920000                       call 0x4248b0
000000000041b5f8  e943f5ffff                       jmp 0x41ab40
000000000041b5fd  0f1f00                           nop dword ptr [rax]
000000000041b600  89e8                             mov eax, ebp
000000000041b602  83c601                           add esi, 1
000000000041b605  c1e817                           shr eax, 0x17
000000000041b608  893566304b00                     mov dword ptr [rip + 0x4b3066], esi
000000000041b60e  f6c401                           test ah, 1
000000000041b611  0f84ed0b0000                     je 0x41c204
000000000041b617  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b61c  0fb6c0                           movzx eax, al
000000000041b61f  48c1e004                         shl rax, 4
000000000041b623  488d1407                         lea rdx, [rdi + rax]
000000000041b627  c1ed0e                           shr ebp, 0xe
000000000041b62a  f7c500010000                     test ebp, 0x100
000000000041b630  0f84bb0b0000                     je 0x41c1f1
000000000041b636  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b63b  400fb6ed                         movzx ebp, bpl
000000000041b63f  48c1e504                         shl rbp, 4
000000000041b643  488d0c28                         lea rcx, [rax + rbp]
000000000041b647  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b64b  750a                             jne 0x41b657
000000000041b64d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b651  0f849d0e0000                     je 0x41c4f4
000000000041b657  41b80f000000                     mov r8d, 0xf
000000000041b65d  4889de                           mov rsi, rbx
000000000041b660  4c89f7                           mov rdi, r14
000000000041b663  e848920000                       call 0x4248b0
000000000041b668  e9d3f4ffff                       jmp 0x41ab40
000000000041b66d  0f1f00                           nop dword ptr [rax]
000000000041b670  89e8                             mov eax, ebp
000000000041b672  83c601                           add esi, 1
000000000041b675  c1e817                           shr eax, 0x17
000000000041b678  8935f62f4b00                     mov dword ptr [rip + 0x4b2ff6], esi
000000000041b67e  f6c401                           test ah, 1
000000000041b681  0f84a8090000                     je 0x41c02f
000000000041b687  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b68c  0fb6c0                           movzx eax, al
000000000041b68f  48c1e004                         shl rax, 4
000000000041b693  488d1407                         lea rdx, [rdi + rax]
000000000041b697  c1ed0e                           shr ebp, 0xe
000000000041b69a  f7c500010000                     test ebp, 0x100
000000000041b6a0  0f8476090000                     je 0x41c01c
000000000041b6a6  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b6ab  400fb6ed                         movzx ebp, bpl
000000000041b6af  48c1e504                         shl rbp, 4
000000000041b6b3  488d0c28                         lea rcx, [rax + rbp]
000000000041b6b7  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b6bb  750a                             jne 0x41b6c7
000000000041b6bd  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b6c1  0f84db0d0000                     je 0x41c4a2
000000000041b6c7  41b80e000000                     mov r8d, 0xe
000000000041b6cd  4889de                           mov rsi, rbx
000000000041b6d0  4c89f7                           mov rdi, r14
000000000041b6d3  e8d8910000                       call 0x4248b0
000000000041b6d8  e963f4ffff                       jmp 0x41ab40
000000000041b6dd  0f1f00                           nop dword ptr [rax]
000000000041b6e0  89e8                             mov eax, ebp
000000000041b6e2  83c601                           add esi, 1
000000000041b6e5  c1e817                           shr eax, 0x17
000000000041b6e8  8935862f4b00                     mov dword ptr [rip + 0x4b2f86], esi
000000000041b6ee  f6c401                           test ah, 1
000000000041b6f1  0f842f0b0000                     je 0x41c226
000000000041b6f7  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b6fc  0fb6c0                           movzx eax, al
000000000041b6ff  48c1e004                         shl rax, 4
000000000041b703  488d1407                         lea rdx, [rdi + rax]
000000000041b707  c1ed0e                           shr ebp, 0xe
000000000041b70a  f7c500010000                     test ebp, 0x100
000000000041b710  0f84fd0a0000                     je 0x41c213
000000000041b716  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b71b  400fb6ed                         movzx ebp, bpl
000000000041b71f  48c1e504                         shl rbp, 4
000000000041b723  488d0c28                         lea rcx, [rax + rbp]
000000000041b727  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b72b  750a                             jne 0x41b737
000000000041b72d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b731  0f840e0e0000                     je 0x41c545
000000000041b737  41b813000000                     mov r8d, 0x13
000000000041b73d  4889de                           mov rsi, rbx
000000000041b740  4c89f7                           mov rdi, r14
000000000041b743  e868910000                       call 0x4248b0
000000000041b748  e9f3f3ffff                       jmp 0x41ab40
000000000041b74d  0f1f00                           nop dword ptr [rax]
000000000041b750  89e8                             mov eax, ebp
000000000041b752  83c601                           add esi, 1
000000000041b755  c1e817                           shr eax, 0x17
000000000041b758  8935162f4b00                     mov dword ptr [rip + 0x4b2f16], esi
000000000041b75e  f6c401                           test ah, 1
000000000041b761  0f847e090000                     je 0x41c0e5
000000000041b767  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b76c  0fb6c0                           movzx eax, al
000000000041b76f  48c1e004                         shl rax, 4
000000000041b773  488d1407                         lea rdx, [rdi + rax]
000000000041b777  c1ed0e                           shr ebp, 0xe
000000000041b77a  f7c500010000                     test ebp, 0x100
000000000041b780  0f844c090000                     je 0x41c0d2
000000000041b786  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b78b  400fb6ed                         movzx ebp, bpl
000000000041b78f  48c1e504                         shl rbp, 4
000000000041b793  488d0c28                         lea rcx, [rax + rbp]
000000000041b797  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b79b  750a                             jne 0x41b7a7
000000000041b79d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b7a1  0f84ae0d0000                     je 0x41c555
000000000041b7a7  41b812000000                     mov r8d, 0x12
000000000041b7ad  4889de                           mov rsi, rbx
000000000041b7b0  4c89f7                           mov rdi, r14
000000000041b7b3  e8f8900000                       call 0x4248b0
000000000041b7b8  e983f3ffff                       jmp 0x41ab40
000000000041b7bd  0f1f00                           nop dword ptr [rax]
000000000041b7c0  89e8                             mov eax, ebp
000000000041b7c2  c1e817                           shr eax, 0x17
000000000041b7c5  f6c401                           test ah, 1
000000000041b7c8  0f847a0a0000                     je 0x41c248
000000000041b7ce  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b7d3  0fb6c0                           movzx eax, al
000000000041b7d6  48c1e004                         shl rax, 4
000000000041b7da  488d1407                         lea rdx, [rdi + rax]
000000000041b7de  c1ed0e                           shr ebp, 0xe
000000000041b7e1  f7c500010000                     test ebp, 0x100
000000000041b7e7  0f84480a0000                     je 0x41c235
000000000041b7ed  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b7f2  400fb6ed                         movzx ebp, bpl
000000000041b7f6  48c1e504                         shl rbp, 4
000000000041b7fa  488d0c28                         lea rcx, [rax + rbp]
000000000041b7fe  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b802  750a                             jne 0x41b80e
000000000041b804  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b808  0f84570d0000                     je 0x41c565
000000000041b80e  41b809000000                     mov r8d, 9
000000000041b814  4889de                           mov rsi, rbx
000000000041b817  4c89f7                           mov rdi, r14
000000000041b81a  e891900000                       call 0x4248b0
000000000041b81f  e91cf3ffff                       jmp 0x41ab40
000000000041b824  0f1f4000                         nop dword ptr [rax]
000000000041b828  89e8                             mov eax, ebp
000000000041b82a  c1e817                           shr eax, 0x17
000000000041b82d  f6c401                           test ah, 1
000000000041b830  0f848d080000                     je 0x41c0c3
000000000041b836  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b83b  0fb6c0                           movzx eax, al
000000000041b83e  48c1e004                         shl rax, 4
000000000041b842  488d1407                         lea rdx, [rdi + rax]
000000000041b846  c1ed0e                           shr ebp, 0xe
000000000041b849  f7c500010000                     test ebp, 0x100
000000000041b84f  0f845b080000                     je 0x41c0b0
000000000041b855  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b85a  400fb6ed                         movzx ebp, bpl
000000000041b85e  48c1e504                         shl rbp, 4
000000000041b862  488d0c28                         lea rcx, [rax + rbp]
000000000041b866  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b86a  750a                             jne 0x41b876
000000000041b86c  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b870  0f84ff0c0000                     je 0x41c575
000000000041b876  41b808000000                     mov r8d, 8
000000000041b87c  4889de                           mov rsi, rbx
000000000041b87f  4c89f7                           mov rdi, r14
000000000041b882  e829900000                       call 0x4248b0
000000000041b887  e9b4f2ffff                       jmp 0x41ab40
000000000041b88c  0f1f4000                         nop dword ptr [rax]
000000000041b890  89e8                             mov eax, ebp
000000000041b892  83c601                           add esi, 1
000000000041b895  c1e817                           shr eax, 0x17
000000000041b898  8935d62d4b00                     mov dword ptr [rip + 0x4b2dd6], esi
000000000041b89e  f6c401                           test ah, 1
000000000041b8a1  0f84c3090000                     je 0x41c26a
000000000041b8a7  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b8ac  0fb6c0                           movzx eax, al
000000000041b8af  48c1e004                         shl rax, 4
000000000041b8b3  488d1407                         lea rdx, [rdi + rax]
000000000041b8b7  c1ed0e                           shr ebp, 0xe
000000000041b8ba  f7c500010000                     test ebp, 0x100
000000000041b8c0  0f8491090000                     je 0x41c257
000000000041b8c6  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b8cb  400fb6ed                         movzx ebp, bpl
000000000041b8cf  48c1e504                         shl rbp, 4
000000000041b8d3  488d0c28                         lea rcx, [rax + rbp]
000000000041b8d7  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b8db  750a                             jne 0x41b8e7
000000000041b8dd  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b8e1  0f848f0b0000                     je 0x41c476
000000000041b8e7  41b807000000                     mov r8d, 7
000000000041b8ed  4889de                           mov rsi, rbx
000000000041b8f0  4c89f7                           mov rdi, r14
000000000041b8f3  e8b88f0000                       call 0x4248b0
000000000041b8f8  e943f2ffff                       jmp 0x41ab40
000000000041b8fd  0f1f00                           nop dword ptr [rax]
000000000041b900  89e8                             mov eax, ebp
000000000041b902  83c601                           add esi, 1
000000000041b905  c1e817                           shr eax, 0x17
000000000041b908  8935662d4b00                     mov dword ptr [rip + 0x4b2d66], esi
000000000041b90e  f6c401                           test ah, 1
000000000041b911  0f848a070000                     je 0x41c0a1
000000000041b917  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b91c  0fb6c0                           movzx eax, al
000000000041b91f  48c1e004                         shl rax, 4
000000000041b923  488d1407                         lea rdx, [rdi + rax]
000000000041b927  c1ed0e                           shr ebp, 0xe
000000000041b92a  f7c500010000                     test ebp, 0x100
000000000041b930  0f8458070000                     je 0x41c08e
000000000041b936  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b93b  400fb6ed                         movzx ebp, bpl
000000000041b93f  48c1e504                         shl rbp, 4
000000000041b943  488d0c28                         lea rcx, [rax + rbp]
000000000041b947  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b94b  750a                             jne 0x41b957
000000000041b94d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b951  0f84350b0000                     je 0x41c48c
000000000041b957  41b806000000                     mov r8d, 6
000000000041b95d  4889de                           mov rsi, rbx
000000000041b960  4c89f7                           mov rdi, r14
000000000041b963  e8488f0000                       call 0x4248b0
000000000041b968  e9d3f1ffff                       jmp 0x41ab40
000000000041b96d  0f1f00                           nop dword ptr [rax]
000000000041b970  89e8                             mov eax, ebp
000000000041b972  c1e817                           shr eax, 0x17
000000000041b975  f6c401                           test ah, 1
000000000041b978  0f840e090000                     je 0x41c28c
000000000041b97e  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b983  0fb6c0                           movzx eax, al
000000000041b986  48c1e004                         shl rax, 4
000000000041b98a  488d1407                         lea rdx, [rdi + rax]
000000000041b98e  c1ed0e                           shr ebp, 0xe
000000000041b991  f7c500010000                     test ebp, 0x100
000000000041b997  0f84dc080000                     je 0x41c279
000000000041b99d  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041b9a2  400fb6ed                         movzx ebp, bpl
000000000041b9a6  48c1e504                         shl rbp, 4
000000000041b9aa  488d0c28                         lea rcx, [rax + rbp]
000000000041b9ae  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041b9b2  750a                             jne 0x41b9be
000000000041b9b4  83790803                         cmp dword ptr [rcx + 8], 3
000000000041b9b8  0f84d80b0000                     je 0x41c596
000000000041b9be  41b80b000000                     mov r8d, 0xb
000000000041b9c4  4889de                           mov rsi, rbx
000000000041b9c7  4c89f7                           mov rdi, r14
000000000041b9ca  e8e18e0000                       call 0x4248b0
000000000041b9cf  e96cf1ffff                       jmp 0x41ab40
000000000041b9d4  0f1f4000                         nop dword ptr [rax]
000000000041b9d8  89e8                             mov eax, ebp
000000000041b9da  c1e817                           shr eax, 0x17
000000000041b9dd  f6c401                           test ah, 1
000000000041b9e0  0f8499060000                     je 0x41c07f
000000000041b9e6  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041b9eb  0fb6c0                           movzx eax, al
000000000041b9ee  48c1e004                         shl rax, 4
000000000041b9f2  488d1407                         lea rdx, [rdi + rax]
000000000041b9f6  c1ed0e                           shr ebp, 0xe
000000000041b9f9  f7c500010000                     test ebp, 0x100
000000000041b9ff  0f8467060000                     je 0x41c06c
000000000041ba05  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041ba0a  400fb6ed                         movzx ebp, bpl
000000000041ba0e  48c1e504                         shl rbp, 4
000000000041ba12  488d0c28                         lea rcx, [rax + rbp]
000000000041ba16  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041ba1a  750a                             jne 0x41ba26
000000000041ba1c  83790803                         cmp dword ptr [rcx + 8], 3
000000000041ba20  0f84830b0000                     je 0x41c5a9
000000000041ba26  41b80a000000                     mov r8d, 0xa
000000000041ba2c  4889de                           mov rsi, rbx
000000000041ba2f  4c89f7                           mov rdi, r14
000000000041ba32  e8798e0000                       call 0x4248b0
000000000041ba37  e904f1ffff                       jmp 0x41ab40
000000000041ba3c  0f1f4000                         nop dword ptr [rax]
000000000041ba40  89e8                             mov eax, ebp
000000000041ba42  83c601                           add esi, 1
000000000041ba45  c1e817                           shr eax, 0x17
000000000041ba48  8935262c4b00                     mov dword ptr [rip + 0x4b2c26], esi
000000000041ba4e  f6c401                           test ah, 1
000000000041ba51  0f84f0060000                     je 0x41c147
000000000041ba57  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041ba5c  0fb6c0                           movzx eax, al
000000000041ba5f  48c1e004                         shl rax, 4
000000000041ba63  488d1407                         lea rdx, [rdi + rax]
000000000041ba67  c1ed0e                           shr ebp, 0xe
000000000041ba6a  f7c500010000                     test ebp, 0x100
000000000041ba70  0f84be060000                     je 0x41c134
000000000041ba76  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041ba7b  400fb6ed                         movzx ebp, bpl
000000000041ba7f  48c1e504                         shl rbp, 4
000000000041ba83  488d0c28                         lea rcx, [rax + rbp]
000000000041ba87  837a0803                         cmp dword ptr [rdx + 8], 3
000000000041ba8b  750a                             jne 0x41ba97
000000000041ba8d  83790803                         cmp dword ptr [rcx + 8], 3
000000000041ba91  0f84210a0000                     je 0x41c4b8
000000000041ba97  41b80c000000                     mov r8d, 0xc
000000000041ba9d  4889de                           mov rsi, rbx
000000000041baa0  4c89f7                           mov rdi, r14
000000000041baa3  e8088e0000                       call 0x4248b0
000000000041baa8  e993f0ffff                       jmp 0x41ab40
000000000041baad  0f1f00                           nop dword ptr [rax]
000000000041bab0  89e8                             mov eax, ebp
000000000041bab2  c1e80e                           shr eax, 0xe
000000000041bab5  f6c401                           test ah, 1
000000000041bab8  0f84bb060000                     je 0x41c179
000000000041babe  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041bac3  0fb6c0                           movzx eax, al
000000000041bac6  48c1e004                         shl rax, 4
000000000041baca  488d0c07                         lea rcx, [rdi + rax]
000000000041bace  c1ed17                           shr ebp, 0x17
000000000041bad1  f7c500010000                     test ebp, 0x100
000000000041bad7  0f848c060000                     je 0x41c169
000000000041badd  488b442408                       mov rax, qword ptr [rsp + 8]
000000000041bae2  400fb6ed                         movzx ebp, bpl
000000000041bae6  48c1e504                         shl rbp, 4
000000000041baea  488d1428                         lea rdx, [rax + rbp]
000000000041baee  4889de                           mov rsi, rbx
000000000041baf1  4c89f7                           mov rdi, r14
000000000041baf4  e897a30000                       call 0x425e90
000000000041baf9  e942f0ffff                       jmp 0x41ab40
000000000041bafe  6690                             nop 
000000000041bb00  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041bb05  c1ed17                           shr ebp, 0x17
000000000041bb08  488b13                           mov rdx, qword ptr [rbx]
000000000041bb0b  488b74e820                       mov rsi, qword ptr [rax + rbp*8 + 0x20]
000000000041bb10  488b4610                         mov rax, qword ptr [rsi + 0x10]
000000000041bb14  488910                           mov qword ptr [rax], rdx
000000000041bb17  8b5308                           mov edx, dword ptr [rbx + 8]
000000000041bb1a  895008                           mov dword ptr [rax + 8], edx
000000000041bb1d  f6430840                         test byte ptr [rbx + 8], 0x40
000000000041bb21  0f84f8f7ffff                     je 0x41b31f
000000000041bb27  488b13                           mov rdx, qword ptr [rbx]
000000000041bb2a  f6420903                         test byte ptr [rdx + 9], 3
000000000041bb2e  0f84ebf7ffff                     je 0x41b31f
000000000041bb34  f6460904                         test byte ptr [rsi + 9], 4
000000000041bb38  0f84e1f7ffff                     je 0x41b31f
000000000041bb3e  4c89f7                           mov rdi, r14
000000000041bb41  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041bb46  e845d3ffff                       call 0x418e90
000000000041bb4b  0f1f440000                       nop dword ptr [rax + rax]
000000000041bb50  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041bb54  448b0d152b4b00                   mov r9d, dword ptr [rip + 0x4b2b15]
000000000041bb5b  8b35132b4b00                     mov esi, dword ptr [rip + 0x4b2b13]
000000000041bb61  448b0594cb4a00                   mov r8d, dword ptr [rip + 0x4acb94]
000000000041bb68  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041bb6d  e9eee8ffff                       jmp 0x41a460
000000000041bb72  660f1f440000                     nop word ptr [rax + rax]
000000000041bb78  4189ec                           mov r12d, ebp
000000000041bb7b  c1ed0e                           shr ebp, 0xe
000000000041bb7e  4c89f7                           mov rdi, r14
000000000041bb81  41c1ec17                         shr r12d, 0x17
000000000041bb85  4189ed                           mov r13d, ebp
000000000041bb88  e8c31f0000                       call 0x41db50
000000000041bb8d  4181e5ff010000                   and r13d, 0x1ff
000000000041bb94  4489e7                           mov edi, r12d
000000000041bb97  488903                           mov qword ptr [rbx], rax
000000000041bb9a  4409ef                           or edi, r13d
000000000041bb9d  c7430845000000                   mov dword ptr [rbx + 8], 0x45
000000000041bba4  7443                             je 0x41bbe9
000000000041bba6  4489e9                           mov ecx, r13d
000000000041bba9  c1f903                           sar ecx, 3
000000000041bbac  83e11f                           and ecx, 0x1f
000000000041bbaf  740e                             je 0x41bbbf
000000000041bbb1  83e507                           and ebp, 7
000000000041bbb4  83e901                           sub ecx, 1
000000000041bbb7  8d5508                           lea edx, [rbp + 8]
000000000041bbba  d3e2                             shl edx, cl
000000000041bbbc  4189d5                           mov r13d, edx
000000000041bbbf  4489e1                           mov ecx, r12d
000000000041bbc2  c1f903                           sar ecx, 3
000000000041bbc5  83e11f                           and ecx, 0x1f
000000000041bbc8  740e                             je 0x41bbd8
000000000041bbca  4183e407                         and r12d, 7
000000000041bbce  83e901                           sub ecx, 1
000000000041bbd1  4183c408                         add r12d, 8
000000000041bbd5  41d3e4                           shl r12d, cl
000000000041bbd8  4489e9                           mov ecx, r13d
000000000041bbdb  4489e2                           mov edx, r12d
000000000041bbde  4889c6                           mov rsi, rax
000000000041bbe1  4c89f7                           mov rdi, r14
000000000041bbe4  e887990000                       call 0x425570
000000000041bbe9  498b4618                         mov rax, qword ptr [r14 + 0x18]
000000000041bbed  4883781800                       cmp qword ptr [rax + 0x18], 0
000000000041bbf2  0f8e48efffff                     jle 0x41ab40
000000000041bbf8  4883c310                         add rbx, 0x10
000000000041bbfc  4c89f7                           mov rdi, r14
000000000041bbff  49895e10                         mov qword ptr [r14 + 0x10], rbx
000000000041bc03  e828320000                       call 0x41ee30
000000000041bc08  e921f2ffff                       jmp 0x41ae2e
000000000041bc0d  0f1f00                           nop dword ptr [rax]
000000000041bc10  89e8                             mov eax, ebp
000000000041bc12  c1e80e                           shr eax, 0xe
000000000041bc15  f6c401                           test ah, 1
000000000041bc18  0f84d0020000                     je 0x41beee
000000000041bc1e  488b7c2408                       mov rdi, qword ptr [rsp + 8]
000000000041bc23  0fb6c0                           movzx eax, al
000000000041bc26  48c1e004                         shl rax, 4
000000000041bc2a  488d1407                         lea rdx, [rdi + rax]
000000000041bc2e  c1ed17                           shr ebp, 0x17
000000000041bc31  4889d9                           mov rcx, rbx
000000000041bc34  4c89f7                           mov rdi, r14
000000000041bc37  89ee                             mov esi, ebp
000000000041bc39  48c1e604                         shl rsi, 4
000000000041bc3d  4c01de                           add rsi, r11
000000000041bc40  e8cb940000                       call 0x425110
000000000041bc45  e9f6eeffff                       jmp 0x41ab40
000000000041bc4a  660f1f440000                     nop word ptr [rax + rax]
000000000041bc50  498b5e20                         mov rbx, qword ptr [r14 + 0x20]
000000000041bc54  41c786d400000001000000           mov dword ptr [r14 + 0xd4], 1
000000000041bc5f  0fb64322                         movzx eax, byte ptr [rbx + 0x22]
000000000041bc63  84c0                             test al, al
000000000041bc65  0f893d0a0000                     jns 0x41c6a8
000000000041bc6b  83e07f                           and eax, 0x7f
000000000041bc6e  884322                           mov byte ptr [rbx + 0x22], al
000000000041bc71  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041bc75  e9fee7ffff                       jmp 0x41a478
000000000041bc7a  498b7510                         mov rsi, qword ptr [r13 + 0x10]
000000000041bc7e  488b542430                       mov rdx, qword ptr [rsp + 0x30]
000000000041bc83  4c89e7                           mov rdi, r12
000000000041bc86  e835abffff                       call 0x4167c0
000000000041bc8b  85c0                             test eax, eax
000000000041bc8d  0f8415ecffff                     je 0x41a8a8
000000000041bc93  8b442464                         mov eax, dword ptr [rsp + 0x64]
000000000041bc97  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041bc9c  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041bca3  8903                             mov dword ptr [rbx], eax
000000000041bca5  8b4318                           mov eax, dword ptr [rbx + 0x18]
000000000041bca8  83f803                           cmp eax, 3
000000000041bcab  7471                             je 0x41bd1e
000000000041bcad  83e00f                           and eax, 0xf
000000000041bcb0  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041bcb5  83f804                           cmp eax, 4
000000000041bcb8  751c                             jne 0x41bcd6
000000000041bcba  4c8b6b10                         mov r13, qword ptr [rbx + 0x10]
000000000041bcbe  488d358e892100                   lea rsi, [rip + 0x21898e]
000000000041bcc5  4d8d6518                         lea r12, [r13 + 0x18]
000000000041bcc9  4c89e7                           mov rdi, r12
000000000041bccc  e83f7efeff                       call 0x403b10
000000000041bcd1  4885c0                           test rax, rax
000000000041bcd4  741a                             je 0x41bcf0
000000000041bcd6  488d35aa892100                   lea rsi, [rip + 0x2189aa]
000000000041bcdd  4c89f7                           mov rdi, r14
000000000041bce0  31c0                             xor eax, eax
000000000041bce2  e8090b0000                       call 0x41c7f0
000000000041bce7  660f1f840000000000               nop word ptr [rax + rax]
000000000041bcf0  498b7510                         mov rsi, qword ptr [r13 + 0x10]
000000000041bcf4  488b542430                       mov rdx, qword ptr [rsp + 0x30]
000000000041bcf9  4c89e7                           mov rdi, r12
000000000041bcfc  e8bfaaffff                       call 0x4167c0
000000000041bd01  85c0                             test eax, eax
000000000041bd03  74d1                             je 0x41bcd6
000000000041bd05  8b442464                         mov eax, dword ptr [rsp + 0x64]
000000000041bd09  4883fbf0                         cmp rbx, -0x10
000000000041bd0d  c7431803000000                   mov dword ptr [rbx + 0x18], 3
000000000041bd14  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041bd19  894310                           mov dword ptr [rbx + 0x10], eax
000000000041bd1c  74b8                             je 0x41bcd6
000000000041bd1e  8b4328                           mov eax, dword ptr [rbx + 0x28]
000000000041bd21  83f803                           cmp eax, 3
000000000041bd24  0f84e1050000                     je 0x41c30b
000000000041bd2a  83e00f                           and eax, 0xf
000000000041bd2d  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041bd32  83f804                           cmp eax, 4
000000000041bd35  7520                             jne 0x41bd57
000000000041bd37  4c8b6b20                         mov r13, qword ptr [rbx + 0x20]
000000000041bd3b  488d3511892100                   lea rsi, [rip + 0x218911]
000000000041bd42  4d8d6518                         lea r12, [r13 + 0x18]
000000000041bd46  4c89e7                           mov rdi, r12
000000000041bd49  e8c27dfeff                       call 0x403b10
000000000041bd4e  4885c0                           test rax, rax
000000000041bd51  0f84c5060000                     je 0x41c41c
000000000041bd57  488d3546892100                   lea rsi, [rip + 0x218946]
000000000041bd5e  4c89f7                           mov rdi, r14
000000000041bd61  31c0                             xor eax, eax
000000000041bd63  e8880a0000                       call 0x41c7f0
000000000041bd68  0f1f840000000000                 nop dword ptr [rax + rax]
000000000041bd70  85c0                             test eax, eax
000000000041bd72  0f8450eeffff                     je 0x41abc8
000000000041bd78  83f801                           cmp eax, 1
000000000041bd7b  0f8419010000                     je 0x41be9a
000000000041bd81  0f1f8000000000                   nop dword ptr [rax]
000000000041bd88  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041bd8c  89ce                             mov esi, ecx
000000000041bd8e  4883c004                         add rax, 4
000000000041bd92  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041bd96  e9c5e6ffff                       jmp 0x41a460
000000000041bd9b  4439e5                           cmp ebp, r12d
000000000041bd9e  4489e7                           mov edi, r12d
000000000041bda1  4d63e4                           movsxd r12, r12d
000000000041bda4  0f4efd                           cmovle edi, ebp
000000000041bda7  49f7dc                           neg r12
000000000041bdaa  488d5308                         lea rdx, [rbx + 8]
000000000041bdae  49c1e404                         shl r12, 4
000000000041bdb2  31c0                             xor eax, eax
000000000041bdb4  4b8d4c2308                       lea rcx, [r11 + r12 + 8]
000000000041bdb9  0f1f8000000000                   nop dword ptr [rax]
000000000041bdc0  488b71f8                         mov rsi, qword ptr [rcx - 8]
000000000041bdc4  83c001                           add eax, 1
000000000041bdc7  4883c110                         add rcx, 0x10
000000000041bdcb  4883c210                         add rdx, 0x10
000000000041bdcf  488972e8                         mov qword ptr [rdx - 0x18], rsi
000000000041bdd3  8b71f0                           mov esi, dword ptr [rcx - 0x10]
000000000041bdd6  8972f0                           mov dword ptr [rdx - 0x10], esi
000000000041bdd9  39f8                             cmp eax, edi
000000000041bddb  7ce3                             jl 0x41bdc0
000000000041bddd  39c5                             cmp ebp, eax
000000000041bddf  0f8f37f6ffff                     jg 0x41b41c
000000000041bde5  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041bde9  e9a5eeffff                       jmp 0x41ac93
000000000041bdee  4d8b4e18                         mov r9, qword ptr [r14 + 0x18]
000000000041bdf2  488933                           mov qword ptr [rbx], rsi
000000000041bdf5  c7430846000000                   mov dword ptr [rbx + 8], 0x46
000000000041bdfc  4983791800                       cmp qword ptr [r9 + 0x18], 0
000000000041be01  0f8e39edffff                     jle 0x41ab40
000000000041be07  e9ecfdffff                       jmp 0x41bbf8
000000000041be0c  4585d2                           test r10d, r10d
000000000041be0f  0f8900060000                     jns 0x41c415
000000000041be15  39d7                             cmp edi, edx
000000000041be17  0f8cf8050000                     jl 0x41c415
000000000041be1d  c1ed0e                           shr ebp, 0xe
000000000041be20  89ea                             mov edx, ebp
000000000041be22  488d84900400f8ff                 lea rax, [rax + rdx*4 - 0x7fffc]
000000000041be2a  ba00000080                       mov edx, 0x80000000
000000000041be2f  29fa                             sub edx, edi
000000000041be31  4139d2                           cmp r10d, edx
000000000041be34  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041be38  893b                             mov dword ptr [rbx], edi
000000000041be3a  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041be41  897b30                           mov dword ptr [rbx + 0x30], edi
000000000041be44  c7433803000000                   mov dword ptr [rbx + 0x38], 3
000000000041be4b  0f8dc4050000                     jge 0x41c415
000000000041be51  85ff                             test edi, edi
000000000041be53  0f89bc050000                     jns 0x41c415
000000000041be59  c7432000000000                   mov dword ptr [rbx + 0x20], 0
000000000041be60  c7432803000000                   mov dword ptr [rbx + 0x28], 3
000000000041be67  89ce                             mov esi, ecx
000000000041be69  e9f2e5ffff                       jmp 0x41a460
000000000041be6e  4898                             cdqe 
000000000041be70  c1ed0e                           shr ebp, 0xe
000000000041be73  48c1e004                         shl rax, 4
000000000041be77  f7c500010000                     test ebp, 0x100
000000000041be7d  498d1403                         lea rdx, [r11 + rax]
000000000041be81  0f852fefffff                     jne 0x41adb6
000000000041be87  81e5ff010000                     and ebp, 0x1ff
000000000041be8d  48c1e504                         shl rbp, 4
000000000041be91  498d0c2b                         lea rcx, [r11 + rbp]
000000000041be95  e92defffff                       jmp 0x41adc7
000000000041be9a  448b13                           mov r10d, dword ptr [rbx]
000000000041be9d  4585d2                           test r10d, r10d
000000000041bea0  0f8422edffff                     je 0x41abc8
000000000041bea6  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041beaa  89ce                             mov esi, ecx
000000000041beac  4883c004                         add rax, 4
000000000041beb0  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041beb4  e9a7e5ffff                       jmp 0x41a460
000000000041beb9  81e5ff010000                     and ebp, 0x1ff
000000000041bebf  48c1e504                         shl rbp, 4
000000000041bec3  498d0c2b                         lea rcx, [r11 + rbp]
000000000041bec7  e97bf1ffff                       jmp 0x41b047
000000000041becc  4863ed                           movsxd rbp, ebp
000000000041becf  48c1e504                         shl rbp, 4
000000000041bed3  498d342b                         lea rsi, [r11 + rbp]
000000000041bed7  e912eeffff                       jmp 0x41acee
000000000041bedc  25ff010000                       and eax, 0x1ff
000000000041bee1  48c1e004                         shl rax, 4
000000000041bee5  498d1403                         lea rdx, [r11 + rax]
000000000041bee9  e9e0edffff                       jmp 0x41acce
000000000041beee  25ff010000                       and eax, 0x1ff
000000000041bef3  48c1e004                         shl rax, 4
000000000041bef7  498d1403                         lea rdx, [r11 + rax]
000000000041befb  e92efdffff                       jmp 0x41bc2e
000000000041bf00  81e5ff010000                     and ebp, 0x1ff
000000000041bf06  48c1e504                         shl rbp, 4
000000000041bf0a  498d0c2b                         lea rcx, [r11 + rbp]
000000000041bf0e  e91cf0ffff                       jmp 0x41af2f
000000000041bf13  4898                             cdqe 
000000000041bf15  48c1e004                         shl rax, 4
000000000041bf19  498d1403                         lea rdx, [r11 + rax]
000000000041bf1d  e9edefffff                       jmp 0x41af0f
000000000041bf22  81e5ff010000                     and ebp, 0x1ff
000000000041bf28  31c9                             xor ecx, ecx
000000000041bf2a  48c1e504                         shl rbp, 4
000000000041bf2e  498d142b                         lea rdx, [r11 + rbp]
000000000041bf32  8b4208                           mov eax, dword ptr [rdx + 8]
000000000041bf35  394608                           cmp dword ptr [rsi + 8], eax
000000000041bf38  0f85eef1ffff                     jne 0x41b12c
000000000041bf3e  4c89f7                           mov rdi, r14
000000000041bf41  e85a4f0000                       call 0x420ea0
000000000041bf46  31c9                             xor ecx, ecx
000000000041bf48  85c0                             test eax, eax
000000000041bf4a  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041bf4e  0f95c1                           setne cl
000000000041bf51  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041bf55  4139cc                           cmp r12d, ecx
000000000041bf58  0f85dff1ffff                     jne 0x41b13d
000000000041bf5e  8b18                             mov ebx, dword ptr [rax]
000000000041bf60  89da                             mov edx, ebx
000000000041bf62  c1ea06                           shr edx, 6
000000000041bf65  81e2ff000000                     and edx, 0xff
000000000041bf6b  741c                             je 0x41bf89
000000000041bf6d  4863d2                           movsxd rdx, edx
000000000041bf70  4c89f7                           mov rdi, r14
000000000041bf73  48c1e204                         shl rdx, 4
000000000041bf77  498d7413f0                       lea rsi, [r11 + rdx - 0x10]
000000000041bf7c  e88f1f0000                       call 0x41df10
000000000041bf81  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041bf85  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041bf89  c1eb0e                           shr ebx, 0xe
000000000041bf8c  8d930100feff                     lea edx, [rbx - 0x1ffff]
000000000041bf92  4863d2                           movsxd rdx, edx
000000000041bf95  488d449004                       lea rax, [rax + rdx*4 + 4]
000000000041bf9a  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041bf9e  e9f0ecffff                       jmp 0x41ac93
000000000041bfa3  4898                             cdqe 
000000000041bfa5  48c1e004                         shl rax, 4
000000000041bfa9  498d3403                         lea rsi, [r11 + rax]
000000000041bfad  e94cf1ffff                       jmp 0x41b0fe
000000000041bfb2  4863ed                           movsxd rbp, ebp
000000000041bfb5  48c1e504                         shl rbp, 4
000000000041bfb9  498d342b                         lea rsi, [r11 + rbp]
000000000041bfbd  e9b4ecffff                       jmp 0x41ac76
000000000041bfc2  25ff010000                       and eax, 0x1ff
000000000041bfc7  48c1e004                         shl rax, 4
000000000041bfcb  498d1403                         lea rdx, [r11 + rax]
000000000041bfcf  e982ecffff                       jmp 0x41ac56
000000000041bfd4  81e5ff010000                     and ebp, 0x1ff
000000000041bfda  48c1e504                         shl rbp, 4
000000000041bfde  498d0c2b                         lea rcx, [r11 + rbp]
000000000041bfe2  e9d0f0ffff                       jmp 0x41b0b7
000000000041bfe7  81e5ff010000                     and ebp, 0x1ff
000000000041bfed  48c1e504                         shl rbp, 4
000000000041bff1  498d142b                         lea rdx, [r11 + rbp]
000000000041bff5  e9dbf4ffff                       jmp 0x41b4d5
000000000041bffa  81e5ff010000                     and ebp, 0x1ff
000000000041c000  48c1e504                         shl rbp, 4
000000000041c004  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c008  e9caf5ffff                       jmp 0x41b5d7
000000000041c00d  4898                             cdqe 
000000000041c00f  48c1e004                         shl rax, 4
000000000041c013  498d1403                         lea rdx, [r11 + rax]
000000000041c017  e99bf5ffff                       jmp 0x41b5b7
000000000041c01c  81e5ff010000                     and ebp, 0x1ff
000000000041c022  48c1e504                         shl rbp, 4
000000000041c026  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c02a  e988f6ffff                       jmp 0x41b6b7
000000000041c02f  4898                             cdqe 
000000000041c031  48c1e004                         shl rax, 4
000000000041c035  498d1403                         lea rdx, [r11 + rax]
000000000041c039  e959f6ffff                       jmp 0x41b697
000000000041c03e  85d2                             test edx, edx
000000000041c040  0f8426eeffff                     je 0x41ae6c
000000000041c046  83fa01                           cmp edx, 1
000000000041c049  0f8539fdffff                     jne 0x41bd88
000000000041c04f  8b30                             mov esi, dword ptr [rax]
000000000041c051  85f6                             test esi, esi
000000000041c053  0f8413eeffff                     je 0x41ae6c
000000000041c059  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c05d  89ce                             mov esi, ecx
000000000041c05f  4883c004                         add rax, 4
000000000041c063  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041c067  e9f4e3ffff                       jmp 0x41a460
000000000041c06c  81e5ff010000                     and ebp, 0x1ff
000000000041c072  48c1e504                         shl rbp, 4
000000000041c076  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c07a  e997f9ffff                       jmp 0x41ba16
000000000041c07f  4898                             cdqe 
000000000041c081  48c1e004                         shl rax, 4
000000000041c085  498d1403                         lea rdx, [r11 + rax]
000000000041c089  e968f9ffff                       jmp 0x41b9f6
000000000041c08e  81e5ff010000                     and ebp, 0x1ff
000000000041c094  48c1e504                         shl rbp, 4
000000000041c098  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c09c  e9a6f8ffff                       jmp 0x41b947
000000000041c0a1  4898                             cdqe 
000000000041c0a3  48c1e004                         shl rax, 4
000000000041c0a7  498d1403                         lea rdx, [r11 + rax]
000000000041c0ab  e977f8ffff                       jmp 0x41b927
000000000041c0b0  81e5ff010000                     and ebp, 0x1ff
000000000041c0b6  48c1e504                         shl rbp, 4
000000000041c0ba  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c0be  e9a3f7ffff                       jmp 0x41b866
000000000041c0c3  4898                             cdqe 
000000000041c0c5  48c1e004                         shl rax, 4
000000000041c0c9  498d1403                         lea rdx, [r11 + rax]
000000000041c0cd  e974f7ffff                       jmp 0x41b846
000000000041c0d2  81e5ff010000                     and ebp, 0x1ff
000000000041c0d8  48c1e504                         shl rbp, 4
000000000041c0dc  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c0e0  e9b2f6ffff                       jmp 0x41b797
000000000041c0e5  4898                             cdqe 
000000000041c0e7  48c1e004                         shl rax, 4
000000000041c0eb  498d1403                         lea rdx, [r11 + rax]
000000000041c0ef  e983f6ffff                       jmp 0x41b777
000000000041c0f4  4898                             cdqe 
000000000041c0f6  48c1e004                         shl rax, 4
000000000041c0fa  498d1403                         lea rdx, [r11 + rax]
000000000041c0fe  e994efffff                       jmp 0x41b097
000000000041c103  4898                             cdqe 
000000000041c105  48c1e004                         shl rax, 4
000000000041c109  498d1403                         lea rdx, [r11 + rax]
000000000041c10d  e915efffff                       jmp 0x41b027
000000000041c112  81e5ff010000                     and ebp, 0x1ff
000000000041c118  48c1e504                         shl rbp, 4
000000000041c11c  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c120  e999edffff                       jmp 0x41aebe
000000000041c125  4898                             cdqe 
000000000041c127  48c1e004                         shl rax, 4
000000000041c12b  498d1403                         lea rdx, [r11 + rax]
000000000041c12f  e96aedffff                       jmp 0x41ae9e
000000000041c134  81e5ff010000                     and ebp, 0x1ff
000000000041c13a  48c1e504                         shl rbp, 4
000000000041c13e  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c142  e940f9ffff                       jmp 0x41ba87
000000000041c147  4898                             cdqe 
000000000041c149  48c1e004                         shl rax, 4
000000000041c14d  498d1403                         lea rdx, [r11 + rax]
000000000041c151  e911f9ffff                       jmp 0x41ba67
000000000041c156  81e5ff010000                     and ebp, 0x1ff
000000000041c15c  48c1e504                         shl rbp, 4
000000000041c160  498d142b                         lea rdx, [r11 + rbp]
000000000041c164  e908f1ffff                       jmp 0x41b271
000000000041c169  4863ed                           movsxd rbp, ebp
000000000041c16c  48c1e504                         shl rbp, 4
000000000041c170  498d142b                         lea rdx, [r11 + rbp]
000000000041c174  e975f9ffff                       jmp 0x41baee
000000000041c179  25ff010000                       and eax, 0x1ff
000000000041c17e  48c1e004                         shl rax, 4
000000000041c182  498d0c03                         lea rcx, [r11 + rax]
000000000041c186  e943f9ffff                       jmp 0x41bace
000000000041c18b  81e5ff010000                     and ebp, 0x1ff
000000000041c191  48c1e504                         shl rbp, 4
000000000041c195  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c199  e931f1ffff                       jmp 0x41b2cf
000000000041c19e  4898                             cdqe 
000000000041c1a0  48c1e004                         shl rax, 4
000000000041c1a4  498d1403                         lea rdx, [r11 + rax]
000000000041c1a8  e902f1ffff                       jmp 0x41b2af
000000000041c1ad  4863ed                           movsxd rbp, ebp
000000000041c1b0  48c1e504                         shl rbp, 4
000000000041c1b4  498d142b                         lea rdx, [r11 + rbp]
000000000041c1b8  e9d0f2ffff                       jmp 0x41b48d
000000000041c1bd  25ff010000                       and eax, 0x1ff
000000000041c1c2  48c1e004                         shl rax, 4
000000000041c1c6  498d0c03                         lea rcx, [r11 + rax]
000000000041c1ca  e99ef2ffff                       jmp 0x41b46d
000000000041c1cf  81e5ff010000                     and ebp, 0x1ff
000000000041c1d5  48c1e504                         shl rbp, 4
000000000041c1d9  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c1dd  e985f3ffff                       jmp 0x41b567
000000000041c1e2  4898                             cdqe 
000000000041c1e4  48c1e004                         shl rax, 4
000000000041c1e8  498d1403                         lea rdx, [r11 + rax]
000000000041c1ec  e956f3ffff                       jmp 0x41b547
000000000041c1f1  81e5ff010000                     and ebp, 0x1ff
000000000041c1f7  48c1e504                         shl rbp, 4
000000000041c1fb  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c1ff  e943f4ffff                       jmp 0x41b647
000000000041c204  4898                             cdqe 
000000000041c206  48c1e004                         shl rax, 4
000000000041c20a  498d1403                         lea rdx, [r11 + rax]
000000000041c20e  e914f4ffff                       jmp 0x41b627
000000000041c213  81e5ff010000                     and ebp, 0x1ff
000000000041c219  48c1e504                         shl rbp, 4
000000000041c21d  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c221  e901f5ffff                       jmp 0x41b727
000000000041c226  4898                             cdqe 
000000000041c228  48c1e004                         shl rax, 4
000000000041c22c  498d1403                         lea rdx, [r11 + rax]
000000000041c230  e9d2f4ffff                       jmp 0x41b707
000000000041c235  81e5ff010000                     and ebp, 0x1ff
000000000041c23b  48c1e504                         shl rbp, 4
000000000041c23f  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c243  e9b6f5ffff                       jmp 0x41b7fe
000000000041c248  4898                             cdqe 
000000000041c24a  48c1e004                         shl rax, 4
000000000041c24e  498d1403                         lea rdx, [r11 + rax]
000000000041c252  e987f5ffff                       jmp 0x41b7de
000000000041c257  81e5ff010000                     and ebp, 0x1ff
000000000041c25d  48c1e504                         shl rbp, 4
000000000041c261  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c265  e96df6ffff                       jmp 0x41b8d7
000000000041c26a  4898                             cdqe 
000000000041c26c  48c1e004                         shl rax, 4
000000000041c270  498d1403                         lea rdx, [r11 + rax]
000000000041c274  e93ef6ffff                       jmp 0x41b8b7
000000000041c279  81e5ff010000                     and ebp, 0x1ff
000000000041c27f  48c1e504                         shl rbp, 4
000000000041c283  498d0c2b                         lea rcx, [r11 + rbp]
000000000041c287  e922f7ffff                       jmp 0x41b9ae
000000000041c28c  4898                             cdqe 
000000000041c28e  48c1e004                         shl rax, 4
000000000041c292  498d1403                         lea rdx, [r11 + rax]
000000000041c296  e9f3f6ffff                       jmp 0x41b98e
000000000041c29b  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041c29f  41f6472204                       test byte ptr [r15 + 0x22], 4
000000000041c2a4  0f8499030000                     je 0x41c643
000000000041c2aa  488b4708                         mov rax, qword ptr [rdi + 8]
000000000041c2ae  4989ff                           mov r15, rdi
000000000041c2b1  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041c2b5  488b4738                         mov rax, qword ptr [rdi + 0x38]
000000000041c2b9  e962e1ffff                       jmp 0x41a420
000000000041c2be  41b819000000                     mov r8d, 0x19
000000000041c2c4  4889d1                           mov rcx, rdx
000000000041c2c7  4889de                           mov rsi, rbx
000000000041c2ca  4c89f7                           mov rdi, r14
000000000041c2cd  e8de850000                       call 0x4248b0
000000000041c2d2  e969e8ffff                       jmp 0x41ab40
000000000041c2d7  498b4630                         mov rax, qword ptr [r14 + 0x30]
000000000041c2db  492b4610                         sub rax, qword ptr [r14 + 0x10]
000000000041c2df  4963ec                           movsxd rbp, r12d
000000000041c2e2  48c1f804                         sar rax, 4
000000000041c2e6  4839e8                           cmp rax, rbp
000000000041c2e9  0f8ef5010000                     jle 0x41c4e4
000000000041c2ef  4d8b5f30                         mov r11, qword ptr [r15 + 0x30]
000000000041c2f3  48c1e504                         shl rbp, 4
000000000041c2f7  4b8d1c2b                         lea rbx, [r11 + r13]
000000000041c2fb  488d042b                         lea rax, [rbx + rbp]
000000000041c2ff  4489e5                           mov ebp, r12d
000000000041c302  49894610                         mov qword ptr [r14 + 0x10], rax
000000000041c306  e902f1ffff                       jmp 0x41b40d
000000000041c30b  8b4320                           mov eax, dword ptr [rbx + 0x20]
000000000041c30e  2903                             sub dword ptr [rbx], eax
000000000041c310  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c314  c1ed0e                           shr ebp, 0xe
000000000041c317  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c31e  448b0d4b234b00                   mov r9d, dword ptr [rip + 0x4b234b]
000000000041c325  8b3549234b00                     mov esi, dword ptr [rip + 0x4b2349]
000000000041c32b  448b05cac34a00                   mov r8d, dword ptr [rip + 0x4ac3ca]
000000000041c332  488d84a80400f8ff                 lea rax, [rax + rbp*4 - 0x7fffc]
000000000041c33a  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041c33e  e91de1ffff                       jmp 0x41a460
000000000041c343  31c9                             xor ecx, ecx
000000000041c345  488d3d54802100                   lea rdi, [rip + 0x218054]
000000000041c34c  49397c2420                       cmp qword ptr [r12 + 0x20], rdi
000000000041c351  740f                             je 0x41c362
000000000041c353  410fb64c240b                     movzx ecx, byte ptr [r12 + 0xb]
000000000041c359  ba01000000                       mov edx, 1
000000000041c35e  d3e2                             shl edx, cl
000000000041c360  89d1                             mov ecx, edx
000000000041c362  89c2                             mov edx, eax
000000000041c364  4c89e6                           mov rsi, r12
000000000041c367  4c89f7                           mov rdi, r14
000000000041c36a  4c895c2428                       mov qword ptr [rsp + 0x28], r11
000000000041c36f  89442418                         mov dword ptr [rsp + 0x18], eax
000000000041c373  e8f8910000                       call 0x425570
000000000041c378  8b442418                         mov eax, dword ptr [rsp + 0x18]
000000000041c37c  4c8b5c2428                       mov r11, qword ptr [rsp + 0x28]
000000000041c381  e92ae4ffff                       jmp 0x41a7b0
000000000041c386  4c89f7                           mov rdi, r14
000000000041c389  e852e0ffff                       call 0x41a3e0
000000000041c38e  e91de6ffff                       jmp 0x41a9b0
000000000041c393  418d6aff                         lea ebp, [r10 - 1]
000000000041c397  be06000000                       mov esi, 6
000000000041c39c  4c89f7                           mov rdi, r14
000000000041c39f  4c895c2440                       mov qword ptr [rsp + 0x40], r11
000000000041c3a4  48894c2438                       mov qword ptr [rsp + 0x38], rcx
000000000041c3a9  8d14ed28000000                   lea edx, [rbp*8 + 0x28]
000000000041c3b0  4489542428                       mov dword ptr [rsp + 0x28], r10d
000000000041c3b5  4863d2                           movsxd rdx, edx
000000000041c3b8  e8f3160000                       call 0x41dab0
000000000041c3bd  448b542428                       mov r10d, dword ptr [rsp + 0x28]
000000000041c3c2  4889442418                       mov qword ptr [rsp + 0x18], rax
000000000041c3c7  48c7401800000000                 mov qword ptr [rax + 0x18], 0
000000000041c3cf  488b4c2438                       mov rcx, qword ptr [rsp + 0x38]
000000000041c3d4  4c8b5c2440                       mov r11, qword ptr [rsp + 0x40]
000000000041c3d9  4585d2                           test r10d, r10d
000000000041c3dc  4488500a                         mov byte ptr [rax + 0xa], r10b
000000000041c3e0  0f85afe1ffff                     jne 0x41a595
000000000041c3e6  4d8b4e18                         mov r9, qword ptr [r14 + 0x18]
000000000041c3ea  4c896018                         mov qword ptr [rax + 0x18], r12
000000000041c3ee  488903                           mov qword ptr [rbx], rax
000000000041c3f1  c7430846000000                   mov dword ptr [rbx + 8], 0x46
000000000041c3f8  410fb6442409                     movzx eax, byte ptr [r12 + 9]
000000000041c3fe  a804                             test al, 4
000000000041c400  0f8527e3ffff                     jne 0x41a72d
000000000041c406  488b442418                       mov rax, qword ptr [rsp + 0x18]
000000000041c40b  4989442440                       mov qword ptr [r12 + 0x40], rax
000000000041c410  e9e7f9ffff                       jmp 0x41bdfc
000000000041c415  89ce                             mov esi, ecx
000000000041c417  e944e0ffff                       jmp 0x41a460
000000000041c41c  498b7510                         mov rsi, qword ptr [r13 + 0x10]
000000000041c420  488b542430                       mov rdx, qword ptr [rsp + 0x30]
000000000041c425  4c89e7                           mov rdi, r12
000000000041c428  e893a3ffff                       call 0x4167c0
000000000041c42d  85c0                             test eax, eax
000000000041c42f  0f8422f9ffff                     je 0x41bd57
000000000041c435  8b442464                         mov eax, dword ptr [rsp + 0x64]
000000000041c439  4883fbe0                         cmp rbx, -0x20
000000000041c43d  c7432803000000                   mov dword ptr [rbx + 0x28], 3
000000000041c444  4c8b5c2418                       mov r11, qword ptr [rsp + 0x18]
000000000041c449  894320                           mov dword ptr [rbx + 0x20], eax
000000000041c44c  0f85bcfeffff                     jne 0x41c30e
000000000041c452  e900f9ffff                       jmp 0x41bd57
000000000041c457  660f1f840000000000               nop word ptr [rax + rax]
000000000041c460  8b02                             mov eax, dword ptr [rdx]
000000000041c462  0b01                             or eax, dword ptr [rcx]
000000000041c464  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c46b  8903                             mov dword ptr [rbx], eax
000000000041c46d  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c471  e9eadfffff                       jmp 0x41a460
000000000041c476  8b02                             mov eax, dword ptr [rdx]
000000000041c478  2b01                             sub eax, dword ptr [rcx]
000000000041c47a  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c481  8903                             mov dword ptr [rbx], eax
000000000041c483  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c487  e9d4dfffff                       jmp 0x41a460
000000000041c48c  8b01                             mov eax, dword ptr [rcx]
000000000041c48e  0302                             add eax, dword ptr [rdx]
000000000041c490  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c497  8903                             mov dword ptr [rbx], eax
000000000041c499  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c49d  e9bedfffff                       jmp 0x41a460
000000000041c4a2  8b02                             mov eax, dword ptr [rdx]
000000000041c4a4  3301                             xor eax, dword ptr [rcx]
000000000041c4a6  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c4ad  8903                             mov dword ptr [rbx], eax
000000000041c4af  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c4b3  e9a8dfffff                       jmp 0x41a460
000000000041c4b8  8b02                             mov eax, dword ptr [rdx]
000000000041c4ba  2301                             and eax, dword ptr [rcx]
000000000041c4bc  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c4c3  8903                             mov dword ptr [rbx], eax
000000000041c4c5  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c4c9  e992dfffff                       jmp 0x41a460
000000000041c4ce  8b02                             mov eax, dword ptr [rdx]
000000000041c4d0  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c4d7  f7d0                             not eax
000000000041c4d9  8903                             mov dword ptr [rbx], eax
000000000041c4db  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c4df  e97cdfffff                       jmp 0x41a460
000000000041c4e4  4489e6                           mov esi, r12d
000000000041c4e7  4c89f7                           mov rdi, r14
000000000041c4ea  e8e1410000                       call 0x4206d0
000000000041c4ef  e9fbfdffff                       jmp 0x41c2ef
000000000041c4f4  8b31                             mov esi, dword ptr [rcx]
000000000041c4f6  8b3a                             mov edi, dword ptr [rdx]
000000000041c4f8  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c4fd  e8ae460700                       call 0x490bb0
000000000041c502  660f1f440000                     nop word ptr [rax + rax]
000000000041c508  8903                             mov dword ptr [rbx], eax
000000000041c50a  c7430803000000                   mov dword ptr [rbx + 8], 3
000000000041c511  e93af6ffff                       jmp 0x41bb50
000000000041c516  8b3a                             mov edi, dword ptr [rdx]
000000000041c518  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c51d  e88e270600                       call 0x47ecb0
000000000041c522  ebe4                             jmp 0x41c508
000000000041c524  8b31                             mov esi, dword ptr [rcx]
000000000041c526  8b3a                             mov edi, dword ptr [rdx]
000000000041c528  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c52d  e8ee3e0700                       call 0x490420
000000000041c532  6631c0                           xor ax, ax
000000000041c535  ebd1                             jmp 0x41c508
000000000041c537  8b3a                             mov edi, dword ptr [rdx]
000000000041c539  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c53e  e81d100600                       call 0x47d560
000000000041c543  ebc3                             jmp 0x41c508
000000000041c545  8b31                             mov esi, dword ptr [rcx]
000000000041c547  8b3a                             mov edi, dword ptr [rdx]
000000000041c549  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c54e  e82d460700                       call 0x490b80
000000000041c553  ebb3                             jmp 0x41c508
000000000041c555  8b31                             mov esi, dword ptr [rcx]
000000000041c557  8b3a                             mov edi, dword ptr [rdx]
000000000041c559  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c55e  e8ed450700                       call 0x490b50
000000000041c563  eba3                             jmp 0x41c508
000000000041c565  8b31                             mov esi, dword ptr [rcx]
000000000041c567  8b3a                             mov edi, dword ptr [rdx]
000000000041c569  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c56e  e8ad3e0700                       call 0x490420
000000000041c573  eb93                             jmp 0x41c508
000000000041c575  8b31                             mov esi, dword ptr [rcx]
000000000041c577  8b3a                             mov edi, dword ptr [rdx]
000000000041c579  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c57e  e83d3e0700                       call 0x4903c0
000000000041c583  eb83                             jmp 0x41c508
000000000041c585  8b3a                             mov edi, dword ptr [rdx]
000000000041c587  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c58c  e87f320600                       call 0x47f810
000000000041c591  e972ffffff                       jmp 0x41c508
000000000041c596  8b31                             mov esi, dword ptr [rcx]
000000000041c598  8b3a                             mov edi, dword ptr [rdx]
000000000041c59a  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c59f  e81c400700                       call 0x4905c0
000000000041c5a4  e95fffffff                       jmp 0x41c508
000000000041c5a9  8b31                             mov esi, dword ptr [rcx]
000000000041c5ab  8b3a                             mov edi, dword ptr [rdx]
000000000041c5ad  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c5b2  e8593f0700                       call 0x490510
000000000041c5b7  e94cffffff                       jmp 0x41c508
000000000041c5bc  8b31                             mov esi, dword ptr [rcx]
000000000041c5be  8b3a                             mov edi, dword ptr [rdx]
000000000041c5c0  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c5c5  e846460700                       call 0x490c10
000000000041c5ca  e939ffffff                       jmp 0x41c508
000000000041c5cf  8b31                             mov esi, dword ptr [rcx]
000000000041c5d1  8b3a                             mov edi, dword ptr [rdx]
000000000041c5d3  4c895c2418                       mov qword ptr [rsp + 0x18], r11
000000000041c5d8  e803460700                       call 0x490be0
000000000041c5dd  e926ffffff                       jmp 0x41c508
000000000041c5e2  4889c2                           mov rdx, rax
000000000041c5e5  0fb64809                         movzx ecx, byte ptr [rax + 9]
000000000041c5e9  410fb67154                       movzx esi, byte ptr [r9 + 0x54]
000000000041c5ee  83f103                           xor ecx, 3
000000000041c5f1  83f603                           xor esi, 3
000000000041c5f4  4084ce                           test sil, cl
000000000041c5f7  0f85fbe0ffff                     jne 0x41a6f8
000000000041c5fd  884809                           mov byte ptr [rax + 9], cl
000000000041c600  4d8b4a18                         mov r9, qword ptr [r10 + 0x18]
000000000041c604  e9efe0ffff                       jmp 0x41a6f8
000000000041c609  8b1b                             mov ebx, dword ptr [rbx]
000000000041c60b  85db                             test ebx, ebx
000000000041c60d  0f85b5e5ffff                     jne 0x41abc8
000000000041c613  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c617  89ce                             mov esi, ecx
000000000041c619  4883c004                         add rax, 4
000000000041c61d  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041c621  e93adeffff                       jmp 0x41a460
000000000041c626  8b38                             mov edi, dword ptr [rax]
000000000041c628  85ff                             test edi, edi
000000000041c62a  0f853ce8ffff                     jne 0x41ae6c
000000000041c630  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c634  89ce                             mov esi, ecx
000000000041c636  4883c004                         add rax, 4
000000000041c63a  49894738                         mov qword ptr [r15 + 0x38], rax
000000000041c63e  e91ddeffff                       jmp 0x41a460
000000000041c643  488b442468                       mov rax, qword ptr [rsp + 0x68]
000000000041c648  644833042528000000               xor rax, qword ptr fs:[0x28]
000000000041c651  0f8588000000                     jne 0x41c6df
000000000041c657  4883c478                         add rsp, 0x78
000000000041c65b  5b                               pop rbx
000000000041c65c  5d                               pop rbp
000000000041c65d  415c                             pop r12
000000000041c65f  415d                             pop r13
000000000041c661  415e                             pop r14
000000000041c663  415f                             pop r15
000000000041c665  c3                               ret 
000000000041c666  4c8b6c2420                       mov r13, qword ptr [rsp + 0x20]
000000000041c66b  e91ae0ffff                       jmp 0x41a68a
000000000041c670  4d8b7e20                         mov r15, qword ptr [r14 + 0x20]
000000000041c674  41804f2204                       or byte ptr [r15 + 0x22], 4
000000000041c679  498b4738                         mov rax, qword ptr [r15 + 0x38]
000000000041c67d  e99eddffff                       jmp 0x41a420
000000000041c682  488b442418                       mov rax, qword ptr [rsp + 0x18]
000000000041c687  f6400903                         test byte ptr [rax + 9], 3
000000000041c68b  0f8475fdffff                     je 0x41c406
000000000041c691  4889c2                           mov rdx, rax
000000000041c694  4c89e6                           mov rsi, r12
000000000041c697  4c89f7                           mov rdi, r14
000000000041c69a  e8f1c7ffff                       call 0x418e90
000000000041c69f  4d8b4e18                         mov r9, qword ptr [r14 + 0x18]
000000000041c6a3  e95efdffff                       jmp 0x41c406
000000000041c6a8  31f6                             xor esi, esi
000000000041c6aa  4c89f7                           mov rdi, r14
000000000041c6ad  31c9                             xor ecx, ecx
000000000041c6af  31d2                             xor edx, edx
000000000041c6b1  e8ea040000                       call 0x41cba0
000000000041c6b6  488b4338                         mov rax, qword ptr [rbx + 0x38]
000000000041c6ba  be01000000                       mov esi, 1
000000000041c6bf  4c89f7                           mov rdi, r14
000000000041c6c2  49894628                         mov qword ptr [r14 + 0x28], rax
000000000041c6c6  48836b3804                       sub qword ptr [rbx + 0x38], 4
000000000041c6cb  804b2280                         or byte ptr [rbx + 0x22], 0x80
000000000041c6cf  498b4610                         mov rax, qword ptr [r14 + 0x10]
000000000041c6d3  4883e810                         sub rax, 0x10
000000000041c6d7  488903                           mov qword ptr [rbx], rax
000000000041c6da  e871c4ffff                       call 0x418b50
000000000041c6df  e8bc79feff                       call 0x4040a0
000000000041c6e4  be06000000                       mov esi, 6
000000000041c6e9  4c89f7                           mov rdi, r14
000000000041c6ec  e85fc4ffff                       call 0x418b50
000000000041c6f1  488d35c87f2100                   lea rsi, [rip + 0x217fc8]
000000000041c6f8  4c89f7                           mov rdi, r14
000000000041c6fb  31c0                             xor eax, eax
000000000041c6fd  e8ee000000                       call 0x41c7f0
