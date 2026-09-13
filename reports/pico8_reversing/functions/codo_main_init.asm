0000000000407780  4155                             push r13
0000000000407782  4154                             push r12
0000000000407784  ba103e0300                       mov edx, 0x33e10
0000000000407789  55                               push rbp
000000000040778a  53                               push rbx
000000000040778b  89fb                             mov ebx, edi
000000000040778d  488d3d0c8e5a00                   lea rdi, [rip + 0x5a8e0c]
0000000000407794  4889f5                           mov rbp, rsi
0000000000407797  31f6                             xor esi, esi
0000000000407799  4881ec580f0000                   sub rsp, 0xf58
00000000004077a0  64488b042528000000               mov rax, qword ptr fs:[0x28]
00000000004077a9  48898424480f0000                 mov qword ptr [rsp + 0xf48], rax
00000000004077b1  31c0                             xor eax, eax
00000000004077b3  e868c1ffff                       call 0x403920
00000000004077b8  31c0                             xor eax, eax
00000000004077ba  e891c30600                       call 0x473b50
00000000004077bf  660f6f0519af2200                 movdqa xmm0, xmmword ptr [rip + 0x22af19]
00000000004077c7  48b80300000003000000             movabs rax, 0x300000003
00000000004077d1  488d3d56ac2300                   lea rdi, [rip + 0x23ac56]
00000000004077d8  488905a5935a00                   mov qword ptr [rip + 0x5a93a5], rax
00000000004077df  48b80100000001000000             movabs rax, 0x100000001
00000000004077e9  0f1105ec925a00                   movups xmmword ptr [rip + 0x5a92ec], xmm0
00000000004077f0  48890511ad5d00                   mov qword ptr [rip + 0x5dad11], rax
00000000004077f7  c70593935a0010000000             mov dword ptr [rip + 0x5a9393], 0x10
0000000000407801  c70581935a0000000000             mov dword ptr [rip + 0x5a9381], 0
000000000040780b  c7058f935a00ffffffff             mov dword ptr [rip + 0x5a938f], 0xffffffff
0000000000407815  c70591935a0001000000             mov dword ptr [rip + 0x5a9391], 1
000000000040781f  c7058f935a0000000000             mov dword ptr [rip + 0x5a938f], 0
0000000000407829  c70545935a0001000000             mov dword ptr [rip + 0x5a9345], 1
0000000000407833  c705af925a0001000000             mov dword ptr [rip + 0x5a92af], 1
000000000040783d  e81ef10a00                       call 0x4b6960
0000000000407842  488d3dd7daffff                   lea rdi, [rip - 0x2529]
0000000000407849  e8828c0b00                       call 0x4c04d0
000000000040784e  488d3d2be2ffff                   lea rdi, [rip - 0x1dd5]
0000000000407855  e8868c0b00                       call 0x4c04e0
000000000040785a  488d3dff0f7d00                   lea rdi, [rip + 0x7d0fff]
0000000000407861  ba80670300                       mov edx, 0x36780
0000000000407866  31f6                             xor esi, esi
0000000000407868  e803840e00                       call 0x4efc70
000000000040786d  31c0                             xor eax, eax
000000000040786f  e8fcf70a00                       call 0x4b7070
0000000000407874  4889ee                           mov rsi, rbp
0000000000407877  89df                             mov edi, ebx
0000000000407879  488dac2440030000                 lea rbp, [rsp + 0x340]
0000000000407881  e8daf2ffff                       call 0x406b60
0000000000407886  48c7c7703f4b00                   mov rdi, 0x4b3f70
000000000040788d  e83e0a0f00                       call 0x4f82d0
0000000000407892  488d3d14a32200                   lea rdi, [rip + 0x22a314]
0000000000407899  4889ee                           mov rsi, rbp
000000000040789c  e85f811000                       call 0x50fa00
00000000004078a1  4889ef                           mov rdi, rbp
00000000004078a4  e867881000                       call 0x510110
00000000004078a9  488d3dd5a22200                   lea rdi, [rip + 0x22a2d5]
00000000004078b0  4889ee                           mov rsi, rbp
00000000004078b3  e848811000                       call 0x50fa00
00000000004078b8  4889ef                           mov rdi, rbp
00000000004078bb  e850881000                       call 0x510110
00000000004078c0  488d3dc6a22200                   lea rdi, [rip + 0x22a2c6]
00000000004078c7  4889ee                           mov rsi, rbp
00000000004078ca  e831811000                       call 0x50fa00
00000000004078cf  4889ef                           mov rdi, rbp
00000000004078d2  e839881000                       call 0x510110
00000000004078d7  488d3db6a22200                   lea rdi, [rip + 0x22a2b6]
00000000004078de  4889ee                           mov rsi, rbp
00000000004078e1  e81a811000                       call 0x50fa00
00000000004078e6  4889ef                           mov rdi, rbp
00000000004078e9  e822881000                       call 0x510110
00000000004078ee  488d3da7a22200                   lea rdi, [rip + 0x22a2a7]
00000000004078f5  4889ee                           mov rsi, rbp
00000000004078f8  e803811000                       call 0x50fa00
00000000004078fd  4889ef                           mov rdi, rbp
0000000000407900  e80b881000                       call 0x510110
0000000000407905  488d3d98a22200                   lea rdi, [rip + 0x22a298]
000000000040790c  4889ee                           mov rsi, rbp
000000000040790f  e8ec801000                       call 0x50fa00
0000000000407914  4889ef                           mov rdi, rbp
0000000000407917  e8f4871000                       call 0x510110
000000000040791c  488d3d86a22200                   lea rdi, [rip + 0x22a286]
0000000000407923  4889ee                           mov rsi, rbp
0000000000407926  e8d5801000                       call 0x50fa00
000000000040792b  4889ef                           mov rdi, rbp
000000000040792e  e8dd871000                       call 0x510110
0000000000407933  488d3d7aa22200                   lea rdi, [rip + 0x22a27a]
000000000040793a  4889ee                           mov rsi, rbp
000000000040793d  e8be801000                       call 0x50fa00
0000000000407942  4889ef                           mov rdi, rbp
0000000000407945  e8c6871000                       call 0x510110
000000000040794a  833df30871001f                   cmp dword ptr [rip + 0x7108f3], 0x1f
0000000000407951  0f8e39030000                     jle 0x407c90
0000000000407957  833dea0871001f                   cmp dword ptr [rip + 0x7108ea], 0x1f
000000000040795e  0f8e2c030000                     jle 0x407c90
0000000000407964  8b35ea087100                     mov esi, dword ptr [rip + 0x7108ea]
000000000040796a  8b3de0087100                     mov edi, dword ptr [rip + 0x7108e0]
0000000000407970  e81b241000                       call 0x509d90
0000000000407975  803dc4367f0000                   cmp byte ptr [rip + 0x7f36c4], 0
000000000040797c  0f8486030000                     je 0x407d08
0000000000407982  4889e3                           mov rbx, rsp
0000000000407985  488d35bd042600                   lea rsi, [rip + 0x2604bd]
000000000040798c  488d3dad367f00                   lea rdi, [rip + 0x7f36ad]
0000000000407993  b9ffffffff                       mov ecx, 0xffffffff
0000000000407998  4889da                           mov rdx, rbx
000000000040799b  e880a21000                       call 0x511c20
00000000004079a0  4889df                           mov rdi, rbx
00000000004079a3  4189c4                           mov r12d, eax
00000000004079a6  e805a31000                       call 0x511cb0
00000000004079ab  4585e4                           test r12d, r12d
00000000004079ae  0f8554030000                     jne 0x407d08
00000000004079b4  803d853e7f0000                   cmp byte ptr [rip + 0x7f3e85], 0
00000000004079bb  0f8467030000                     je 0x407d28
00000000004079c1  4889e3                           mov rbx, rsp
00000000004079c4  488d357e042600                   lea rsi, [rip + 0x26047e]
00000000004079cb  488d3d6e3e7f00                   lea rdi, [rip + 0x7f3e6e]
00000000004079d2  b9ffffffff                       mov ecx, 0xffffffff
00000000004079d7  4889da                           mov rdx, rbx
00000000004079da  e841a21000                       call 0x511c20
00000000004079df  4889df                           mov rdi, rbx
00000000004079e2  4189c4                           mov r12d, eax
00000000004079e5  e8c6a21000                       call 0x511cb0
00000000004079ea  4585e4                           test r12d, r12d
00000000004079ed  0f8535030000                     jne 0x407d28
00000000004079f3  4c8da424400b0000                 lea r12, [rsp + 0xb40]
00000000004079fb  488d3d36d42200                   lea rdi, [rip + 0x22d436]
0000000000407a02  4c89e6                           mov rsi, r12
0000000000407a05  e856861000                       call 0x510060
0000000000407a0a  488d0d2f367f00                   lea rcx, [rip + 0x7f362f]
0000000000407a11  4889cb                           mov rbx, rcx
0000000000407a14  8b13                             mov edx, dword ptr [rbx]
0000000000407a16  4883c304                         add rbx, 4
0000000000407a1a  8d82fffefefe                     lea eax, [rdx - 0x1010101]
0000000000407a20  f7d2                             not edx
0000000000407a22  21d0                             and eax, edx
0000000000407a24  2580808080                       and eax, 0x80808080
0000000000407a29  74e9                             je 0x407a14
0000000000407a2b  89c2                             mov edx, eax
0000000000407a2d  4c89e7                           mov rdi, r12
0000000000407a30  c1ea10                           shr edx, 0x10
0000000000407a33  a980800000                       test eax, 0x8080
0000000000407a38  0f44c2                           cmove eax, edx
0000000000407a3b  488d5302                         lea rdx, [rbx + 2]
0000000000407a3f  89c6                             mov esi, eax
0000000000407a41  480f44da                         cmove rbx, rdx
0000000000407a45  4000c6                           add sil, al
0000000000407a48  488d35f1357f00                   lea rsi, [rip + 0x7f35f1]
0000000000407a4f  4883db03                         sbb rbx, 3
0000000000407a53  4829cb                           sub rbx, rcx
0000000000407a56  4889da                           mov rdx, rbx
0000000000407a59  e8e2c0ffff                       call 0x403b40
0000000000407a5e  85c0                             test eax, eax
0000000000407a60  0f8440020000                     je 0x407ca6
0000000000407a66  488d15e36d8000                   lea rdx, [rip + 0x806de3]
0000000000407a6d  31c0                             xor eax, eax
0000000000407a6f  b93d000000                       mov ecx, 0x3d
0000000000407a74  4889d7                           mov rdi, rdx
0000000000407a77  f348ab                           rep stosq qword ptr [rdi], rax
0000000000407a7a  48b80200000005000000             movabs rax, 0x500000002
0000000000407a84  c705d26d800001000000             mov dword ptr [rip + 0x806dd2], 1
0000000000407a8e  c705146e800008000000             mov dword ptr [rip + 0x806e14], 8
0000000000407a98  4889055d6f8000                   mov qword ptr [rip + 0x806f5d], rax
0000000000407a9f  31c0                             xor eax, eax
0000000000407aa1  e81af90400                       call 0x4573c0
0000000000407aa6  31c0                             xor eax, eax
0000000000407aa8  c7058a357f0000000000             mov dword ptr [rip + 0x7f358a], 0
0000000000407ab2  c70508905a0000000000             mov dword ptr [rip + 0x5a9008], 0
0000000000407abc  c70532aa5d0001000000             mov dword ptr [rip + 0x5daa32], 1
0000000000407ac6  e8b5a00400                       call 0x451b80
0000000000407acb  31c0                             xor eax, eax
0000000000407acd  e8dea61000                       call 0x5121b0
0000000000407ad2  488d3de7a02200                   lea rdi, [rip + 0x22a0e7]
0000000000407ad9  4889ee                           mov rsi, rbp
0000000000407adc  488905256c7f00                   mov qword ptr [rip + 0x7f6c25], rax
0000000000407ae3  e828801000                       call 0x50fb10
0000000000407ae8  8b35fa0d7d00                     mov esi, dword ptr [rip + 0x7d0dfa]
0000000000407aee  85f6                             test esi, esi
0000000000407af0  0f8595060000                     jne 0x40818b
0000000000407af6  4889ef                           mov rdi, rbp
0000000000407af9  e8c2180c00                       call 0x4c93c0
0000000000407afe  4885c0                           test rax, rax
0000000000407b01  488905e80d7d00                   mov qword ptr [rip + 0x7d0de8], rax
0000000000407b08  0f849c060000                     je 0x4081aa
0000000000407b0e  488b00                           mov rax, qword ptr [rax]
0000000000407b11  31f6                             xor esi, esi
0000000000407b13  488b38                           mov rdi, qword ptr [rax]
0000000000407b16  c7471c00000000                   mov dword ptr [rdi + 0x1c], 0
0000000000407b1d  e85ea91000                       call 0x512480
0000000000407b22  488905cf0d7d00                   mov qword ptr [rip + 0x7d0dcf], rax
0000000000407b29  488b05c00d7d00                   mov rax, qword ptr [rip + 0x7d0dc0]
0000000000407b30  488d3d01d32200                   lea rdi, [rip + 0x22d301]
0000000000407b37  488b00                           mov rax, qword ptr [rax]
0000000000407b3a  488b7008                         mov rsi, qword ptr [rax + 8]
0000000000407b3e  c7461c00000000                   mov dword ptr [rsi + 0x1c], 0
0000000000407b45  e826ee0b00                       call 0x4c6970
0000000000407b4a  488905af0d7d00                   mov qword ptr [rip + 0x7d0daf], rax
0000000000407b51  488b05980d7d00                   mov rax, qword ptr [rip + 0x7d0d98]
0000000000407b58  488d3dd9d22200                   lea rdi, [rip + 0x22d2d9]
0000000000407b5f  488b00                           mov rax, qword ptr [rax]
0000000000407b62  488b7010                         mov rsi, qword ptr [rax + 0x10]
0000000000407b66  c7461c00000000                   mov dword ptr [rsi + 0x1c], 0
0000000000407b6d  e8feed0b00                       call 0x4c6970
0000000000407b72  8b0d08905a00                     mov ecx, dword ptr [rip + 0x5a9008]
0000000000407b78  488905890d7d00                   mov qword ptr [rip + 0x7d0d89], rax
0000000000407b7f  85c9                             test ecx, ecx
0000000000407b81  0f8499000000                     je 0x407c20
0000000000407b87  488b00                           mov rax, qword ptr [rax]
0000000000407b8a  488b8030010000                   mov rax, qword ptr [rax + 0x130]
0000000000407b91  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407b95  488b12                           mov rdx, qword ptr [rdx]
0000000000407b98  0fb67202                         movzx esi, byte ptr [rdx + 2]
0000000000407b9c  0fb60a                           movzx ecx, byte ptr [rdx]
0000000000407b9f  408832                           mov byte ptr [rdx], sil
0000000000407ba2  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407ba6  488b12                           mov rdx, qword ptr [rdx]
0000000000407ba9  884a02                           mov byte ptr [rdx + 2], cl
0000000000407bac  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bb0  488b5208                         mov rdx, qword ptr [rdx + 8]
0000000000407bb4  0fb67202                         movzx esi, byte ptr [rdx + 2]
0000000000407bb8  0fb60a                           movzx ecx, byte ptr [rdx]
0000000000407bbb  408832                           mov byte ptr [rdx], sil
0000000000407bbe  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bc2  488b5208                         mov rdx, qword ptr [rdx + 8]
0000000000407bc6  884a02                           mov byte ptr [rdx + 2], cl
0000000000407bc9  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bcd  488b5210                         mov rdx, qword ptr [rdx + 0x10]
0000000000407bd1  0fb67202                         movzx esi, byte ptr [rdx + 2]
0000000000407bd5  0fb60a                           movzx ecx, byte ptr [rdx]
0000000000407bd8  408832                           mov byte ptr [rdx], sil
0000000000407bdb  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bdf  488b5210                         mov rdx, qword ptr [rdx + 0x10]
0000000000407be3  884a02                           mov byte ptr [rdx + 2], cl
0000000000407be6  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bea  488b5218                         mov rdx, qword ptr [rdx + 0x18]
0000000000407bee  0fb67202                         movzx esi, byte ptr [rdx + 2]
0000000000407bf2  0fb60a                           movzx ecx, byte ptr [rdx]
0000000000407bf5  408832                           mov byte ptr [rdx], sil
0000000000407bf8  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407bfc  488b5218                         mov rdx, qword ptr [rdx + 0x18]
0000000000407c00  884a02                           mov byte ptr [rdx + 2], cl
0000000000407c03  488b5018                         mov rdx, qword ptr [rax + 0x18]
0000000000407c07  488b5220                         mov rdx, qword ptr [rdx + 0x20]
0000000000407c0b  0fb67202                         movzx esi, byte ptr [rdx + 2]
0000000000407c0f  0fb60a                           movzx ecx, byte ptr [rdx]
0000000000407c12  408832                           mov byte ptr [rdx], sil
0000000000407c15  488b4018                         mov rax, qword ptr [rax + 0x18]
0000000000407c19  488b4020                         mov rax, qword ptr [rax + 0x20]
0000000000407c1d  884802                           mov byte ptr [rax + 2], cl
0000000000407c20  488d3dc29f2200                   lea rdi, [rip + 0x229fc2]
0000000000407c27  e864ed0a00                       call 0x4b6990
0000000000407c2c  8b151eaf5d00                     mov edx, dword ptr [rip + 0x5daf1e]
0000000000407c32  85d2                             test edx, edx
0000000000407c34  0f8506010000                     jne 0x407d40
0000000000407c3a  8b0518af5d00                     mov eax, dword ptr [rip + 0x5daf18]
0000000000407c40  8b1516af5d00                     mov edx, dword ptr [rip + 0x5daf16]
0000000000407c46  83f801                           cmp eax, 1
0000000000407c49  0f8e70040000                     jle 0x4080bf
0000000000407c4f  85d2                             test edx, edx
0000000000407c51  be80000000                       mov esi, 0x80
0000000000407c56  0f8f6c040000                     jg 0x4080c8
0000000000407c5c  85c0                             test eax, eax
0000000000407c5e  bf80000000                       mov edi, 0x80
0000000000407c63  7e0e                             jle 0x407c73
0000000000407c65  83f808                           cmp eax, 8
0000000000407c68  bf08000000                       mov edi, 8
0000000000407c6d  0f4ef8                           cmovle edi, eax
0000000000407c70  c1e707                           shl edi, 7
0000000000407c73  b900010000                       mov ecx, 0x100
0000000000407c78  ba08000000                       mov edx, 8
0000000000407c7d  e88e1a1000                       call 0x509710
0000000000407c82  e9d2000000                       jmp 0x407d59
0000000000407c87  660f1f840000000000               nop word ptr [rax + rax]
0000000000407c90  48b8440200001c020000             movabs rax, 0x21c00000244
0000000000407c9a  488905a3057100                   mov qword ptr [rip + 0x7105a3], rax
0000000000407ca1  e9befcffff                       jmp 0x407964
0000000000407ca6  4c89e2                           mov rdx, r12
0000000000407ca9  8b0a                             mov ecx, dword ptr [rdx]
0000000000407cab  4883c204                         add rdx, 4
0000000000407caf  8d81fffefefe                     lea eax, [rcx - 0x1010101]
0000000000407cb5  f7d1                             not ecx
0000000000407cb7  21c8                             and eax, ecx
0000000000407cb9  2580808080                       and eax, 0x80808080
0000000000407cbe  74e9                             je 0x407ca9
0000000000407cc0  89c1                             mov ecx, eax
0000000000407cc2  c1e910                           shr ecx, 0x10
0000000000407cc5  a980800000                       test eax, 0x8080
0000000000407cca  0f44c1                           cmove eax, ecx
0000000000407ccd  488d4a02                         lea rcx, [rdx + 2]
0000000000407cd1  480f44d1                         cmove rdx, rcx
0000000000407cd5  89c1                             mov ecx, eax
0000000000407cd7  00c1                             add cl, al
0000000000407cd9  488d4301                         lea rax, [rbx + 1]
0000000000407cdd  4883da03                         sbb rdx, 3
0000000000407ce1  4c29e2                           sub rdx, r12
0000000000407ce4  4839c2                           cmp rdx, rax
0000000000407ce7  0f8679fdffff                     jbe 0x407a66
0000000000407ced  498d341c                         lea rsi, [r12 + rbx]
0000000000407cf1  488d3d48377f00                   lea rdi, [rip + 0x7f3748]
0000000000407cf8  e803771200                       call 0x52f400
0000000000407cfd  e964fdffff                       jmp 0x407a66
0000000000407d02  660f1f440000                     nop word ptr [rax + rax]
0000000000407d08  488d3531337f00                   lea rsi, [rip + 0x7f3331]
0000000000407d0f  488d3d979e2200                   lea rdi, [rip + 0x229e97]
0000000000407d16  e8e57c1000                       call 0x50fa00
0000000000407d1b  803d1e3b7f0000                   cmp byte ptr [rip + 0x7f3b1e], 0
0000000000407d22  0f8599fcffff                     jne 0x4079c1
0000000000407d28  488d35113b7f00                   lea rsi, [rip + 0x7f3b11]
0000000000407d2f  488d3d579e2200                   lea rdi, [rip + 0x229e57]
0000000000407d36  e8c57c1000                       call 0x50fa00
0000000000407d3b  e9b3fcffff                       jmp 0x4079f3
0000000000407d40  b900010000                       mov ecx, 0x100
0000000000407d45  ba08000000                       mov edx, 8
0000000000407d4a  be88000000                       mov esi, 0x88
0000000000407d4f  bf90000000                       mov edi, 0x90
0000000000407d54  e8b7191000                       call 0x509710
0000000000407d59  488b05a00b7d00                   mov rax, qword ptr [rip + 0x7d0ba0]
0000000000407d60  4c8d25190b7d00                   lea r12, [rip + 0x7d0b19]
0000000000407d67  498d5c24e0                       lea rbx, [r12 - 0x20]
0000000000407d6c  488b00                           mov rax, qword ptr [rax]
0000000000407d6f  488b38                           mov rdi, qword ptr [rax]
0000000000407d72  e8c9981000                       call 0x511640
0000000000407d77  488b05820b7d00                   mov rax, qword ptr [rip + 0x7d0b82]
0000000000407d7e  488b00                           mov rax, qword ptr [rax]
0000000000407d81  488b7808                         mov rdi, qword ptr [rax + 8]
0000000000407d85  e8061f1000                       call 0x509c90
0000000000407d8a  ba08000000                       mov edx, 8
0000000000407d8f  be80000000                       mov esi, 0x80
0000000000407d94  bf80000000                       mov edi, 0x80
0000000000407d99  e8c20e0b00                       call 0x4b8c60
0000000000407d9e  488905db0a7d00                   mov qword ptr [rip + 0x7d0adb], rax
0000000000407da5  ba08000000                       mov edx, 8
0000000000407daa  be80000000                       mov esi, 0x80
0000000000407daf  bf80000000                       mov edi, 0x80
0000000000407db4  e8a70e0b00                       call 0x4b8c60
0000000000407db9  4883c308                         add rbx, 8
0000000000407dbd  48894320                         mov qword ptr [rbx + 0x20], rax
0000000000407dc1  4c39e3                           cmp rbx, r12
0000000000407dc4  75df                             jne 0x407da5
0000000000407dc6  488b05bb0a7d00                   mov rax, qword ptr [rip + 0x7d0abb]
0000000000407dcd  ba08000000                       mov edx, 8
0000000000407dd2  be80000000                       mov esi, 0x80
0000000000407dd7  bf80000000                       mov edi, 0x80
0000000000407ddc  488d1df5787e00                   lea rbx, [rip + 0x7e78f5]
0000000000407de3  488905960a7d00                   mov qword ptr [rip + 0x7d0a96], rax
0000000000407dea  4c8da300020000                   lea r12, [rbx + 0x200]
0000000000407df1  e86a0e0b00                       call 0x4b8c60
0000000000407df6  ba08000000                       mov edx, 8
0000000000407dfb  be80000000                       mov esi, 0x80
0000000000407e00  bf80000000                       mov edi, 0x80
0000000000407e05  488905bc0a7d00                   mov qword ptr [rip + 0x7d0abc], rax
0000000000407e0c  e84f0e0b00                       call 0x4b8c60
0000000000407e11  be80000000                       mov esi, 0x80
0000000000407e16  bf80000000                       mov edi, 0x80
0000000000407e1b  488905fea85d00                   mov qword ptr [rip + 0x5da8fe], rax
0000000000407e22  e8198e0800                       call 0x490c40
0000000000407e27  be80000000                       mov esi, 0x80
0000000000407e2c  bf80000000                       mov edi, 0x80
0000000000407e31  48890590787e00                   mov qword ptr [rip + 0x7e7890], rax
0000000000407e38  e8038e0800                       call 0x490c40
0000000000407e3d  4889058c787e00                   mov qword ptr [rip + 0x7e788c], rax
0000000000407e44  0f1f4000                         nop dword ptr [rax]
0000000000407e48  be20000000                       mov esi, 0x20
0000000000407e4d  bf08000000                       mov edi, 8
0000000000407e52  4883c308                         add rbx, 8
0000000000407e56  e8e58d0800                       call 0x490c40
0000000000407e5b  488943f8                         mov qword ptr [rbx - 8], rax
0000000000407e5f  4939dc                           cmp r12, rbx
0000000000407e62  75e4                             jne 0x407e48
0000000000407e64  ba08000000                       mov edx, 8
0000000000407e69  be01000000                       mov esi, 1
0000000000407e6e  bf01000000                       mov edi, 1
0000000000407e73  e8e80d0b00                       call 0x4b8c60
0000000000407e78  be08000000                       mov esi, 8
0000000000407e7d  ba08000000                       mov edx, 8
0000000000407e82  bf08000000                       mov edi, 8
0000000000407e87  488905820a7d00                   mov qword ptr [rip + 0x7d0a82], rax
0000000000407e8e  e8cd0d0b00                       call 0x4b8c60
0000000000407e93  488d1526825a00                   lea rdx, [rip + 0x5a8226]
0000000000407e9a  488905770a7d00                   mov qword ptr [rip + 0x7d0a77], rax
0000000000407ea1  b921000000                       mov ecx, 0x21
0000000000407ea6  31c0                             xor eax, eax
0000000000407ea8  c70576634c0001000000             mov dword ptr [rip + 0x4c6376], 1
0000000000407eb2  4889d7                           mov rdi, rdx
0000000000407eb5  f348ab                           rep stosq qword ptr [rdi], rax
0000000000407eb8  e8f3a21000                       call 0x5121b0
0000000000407ebd  488905fc825a00                   mov qword ptr [rip + 0x5a82fc], rax
0000000000407ec4  31c0                             xor eax, eax
0000000000407ec6  e8c5370500                       call 0x45b690
0000000000407ecb  85c0                             test eax, eax
0000000000407ecd  0f84f2020000                     je 0x4081c5
0000000000407ed3  c705f3567f0003000000             mov dword ptr [rip + 0x7f56f3], 3
0000000000407edd  4c8d2dcc307f00                   lea r13, [rip + 0x7f30cc]
0000000000407ee4  48bb0400000006000000             movabs rbx, 0x600000004
0000000000407eee  4d8da580000000                   lea r12, [r13 + 0x80]
0000000000407ef5  0f1f00                           nop dword ptr [rax]
0000000000407ef8  31ff                             xor edi, edi
0000000000407efa  be02000100                       mov esi, 0x10002
0000000000407eff  e8ccff1000                       call 0x517ed0
0000000000407f04  49894500                         mov qword ptr [r13], rax
0000000000407f08  48899850010000                   mov qword ptr [rax + 0x150], rbx
0000000000407f0f  8b15638c5a00                     mov edx, dword ptr [rip + 0x5a8c63]
0000000000407f15  85d2                             test edx, edx
0000000000407f17  0f8ec3010000                     jle 0x4080e0
0000000000407f1d  83fa04                           cmp edx, 4
0000000000407f20  b904000000                       mov ecx, 4
0000000000407f25  c7806801000000000000             mov dword ptr [rax + 0x168], 0
0000000000407f2f  0f4fd1                           cmovg edx, ecx
0000000000407f32  4983c508                         add r13, 8
0000000000407f36  c1e202                           shl edx, 2
0000000000407f39  4d39e5                           cmp r13, r12
0000000000407f3c  899058010000                     mov dword ptr [rax + 0x158], edx
0000000000407f42  75b4                             jne 0x407ef8
0000000000407f44  488b0565307f00                   mov rax, qword ptr [rip + 0x7f3065]
0000000000407f4b  488d3d099c2200                   lea rdi, [rip + 0x229c09]
0000000000407f52  31db                             xor ebx, ebx
0000000000407f54  4c8da42440070000                 lea r12, [rsp + 0x740]
0000000000407f5c  488905cd307f00                   mov qword ptr [rip + 0x7f30cd], rax
0000000000407f63  e848d60000                       call 0x4155b0
0000000000407f68  488d3dd93c7f00                   lea rdi, [rip + 0x7f3cd9]
0000000000407f6f  ba00040000                       mov edx, 0x400
0000000000407f74  4889c6                           mov rsi, rax
0000000000407f77  e8f4bfffff                       call 0x403f70
0000000000407f7c  eb47                             jmp 0x407fc5
0000000000407f7e  6690                             nop 
0000000000407f80  488d0de19b2200                   lea rcx, [rip + 0x229be1]
0000000000407f87  83c301                           add ebx, 1
0000000000407f8a  ba00010000                       mov edx, 0x100
0000000000407f8f  4189d8                           mov r8d, ebx
0000000000407f92  be01000000                       mov esi, 1
0000000000407f97  4c89e7                           mov rdi, r12
0000000000407f9a  31c0                             xor eax, eax
0000000000407f9c  e82fc3ffff                       call 0x4042d0
0000000000407fa1  4c89e7                           mov rdi, r12
0000000000407fa4  e807d60000                       call 0x4155b0
0000000000407fa9  488d3d983c7f00                   lea rdi, [rip + 0x7f3c98]
0000000000407fb0  ba00040000                       mov edx, 0x400
0000000000407fb5  4889c6                           mov rsi, rax
0000000000407fb8  e8b3bfffff                       call 0x403f70
0000000000407fbd  81fbe8030000                     cmp ebx, 0x3e8
0000000000407fc3  7410                             je 0x407fd5
0000000000407fc5  488d3d7c3c7f00                   lea rdi, [rip + 0x7f3c7c]
0000000000407fcc  e80f9d1000                       call 0x511ce0
0000000000407fd1  85c0                             test eax, eax
0000000000407fd3  75ab                             jne 0x407f80
0000000000407fd5  488b3de4815a00                   mov rdi, qword ptr [rip + 0x5a81e4]
0000000000407fdc  488d3565407f00                   lea rsi, [rip + 0x7f4065]
0000000000407fe3  e828930000                       call 0x411310
0000000000407fe8  be01000000                       mov esi, 1
0000000000407fed  bf22560000                       mov edi, 0x5622
0000000000407ff2  e819020f00                       call 0x4f8210
0000000000407ff7  31c0                             xor eax, eax
0000000000407ff9  c705a902710001000000             mov dword ptr [rip + 0x7102a9], 1
0000000000408003  e8b8510a00                       call 0x4ad1c0
0000000000408008  8b05da087d00                     mov eax, dword ptr [rip + 0x7d08da]
000000000040800e  85c0                             test eax, eax
0000000000408010  750d                             jne 0x40801f
0000000000408012  803d2ba75d0000                   cmp byte ptr [rip + 0x5da72b], 0
0000000000408019  0f8402010000                     je 0x408121
000000000040801f  488d3d7a855a00                   lea rdi, [rip + 0x5a857a]
0000000000408026  4889ee                           mov rsi, rbp
0000000000408029  e8829f0b00                       call 0x4c1fb0
000000000040802e  4889ef                           mov rdi, rbp
0000000000408031  e84ab70000                       call 0x413780
0000000000408036  31d2                             xor edx, edx
0000000000408038  85c0                             test eax, eax
000000000040803a  0f94c2                           sete dl
000000000040803d  89155d895a00                     mov dword ptr [rip + 0x5a895d], edx
0000000000408043  0f85a6010000                     jne 0x4081ef
0000000000408049  803df4a65d0000                   cmp byte ptr [rip + 0x5da6f4], 0
0000000000408050  0f84b0000000                     je 0x408106
0000000000408056  488d9c2440070000                 lea rbx, [rsp + 0x740]
000000000040805e  488d35db2f7f00                   lea rsi, [rip + 0x7f2fdb]
0000000000408065  c70579087d0001000000             mov dword ptr [rip + 0x7d0879], 1
000000000040806f  4889df                           mov rdi, rbx
0000000000408072  e889731200                       call 0x52f400
0000000000408077  488d35859b2200                   lea rsi, [rip + 0x229b85]
000000000040807e  488d3dbb2f7f00                   lea rdi, [rip + 0x7f2fbb]
0000000000408085  e876731200                       call 0x52f400
000000000040808a  488d35a7cd2200                   lea rsi, [rip + 0x22cda7]
0000000000408091  488d3da8337f00                   lea rdi, [rip + 0x7f33a8]
0000000000408098  e863731200                       call 0x52f400
000000000040809d  488d3da0a65d00                   lea rdi, [rip + 0x5da6a0]
00000000004080a4  e8b7920900                       call 0x4a1360
00000000004080a9  488d3d902f7f00                   lea rdi, [rip + 0x7f2f90]
00000000004080b0  4889de                           mov rsi, rbx
00000000004080b3  e848731200                       call 0x52f400
00000000004080b8  31ff                             xor edi, edi
00000000004080ba  e8f1b9ffff                       call 0x403ab0
00000000004080bf  83fa01                           cmp edx, 1
00000000004080c2  0f8e09010000                     jle 0x4081d1
00000000004080c8  83fa08                           cmp edx, 8
00000000004080cb  be08000000                       mov esi, 8
00000000004080d0  0f4ef2                           cmovle esi, edx
00000000004080d3  c1e607                           shl esi, 7
00000000004080d6  e981fbffff                       jmp 0x407c5c
00000000004080db  0f1f440000                       nop dword ptr [rax + rax]
00000000004080e0  4983c508                         add r13, 8
00000000004080e4  c7805801000004000000             mov dword ptr [rax + 0x158], 4
00000000004080ee  c7806801000000000000             mov dword ptr [rax + 0x168], 0
00000000004080f8  4d39e5                           cmp r13, r12
00000000004080fb  0f85f7fdffff                     jne 0x407ef8
0000000000408101  e93efeffff                       jmp 0x407f44
0000000000408106  31ff                             xor edi, edi
0000000000408108  c705be547f0000000000             mov dword ptr [rip + 0x7f54be], 0
0000000000408112  e8c9660400                       call 0x44e7e0
0000000000408117  c705c3547f0001000000             mov dword ptr [rip + 0x7f54c3], 1
0000000000408121  803d7cb25d0000                   cmp byte ptr [rip + 0x5db27c], 0
0000000000408128  8b058a895a00                     mov eax, dword ptr [rip + 0x5a898a]
000000000040812e  c705848a5a0002000000             mov dword ptr [rip + 0x5a8a84], 2
0000000000408138  8905ce097100                     mov dword ptr [rip + 0x7109ce], eax
000000000040813e  7509                             jne 0x408149
0000000000408140  803d5dba5d0000                   cmp byte ptr [rip + 0x5dba5d], 0
0000000000408147  741d                             je 0x408166
0000000000408149  488d3554ba5d00                   lea rsi, [rip + 0x5dba54]
0000000000408150  488dbe00f8ffff                   lea rdi, [rsi - 0x800]
0000000000408157  e884d70000                       call 0x4158e0
000000000040815c  c7053ec25d0001000000             mov dword ptr [rip + 0x5dc23e], 1
0000000000408166  488b8424480f0000                 mov rax, qword ptr [rsp + 0xf48]
000000000040816e  644833042528000000               xor rax, qword ptr fs:[0x28]
0000000000408177  0f8596000000                     jne 0x408213
000000000040817d  4881c4580f0000                   add rsp, 0xf58
0000000000408184  5b                               pop rbx
0000000000408185  5d                               pop rbp
0000000000408186  415c                             pop r12
0000000000408188  415d                             pop r13
000000000040818a  c3                               ret 
000000000040818b  488d150e845a00                   lea rdx, [rip + 0x5a840e]
0000000000408192  488d35319a2200                   lea rsi, [rip + 0x229a31]
0000000000408199  bf01000000                       mov edi, 1
000000000040819e  31c0                             xor eax, eax
00000000004081a0  e82bb9ffff                       call 0x403ad0
00000000004081a5  e94cf9ffff                       jmp 0x407af6
00000000004081aa  488d35269a2200                   lea rsi, [rip + 0x229a26]
00000000004081b1  bf01000000                       mov edi, 1
00000000004081b6  4889ea                           mov rdx, rbp
00000000004081b9  e812b9ffff                       call 0x403ad0
00000000004081be  31ff                             xor edi, edi
00000000004081c0  e8ebb8ffff                       call 0x403ab0
00000000004081c5  31c0                             xor eax, eax
00000000004081c7  e8e4f1ffff                       call 0x4073b0
00000000004081cc  e90cfdffff                       jmp 0x407edd
00000000004081d1  b900010000                       mov ecx, 0x100
00000000004081d6  ba08000000                       mov edx, 8
00000000004081db  be80000000                       mov esi, 0x80
00000000004081e0  bf80000000                       mov edi, 0x80
00000000004081e5  e826151000                       call 0x509710
00000000004081ea  e96afbffff                       jmp 0x407d59
00000000004081ef  488d15aa835a00                   lea rdx, [rip + 0x5a83aa]
00000000004081f6  488d35f3992200                   lea rsi, [rip + 0x2299f3]
00000000004081fd  bf01000000                       mov edi, 1
0000000000408202  31c0                             xor eax, eax
0000000000408204  e8c7b8ffff                       call 0x403ad0
0000000000408209  bf01000000                       mov edi, 1
000000000040820e  e89db8ffff                       call 0x403ab0
0000000000408213  e888beffff                       call 0x4040a0
