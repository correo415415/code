000000000043ea50  4156                             push r14
000000000043ea52  4155                             push r13
000000000043ea54  31ff                             xor edi, edi
000000000043ea56  4154                             push r12
000000000043ea58  55                               push rbp
000000000043ea59  53                               push rbx
000000000043ea5a  4883ec50                         sub rsp, 0x50
000000000043ea5e  448b356bed7b00                   mov r14d, dword ptr [rip + 0x7bed6b]
000000000043ea65  448b2d68ed7b00                   mov r13d, dword ptr [rip + 0x7bed68]
000000000043ea6c  660f6f058c951f00                 movdqa xmm0, xmmword ptr [rip + 0x1f958c]
000000000043ea74  64488b042528000000               mov rax, qword ptr fs:[0x28]
000000000043ea7d  4889442448                       mov qword ptr [rsp + 0x48], rax
000000000043ea82  31c0                             xor eax, eax
000000000043ea84  0f290424                         movaps xmmword ptr [rsp], xmm0
000000000043ea88  660f6f0580951f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9580]
000000000043ea90  0f29442410                       movaps xmmword ptr [rsp + 0x10], xmm0
000000000043ea95  660f6f0583951f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9583]
000000000043ea9d  0f29442420                       movaps xmmword ptr [rsp + 0x20], xmm0
000000000043eaa2  660f6f0586951f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9586]
000000000043eaaa  0f29442430                       movaps xmmword ptr [rsp + 0x30], xmm0
000000000043eaaf  e8bc1f0500                       call 0x490a70
000000000043eab4  bf01000000                       mov edi, 1
000000000043eab9  4189c4                           mov r12d, eax
000000000043eabc  e8af1f0500                       call 0x490a70
000000000043eac1  488b3540fc7b00                   mov rsi, qword ptr [rip + 0x7bfc40]
000000000043eac8  488d3d919d7900                   lea rdi, [rip + 0x799d91]
000000000043eacf  ba375f0000                       mov edx, 0x5f37
000000000043ead4  89c5                             mov ebp, eax
000000000043ead6  e8c5970300                       call 0x4782a0
000000000043eadb  488b3526fc7b00                   mov rsi, qword ptr [rip + 0x7bfc26]
000000000043eae2  488d3d779d7900                   lea rdi, [rip + 0x799d77]
000000000043eae9  41b880000000                     mov r8d, 0x80
000000000043eaef  31c9                             xor ecx, ecx
000000000043eaf1  ba005f0000                       mov edx, 0x5f00
000000000043eaf6  89c3                             mov ebx, eax
000000000043eaf8  e853c70300                       call 0x47b250
000000000043eafd  488b3504fc7b00                   mov rsi, qword ptr [rip + 0x7bfc04]
000000000043eb04  488d3d559d7900                   lea rdi, [rip + 0x799d55]
000000000043eb0b  31c9                             xor ecx, ecx
000000000043eb0d  ba545f0000                       mov edx, 0x5f54
000000000043eb12  e859900300                       call 0x477b70
000000000043eb17  488b35eafb7b00                   mov rsi, qword ptr [rip + 0x7bfbea]
000000000043eb1e  488d3d3b9d7900                   lea rdi, [rip + 0x799d3b]
000000000043eb25  b960000000                       mov ecx, 0x60
000000000043eb2a  ba555f0000                       mov edx, 0x5f55
000000000043eb2f  e83c900300                       call 0x477b70
000000000043eb34  488b35cdfb7b00                   mov rsi, qword ptr [rip + 0x7bfbcd]
000000000043eb3b  488d3d1e9d7900                   lea rdi, [rip + 0x799d1e]
000000000043eb42  b920000000                       mov ecx, 0x20
000000000043eb47  ba565f0000                       mov edx, 0x5f56
000000000043eb4c  e81f900300                       call 0x477b70
000000000043eb51  488b35b0fb7b00                   mov rsi, qword ptr [rip + 0x7bfbb0]
000000000043eb58  488d3d019d7900                   lea rdi, [rip + 0x799d01]
000000000043eb5f  b980000000                       mov ecx, 0x80
000000000043eb64  ba575f0000                       mov edx, 0x5f57
000000000043eb69  e802900300                       call 0x477b70
000000000043eb6e  31ff                             xor edi, edi
000000000043eb70  4489e6                           mov esi, r12d
000000000043eb73  44893556ec7b00                   mov dword ptr [rip + 0x7bec56], r14d
000000000043eb7a  44892d53ec7b00                   mov dword ptr [rip + 0x7bec53], r13d
000000000043eb81  e80a1f0500                       call 0x490a90
000000000043eb86  89ee                             mov esi, ebp
000000000043eb88  bf01000000                       mov edi, 1
000000000043eb8d  e8fe1e0500                       call 0x490a90
000000000043eb92  488b356ffb7b00                   mov rsi, qword ptr [rip + 0x7bfb6f]
000000000043eb99  488d3dc09c7900                   lea rdi, [rip + 0x799cc0]
000000000043eba0  89d9                             mov ecx, ebx
000000000043eba2  ba375f0000                       mov edx, 0x5f37
000000000043eba7  e8c48f0300                       call 0x477b70
000000000043ebac  660f6f058c941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f948c]
000000000043ebb4  48b800000000ff000000             movabs rax, 0xff00000000
000000000043ebbe  48890533ec7b00                   mov qword ptr [rip + 0x7bec33], rax
000000000043ebc5  48b80f0000000f000000             movabs rax, 0xf0000000f
000000000043ebcf  c705f7eb7b0000000000             mov dword ptr [rip + 0x7bebf7], 0
000000000043ebd9  0f110504ec7b00                   movups xmmword ptr [rip + 0x7bec04], xmm0
000000000043ebe0  48890519ec7b00                   mov qword ptr [rip + 0x7bec19], rax
000000000043ebe7  31c0                             xor eax, eax
000000000043ebe9  c705e5eb7b0000000000             mov dword ptr [rip + 0x7bebe5], 0
000000000043ebf3  660f6f0555941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9455]
000000000043ebfb  c705c7eb7b0006000000             mov dword ptr [rip + 0x7bebc7], 6
000000000043ec05  48c70500ec7b0000000000           mov qword ptr [rip + 0x7bec00], 0
000000000043ec10  0f1105e5ea7b00                   movups xmmword ptr [rip + 0x7beae5], xmm0
000000000043ec17  c705fbeb7b0000000000             mov dword ptr [rip + 0x7bebfb], 0
000000000043ec21  c705d1ea7b0010000000             mov dword ptr [rip + 0x7bead1], 0x10
000000000043ec2b  0f11050aeb7b00                   movups xmmword ptr [rip + 0x7beb0a], xmm0
000000000043ec32  660f6f0526941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9426]
000000000043ec3a  0f11053beb7b00                   movups xmmword ptr [rip + 0x7beb3b], xmm0
000000000043ec41  660f6f0527941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9427]
000000000043ec49  0f1105bcea7b00                   movups xmmword ptr [rip + 0x7beabc], xmm0
000000000043ec50  0f1105f5ea7b00                   movups xmmword ptr [rip + 0x7beaf5], xmm0
000000000043ec57  660f6f0521941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9421]
000000000043ec5f  0f110526eb7b00                   movups xmmword ptr [rip + 0x7beb26], xmm0
000000000043ec66  660f6f0522941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9422]
000000000043ec6e  0f1105a7ea7b00                   movups xmmword ptr [rip + 0x7beaa7], xmm0
000000000043ec75  0f1105e0ea7b00                   movups xmmword ptr [rip + 0x7beae0], xmm0
000000000043ec7c  660f6f051c941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f941c]
000000000043ec84  0f110511eb7b00                   movups xmmword ptr [rip + 0x7beb11], xmm0
000000000043ec8b  660f6f051d941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f941d]
000000000043ec93  0f110592ea7b00                   movups xmmword ptr [rip + 0x7bea92], xmm0
000000000043ec9a  0f1105cbea7b00                   movups xmmword ptr [rip + 0x7beacb], xmm0
000000000043eca1  660f6f0517941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9417]
000000000043eca9  0f1105fcea7b00                   movups xmmword ptr [rip + 0x7beafc], xmm0
000000000043ecb0  660f6f0518941f00                 movdqa xmm0, xmmword ptr [rip + 0x1f9418]
000000000043ecb8  0f1105fdea7b00                   movups xmmword ptr [rip + 0x7beafd], xmm0
000000000043ecbf  e84c2a0300                       call 0x471710
000000000043ecc4  31c0                             xor eax, eax
000000000043ecc6  c7053ceb7b0000000000             mov dword ptr [rip + 0x7beb3c], 0
000000000043ecd0  e8abff0600                       call 0x4aec80
000000000043ecd5  31c0                             xor eax, eax
000000000043ecd7  c605b6007d0000                   mov byte ptr [rip + 0x7d00b6], 0
000000000043ecde  c70590f07b0000000000             mov dword ptr [rip + 0x7bf090], 0
000000000043ece8  c7052a3a5a0000000000             mov dword ptr [rip + 0x5a3a2a], 0
000000000043ecf2  48c7051ffa7c0000000000           mov qword ptr [rip + 0x7cfa1f], 0
000000000043ecfd  c7051dfa7c0000000000             mov dword ptr [rip + 0x7cfa1d], 0
000000000043ed07  c705539b790000000000             mov dword ptr [rip + 0x799b53], 0
000000000043ed11  c70579027d0000000000             mov dword ptr [rip + 0x7d0279], 0
000000000043ed1b  e800670700                       call 0x4b5420
000000000043ed20  8b0562007d00                     mov eax, dword ptr [rip + 0x7d0062]
000000000043ed26  85c0                             test eax, eax
000000000043ed28  7514                             jne 0x43ed3e
000000000043ed2a  c7059c1e570000000000             mov dword ptr [rip + 0x571e9c], 0
000000000043ed34  c7059e1e570000000000             mov dword ptr [rip + 0x571e9e], 0
000000000043ed3e  31c0                             xor eax, eax
000000000043ed40  c705229b790000000000             mov dword ptr [rip + 0x799b22], 0
000000000043ed4a  c70508f07b0000000000             mov dword ptr [rip + 0x7bf008], 0
000000000043ed54  e8576a0700                       call 0x4b57b0
000000000043ed59  31c0                             xor eax, eax
000000000043ed5b  c705e3fa7c0000000000             mov dword ptr [rip + 0x7cfae3], 0
000000000043ed65  c60530027d0000                   mov byte ptr [rip + 0x7d0230], 0
000000000043ed6c  e8ff4d0300                       call 0x473b70
000000000043ed71  31c0                             xor eax, eax
000000000043ed73  e8184e0300                       call 0x473b90
000000000043ed78  488b442448                       mov rax, qword ptr [rsp + 0x48]
000000000043ed7d  644833042528000000               xor rax, qword ptr fs:[0x28]
000000000043ed86  c70594ea7b000d000000             mov dword ptr [rip + 0x7bea94], 0xd
000000000043ed90  750d                             jne 0x43ed9f
000000000043ed92  4883c450                         add rsp, 0x50
000000000043ed96  5b                               pop rbx
000000000043ed97  5d                               pop rbp
000000000043ed98  415c                             pop r12
000000000043ed9a  415d                             pop r13
000000000043ed9c  415e                             pop r14
000000000043ed9e  c3                               ret 
000000000043ed9f  e8fc52fcff                       call 0x4040a0
