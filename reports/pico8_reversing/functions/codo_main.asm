00000000004b7530  55                               push rbp
00000000004b7531  53                               push rbx
00000000004b7532  4889f3                           mov rbx, rsi
00000000004b7535  89fd                             mov ebp, edi
00000000004b7537  488d3d82274f00                   lea rdi, [rip + 0x4f2782]
00000000004b753e  4883ec08                         sub rsp, 8
00000000004b7542  488b36                           mov rsi, qword ptr [rsi]
00000000004b7545  e8b67e0700                       call 0x52f400
00000000004b754a  83fd01                           cmp ebp, 1
00000000004b754d  892db1234100                     mov dword ptr [rip + 0x4123b1], ebp
00000000004b7553  48891dde294f00                   mov qword ptr [rip + 0x4f29de], rbx
00000000004b755a  7e1f                             jle 0x4b757b
00000000004b755c  488b7308                         mov rsi, qword ptr [rbx + 8]
00000000004b7560  488d3d6bc21800                   lea rdi, [rip + 0x18c26b]
00000000004b7567  b90b000000                       mov ecx, 0xb
00000000004b756c  f3a6                             repe cmpsb byte ptr [rsi], byte ptr [rdi]
00000000004b756e  0f97c0                           seta al
00000000004b7571  1c00                             sbb al, 0
00000000004b7573  84c0                             test al, al
00000000004b7575  0f84f8040000                     je 0x4b7a73
00000000004b757b  4889de                           mov rsi, rbx
00000000004b757e  89ef                             mov edi, ebp
00000000004b7580  48bbcff753e3a59bc420             movabs rbx, 0x20c49ba5e353f7cf
00000000004b758a  e8f101f5ff                       call 0x407780
00000000004b758f  c7052f294f0000000000             mov dword ptr [rip + 0x4f292f], 0
00000000004b7599  31c0                             xor eax, eax
00000000004b759b  e9c1000000                       jmp 0x4b7661
00000000004b75a0  31c0                             xor eax, eax
00000000004b75a2  e8c9620500                       call 0x50d870
00000000004b75a7  8b057f294f00                     mov eax, dword ptr [rip + 0x4f297f]
00000000004b75ad  85c0                             test eax, eax
00000000004b75af  751b                             jne 0x4b75cc
00000000004b75b1  31c0                             xor eax, eax
00000000004b75b3  c7056f294f0001000000             mov dword ptr [rip + 0x4f296f], 1
00000000004b75bd  e87e690000                       call 0x4bdf40
00000000004b75c2  c70560294f0000000000             mov dword ptr [rip + 0x4f2960], 0
00000000004b75cc  488d35ed284f00                   lea rsi, [rip + 0x4f28ed]
00000000004b75d3  488d3dea284f00                   lea rdi, [rip + 0x4f28ea]
00000000004b75da  31d2                             xor edx, edx
00000000004b75dc  e83f8e0500                       call 0x510420
00000000004b75e1  31c0                             xor eax, eax
00000000004b75e3  e8e8000500                       call 0x5076d0
00000000004b75e8  8b050a0d6600                     mov eax, dword ptr [rip + 0x660d0a]
00000000004b75ee  85c0                             test eax, eax
00000000004b75f0  0f859a000000                     jne 0x4b7690
00000000004b75f6  c70520294f0000000000             mov dword ptr [rip + 0x4f2920], 0
00000000004b7600  31c0                             xor eax, eax
00000000004b7602  e8f971f5ff                       call 0x40e800
00000000004b7607  8b2d13294f00                     mov ebp, dword ptr [rip + 0x4f2913]
00000000004b760d  85ed                             test ebp, ebp
00000000004b760f  753c                             jne 0x4b764d
00000000004b7611  448b1de00c6600                   mov r11d, dword ptr [rip + 0x660ce0]
00000000004b7618  4585db                           test r11d, r11d
00000000004b761b  0f85b7010000                     jne 0x4b77d8
00000000004b7621  31c0                             xor eax, eax
00000000004b7623  e8a81ef5ff                       call 0x4094d0
00000000004b7628  448b0dc90c6600                   mov r9d, dword ptr [rip + 0x660cc9]
00000000004b762f  4585c9                           test r9d, r9d
00000000004b7632  0f85c8000000                     jne 0x4b7700
00000000004b7638  8b05b20c6600                     mov eax, dword ptr [rip + 0x660cb2]
00000000004b763e  85c0                             test eax, eax
00000000004b7640  0f8426010000                     je 0x4b776c
00000000004b7646  31c0                             xor eax, eax
00000000004b7648  e8a3260500                       call 0x509cf0
00000000004b764d  8b0da50c6600                     mov ecx, dword ptr [rip + 0x660ca5]
00000000004b7653  85c9                             test ecx, ecx
00000000004b7655  0f852d020000                     jne 0x4b7888
00000000004b765b  8b0567284f00                     mov eax, dword ptr [rip + 0x4f2867]
00000000004b7661  85c0                             test eax, eax
00000000004b7663  0f85f7010000                     jne 0x4b7860
00000000004b7669  31c0                             xor eax, eax
00000000004b766b  e860260500                       call 0x509cd0
00000000004b7670  8b05820c6600                     mov eax, dword ptr [rip + 0x660c82]
00000000004b7676  85c0                             test eax, eax
00000000004b7678  0f8422ffffff                     je 0x4b75a0
00000000004b767e  31c0                             xor eax, eax
00000000004b7680  e8fba80500                       call 0x511f80
00000000004b7685  e916ffffff                       jmp 0x4b75a0
00000000004b768a  660f1f440000                     nop word ptr [rax + rax]
00000000004b7690  31c0                             xor eax, eax
00000000004b7692  8305870b660001                   add dword ptr [rip + 0x660b87], 1
00000000004b7699  e802a90500                       call 0x511fa0
00000000004b769e  4889c1                           mov rcx, rax
00000000004b76a1  488b2d38284f00                   mov rbp, qword ptr [rip + 0x4f2838]
00000000004b76a8  48f7eb                           imul rbx
00000000004b76ab  48c1f93f                         sar rcx, 0x3f
00000000004b76af  31c0                             xor eax, eax
00000000004b76b1  48c1fa07                         sar rdx, 7
00000000004b76b5  4829ca                           sub rdx, rcx
00000000004b76b8  48011541284f00                   add qword ptr [rip + 0x4f2841], rdx
00000000004b76bf  e8dca80500                       call 0x511fa0
00000000004b76c4  4839c5                           cmp rbp, rax
00000000004b76c7  0f8e83010000                     jle 0x4b7850
00000000004b76cd  488b050c284f00                   mov rax, qword ptr [rip + 0x4f280c]
00000000004b76d4  48890505284f00                   mov qword ptr [rip + 0x4f2805], rax
00000000004b76db  8b05170c6600                     mov eax, dword ptr [rip + 0x660c17]
00000000004b76e1  c70535284f0000000000             mov dword ptr [rip + 0x4f2835], 0
00000000004b76eb  85c0                             test eax, eax
00000000004b76ed  0f840dffffff                     je 0x4b7600
00000000004b76f3  31c0                             xor eax, eax
00000000004b76f5  e886a80500                       call 0x511f80
00000000004b76fa  e901ffffff                       jmp 0x4b7600
00000000004b76ff  90                               nop 
00000000004b7700  31c0                             xor eax, eax
00000000004b7702  83051f0b660001                   add dword ptr [rip + 0x660b1f], 1
00000000004b7709  e892a80500                       call 0x511fa0
00000000004b770e  4889c1                           mov rcx, rax
00000000004b7711  488b2dd8274f00                   mov rbp, qword ptr [rip + 0x4f27d8]
00000000004b7718  48f7eb                           imul rbx
00000000004b771b  48c1f93f                         sar rcx, 0x3f
00000000004b771f  31c0                             xor eax, eax
00000000004b7721  48c1fa07                         sar rdx, 7
00000000004b7725  4829ca                           sub rdx, rcx
00000000004b7728  480115e1274f00                   add qword ptr [rip + 0x4f27e1], rdx
00000000004b772f  e86ca80500                       call 0x511fa0
00000000004b7734  4839c5                           cmp rbp, rax
00000000004b7737  0f8e03030000                     jle 0x4b7a40
00000000004b773d  488b05ac274f00                   mov rax, qword ptr [rip + 0x4f27ac]
00000000004b7744  448b05ad0b6600                   mov r8d, dword ptr [rip + 0x660bad]
00000000004b774b  4889059e274f00                   mov qword ptr [rip + 0x4f279e], rax
00000000004b7752  4585c0                           test r8d, r8d
00000000004b7755  0f84ddfeffff                     je 0x4b7638
00000000004b775b  31c0                             xor eax, eax
00000000004b775d  e81ea80500                       call 0x511f80
00000000004b7762  8b3d880b6600                     mov edi, dword ptr [rip + 0x660b88]
00000000004b7768  85ff                             test edi, edi
00000000004b776a  7507                             jne 0x4b7773
00000000004b776c  31c0                             xor eax, eax
00000000004b776e  e8cd250500                       call 0x509d40
00000000004b7773  8b357f0b6600                     mov esi, dword ptr [rip + 0x660b7f]
00000000004b7779  85f6                             test esi, esi
00000000004b777b  0f84c5feffff                     je 0x4b7646
00000000004b7781  31c0                             xor eax, eax
00000000004b7783  8305a20a660001                   add dword ptr [rip + 0x660aa2], 1
00000000004b778a  e811a80500                       call 0x511fa0
00000000004b778f  4889c1                           mov rcx, rax
00000000004b7792  488b2d5f274f00                   mov rbp, qword ptr [rip + 0x4f275f]
00000000004b7799  48f7eb                           imul rbx
00000000004b779c  48c1f93f                         sar rcx, 0x3f
00000000004b77a0  31c0                             xor eax, eax
00000000004b77a2  48c1fa07                         sar rdx, 7
00000000004b77a6  4829ca                           sub rdx, rcx
00000000004b77a9  48011568274f00                   add qword ptr [rip + 0x4f2768], rdx
00000000004b77b0  e8eba70500                       call 0x511fa0
00000000004b77b5  4839c5                           cmp rbp, rax
00000000004b77b8  0f8e72020000                     jle 0x4b7a30
00000000004b77be  488b0533274f00                   mov rax, qword ptr [rip + 0x4f2733]
00000000004b77c5  4889052c274f00                   mov qword ptr [rip + 0x4f272c], rax
00000000004b77cc  e975feffff                       jmp 0x4b7646
00000000004b77d1  0f1f8000000000                   nop dword ptr [rax]
00000000004b77d8  31c0                             xor eax, eax
00000000004b77da  8305430a660001                   add dword ptr [rip + 0x660a43], 1
00000000004b77e1  e8baa70500                       call 0x511fa0
00000000004b77e6  4889c1                           mov rcx, rax
00000000004b77e9  488b2df8264f00                   mov rbp, qword ptr [rip + 0x4f26f8]
00000000004b77f0  48f7eb                           imul rbx
00000000004b77f3  48c1f93f                         sar rcx, 0x3f
00000000004b77f7  31c0                             xor eax, eax
00000000004b77f9  48c1fa07                         sar rdx, 7
00000000004b77fd  4829ca                           sub rdx, rcx
00000000004b7800  48011501274f00                   add qword ptr [rip + 0x4f2701], rdx
00000000004b7807  e894a70500                       call 0x511fa0
00000000004b780c  4839c5                           cmp rbp, rax
00000000004b780f  0f8e0b020000                     jle 0x4b7a20
00000000004b7815  488b05cc264f00                   mov rax, qword ptr [rip + 0x4f26cc]
00000000004b781c  448b15fd264f00                   mov r10d, dword ptr [rip + 0x4f26fd]
00000000004b7823  488905be264f00                   mov qword ptr [rip + 0x4f26be], rax
00000000004b782a  8b0dc80a6600                     mov ecx, dword ptr [rip + 0x660ac8]
00000000004b7830  4585d2                           test r10d, r10d
00000000004b7833  0f851afeffff                     jne 0x4b7653
00000000004b7839  85c9                             test ecx, ecx
00000000004b783b  0f84e0fdffff                     je 0x4b7621
00000000004b7841  31c0                             xor eax, eax
00000000004b7843  e838a70500                       call 0x511f80
00000000004b7848  e9d4fdffff                       jmp 0x4b7621
00000000004b784d  0f1f00                           nop dword ptr [rax]
00000000004b7850  31c0                             xor eax, eax
00000000004b7852  e849a70500                       call 0x511fa0
00000000004b7857  e978feffff                       jmp 0x4b76d4
00000000004b785c  0f1f4000                         nop dword ptr [rax]
00000000004b7860  8b0dda264f00                     mov ecx, dword ptr [rip + 0x4f26da]
00000000004b7866  85c9                             test ecx, ecx
00000000004b7868  740e                             je 0x4b7878
00000000004b786a  8b15843d6600                     mov edx, dword ptr [rip + 0x663d84]
00000000004b7870  85d2                             test edx, edx
00000000004b7872  0f84d8010000                     je 0x4b7a50
00000000004b7878  4883c408                         add rsp, 8
00000000004b787c  31c0                             xor eax, eax
00000000004b787e  5b                               pop rbx
00000000004b787f  5d                               pop rbp
00000000004b7880  c3                               ret 
00000000004b7881  0f1f8000000000                   nop dword ptr [rax]
00000000004b7888  8b0542264f00                     mov eax, dword ptr [rip + 0x4f2642]
00000000004b788e  83c001                           add eax, 1
00000000004b7891  99                               cdq 
00000000004b7892  890538264f00                     mov dword ptr [rip + 0x4f2638], eax
00000000004b7898  f7f9                             idiv ecx
00000000004b789a  85d2                             test edx, edx
00000000004b789c  0f85b9fdffff                     jne 0x4b765b
00000000004b78a2  660fefff                         pxor xmm7, xmm7
00000000004b78a6  8b0580096600                     mov eax, dword ptr [rip + 0x660980]
00000000004b78ac  660feff6                         pxor xmm6, xmm6
00000000004b78b0  8b0d6a096600                     mov ecx, dword ptr [rip + 0x66096a]
00000000004b78b6  8b1568096600                     mov edx, dword ptr [rip + 0x660968]
00000000004b78bc  f3480f2a3d33264f00               cvtsi2ss xmm7, qword ptr [rip + 0x4f2633]
00000000004b78c5  85c0                             test eax, eax
00000000004b78c7  f3480f2a3548264f00               cvtsi2ss xmm6, qword ptr [rip + 0x4f2648]
00000000004b78d0  f30f5aff                         cvtss2sd xmm7, xmm7
00000000004b78d4  f30f5af6                         cvtss2sd xmm6, xmm6
00000000004b78d8  f20f5e3dd8c21800                 divsd xmm7, qword ptr [rip + 0x18c2d8]
00000000004b78e0  0f8e7a010000                     jle 0x4b7a60
00000000004b78e6  660fefc0                         pxor xmm0, xmm0
00000000004b78ea  f2440f1005bdc21800               movsd xmm8, qword ptr [rip + 0x18c2bd]
00000000004b78f3  f20f2ac0                         cvtsi2sd xmm0, eax
00000000004b78f7  f2410f59c0                       mulsd xmm0, xmm8
00000000004b78fc  660fefed                         pxor xmm5, xmm5
00000000004b7900  8b0522096600                     mov eax, dword ptr [rip + 0x660922]
00000000004b7906  660fefe4                         pxor xmm4, xmm4
00000000004b790a  f20f5ef0                         divsd xmm6, xmm0
00000000004b790e  66410f28c0                       movapd xmm0, xmm8
00000000004b7913  f3480f2a2dd4254f00               cvtsi2ss xmm5, qword ptr [rip + 0x4f25d4]
00000000004b791c  85c0                             test eax, eax
00000000004b791e  f3480f2a25e9254f00               cvtsi2ss xmm4, qword ptr [rip + 0x4f25e9]
00000000004b7927  f30f5aed                         cvtss2sd xmm5, xmm5
00000000004b792b  f30f5ae4                         cvtss2sd xmm4, xmm4
00000000004b792f  f20f5e2d81c21800                 divsd xmm5, qword ptr [rip + 0x18c281]
00000000004b7937  7e0d                             jle 0x4b7946
00000000004b7939  660fefc0                         pxor xmm0, xmm0
00000000004b793d  f20f2ac0                         cvtsi2sd xmm0, eax
00000000004b7941  f2410f59c0                       mulsd xmm0, xmm8
00000000004b7946  660fefdb                         pxor xmm3, xmm3
00000000004b794a  85d2                             test edx, edx
00000000004b794c  660fefd2                         pxor xmm2, xmm2
00000000004b7950  f20f5ee0                         divsd xmm4, xmm0
00000000004b7954  66410f28c0                       movapd xmm0, xmm8
00000000004b7959  f3480f2a1d86254f00               cvtsi2ss xmm3, qword ptr [rip + 0x4f2586]
00000000004b7962  f3480f2a159d254f00               cvtsi2ss xmm2, qword ptr [rip + 0x4f259d]
00000000004b796b  f30f5adb                         cvtss2sd xmm3, xmm3
00000000004b796f  f30f5ad2                         cvtss2sd xmm2, xmm2
00000000004b7973  f20f5e1d3dc21800                 divsd xmm3, qword ptr [rip + 0x18c23d]
00000000004b797b  7e0d                             jle 0x4b798a
00000000004b797d  660fefc0                         pxor xmm0, xmm0
00000000004b7981  f20f2ac2                         cvtsi2sd xmm0, edx
00000000004b7985  f2410f59c0                       mulsd xmm0, xmm8
00000000004b798a  660fefc9                         pxor xmm1, xmm1
00000000004b798e  85c9                             test ecx, ecx
00000000004b7990  f20f5ed0                         divsd xmm2, xmm0
00000000004b7994  f3480f2a0d43254f00               cvtsi2ss xmm1, qword ptr [rip + 0x4f2543]
00000000004b799d  f30f5ac9                         cvtss2sd xmm1, xmm1
00000000004b79a1  660fefc0                         pxor xmm0, xmm0
00000000004b79a5  f20f5e0d0bc21800                 divsd xmm1, qword ptr [rip + 0x18c20b]
00000000004b79ad  f3480f2a054a254f00               cvtsi2ss xmm0, qword ptr [rip + 0x4f254a]
00000000004b79b6  f30f5ac0                         cvtss2sd xmm0, xmm0
00000000004b79ba  7e0f                             jle 0x4b79cb
00000000004b79bc  66450fefc9                       pxor xmm9, xmm9
00000000004b79c1  f2440f2ac9                       cvtsi2sd xmm9, ecx
00000000004b79c6  f2450f59c1                       mulsd xmm8, xmm9
00000000004b79cb  f2410f5ec0                       divsd xmm0, xmm8
00000000004b79d0  488d3581c11800                   lea rsi, [rip + 0x18c181]
00000000004b79d7  bf01000000                       mov edi, 1
00000000004b79dc  b808000000                       mov eax, 8
00000000004b79e1  e8eac0f4ff                       call 0x403ad0
00000000004b79e6  660fefc0                         pxor xmm0, xmm0
00000000004b79ea  0f29052f086600                   movaps xmmword ptr [rip + 0x66082f], xmm0
00000000004b79f1  660fefc0                         pxor xmm0, xmm0
00000000004b79f5  0f2905e4244f00                   movaps xmmword ptr [rip + 0x4f24e4], xmm0
00000000004b79fc  0f2905ed244f00                   movaps xmmword ptr [rip + 0x4f24ed], xmm0
00000000004b7a03  0f2905f6244f00                   movaps xmmword ptr [rip + 0x4f24f6], xmm0
00000000004b7a0a  0f2905ff244f00                   movaps xmmword ptr [rip + 0x4f24ff], xmm0
00000000004b7a11  e945fcffff                       jmp 0x4b765b
00000000004b7a16  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004b7a20  31c0                             xor eax, eax
00000000004b7a22  e879a50500                       call 0x511fa0
00000000004b7a27  e9f0fdffff                       jmp 0x4b781c
00000000004b7a2c  0f1f4000                         nop dword ptr [rax]
00000000004b7a30  31c0                             xor eax, eax
00000000004b7a32  e869a50500                       call 0x511fa0
00000000004b7a37  e989fdffff                       jmp 0x4b77c5
00000000004b7a3c  0f1f4000                         nop dword ptr [rax]
00000000004b7a40  31c0                             xor eax, eax
00000000004b7a42  e859a50500                       call 0x511fa0
00000000004b7a47  e9f8fcffff                       jmp 0x4b7744
00000000004b7a4c  0f1f4000                         nop dword ptr [rax]
00000000004b7a50  31c0                             xor eax, eax
00000000004b7a52  e809f2ffff                       call 0x4b6c60
00000000004b7a57  4883c408                         add rsp, 8
00000000004b7a5b  31c0                             xor eax, eax
00000000004b7a5d  5b                               pop rbx
00000000004b7a5e  5d                               pop rbp
00000000004b7a5f  c3                               ret 
00000000004b7a60  f2440f100547c11800               movsd xmm8, qword ptr [rip + 0x18c147]
00000000004b7a69  66410f28c0                       movapd xmm0, xmm8
00000000004b7a6e  e989feffff                       jmp 0x4b78fc
00000000004b7a73  e8b8f6ffff                       call 0x4b7130
