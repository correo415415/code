0000000000477b70  55                               push rbp
0000000000477b71  53                               push rbx
0000000000477b72  4189c8                           mov r8d, ecx
0000000000477b75  0fb7da                           movzx ebx, dx
0000000000477b78  4883ec08                         sub rsp, 8
0000000000477b7c  8b2d620d7600                     mov ebp, dword ptr [rip + 0x760d62]
0000000000477b82  85ed                             test ebp, ebp
0000000000477b84  7e11                             jle 0x477b97
0000000000477b86  8d8300bdffff                     lea eax, [rbx - 0x4300]
0000000000477b8c  3dff1b0000                       cmp eax, 0x1bff
0000000000477b91  0f86b1000000                     jbe 0x477c48
0000000000477b97  410fb6e8                         movzx ebp, r8b
0000000000477b9b  8d8500ffffff                     lea eax, [rbp - 0x100]
0000000000477ba1  83fd7f                           cmp ebp, 0x7f
0000000000477ba4  0f4ec5                           cmovle eax, ebp
0000000000477ba7  4885ff                           test rdi, rdi
0000000000477baa  740b                             je 0x477bb7
0000000000477bac  4863cb                           movsxd rcx, ebx
0000000000477baf  4488840fb05e0200                 mov byte ptr [rdi + rcx + 0x25eb0], r8b
0000000000477bb7  f6c680                           test dh, 0x80
0000000000477bba  0f8588000000                     jne 0x477c48
0000000000477bc0  81fbff0f0000                     cmp ebx, 0xfff
0000000000477bc6  0f8edc000000                     jle 0x477ca8
0000000000477bcc  81fbff1f0000                     cmp ebx, 0x1fff
0000000000477bd2  7e7c                             jle 0x477c50
0000000000477bd4  81fbff2f0000                     cmp ebx, 0x2fff
0000000000477bda  0f8e08010000                     jle 0x477ce8
0000000000477be0  81fbff300000                     cmp ebx, 0x30ff
0000000000477be6  0f8e24010000                     jle 0x477d10
0000000000477bec  81fbff310000                     cmp ebx, 0x31ff
0000000000477bf2  0f8f30010000                     jg 0x477d28
0000000000477bf8  8d8b00cfffff                     lea ecx, [rbx - 0x3100]
0000000000477bfe  4489c7                           mov edi, r8d
0000000000477c01  83e77f                           and edi, 0x7f
0000000000477c04  89c8                             mov eax, ecx
0000000000477c06  83e103                           and ecx, 3
0000000000477c09  c1f802                           sar eax, 2
0000000000477c0c  4863d1                           movsxd rdx, ecx
0000000000477c0f  4898                             cdqe 
0000000000477c11  48c1e002                         shl rax, 2
0000000000477c15  488d940248290000                 lea rdx, [rdx + rax + 0x2948]
0000000000477c1d  893c96                           mov dword ptr [rsi + rdx*4], edi
0000000000477c20  4801c6                           add rsi, rax
0000000000477c23  b801000000                       mov eax, 1
0000000000477c28  8b9620a90000                     mov edx, dword ptr [rsi + 0xa920]
0000000000477c2e  d3e0                             shl eax, cl
0000000000477c30  89d1                             mov ecx, edx
0000000000477c32  09c1                             or ecx, eax
0000000000477c34  f7d0                             not eax
0000000000477c36  21d0                             and eax, edx
0000000000477c38  4181e080000000                   and r8d, 0x80
0000000000477c3f  0f45c1                           cmovne eax, ecx
0000000000477c42  898620a90000                     mov dword ptr [rsi + 0xa920], eax
0000000000477c48  4883c408                         add rsp, 8
0000000000477c4c  5b                               pop rbx
0000000000477c4d  5d                               pop rbp
0000000000477c4e  c3                               ret 
0000000000477c4f  90                               nop 
0000000000477c50  488b7e10                         mov rdi, qword ptr [rsi + 0x10]
0000000000477c54  89d9                             mov ecx, ebx
0000000000477c56  488d0412                         lea rax, [rdx + rdx]
0000000000477c5a  c1f906                           sar ecx, 6
0000000000477c5d  4589c1                           mov r9d, r8d
0000000000477c60  c1fd04                           sar ebp, 4
0000000000477c63  4863c9                           movsxd rcx, ecx
0000000000477c66  83e07e                           and eax, 0x7e
0000000000477c69  4183e10f                         and r9d, 0xf
0000000000477c6d  488b7f18                         mov rdi, qword ptr [rdi + 0x18]
0000000000477c71  c1fb07                           sar ebx, 7
0000000000477c74  83e27f                           and edx, 0x7f
0000000000477c77  4863db                           movsxd rbx, ebx
0000000000477c7a  488b3ccf                         mov rdi, qword ptr [rdi + rcx*8]
0000000000477c7e  44880c07                         mov byte ptr [rdi + rax], r9b
0000000000477c82  488b7e10                         mov rdi, qword ptr [rsi + 0x10]
0000000000477c86  488b7f18                         mov rdi, qword ptr [rdi + 0x18]
0000000000477c8a  488b0ccf                         mov rcx, qword ptr [rdi + rcx*8]
0000000000477c8e  40886c0101                       mov byte ptr [rcx + rax + 1], bpl
0000000000477c93  488b4618                         mov rax, qword ptr [rsi + 0x18]
0000000000477c97  488b4018                         mov rax, qword ptr [rax + 0x18]
0000000000477c9b  488b04d8                         mov rax, qword ptr [rax + rbx*8]
0000000000477c9f  44880410                         mov byte ptr [rax + rdx], r8b
0000000000477ca3  eba3                             jmp 0x477c48
0000000000477ca5  0f1f00                           nop dword ptr [rax]
0000000000477ca8  488b4610                         mov rax, qword ptr [rsi + 0x10]
0000000000477cac  c1fb06                           sar ebx, 6
0000000000477caf  4801d2                           add rdx, rdx
0000000000477cb2  4863db                           movsxd rbx, ebx
0000000000477cb5  83e27e                           and edx, 0x7e
0000000000477cb8  4183e00f                         and r8d, 0xf
0000000000477cbc  c1fd04                           sar ebp, 4
0000000000477cbf  488b4018                         mov rax, qword ptr [rax + 0x18]
0000000000477cc3  488b04d8                         mov rax, qword ptr [rax + rbx*8]
0000000000477cc7  44880410                         mov byte ptr [rax + rdx], r8b
0000000000477ccb  488b4610                         mov rax, qword ptr [rsi + 0x10]
0000000000477ccf  488b4018                         mov rax, qword ptr [rax + 0x18]
0000000000477cd3  488b04d8                         mov rax, qword ptr [rax + rbx*8]
0000000000477cd7  40886c1001                       mov byte ptr [rax + rdx + 1], bpl
0000000000477cdc  4883c408                         add rsp, 8
0000000000477ce0  5b                               pop rbx
0000000000477ce1  5d                               pop rbp
0000000000477ce2  c3                               ret 
0000000000477ce3  0f1f440000                       nop dword ptr [rax + rax]
0000000000477ce8  488b5618                         mov rdx, qword ptr [rsi + 0x18]
0000000000477cec  81eb00200000                     sub ebx, 0x2000
0000000000477cf2  89d8                             mov eax, ebx
0000000000477cf4  83e37f                           and ebx, 0x7f
0000000000477cf7  c1f807                           sar eax, 7
0000000000477cfa  488b5218                         mov rdx, qword ptr [rdx + 0x18]
0000000000477cfe  4898                             cdqe 
0000000000477d00  488b04c2                         mov rax, qword ptr [rdx + rax*8]
0000000000477d04  44880418                         mov byte ptr [rax + rbx], r8b
0000000000477d08  e93bffffff                       jmp 0x477c48
0000000000477d0d  0f1f00                           nop dword ptr [rax]
0000000000477d10  81eb00300000                     sub ebx, 0x3000
0000000000477d16  4863db                           movsxd rbx, ebx
0000000000477d19  89ac9e30aa0000                   mov dword ptr [rsi + rbx*4 + 0xaa30], ebp
0000000000477d20  e923ffffff                       jmp 0x477c48
0000000000477d25  0f1f00                           nop dword ptr [rax]
0000000000477d28  81fbff420000                     cmp ebx, 0x42ff
0000000000477d2e  7f60                             jg 0x477d90
0000000000477d30  81eb00320000                     sub ebx, 0x3200
0000000000477d36  baf1f0f0f0                       mov edx, 0xf0f0f0f1
0000000000477d3b  89d8                             mov eax, ebx
0000000000477d3d  f7e2                             mul edx
0000000000477d3f  c1ea06                           shr edx, 6
0000000000477d42  6bc244                           imul eax, edx, 0x44
0000000000477d45  29c3                             sub ebx, eax
0000000000477d47  83fb3f                           cmp ebx, 0x3f
0000000000477d4a  0f8fad000000                     jg 0x477dfd
0000000000477d50  89d8                             mov eax, ebx
0000000000477d52  d1f8                             sar eax, 1
0000000000477d54  4863c8                           movsxd rcx, eax
0000000000477d57  4863c2                           movsxd rax, edx
0000000000477d5a  4869c094020000                   imul rax, rax, 0x294
0000000000477d61  488d1489                         lea rdx, [rcx + rcx*4]
0000000000477d65  488d0490                         lea rax, [rax + rdx*4]
0000000000477d69  4801c6                           add rsi, rax
0000000000477d6c  83e301                           and ebx, 1
0000000000477d6f  0f85b6000000                     jne 0x477e2b
0000000000477d75  8b4638                           mov eax, dword ptr [rsi + 0x38]
0000000000477d78  c1fd06                           sar ebp, 6
0000000000477d7b  4183e03f                         and r8d, 0x3f
0000000000477d7f  44894634                         mov dword ptr [rsi + 0x34], r8d
0000000000477d83  83e004                           and eax, 4
0000000000477d86  09c5                             or ebp, eax
0000000000477d88  896e38                           mov dword ptr [rsi + 0x38], ebp
0000000000477d8b  e9b8feffff                       jmp 0x477c48
0000000000477d90  81fbff5d0000                     cmp ebx, 0x5dff
0000000000477d96  0f8eacfeffff                     jle 0x477c48
0000000000477d9c  4885ff                           test rdi, rdi
0000000000477d9f  0f84a3feffff                     je 0x477c48
0000000000477da5  81fbff5e0000                     cmp ebx, 0x5eff
0000000000477dab  0f8fb2000000                     jg 0x477e63
0000000000477db1  81eb005e0000                     sub ebx, 0x5e00
0000000000477db7  488d150a477800                   lea rdx, [rip + 0x78470a]
0000000000477dbe  89d8                             mov eax, ebx
0000000000477dc0  83e303                           and ebx, 3
0000000000477dc3  c1f802                           sar eax, 2
0000000000477dc6  8d0cdd00000000                   lea ecx, [rbx*8]
0000000000477dcd  4898                             cdqe 
0000000000477dcf  488d3482                         lea rsi, [rdx + rax*4]
0000000000477dd3  b8ff000000                       mov eax, 0xff
0000000000477dd8  d3e5                             shl ebp, cl
0000000000477dda  d3e0                             shl eax, cl
0000000000477ddc  8b16                             mov edx, dword ptr [rsi]
0000000000477dde  f7d0                             not eax
0000000000477de0  21d0                             and eax, edx
0000000000477de2  09e8                             or eax, ebp
0000000000477de4  39d0                             cmp eax, edx
0000000000477de6  8906                             mov dword ptr [rsi], eax
0000000000477de8  0f845afeffff                     je 0x477c48
0000000000477dee  c705446a790001000000             mov dword ptr [rip + 0x796a44], 1
0000000000477df8  e94bfeffff                       jmp 0x477c48
0000000000477dfd  4863c2                           movsxd rax, edx
0000000000477e00  4869c094020000                   imul rax, rax, 0x294
0000000000477e07  83fb40                           cmp ebx, 0x40
0000000000477e0a  0f84a0000000                     je 0x477eb0
0000000000477e10  83fb41                           cmp ebx, 0x41
0000000000477e13  0f84b3000000                     je 0x477ecc
0000000000477e19  83fb42                           cmp ebx, 0x42
0000000000477e1c  0f8409010000                     je 0x477f2b
0000000000477e22  896c0630                         mov dword ptr [rsi + rax + 0x30], ebp
0000000000477e26  e91dfeffff                       jmp 0x477c48
0000000000477e2b  8b4638                           mov eax, dword ptr [rsi + 0x38]
0000000000477e2e  8d14ad00000000                   lea edx, [rbp*4]
0000000000477e35  4181e080000000                   and r8d, 0x80
0000000000477e3c  44894644                         mov dword ptr [rsi + 0x44], r8d
0000000000477e40  83e204                           and edx, 4
0000000000477e43  83e003                           and eax, 3
0000000000477e46  09d0                             or eax, edx
0000000000477e48  894638                           mov dword ptr [rsi + 0x38], eax
0000000000477e4b  89e8                             mov eax, ebp
0000000000477e4d  c1fd04                           sar ebp, 4
0000000000477e50  d1f8                             sar eax, 1
0000000000477e52  83e507                           and ebp, 7
0000000000477e55  83e007                           and eax, 7
0000000000477e58  896e40                           mov dword ptr [rsi + 0x40], ebp
0000000000477e5b  89463c                           mov dword ptr [rsi + 0x3c], eax
0000000000477e5e  e9e5fdffff                       jmp 0x477c48
0000000000477e63  81fb7f5f0000                     cmp ebx, 0x5f7f
0000000000477e69  7f6a                             jg 0x477ed5
0000000000477e6b  8d9300a1ffff                     lea edx, [rbx - 0x5f00]
0000000000477e71  83fa0f                           cmp edx, 0xf
0000000000477e74  0f8eba000000                     jle 0x477f34
0000000000477e7a  83fa1f                           cmp edx, 0x1f
0000000000477e7d  0f8fc7000000                     jg 0x477f4a
0000000000477e83  8d83f0a0ffff                     lea eax, [rbx - 0x5f10]
0000000000477e89  488d15d0097600                   lea rdx, [rip + 0x7609d0]
0000000000477e90  4180e080                         and r8b, 0x80
0000000000477e94  4898                             cdqe 
0000000000477e96  89ac82dc4e0200                   mov dword ptr [rdx + rax*4 + 0x24edc], ebp
0000000000477e9d  0f84a5fdffff                     je 0x477c48
0000000000477ea3  415b                             pop r11
0000000000477ea5  5b                               pop rbx
0000000000477ea6  5d                               pop rbp
0000000000477ea7  31c0                             xor eax, eax
0000000000477ea9  e9a207f9ff                       jmp 0x408650
0000000000477eae  6690                             nop 
0000000000477eb0  4801c6                           add rsi, rax
0000000000477eb3  4489c0                           mov eax, r8d
0000000000477eb6  4181e0fe000000                   and r8d, 0xfe
0000000000477ebd  83e001                           and eax, 1
0000000000477ec0  44894620                         mov dword ptr [rsi + 0x20], r8d
0000000000477ec4  894624                           mov dword ptr [rsi + 0x24], eax
0000000000477ec7  e97cfdffff                       jmp 0x477c48
0000000000477ecc  896c0628                         mov dword ptr [rsi + rax + 0x28], ebp
0000000000477ed0  e973fdffff                       jmp 0x477c48
0000000000477ed5  81fbff5f0000                     cmp ebx, 0x5fff
0000000000477edb  0f8e94010000                     jle 0x478075
0000000000477ee1  488b0d98097600                   mov rcx, qword ptr [rip + 0x760998]
0000000000477ee8  81eb00600000                     sub ebx, 0x6000
0000000000477eee  4183e00f                         and r8d, 0xf
0000000000477ef2  89da                             mov edx, ebx
0000000000477ef4  4801db                           add rbx, rbx
0000000000477ef7  c1fd04                           sar ebp, 4
0000000000477efa  c1fa06                           sar edx, 6
0000000000477efd  4889d8                           mov rax, rbx
0000000000477f00  488b4918                         mov rcx, qword ptr [rcx + 0x18]
0000000000477f04  4863d2                           movsxd rdx, edx
0000000000477f07  83e07e                           and eax, 0x7e
0000000000477f0a  488b0cd1                         mov rcx, qword ptr [rcx + rdx*8]
0000000000477f0e  44880401                         mov byte ptr [rcx + rax], r8b
0000000000477f12  488b0d67097600                   mov rcx, qword ptr [rip + 0x760967]
0000000000477f19  488b4918                         mov rcx, qword ptr [rcx + 0x18]
0000000000477f1d  488b14d1                         mov rdx, qword ptr [rcx + rdx*8]
0000000000477f21  40886c0201                       mov byte ptr [rdx + rax + 1], bpl
0000000000477f26  e91dfdffff                       jmp 0x477c48
0000000000477f2b  896c062c                         mov dword ptr [rsi + rax + 0x2c], ebp
0000000000477f2f  e914fdffff                       jmp 0x477c48
0000000000477f34  488d0525097600                   lea rax, [rip + 0x760925]
0000000000477f3b  4863d2                           movsxd rdx, edx
0000000000477f3e  89ac909c4e0200                   mov dword ptr [rax + rdx*4 + 0x24e9c], ebp
0000000000477f45  e9fefcffff                       jmp 0x477c48
0000000000477f4a  83fa23                           cmp edx, 0x23
0000000000477f4d  0f8e32010000                     jle 0x478085
0000000000477f53  83fa24                           cmp edx, 0x24
0000000000477f56  0f844a010000                     je 0x4780a6
0000000000477f5c  83fa25                           cmp edx, 0x25
0000000000477f5f  0f848c020000                     je 0x4781f1
0000000000477f65  83fa26                           cmp edx, 0x26
0000000000477f68  0f8478020000                     je 0x4781e6
0000000000477f6e  83fa27                           cmp edx, 0x27
0000000000477f71  0f84b4020000                     je 0x47822b
0000000000477f77  83fa28                           cmp edx, 0x28
0000000000477f7a  0f849f020000                     je 0x47821f
0000000000477f80  83fa29                           cmp edx, 0x29
0000000000477f83  0f847f020000                     je 0x478208
0000000000477f89  83fa2a                           cmp edx, 0x2a
0000000000477f8c  0f846a020000                     je 0x4781fc
0000000000477f92  83fa2b                           cmp edx, 0x2b
0000000000477f95  0f84ec020000                     je 0x478287
0000000000477f9b  83fa2c                           cmp edx, 0x2c
0000000000477f9e  0f84d8020000                     je 0x47827c
0000000000477fa4  83fa31                           cmp edx, 0x31
0000000000477fa7  0f84c3020000                     je 0x478270
0000000000477fad  83fa32                           cmp edx, 0x32
0000000000477fb0  0f84ae020000                     je 0x478264
0000000000477fb6  83fa33                           cmp edx, 0x33
0000000000477fb9  0f8499020000                     je 0x478258
0000000000477fbf  83fa34                           cmp edx, 0x34
0000000000477fc2  0f8485020000                     je 0x47824d
0000000000477fc8  83fa35                           cmp edx, 0x35
0000000000477fcb  0f8471020000                     je 0x478242
0000000000477fd1  83fa3c                           cmp edx, 0x3c
0000000000477fd4  0f845c020000                     je 0x478236
0000000000477fda  83fa3d                           cmp edx, 0x3d
0000000000477fdd  0f8447010000                     je 0x47812a
0000000000477fe3  83fa3e                           cmp edx, 0x3e
0000000000477fe6  0f8432010000                     je 0x47811e
0000000000477fec  83fa3f                           cmp edx, 0x3f
0000000000477fef  0f8412010000                     je 0x478107
0000000000477ff5  83fa40                           cmp edx, 0x40
0000000000477ff8  0f84fe000000                     je 0x4780fc
0000000000477ffe  83fa41                           cmp edx, 0x41
0000000000478001  0f84ea000000                     je 0x4780f1
0000000000478007  83fa42                           cmp edx, 0x42
000000000047800a  0f84d6000000                     je 0x4780e6
0000000000478010  83fa43                           cmp edx, 0x43
0000000000478013  0f84c2000000                     je 0x4780db
0000000000478019  8d4abc                           lea ecx, [rdx - 0x44]
000000000047801c  4489c0                           mov eax, r8d
000000000047801f  83f903                           cmp ecx, 3
0000000000478022  0f8689000000                     jbe 0x4780b1
0000000000478028  8d4ab8                           lea ecx, [rdx - 0x48]
000000000047802b  83f903                           cmp ecx, 3
000000000047802e  0f864d010000                     jbe 0x478181
0000000000478034  8d4ab4                           lea ecx, [rdx - 0x4c]
0000000000478037  83f907                           cmp ecx, 7
000000000047803a  0f8701010000                     ja 0x478141
0000000000478040  8d83b4a0ffff                     lea eax, [rbx - 0x5f4c]
0000000000478046  488d1513087600                   lea rdx, [rip + 0x760813]
000000000047804d  31c9                             xor ecx, ecx
000000000047804f  4898                             cdqe 
0000000000478051  48c1e005                         shl rax, 5
0000000000478055  4801d0                           add rax, rdx
0000000000478058  89ea                             mov edx, ebp
000000000047805a  d3fa                             sar edx, cl
000000000047805c  83e201                           and edx, 1
000000000047805f  899488cc4f0200                   mov dword ptr [rax + rcx*4 + 0x24fcc], edx
0000000000478066  4883c101                         add rcx, 1
000000000047806a  4883f906                         cmp rcx, 6
000000000047806e  75e8                             jne 0x478058
0000000000478070  e9d3fbffff                       jmp 0x477c48
0000000000478075  58                               pop rax
0000000000478076  8dbb80a0ffff                     lea edi, [rbx - 0x5f80]
000000000047807c  89ee                             mov esi, ebp
000000000047807e  5b                               pop rbx
000000000047807f  5d                               pop rbp
0000000000478080  e91b6c0300                       jmp 0x4aeca0
0000000000478085  8d83e0a0ffff                     lea eax, [rbx - 0x5f20]
000000000047808b  488d15ce077600                   lea rdx, [rip + 0x7607ce]
0000000000478092  4898                             cdqe 
0000000000478094  89ac825c4f0200                   mov dword ptr [rdx + rax*4 + 0x24f5c], ebp
000000000047809b  31c0                             xor eax, eax
000000000047809d  415a                             pop r10
000000000047809f  5b                               pop rbx
00000000004780a0  5d                               pop rbp
00000000004780a1  e96a96ffff                       jmp 0x471710
00000000004780a6  892d2c577800                     mov dword ptr [rip + 0x78572c], ebp
00000000004780ac  e997fbffff                       jmp 0x477c48
00000000004780b1  31ff                             xor edi, edi
00000000004780b3  e8b8890100                       call 0x490a70
00000000004780b8  8d0cdde005fdff                   lea ecx, [rbx*8 - 0x2fa20]
00000000004780bf  baff000000                       mov edx, 0xff
00000000004780c4  89ee                             mov esi, ebp
00000000004780c6  4159                             pop r9
00000000004780c8  d3e2                             shl edx, cl
00000000004780ca  d3e6                             shl esi, cl
00000000004780cc  31ff                             xor edi, edi
00000000004780ce  5b                               pop rbx
00000000004780cf  5d                               pop rbp
00000000004780d0  f7d2                             not edx
00000000004780d2  21d0                             and eax, edx
00000000004780d4  09c6                             or esi, eax
00000000004780d6  e9b5890100                       jmp 0x490a90
00000000004780db  892d935c7800                     mov dword ptr [rip + 0x785c93], ebp
00000000004780e1  e962fbffff                       jmp 0x477c48
00000000004780e6  892d845c7800                     mov dword ptr [rip + 0x785c84], ebp
00000000004780ec  e957fbffff                       jmp 0x477c48
00000000004780f1  892d755c7800                     mov dword ptr [rip + 0x785c75], ebp
00000000004780f7  e94cfbffff                       jmp 0x477c48
00000000004780fc  892d665c7800                     mov dword ptr [rip + 0x785c66], ebp
0000000000478102  e941fbffff                       jmp 0x477c48
0000000000478107  0fb61506577800                   movzx edx, byte ptr [rip + 0x785706]
000000000047810e  c1e008                           shl eax, 8
0000000000478111  09d0                             or eax, edx
0000000000478113  8905fb567800                     mov dword ptr [rip + 0x7856fb], eax
0000000000478119  e92afbffff                       jmp 0x477c48
000000000047811e  40882def567800                   mov byte ptr [rip + 0x7856ef], bpl
0000000000478125  e91efbffff                       jmp 0x477c48
000000000047812a  0fb615df567800                   movzx edx, byte ptr [rip + 0x7856df]
0000000000478131  c1e008                           shl eax, 8
0000000000478134  09d0                             or eax, edx
0000000000478136  8905d4567800                     mov dword ptr [rip + 0x7856d4], eax
000000000047813c  e907fbffff                       jmp 0x477c48
0000000000478141  8d4aac                           lea ecx, [rdx - 0x54]
0000000000478144  83f901                           cmp ecx, 1
0000000000478147  0f868b000000                     jbe 0x4781d8
000000000047814d  8d4aaa                           lea ecx, [rdx - 0x56]
0000000000478150  83f901                           cmp ecx, 1
0000000000478153  7679                             jbe 0x4781ce
0000000000478155  83fa5e                           cmp edx, 0x5e
0000000000478158  7457                             je 0x4781b1
000000000047815a  83ea60                           sub edx, 0x60
000000000047815d  83fa0f                           cmp edx, 0xf
0000000000478160  0f87e2faffff                     ja 0x477c48
0000000000478166  8d83a0a0ffff                     lea eax, [rbx - 0x5f60]
000000000047816c  488d15ed067600                   lea rdx, [rip + 0x7606ed]
0000000000478173  4898                             cdqe 
0000000000478175  89ac821c4f0200                   mov dword ptr [rdx + rax*4 + 0x24f1c], ebp
000000000047817c  e9c7faffff                       jmp 0x477c48
0000000000478181  bf01000000                       mov edi, 1
0000000000478186  e8e5880100                       call 0x490a70
000000000047818b  8d0cddc005fdff                   lea ecx, [rbx*8 - 0x2fa40]
0000000000478192  baff000000                       mov edx, 0xff
0000000000478197  89ee                             mov esi, ebp
0000000000478199  4158                             pop r8
000000000047819b  d3e2                             shl edx, cl
000000000047819d  d3e6                             shl esi, cl
000000000047819f  bf01000000                       mov edi, 1
00000000004781a4  5b                               pop rbx
00000000004781a5  5d                               pop rbp
00000000004781a6  f7d2                             not edx
00000000004781a8  21d0                             and eax, edx
00000000004781aa  09c6                             or esi, eax
00000000004781ac  e9df880100                       jmp 0x490a90
00000000004781b1  892d45567800                     mov dword ptr [rip + 0x785645], ebp
00000000004781b7  83e00f                           and eax, 0xf
00000000004781ba  c1fd04                           sar ebp, 4
00000000004781bd  89053d567800                     mov dword ptr [rip + 0x78563d], eax
00000000004781c3  892d3b567800                     mov dword ptr [rip + 0x78563b], ebp
00000000004781c9  e97afaffff                       jmp 0x477c48
00000000004781ce  5a                               pop rdx
00000000004781cf  5b                               pop rbx
00000000004781d0  5d                               pop rbp
00000000004781d1  31c0                             xor eax, eax
00000000004781d3  e9781cfeff                       jmp 0x459e50
00000000004781d8  8b3dba6d7900                     mov edi, dword ptr [rip + 0x796dba]
00000000004781de  59                               pop rcx
00000000004781df  5b                               pop rbx
00000000004781e0  5d                               pop rbp
00000000004781e1  e97a95ffff                       jmp 0x471760
00000000004781e6  892de4557800                     mov dword ptr [rip + 0x7855e4], ebp
00000000004781ec  e957faffff                       jmp 0x477c48
00000000004781f1  892dd5557800                     mov dword ptr [rip + 0x7855d5], ebp
00000000004781f7  e94cfaffff                       jmp 0x477c48
00000000004781fc  40882ded557800                   mov byte ptr [rip + 0x7855ed], bpl
0000000000478203  e940faffff                       jmp 0x477c48
0000000000478208  0fb615dd557800                   movzx edx, byte ptr [rip + 0x7855dd]
000000000047820f  c1e008                           shl eax, 8
0000000000478212  09d0                             or eax, edx
0000000000478214  8905d2557800                     mov dword ptr [rip + 0x7855d2], eax
000000000047821a  e929faffff                       jmp 0x477c48
000000000047821f  40882dc6557800                   mov byte ptr [rip + 0x7855c6], bpl
0000000000478226  e91dfaffff                       jmp 0x477c48
000000000047822b  892da3557800                     mov dword ptr [rip + 0x7855a3], ebp
0000000000478231  e912faffff                       jmp 0x477c48
0000000000478236  40882dd3557800                   mov byte ptr [rip + 0x7855d3], bpl
000000000047823d  e906faffff                       jmp 0x477c48
0000000000478242  892dd0557800                     mov dword ptr [rip + 0x7855d0], ebp
0000000000478248  e9fbf9ffff                       jmp 0x477c48
000000000047824d  892dcd557800                     mov dword ptr [rip + 0x7855cd], ebp
0000000000478253  e9f0f9ffff                       jmp 0x477c48
0000000000478258  40882daf557800                   mov byte ptr [rip + 0x7855af], bpl
000000000047825f  e9e4f9ffff                       jmp 0x477c48
0000000000478264  40882da2557800                   mov byte ptr [rip + 0x7855a2], bpl
000000000047826b  e9d8f9ffff                       jmp 0x477c48
0000000000478270  40882d95557800                   mov byte ptr [rip + 0x785595], bpl
0000000000478277  e9ccf9ffff                       jmp 0x477c48
000000000047827c  892d76557800                     mov dword ptr [rip + 0x785576], ebp
0000000000478282  e9c1f9ffff                       jmp 0x477c48
0000000000478287  0fb61562557800                   movzx edx, byte ptr [rip + 0x785562]
000000000047828e  c1e008                           shl eax, 8
0000000000478291  09d0                             or eax, edx
0000000000478293  890557557800                     mov dword ptr [rip + 0x785557], eax
0000000000478299  e9aaf9ffff                       jmp 0x477c48
