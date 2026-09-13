00000000004c6970  4157                             push r15
00000000004c6972  4156                             push r14
00000000004c6974  4155                             push r13
00000000004c6976  4154                             push r12
00000000004c6978  55                               push rbp
00000000004c6979  53                               push rbx
00000000004c697a  4883ec58                         sub rsp, 0x58
00000000004c697e  64488b042528000000               mov rax, qword ptr fs:[0x28]
00000000004c6987  4889442448                       mov qword ptr [rsp + 0x48], rax
00000000004c698c  31c0                             xor eax, eax
00000000004c698e  4885f6                           test rsi, rsi
00000000004c6991  0f8469240000                     je 0x4c8e00
00000000004c6997  31ff                             xor edi, edi
00000000004c6999  4989f7                           mov r15, rsi
00000000004c699c  e83f5affff                       call 0x4bc3e0
00000000004c69a1  4885c0                           test rax, rax
00000000004c69a4  4889442418                       mov qword ptr [rsp + 0x18], rax
00000000004c69a9  0f8421090000                     je 0x4c72d0
00000000004c69af  458b37                           mov r14d, dword ptr [r15]
00000000004c69b2  c744241400000000                 mov dword ptr [rsp + 0x14], 0
00000000004c69ba  4c89fb                           mov rbx, r15
00000000004c69bd  0f1f00                           nop dword ptr [rax]
00000000004c69c0  4585f6                           test r14d, r14d
00000000004c69c3  7443                             je 0x4c6a08
00000000004c69c5  4183fe01                         cmp r14d, 1
00000000004c69c9  0f84b9010000                     je 0x4c6b88
00000000004c69cf  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c69d4  8b4820                           mov ecx, dword ptr [rax + 0x20]
00000000004c69d7  85c9                             test ecx, ecx
00000000004c69d9  0f84cb270000                     je 0x4c91aa
00000000004c69df  488b7c2448                       mov rdi, qword ptr [rsp + 0x48]
00000000004c69e4  6448333c2528000000               xor rdi, qword ptr fs:[0x28]
00000000004c69ed  0f85bb290000                     jne 0x4c93ae
00000000004c69f3  4883c458                         add rsp, 0x58
00000000004c69f7  5b                               pop rbx
00000000004c69f8  5d                               pop rbp
00000000004c69f9  415c                             pop r12
00000000004c69fb  415d                             pop r13
00000000004c69fd  415e                             pop r14
00000000004c69ff  415f                             pop r15
00000000004c6a01  c3                               ret 
00000000004c6a02  660f1f440000                     nop word ptr [rax + rax]
00000000004c6a08  488b7b08                         mov rdi, qword ptr [rbx + 8]
00000000004c6a0c  e8dfd7f3ff                       call 0x4041f0
00000000004c6a11  89c5                             mov ebp, eax
00000000004c6a13  85ed                             test ebp, ebp
00000000004c6a15  75b8                             jne 0x4c69cf
00000000004c6a17  8b03                             mov eax, dword ptr [rbx]
00000000004c6a19  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6a21  85c0                             test eax, eax
00000000004c6a23  0f850f080000                     jne 0x4c7238
00000000004c6a29  488d442444                       lea rax, [rsp + 0x44]
00000000004c6a2e  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6a32  ba01000000                       mov edx, 1
00000000004c6a37  be04000000                       mov esi, 4
00000000004c6a3c  4889c7                           mov rdi, rax
00000000004c6a3f  4889442408                       mov qword ptr [rsp + 8], rax
00000000004c6a44  e897d5f3ff                       call 0x403fe0
00000000004c6a49  448b742444                       mov r14d, dword ptr [rsp + 0x44]
00000000004c6a4e  4585f6                           test r14d, r14d
00000000004c6a51  0f8478ffffff                     je 0x4c69cf
00000000004c6a57  8b03                             mov eax, dword ptr [rbx]
00000000004c6a59  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6a61  85c0                             test eax, eax
00000000004c6a63  0f8537010000                     jne 0x4c6ba0
00000000004c6a69  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6a6d  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6a72  ba01000000                       mov edx, 1
00000000004c6a77  be04000000                       mov esi, 4
00000000004c6a7c  e85fd5f3ff                       call 0x403fe0
00000000004c6a81  448b642444                       mov r12d, dword ptr [rsp + 0x44]
00000000004c6a86  8b442414                         mov eax, dword ptr [rsp + 0x14]
00000000004c6a8a  85c0                             test eax, eax
00000000004c6a8c  750d                             jne 0x4c6a9b
00000000004c6a8e  4181fe43504f44                   cmp r14d, 0x444f5043
00000000004c6a95  0f8535080000                     jne 0x4c72d0
00000000004c6a9b  8b442414                         mov eax, dword ptr [rsp + 0x14]
00000000004c6a9f  85c0                             test eax, eax
00000000004c6aa1  0f8451010000                     je 0x4c6bf8
00000000004c6aa7  4181fe43504f44                   cmp r14d, 0x444f5043
00000000004c6aae  0f84ec1c0000                     je 0x4c87a0
00000000004c6ab4  4181fe434e4f50                   cmp r14d, 0x504f4e43
00000000004c6abb  0f84df1c0000                     je 0x4c87a0
00000000004c6ac1  4489f0                           mov eax, r14d
00000000004c6ac4  83e0df                           and eax, 0xffffffdf
00000000004c6ac7  3d43424d50                       cmp eax, 0x504d4243
00000000004c6acc  0f84de010000                     je 0x4c6cb0
00000000004c6ad2  3d43564d50                       cmp eax, 0x504d5643
00000000004c6ad7  0f842b030000                     je 0x4c6e08
00000000004c6add  4181fe4350414c                   cmp r14d, 0x4c415043
00000000004c6ae4  0f842e060000                     je 0x4c7118
00000000004c6aea  4181fe434d4f44                   cmp r14d, 0x444f4d43
00000000004c6af1  0f84290d0000                     je 0x4c7820
00000000004c6af7  4181fe434d4154                   cmp r14d, 0x54414d43
00000000004c6afe  0f848c070000                     je 0x4c7290
00000000004c6b04  4181fe43414e49                   cmp r14d, 0x494e4143
00000000004c6b0b  0f84df070000                     je 0x4c72f0
00000000004c6b11  4181fe43534e44                   cmp r14d, 0x444e5343
00000000004c6b18  0f845a060000                     je 0x4c7178
00000000004c6b1e  4181fe4353594e                   cmp r14d, 0x4e595343
00000000004c6b25  0f84951c0000                     je 0x4c87c0
00000000004c6b2b  3d4346494c                       cmp eax, 0x4c494643
00000000004c6b30  0f846a0c0000                     je 0x4c77a0
00000000004c6b36  488b059b344e00                   mov rax, qword ptr [rip + 0x4e349b]
00000000004c6b3d  4885c0                           test rax, rax
00000000004c6b40  7415                             je 0x4c6b57
00000000004c6b42  4489f2                           mov edx, r14d
00000000004c6b45  488b742418                       mov rsi, qword ptr [rsp + 0x18]
00000000004c6b4a  4889df                           mov rdi, rbx
00000000004c6b4d  ffd0                             call rax
00000000004c6b4f  85c0                             test eax, eax
00000000004c6b51  0f8492060000                     je 0x4c71e9
00000000004c6b57  488d3d02d41700                   lea rdi, [rip + 0x17d402]
00000000004c6b5e  e8bdfefeff                       call 0x4b6a20
00000000004c6b63  448b33                           mov r14d, dword ptr [rbx]
00000000004c6b66  4585f6                           test r14d, r14d
00000000004c6b69  0f8469060000                     je 0x4c71d8
00000000004c6b6f  4183fe01                         cmp r14d, 1
00000000004c6b73  0f8582020000                     jne 0x4c6dfb
00000000004c6b79  4401631c                         add dword ptr [rbx + 0x1c], r12d
00000000004c6b7d  8344241401                       add dword ptr [rsp + 0x14], 1
00000000004c6b82  660f1f440000                     nop word ptr [rax + rax]
00000000004c6b88  31ed                             xor ebp, ebp
00000000004c6b8a  8b4318                           mov eax, dword ptr [rbx + 0x18]
00000000004c6b8d  39431c                           cmp dword ptr [rbx + 0x1c], eax
00000000004c6b90  400f9dc5                         setge bpl
00000000004c6b94  e97afeffff                       jmp 0x4c6a13
00000000004c6b99  0f1f8000000000                   nop dword ptr [rax]
00000000004c6ba0  4531e4                           xor r12d, r12d
00000000004c6ba3  83f801                           cmp eax, 1
00000000004c6ba6  0f85dafeffff                     jne 0x4c6a86
00000000004c6bac  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c6bb0  448b6b18                         mov r13d, dword ptr [rbx + 0x18]
00000000004c6bb4  b804000000                       mov eax, 4
00000000004c6bb9  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6bbe  b904000000                       mov ecx, 4
00000000004c6bc3  4129f5                           sub r13d, esi
00000000004c6bc6  4989f7                           mov r15, rsi
00000000004c6bc9  4183fd04                         cmp r13d, 4
00000000004c6bcd  440f4fe8                         cmovg r13d, eax
00000000004c6bd1  4585ed                           test r13d, r13d
00000000004c6bd4  450f48ec                         cmovs r13d, r12d
00000000004c6bd8  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c6bdc  4963d5                           movsxd rdx, r13d
00000000004c6bdf  4501fd                           add r13d, r15d
00000000004c6be2  e8b9cff3ff                       call 0x403ba0
00000000004c6be7  44896b1c                         mov dword ptr [rbx + 0x1c], r13d
00000000004c6beb  448b642444                       mov r12d, dword ptr [rsp + 0x44]
00000000004c6bf0  e991feffff                       jmp 0x4c6a86
00000000004c6bf5  0f1f00                           nop dword ptr [rax]
00000000004c6bf8  4181fe43504f44                   cmp r14d, 0x444f5043
00000000004c6bff  0f85bcfeffff                     jne 0x4c6ac1
00000000004c6c05  448b33                           mov r14d, dword ptr [rbx]
00000000004c6c08  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6c10  4585f6                           test r14d, r14d
00000000004c6c13  0f85df030000                     jne 0x4c6ff8
00000000004c6c19  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6c1e  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6c22  ba01000000                       mov edx, 1
00000000004c6c27  be04000000                       mov esi, 4
00000000004c6c2c  e8afd3f3ff                       call 0x403fe0
00000000004c6c31  448b33                           mov r14d, dword ptr [rbx]
00000000004c6c34  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c6c39  4585f6                           test r14d, r14d
00000000004c6c3c  488d7830                         lea rdi, [rax + 0x30]
00000000004c6c40  0f8518270000                     jne 0x4c935e
00000000004c6c46  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6c4a  ba20000000                       mov edx, 0x20
00000000004c6c4f  be01000000                       mov esi, 1
00000000004c6c54  e887d3f3ff                       call 0x403fe0
00000000004c6c59  448b33                           mov r14d, dword ptr [rbx]
00000000004c6c5c  4585f6                           test r14d, r14d
00000000004c6c5f  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6c67  0f8595030000                     jne 0x4c7002
00000000004c6c6d  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6c71  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6c76  ba01000000                       mov edx, 1
00000000004c6c7b  be04000000                       mov esi, 4
00000000004c6c80  e85bd3f3ff                       call 0x403fe0
00000000004c6c85  448b33                           mov r14d, dword ptr [rbx]
00000000004c6c88  4585f6                           test r14d, r14d
00000000004c6c8b  0f8587050000                     jne 0x4c7218
00000000004c6c91  488b7b08                         mov rdi, qword ptr [rbx + 8]
00000000004c6c95  ba01000000                       mov edx, 1
00000000004c6c9a  be1c000000                       mov esi, 0x1c
00000000004c6c9f  e8dccdf3ff                       call 0x403a80
00000000004c6ca4  448b33                           mov r14d, dword ptr [rbx]
00000000004c6ca7  e94f010000                       jmp 0x4c6dfb
00000000004c6cac  0f1f4000                         nop dword ptr [rax]
00000000004c6cb0  448b3b                           mov r15d, dword ptr [rbx]
00000000004c6cb3  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6cbb  4585ff                           test r15d, r15d
00000000004c6cbe  0f850c030000                     jne 0x4c6fd0
00000000004c6cc4  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6cc8  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6ccd  ba01000000                       mov edx, 1
00000000004c6cd2  be04000000                       mov esi, 4
00000000004c6cd7  e804d3f3ff                       call 0x403fe0
00000000004c6cdc  8b03                             mov eax, dword ptr [rbx]
00000000004c6cde  448b6c2444                       mov r13d, dword ptr [rsp + 0x44]
00000000004c6ce3  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6ceb  85c0                             test eax, eax
00000000004c6ced  0f8557260000                     jne 0x4c934a
00000000004c6cf3  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6cf7  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6cfc  ba01000000                       mov edx, 1
00000000004c6d01  be04000000                       mov esi, 4
00000000004c6d06  e8d5d2f3ff                       call 0x403fe0
00000000004c6d0b  448b3b                           mov r15d, dword ptr [rbx]
00000000004c6d0e  448b4c2444                       mov r9d, dword ptr [rsp + 0x44]
00000000004c6d13  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6d1b  4585ff                           test r15d, r15d
00000000004c6d1e  0f85bc020000                     jne 0x4c6fe0
00000000004c6d24  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6d28  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6d2d  ba01000000                       mov edx, 1
00000000004c6d32  be04000000                       mov esi, 4
00000000004c6d37  44894c2420                       mov dword ptr [rsp + 0x20], r9d
00000000004c6d3c  e89fd2f3ff                       call 0x403fe0
00000000004c6d41  448b7c2444                       mov r15d, dword ptr [rsp + 0x44]
00000000004c6d46  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c6d4b  4589fc                           mov r12d, r15d
00000000004c6d4e  41c1fc03                         sar r12d, 3
00000000004c6d52  450fafe5                         imul r12d, r13d
00000000004c6d56  450fafe1                         imul r12d, r9d
00000000004c6d5a  4489ef                           mov edi, r13d
00000000004c6d5d  4489fa                           mov edx, r15d
00000000004c6d60  4489ce                           mov esi, r9d
00000000004c6d63  e8f81effff                       call 0x4b8c60
00000000004c6d68  4989c5                           mov r13, rax
00000000004c6d6b  8b03                             mov eax, dword ptr [rbx]
00000000004c6d6d  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6d75  85c0                             test eax, eax
00000000004c6d77  0f85e3010000                     jne 0x4c6f60
00000000004c6d7d  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6d81  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6d86  ba01000000                       mov edx, 1
00000000004c6d8b  be04000000                       mov esi, 4
00000000004c6d90  e84bd2f3ff                       call 0x403fe0
00000000004c6d95  8b03                             mov eax, dword ptr [rbx]
00000000004c6d97  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c6d9b  85c0                             test eax, eax
00000000004c6d9d  41895520                         mov dword ptr [r13 + 0x20], edx
00000000004c6da1  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6da9  0f85e3250000                     jne 0x4c9392
00000000004c6daf  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6db3  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6db8  ba01000000                       mov edx, 1
00000000004c6dbd  be04000000                       mov esi, 4
00000000004c6dc2  e819d2f3ff                       call 0x403fe0
00000000004c6dc7  4181fe63424d50                   cmp r14d, 0x504d4263
00000000004c6dce  4d8b7d10                         mov r15, qword ptr [r13 + 0x10]
00000000004c6dd2  0f84aa010000                     je 0x4c6f82
00000000004c6dd8  4889da                           mov rdx, rbx
00000000004c6ddb  4489e6                           mov esi, r12d
00000000004c6dde  4c89ff                           mov rdi, r15
00000000004c6de1  e84a94ffff                       call 0x4c0230
00000000004c6de6  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c6deb  4c89ea                           mov rdx, r13
00000000004c6dee  be04000000                       mov esi, 4
00000000004c6df3  e8585fffff                       call 0x4bcd50
00000000004c6df8  448b33                           mov r14d, dword ptr [rbx]
00000000004c6dfb  8344241401                       add dword ptr [rsp + 0x14], 1
00000000004c6e00  e9bbfbffff                       jmp 0x4c69c0
00000000004c6e05  0f1f00                           nop dword ptr [rax]
00000000004c6e08  448b3b                           mov r15d, dword ptr [rbx]
00000000004c6e0b  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6e13  4585ff                           test r15d, r15d
00000000004c6e16  0f85d4020000                     jne 0x4c70f0
00000000004c6e1c  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6e20  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6e25  ba01000000                       mov edx, 1
00000000004c6e2a  be04000000                       mov esi, 4
00000000004c6e2f  e8acd1f3ff                       call 0x403fe0
00000000004c6e34  8b03                             mov eax, dword ptr [rbx]
00000000004c6e36  448b642444                       mov r12d, dword ptr [rsp + 0x44]
00000000004c6e3b  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6e43  85c0                             test eax, eax
00000000004c6e45  0f8590240000                     jne 0x4c92db
00000000004c6e4b  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6e4f  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6e54  ba01000000                       mov edx, 1
00000000004c6e59  be04000000                       mov esi, 4
00000000004c6e5e  e87dd1f3ff                       call 0x403fe0
00000000004c6e63  448b3b                           mov r15d, dword ptr [rbx]
00000000004c6e66  448b4c2444                       mov r9d, dword ptr [rsp + 0x44]
00000000004c6e6b  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6e73  4585ff                           test r15d, r15d
00000000004c6e76  0f8584020000                     jne 0x4c7100
00000000004c6e7c  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6e80  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6e85  ba01000000                       mov edx, 1
00000000004c6e8a  be04000000                       mov esi, 4
00000000004c6e8f  44894c2420                       mov dword ptr [rsp + 0x20], r9d
00000000004c6e94  e847d1f3ff                       call 0x403fe0
00000000004c6e99  448b7c2444                       mov r15d, dword ptr [rsp + 0x44]
00000000004c6e9e  4589e5                           mov r13d, r12d
00000000004c6ea1  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c6ea6  450fafef                         imul r13d, r15d
00000000004c6eaa  450fafe9                         imul r13d, r9d
00000000004c6eae  4489e7                           mov edi, r12d
00000000004c6eb1  4489fa                           mov edx, r15d
00000000004c6eb4  4489ce                           mov esi, r9d
00000000004c6eb7  e8e40dffff                       call 0x4b7ca0
00000000004c6ebc  4989c4                           mov r12, rax
00000000004c6ebf  8b03                             mov eax, dword ptr [rbx]
00000000004c6ec1  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6ec9  85c0                             test eax, eax
00000000004c6ecb  0f859f010000                     jne 0x4c7070
00000000004c6ed1  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6ed5  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6eda  ba01000000                       mov edx, 1
00000000004c6edf  be04000000                       mov esi, 4
00000000004c6ee4  e8f7d0f3ff                       call 0x403fe0
00000000004c6ee9  8b03                             mov eax, dword ptr [rbx]
00000000004c6eeb  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c6eef  85c0                             test eax, eax
00000000004c6ef1  4189542420                       mov dword ptr [r12 + 0x20], edx
00000000004c6ef6  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6efe  0f859c240000                     jne 0x4c93a0
00000000004c6f04  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c6f08  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c6f0d  ba01000000                       mov edx, 1
00000000004c6f12  be04000000                       mov esi, 4
00000000004c6f17  e8c4d0f3ff                       call 0x403fe0
00000000004c6f1c  4181fe63564d50                   cmp r14d, 0x504d5663
00000000004c6f23  4d8b7c2410                       mov r15, qword ptr [r12 + 0x10]
00000000004c6f28  0f8466010000                     je 0x4c7094
00000000004c6f2e  4889da                           mov rdx, rbx
00000000004c6f31  4489ee                           mov esi, r13d
00000000004c6f34  4c89ff                           mov rdi, r15
00000000004c6f37  e8f492ffff                       call 0x4c0230
00000000004c6f3c  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c6f41  4c89e2                           mov rdx, r12
00000000004c6f44  be0a000000                       mov esi, 0xa
00000000004c6f49  e8025effff                       call 0x4bcd50
00000000004c6f4e  448b33                           mov r14d, dword ptr [rbx]
00000000004c6f51  e9a5feffff                       jmp 0x4c6dfb
00000000004c6f56  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004c6f60  83f801                           cmp eax, 1
00000000004c6f63  0f84e70e0000                     je 0x4c7e50
00000000004c6f69  4181fe63424d50                   cmp r14d, 0x504d4263
00000000004c6f70  41c7452000000000                 mov dword ptr [r13 + 0x20], 0
00000000004c6f78  4d8b7d10                         mov r15, qword ptr [r13 + 0x10]
00000000004c6f7c  0f8556feffff                     jne 0x4c6dd8
00000000004c6f82  8b03                             mov eax, dword ptr [rbx]
00000000004c6f84  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c6f8c  85c0                             test eax, eax
00000000004c6f8e  0f84bc010000                     je 0x4c7150
00000000004c6f94  83f801                           cmp eax, 1
00000000004c6f97  0f84411f0000                     je 0x4c8ede
00000000004c6f9d  89ef                             mov edi, ebp
00000000004c6f9f  e8ec8a0200                       call 0x4efa90
00000000004c6fa4  4889da                           mov rdx, rbx
00000000004c6fa7  4989c6                           mov r14, rax
00000000004c6faa  89ee                             mov esi, ebp
00000000004c6fac  4889c7                           mov rdi, rax
00000000004c6faf  e87c92ffff                       call 0x4c0230
00000000004c6fb4  4489e1                           mov ecx, r12d
00000000004c6fb7  89ea                             mov edx, ebp
00000000004c6fb9  4c89fe                           mov rsi, r15
00000000004c6fbc  4c89f7                           mov rdi, r14
00000000004c6fbf  e82cd50200                       call 0x4f44f0
00000000004c6fc4  e91dfeffff                       jmp 0x4c6de6
00000000004c6fc9  0f1f8000000000                   nop dword ptr [rax]
00000000004c6fd0  4531c9                           xor r9d, r9d
00000000004c6fd3  4531ed                           xor r13d, r13d
00000000004c6fd6  4183ff01                         cmp r15d, 1
00000000004c6fda  0f84800d0000                     je 0x4c7d60
00000000004c6fe0  4183ff01                         cmp r15d, 1
00000000004c6fe4  0f84130e0000                     je 0x4c7dfd
00000000004c6fea  4531e4                           xor r12d, r12d
00000000004c6fed  4531ff                           xor r15d, r15d
00000000004c6ff0  e965fdffff                       jmp 0x4c6d5a
00000000004c6ff5  0f1f00                           nop dword ptr [rax]
00000000004c6ff8  4183fe01                         cmp r14d, 1
00000000004c6ffc  0f846e0f0000                     je 0x4c7f70
00000000004c7002  4183fe01                         cmp r14d, 1
00000000004c7006  0f85effdffff                     jne 0x4c6dfb
00000000004c700c  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7010  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c7013  b804000000                       mov eax, 4
00000000004c7018  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c701d  b904000000                       mov ecx, 4
00000000004c7022  29f5                             sub ebp, esi
00000000004c7024  4989f4                           mov r12, rsi
00000000004c7027  83fd04                           cmp ebp, 4
00000000004c702a  0f4fe8                           cmovg ebp, eax
00000000004c702d  b800000000                       mov eax, 0
00000000004c7032  85ed                             test ebp, ebp
00000000004c7034  0f48e8                           cmovs ebp, eax
00000000004c7037  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c703b  4863d5                           movsxd rdx, ebp
00000000004c703e  4401e5                           add ebp, r12d
00000000004c7041  e85acbf3ff                       call 0x403ba0
00000000004c7046  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c7049  83431c1c                         add dword ptr [rbx + 0x1c], 0x1c
00000000004c704d  c744241401000000                 mov dword ptr [rsp + 0x14], 1
00000000004c7055  31ed                             xor ebp, ebp
00000000004c7057  8b4318                           mov eax, dword ptr [rbx + 0x18]
00000000004c705a  39431c                           cmp dword ptr [rbx + 0x1c], eax
00000000004c705d  400f9dc5                         setge bpl
00000000004c7061  e9adf9ffff                       jmp 0x4c6a13
00000000004c7066  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004c7070  83f801                           cmp eax, 1
00000000004c7073  0f849f0f0000                     je 0x4c8018
00000000004c7079  4181fe63564d50                   cmp r14d, 0x504d5663
00000000004c7080  41c744242000000000               mov dword ptr [r12 + 0x20], 0
00000000004c7089  4d8b7c2410                       mov r15, qword ptr [r12 + 0x10]
00000000004c708e  0f859afeffff                     jne 0x4c6f2e
00000000004c7094  8b03                             mov eax, dword ptr [rbx]
00000000004c7096  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c709e  85c0                             test eax, eax
00000000004c70a0  0f855a0e0000                     jne 0x4c7f00
00000000004c70a6  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c70aa  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c70af  ba01000000                       mov edx, 1
00000000004c70b4  be04000000                       mov esi, 4
00000000004c70b9  e822cff3ff                       call 0x403fe0
00000000004c70be  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c70c2  89ef                             mov edi, ebp
00000000004c70c4  e8c7890200                       call 0x4efa90
00000000004c70c9  4889da                           mov rdx, rbx
00000000004c70cc  4989c6                           mov r14, rax
00000000004c70cf  89ee                             mov esi, ebp
00000000004c70d1  4889c7                           mov rdi, rax
00000000004c70d4  e85791ffff                       call 0x4c0230
00000000004c70d9  4489e9                           mov ecx, r13d
00000000004c70dc  89ea                             mov edx, ebp
00000000004c70de  4c89fe                           mov rsi, r15
00000000004c70e1  4c89f7                           mov rdi, r14
00000000004c70e4  e807d40200                       call 0x4f44f0
00000000004c70e9  e94efeffff                       jmp 0x4c6f3c
00000000004c70ee  6690                             nop 
00000000004c70f0  4531c9                           xor r9d, r9d
00000000004c70f3  4531e4                           xor r12d, r12d
00000000004c70f6  4183ff01                         cmp r15d, 1
00000000004c70fa  0f84c80f0000                     je 0x4c80c8
00000000004c7100  4183ff01                         cmp r15d, 1
00000000004c7104  0f845b100000                     je 0x4c8165
00000000004c710a  4531ed                           xor r13d, r13d
00000000004c710d  4531ff                           xor r15d, r15d
00000000004c7110  e999fdffff                       jmp 0x4c6eae
00000000004c7115  0f1f00                           nop dword ptr [rax]
00000000004c7118  31c0                             xor eax, eax
00000000004c711a  e8f109ffff                       call 0x4b7b10
00000000004c711f  4889c5                           mov rbp, rax
00000000004c7122  8b03                             mov eax, dword ptr [rbx]
00000000004c7124  85c0                             test eax, eax
00000000004c7126  0f84cc000000                     je 0x4c71f8
00000000004c712c  83f801                           cmp eax, 1
00000000004c712f  0f84921f0000                     je 0x4c90c7
00000000004c7135  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c713a  4889ea                           mov rdx, rbp
00000000004c713d  be05000000                       mov esi, 5
00000000004c7142  e8095cffff                       call 0x4bcd50
00000000004c7147  448b33                           mov r14d, dword ptr [rbx]
00000000004c714a  e9acfcffff                       jmp 0x4c6dfb
00000000004c714f  90                               nop 
00000000004c7150  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c7154  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7159  ba01000000                       mov edx, 1
00000000004c715e  be04000000                       mov esi, 4
00000000004c7163  e878cef3ff                       call 0x403fe0
00000000004c7168  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c716c  e92cfeffff                       jmp 0x4c6f9d
00000000004c7171  0f1f8000000000                   nop dword ptr [rax]
00000000004c7178  4c8b7c2408                       mov r15, qword ptr [rsp + 8]
00000000004c717d  4889da                           mov rdx, rbx
00000000004c7180  be01000000                       mov esi, 1
00000000004c7185  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c718d  4c89ff                           mov rdi, r15
00000000004c7190  e82b90ffff                       call 0x4c01c0
00000000004c7195  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c7199  4889da                           mov rdx, rbx
00000000004c719c  be01000000                       mov esi, 1
00000000004c71a1  4c89ff                           mov rdi, r15
00000000004c71a4  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c71ac  e80f90ffff                       call 0x4c01c0
00000000004c71b1  8b742444                         mov esi, dword ptr [rsp + 0x44]
00000000004c71b5  89ef                             mov edi, ebp
00000000004c71b7  e814c10300                       call 0x5032d0
00000000004c71bc  4885c0                           test rax, rax
00000000004c71bf  4889c5                           mov rbp, rax
00000000004c71c2  0f85f00f0000                     jne 0x4c81b8
00000000004c71c8  448b33                           mov r14d, dword ptr [rbx]
00000000004c71cb  4183ec08                         sub r12d, 8
00000000004c71cf  4585f6                           test r14d, r14d
00000000004c71d2  0f8597f9ffff                     jne 0x4c6b6f
00000000004c71d8  488b7b08                         mov rdi, qword ptr [rbx + 8]
00000000004c71dc  4963f4                           movsxd rsi, r12d
00000000004c71df  ba01000000                       mov edx, 1
00000000004c71e4  e897c8f3ff                       call 0x403a80
00000000004c71e9  448b33                           mov r14d, dword ptr [rbx]
00000000004c71ec  e90afcffff                       jmp 0x4c6dfb
00000000004c71f1  0f1f8000000000                   nop dword ptr [rax]
00000000004c71f8  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c71fc  ba00030000                       mov edx, 0x300
00000000004c7201  be01000000                       mov esi, 1
00000000004c7206  4889ef                           mov rdi, rbp
00000000004c7209  e8d2cdf3ff                       call 0x403fe0
00000000004c720e  e922ffffff                       jmp 0x4c7135
00000000004c7213  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7218  4183fe01                         cmp r14d, 1
00000000004c721c  0f85d9fbffff                     jne 0x4c6dfb
00000000004c7222  83431c1c                         add dword ptr [rbx + 0x1c], 0x1c
00000000004c7226  c744241401000000                 mov dword ptr [rsp + 0x14], 1
00000000004c722e  e922feffff                       jmp 0x4c7055
00000000004c7233  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7238  83f801                           cmp eax, 1
00000000004c723b  0f858ef7ffff                     jne 0x4c69cf
00000000004c7241  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7245  448b6318                         mov r12d, dword ptr [rbx + 0x18]
00000000004c7249  b804000000                       mov eax, 4
00000000004c724e  b904000000                       mov ecx, 4
00000000004c7253  4129f4                           sub r12d, esi
00000000004c7256  4989f5                           mov r13, rsi
00000000004c7259  4183fc04                         cmp r12d, 4
00000000004c725d  440f4fe0                         cmovg r12d, eax
00000000004c7261  488d442444                       lea rax, [rsp + 0x44]
00000000004c7266  4585e4                           test r12d, r12d
00000000004c7269  440f48e5                         cmovs r12d, ebp
00000000004c726d  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7271  4889c7                           mov rdi, rax
00000000004c7274  4963d4                           movsxd rdx, r12d
00000000004c7277  4501ec                           add r12d, r13d
00000000004c727a  4889442408                       mov qword ptr [rsp + 8], rax
00000000004c727f  e81cc9f3ff                       call 0x403ba0
00000000004c7284  4489631c                         mov dword ptr [rbx + 0x1c], r12d
00000000004c7288  e9bcf7ffff                       jmp 0x4c6a49
00000000004c728d  0f1f00                           nop dword ptr [rax]
00000000004c7290  31c0                             xor eax, eax
00000000004c7292  e8d9600000                       call 0x4cd370
00000000004c7297  4889c5                           mov rbp, rax
00000000004c729a  8b03                             mov eax, dword ptr [rbx]
00000000004c729c  85c0                             test eax, eax
00000000004c729e  0f84ac0c0000                     je 0x4c7f50
00000000004c72a4  83f801                           cmp eax, 1
00000000004c72a7  0f84b11e0000                     je 0x4c915e
00000000004c72ad  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c72b2  4889ea                           mov rdx, rbp
00000000004c72b5  be07000000                       mov esi, 7
00000000004c72ba  e8915affff                       call 0x4bcd50
00000000004c72bf  448b33                           mov r14d, dword ptr [rbx]
00000000004c72c2  e934fbffff                       jmp 0x4c6dfb
00000000004c72c7  660f1f840000000000               nop word ptr [rax + rax]
00000000004c72d0  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c72d5  e80654ffff                       call 0x4bc6e0
00000000004c72da  48c744241800000000               mov qword ptr [rsp + 0x18], 0
00000000004c72e3  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c72e8  e9f2f6ffff                       jmp 0x4c69df
00000000004c72ed  0f1f00                           nop dword ptr [rax]
00000000004c72f0  31c0                             xor eax, eax
00000000004c72f2  41bd05000000                     mov r13d, 5
00000000004c72f8  41bc04000000                     mov r12d, 4
00000000004c72fe  e81d7c0000                       call 0x4cef20
00000000004c7303  4c8b742408                       mov r14, qword ptr [rsp + 8]
00000000004c7308  4889da                           mov rdx, rbx
00000000004c730b  be01000000                       mov esi, 1
00000000004c7310  4989c7                           mov r15, rax
00000000004c7313  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c731b  4c89f7                           mov rdi, r14
00000000004c731e  e89d8effff                       call 0x4c01c0
00000000004c7323  4889da                           mov rdx, rbx
00000000004c7326  be01000000                       mov esi, 1
00000000004c732b  4c89f7                           mov rdi, r14
00000000004c732e  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c7332  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c733a  e8818effff                       call 0x4c01c0
00000000004c733f  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c7343  4889da                           mov rdx, rbx
00000000004c7346  be01000000                       mov esi, 1
00000000004c734b  4c89f7                           mov rdi, r14
00000000004c734e  41894710                         mov dword ptr [r15 + 0x10], eax
00000000004c7352  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c735a  e8618effff                       call 0x4c01c0
00000000004c735f  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c7363  41894714                         mov dword ptr [r15 + 0x14], eax
00000000004c7367  8b03                             mov eax, dword ptr [rbx]
00000000004c7369  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7371  85c0                             test eax, eax
00000000004c7373  0f8557030000                     jne 0x4c76d0
00000000004c7379  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c737d  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7382  ba01000000                       mov edx, 1
00000000004c7387  be04000000                       mov esi, 4
00000000004c738c  e84fccf3ff                       call 0x403fe0
00000000004c7391  4183ed01                         sub r13d, 1
00000000004c7395  75d0                             jne 0x4c7367
00000000004c7397  85ed                             test ebp, ebp
00000000004c7399  0f8e9e020000                     jle 0x4c763d
00000000004c739f  8d45ff                           lea eax, [rbp - 1]
00000000004c73a2  4c8b642408                       mov r12, qword ptr [rsp + 8]
00000000004c73a7  4531f6                           xor r14d, r14d
00000000004c73aa  4c897c2420                       mov qword ptr [rsp + 0x20], r15
00000000004c73af  4989df                           mov r15, rbx
00000000004c73b2  4c89f3                           mov rbx, r14
00000000004c73b5  4883c001                         add rax, 1
00000000004c73b9  4889c2                           mov rdx, rax
00000000004c73bc  48c1e204                         shl rdx, 4
00000000004c73c0  4801d0                           add rax, rdx
00000000004c73c3  48c1e003                         shl rax, 3
00000000004c73c7  4889442428                       mov qword ptr [rsp + 0x28], rax
00000000004c73cc  0f1f4000                         nop dword ptr [rax]
00000000004c73d0  4c8b742420                       mov r14, qword ptr [rsp + 0x20]
00000000004c73d5  4c89f7                           mov rdi, r14
00000000004c73d8  e8c37c0000                       call 0x4cf0a0
00000000004c73dd  418b17                           mov edx, dword ptr [r15]
00000000004c73e0  498b6e08                         mov rbp, qword ptr [r14 + 8]
00000000004c73e4  4801dd                           add rbp, rbx
00000000004c73e7  85d2                             test edx, edx
00000000004c73e9  89d0                             mov eax, edx
00000000004c73eb  0f856f020000                     jne 0x4c7660
00000000004c73f1  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c73f5  ba20000000                       mov edx, 0x20
00000000004c73fa  4889ef                           mov rdi, rbp
00000000004c73fd  be01000000                       mov esi, 1
00000000004c7402  e8d9cbf3ff                       call 0x403fe0
00000000004c7407  418b17                           mov edx, dword ptr [r15]
00000000004c740a  488d7d20                         lea rdi, [rbp + 0x20]
00000000004c740e  85d2                             test edx, edx
00000000004c7410  89d0                             mov eax, edx
00000000004c7412  0f8578120000                     jne 0x4c8690
00000000004c7418  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c741c  ba20000000                       mov edx, 0x20
00000000004c7421  be01000000                       mov esi, 1
00000000004c7426  e8b5cbf3ff                       call 0x403fe0
00000000004c742b  418b07                           mov eax, dword ptr [r15]
00000000004c742e  85c0                             test eax, eax
00000000004c7430  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7438  0f85f20f0000                     jne 0x4c8430
00000000004c743e  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c7442  ba01000000                       mov edx, 1
00000000004c7447  be04000000                       mov esi, 4
00000000004c744c  4c89e7                           mov rdi, r12
00000000004c744f  e88ccbf3ff                       call 0x403fe0
00000000004c7454  418b07                           mov eax, dword ptr [r15]
00000000004c7457  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c745b  85c0                             test eax, eax
00000000004c745d  895544                           mov dword ptr [rbp + 0x44], edx
00000000004c7460  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7468  0f850a020000                     jne 0x4c7678
00000000004c746e  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c7472  ba01000000                       mov edx, 1
00000000004c7477  be04000000                       mov esi, 4
00000000004c747c  4c89e7                           mov rdi, r12
00000000004c747f  e85ccbf3ff                       call 0x403fe0
00000000004c7484  418b07                           mov eax, dword ptr [r15]
00000000004c7487  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c748b  85c0                             test eax, eax
00000000004c748d  895548                           mov dword ptr [rbp + 0x48], edx
00000000004c7490  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7498  0f85071e0000                     jne 0x4c92a5
00000000004c749e  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c74a2  ba01000000                       mov edx, 1
00000000004c74a7  be04000000                       mov esi, 4
00000000004c74ac  4c89e7                           mov rdi, r12
00000000004c74af  e82ccbf3ff                       call 0x403fe0
00000000004c74b4  418b07                           mov eax, dword ptr [r15]
00000000004c74b7  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c74bb  85c0                             test eax, eax
00000000004c74bd  89554c                           mov dword ptr [rbp + 0x4c], edx
00000000004c74c0  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c74c8  0f85c9010000                     jne 0x4c7697
00000000004c74ce  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c74d2  ba01000000                       mov edx, 1
00000000004c74d7  be04000000                       mov esi, 4
00000000004c74dc  4c89e7                           mov rdi, r12
00000000004c74df  e8fccaf3ff                       call 0x403fe0
00000000004c74e4  418b07                           mov eax, dword ptr [r15]
00000000004c74e7  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c74eb  85c0                             test eax, eax
00000000004c74ed  895578                           mov dword ptr [rbp + 0x78], edx
00000000004c74f0  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c74f8  0f85c61d0000                     jne 0x4c92c4
00000000004c74fe  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c7502  ba01000000                       mov edx, 1
00000000004c7507  be04000000                       mov esi, 4
00000000004c750c  4c89e7                           mov rdi, r12
00000000004c750f  e8cccaf3ff                       call 0x403fe0
00000000004c7514  418b07                           mov eax, dword ptr [r15]
00000000004c7517  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c751b  85c0                             test eax, eax
00000000004c751d  89557c                           mov dword ptr [rbp + 0x7c], edx
00000000004c7520  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7528  0f8588010000                     jne 0x4c76b6
00000000004c752e  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c7532  ba01000000                       mov edx, 1
00000000004c7537  be04000000                       mov esi, 4
00000000004c753c  4c89e7                           mov rdi, r12
00000000004c753f  e89ccaf3ff                       call 0x403fe0
00000000004c7544  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c7548  418b07                           mov eax, dword ptr [r15]
00000000004c754b  85c0                             test eax, eax
00000000004c754d  899580000000                     mov dword ptr [rbp + 0x80], edx
00000000004c7553  41bd03000000                     mov r13d, 3
00000000004c7559  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7561  752b                             jne 0x4c758e
00000000004c7563  498b4f08                         mov rcx, qword ptr [r15 + 8]
00000000004c7567  ba01000000                       mov edx, 1
00000000004c756c  be04000000                       mov esi, 4
00000000004c7571  4c89e7                           mov rdi, r12
00000000004c7574  e867caf3ff                       call 0x403fe0
00000000004c7579  4183ed01                         sub r13d, 1
00000000004c757d  7469                             je 0x4c75e8
00000000004c757f  418b07                           mov eax, dword ptr [r15]
00000000004c7582  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c758a  85c0                             test eax, eax
00000000004c758c  74d5                             je 0x4c7563
00000000004c758e  83f801                           cmp eax, 1
00000000004c7591  75e6                             jne 0x4c7579
00000000004c7593  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c7597  458b7718                         mov r14d, dword ptr [r15 + 0x18]
00000000004c759b  b804000000                       mov eax, 4
00000000004c75a0  b904000000                       mov ecx, 4
00000000004c75a5  4c89e7                           mov rdi, r12
00000000004c75a8  4129f6                           sub r14d, esi
00000000004c75ab  89742408                         mov dword ptr [rsp + 8], esi
00000000004c75af  4183fe04                         cmp r14d, 4
00000000004c75b3  440f4ff0                         cmovg r14d, eax
00000000004c75b7  b800000000                       mov eax, 0
00000000004c75bc  4585f6                           test r14d, r14d
00000000004c75bf  440f48f0                         cmovs r14d, eax
00000000004c75c3  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c75c7  4963d6                           movsxd rdx, r14d
00000000004c75ca  e8d1c5f3ff                       call 0x403ba0
00000000004c75cf  448b442408                       mov r8d, dword ptr [rsp + 8]
00000000004c75d4  4501c6                           add r14d, r8d
00000000004c75d7  4183ed01                         sub r13d, 1
00000000004c75db  4589771c                         mov dword ptr [r15 + 0x1c], r14d
00000000004c75df  759e                             jne 0x4c757f
00000000004c75e1  0f1f8000000000                   nop dword ptr [rax]
00000000004c75e8  488b7d50                         mov rdi, qword ptr [rbp + 0x50]
00000000004c75ec  4c89fe                           mov rsi, r15
00000000004c75ef  e8ac8cffff                       call 0x4c02a0
00000000004c75f4  488b7d58                         mov rdi, qword ptr [rbp + 0x58]
00000000004c75f8  4c89fe                           mov rsi, r15
00000000004c75fb  e8a08cffff                       call 0x4c02a0
00000000004c7600  488b7d60                         mov rdi, qword ptr [rbp + 0x60]
00000000004c7604  4c89fe                           mov rsi, r15
00000000004c7607  e8948cffff                       call 0x4c02a0
00000000004c760c  8b7d7c                           mov edi, dword ptr [rbp + 0x7c]
00000000004c760f  85ff                             test edi, edi
00000000004c7611  0f8511010000                     jne 0x4c7728
00000000004c7617  488b7d70                         mov rdi, qword ptr [rbp + 0x70]
00000000004c761b  4c89fe                           mov rsi, r15
00000000004c761e  4881c388000000                   add rbx, 0x88
00000000004c7625  e8768cffff                       call 0x4c02a0
00000000004c762a  48395c2428                       cmp qword ptr [rsp + 0x28], rbx
00000000004c762f  0f859bfdffff                     jne 0x4c73d0
00000000004c7635  4c89fb                           mov rbx, r15
00000000004c7638  4c8b7c2420                       mov r15, qword ptr [rsp + 0x20]
00000000004c763d  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c7642  4c89fa                           mov rdx, r15
00000000004c7645  be08000000                       mov esi, 8
00000000004c764a  e80157ffff                       call 0x4bcd50
00000000004c764f  448b33                           mov r14d, dword ptr [rbx]
00000000004c7652  e9a4f7ffff                       jmp 0x4c6dfb
00000000004c7657  660f1f840000000000               nop word ptr [rax + rax]
00000000004c7660  83fa01                           cmp edx, 1
00000000004c7663  0f84b70f0000                     je 0x4c8620
00000000004c7669  c7454400000000                   mov dword ptr [rbp + 0x44], 0
00000000004c7670  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7678  83f801                           cmp eax, 1
00000000004c767b  0f84090e0000                     je 0x4c848a
00000000004c7681  c7454800000000                   mov dword ptr [rbp + 0x48], 0
00000000004c7688  c7454c00000000                   mov dword ptr [rbp + 0x4c], 0
00000000004c768f  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7697  83f801                           cmp eax, 1
00000000004c769a  0f848c0e0000                     je 0x4c852c
00000000004c76a0  c7457800000000                   mov dword ptr [rbp + 0x78], 0
00000000004c76a7  c7457c00000000                   mov dword ptr [rbp + 0x7c], 0
00000000004c76ae  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c76b6  83f801                           cmp eax, 1
00000000004c76b9  0f840f0f0000                     je 0x4c85ce
00000000004c76bf  31d2                             xor edx, edx
00000000004c76c1  e985feffff                       jmp 0x4c754b
00000000004c76c6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004c76d0  83f801                           cmp eax, 1
00000000004c76d3  0f85b8fcffff                     jne 0x4c7391
00000000004c76d9  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c76dd  448b7318                         mov r14d, dword ptr [rbx + 0x18]
00000000004c76e1  b800000000                       mov eax, 0
00000000004c76e6  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c76eb  b904000000                       mov ecx, 4
00000000004c76f0  4129f6                           sub r14d, esi
00000000004c76f3  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c76f7  4183fe04                         cmp r14d, 4
00000000004c76fb  450f4ff4                         cmovg r14d, r12d
00000000004c76ff  4585f6                           test r14d, r14d
00000000004c7702  440f48f0                         cmovs r14d, eax
00000000004c7706  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c770a  4963d6                           movsxd rdx, r14d
00000000004c770d  e88ec4f3ff                       call 0x403ba0
00000000004c7712  448b442420                       mov r8d, dword ptr [rsp + 0x20]
00000000004c7717  4501f0                           add r8d, r14d
00000000004c771a  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c771e  e96efcffff                       jmp 0x4c7391
00000000004c7723  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7728  c1e703                           shl edi, 3
00000000004c772b  e860830200                       call 0x4efa90
00000000004c7730  8b757c                           mov esi, dword ptr [rbp + 0x7c]
00000000004c7733  48894568                         mov qword ptr [rbp + 0x68], rax
00000000004c7737  85f6                             test esi, esi
00000000004c7739  0f8ed8feffff                     jle 0x4c7617
00000000004c773f  4531ed                           xor r13d, r13d
00000000004c7742  48895c2408                       mov qword ptr [rsp + 8], rbx
00000000004c7747  4531f6                           xor r14d, r14d
00000000004c774a  4889eb                           mov rbx, rbp
00000000004c774d  4489ed                           mov ebp, r13d
00000000004c7750  eb0a                             jmp 0x4c775c
00000000004c7752  660f1f440000                     nop word ptr [rax + rax]
00000000004c7758  488b4368                         mov rax, qword ptr [rbx + 0x68]
00000000004c775c  4e8d2c30                         lea r13, [rax + r14]
00000000004c7760  bf10000000                       mov edi, 0x10
00000000004c7765  83c501                           add ebp, 1
00000000004c7768  e8437b0000                       call 0x4cf2b0
00000000004c776d  49894500                         mov qword ptr [r13], rax
00000000004c7771  488b4368                         mov rax, qword ptr [rbx + 0x68]
00000000004c7775  4c89fe                           mov rsi, r15
00000000004c7778  4a8b3c30                         mov rdi, qword ptr [rax + r14]
00000000004c777c  4983c608                         add r14, 8
00000000004c7780  e81b8bffff                       call 0x4c02a0
00000000004c7785  3b6b7c                           cmp ebp, dword ptr [rbx + 0x7c]
00000000004c7788  7cce                             jl 0x4c7758
00000000004c778a  4889dd                           mov rbp, rbx
00000000004c778d  488b5c2408                       mov rbx, qword ptr [rsp + 8]
00000000004c7792  e980feffff                       jmp 0x4c7617
00000000004c7797  660f1f840000000000               nop word ptr [rax + rax]
00000000004c77a0  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c77a5  4889da                           mov rdx, rbx
00000000004c77a8  be01000000                       mov esi, 1
00000000004c77ad  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c77b5  e8068affff                       call 0x4c01c0
00000000004c77ba  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c77be  89ef                             mov edi, ebp
00000000004c77c0  e8bb840200                       call 0x4efc80
00000000004c77c5  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c77ca  4989c4                           mov r12, rax
00000000004c77cd  4889c2                           mov rdx, rax
00000000004c77d0  be0c000000                       mov esi, 0xc
00000000004c77d5  e87655ffff                       call 0x4bcd50
00000000004c77da  498d7c2420                       lea rdi, [r12 + 0x20]
00000000004c77df  4889da                           mov rdx, rbx
00000000004c77e2  be40000000                       mov esi, 0x40
00000000004c77e7  e8448affff                       call 0x4c0230
00000000004c77ec  4181fe6346494c                   cmp r14d, 0x4c494663
00000000004c77f3  41c644245f00                     mov byte ptr [r12 + 0x5f], 0
00000000004c77f9  498b7c2410                       mov rdi, qword ptr [r12 + 0x10]
00000000004c77fe  4889da                           mov rdx, rbx
00000000004c7801  89ee                             mov esi, ebp
00000000004c7803  0f84b70b0000                     je 0x4c83c0
00000000004c7809  e8228affff                       call 0x4c0230
00000000004c780e  41896c2418                       mov dword ptr [r12 + 0x18], ebp
00000000004c7813  448b33                           mov r14d, dword ptr [rbx]
00000000004c7816  e9e0f5ffff                       jmp 0x4c6dfb
00000000004c781b  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7820  31c0                             xor eax, eax
00000000004c7822  e879580000                       call 0x4cd0a0
00000000004c7827  4c8b7c2408                       mov r15, qword ptr [rsp + 8]
00000000004c782c  4889da                           mov rdx, rbx
00000000004c782f  be01000000                       mov esi, 1
00000000004c7834  4989c5                           mov r13, rax
00000000004c7837  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c783f  4c89ff                           mov rdi, r15
00000000004c7842  e87989ffff                       call 0x4c01c0
00000000004c7847  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c784b  4889da                           mov rdx, rbx
00000000004c784e  be01000000                       mov esi, 1
00000000004c7853  4c89ff                           mov rdi, r15
00000000004c7856  41894508                         mov dword ptr [r13 + 8], eax
00000000004c785a  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7862  e85989ffff                       call 0x4c01c0
00000000004c7867  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c786b  4889da                           mov rdx, rbx
00000000004c786e  be01000000                       mov esi, 1
00000000004c7873  4c89ff                           mov rdi, r15
00000000004c7876  41894518                         mov dword ptr [r13 + 0x18], eax
00000000004c787a  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7882  e83989ffff                       call 0x4c01c0
00000000004c7887  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c788b  418b7508                         mov esi, dword ptr [r13 + 8]
00000000004c788f  4c89ef                           mov rdi, r13
00000000004c7892  41894520                         mov dword ptr [r13 + 0x20], eax
00000000004c7896  e8d5460000                       call 0x4cbf70
00000000004c789b  418b7518                         mov esi, dword ptr [r13 + 0x18]
00000000004c789f  4c89ef                           mov rdi, r13
00000000004c78a2  e879480000                       call 0x4cc120
00000000004c78a7  418b4508                         mov eax, dword ptr [r13 + 8]
00000000004c78ab  85c0                             test eax, eax
00000000004c78ad  7e6d                             jle 0x4c791c
00000000004c78af  4531e4                           xor r12d, r12d
00000000004c78b2  4531ff                           xor r15d, r15d
00000000004c78b5  4c89e0                           mov rax, r12
00000000004c78b8  4d89ec                           mov r12, r13
00000000004c78bb  4989c5                           mov r13, rax
00000000004c78be  6690                             nop 
00000000004c78c0  31ed                             xor ebp, ebp
00000000004c78c2  4d8b3424                         mov r14, qword ptr [r12]
00000000004c78c6  8b03                             mov eax, dword ptr [rbx]
00000000004c78c8  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c78d0  4d01ee                           add r14, r13
00000000004c78d3  85c0                             test eax, eax
00000000004c78d5  0f8585020000                     jne 0x4c7b60
00000000004c78db  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c78df  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c78e4  ba01000000                       mov edx, 1
00000000004c78e9  be04000000                       mov esi, 4
00000000004c78ee  e8edc6f3ff                       call 0x403fe0
00000000004c78f3  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c78f9  4863c5                           movsxd rax, ebp
00000000004c78fc  83c501                           add ebp, 1
00000000004c78ff  83fd03                           cmp ebp, 3
00000000004c7902  f3410f110486                     movss dword ptr [r14 + rax*4], xmm0
00000000004c7908  75b8                             jne 0x4c78c2
00000000004c790a  4183c701                         add r15d, 1
00000000004c790e  4983c50c                         add r13, 0xc
00000000004c7912  45397c2408                       cmp dword ptr [r12 + 8], r15d
00000000004c7917  7fa7                             jg 0x4c78c0
00000000004c7919  4d89e5                           mov r13, r12
00000000004c791c  418b4518                         mov eax, dword ptr [r13 + 0x18]
00000000004c7920  85c0                             test eax, eax
00000000004c7922  0f8ec8020000                     jle 0x4c7bf0
00000000004c7928  4c8b742408                       mov r14, qword ptr [rsp + 8]
00000000004c792d  c744242000000000                 mov dword ptr [rsp + 0x20], 0
00000000004c7935  48c744243000000000               mov qword ptr [rsp + 0x30], 0
00000000004c793e  4c896c2428                       mov qword ptr [rsp + 0x28], r13
00000000004c7943  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7948  488b442428                       mov rax, qword ptr [rsp + 0x28]
00000000004c794d  8b13                             mov edx, dword ptr [rbx]
00000000004c794f  4c8b642430                       mov r12, qword ptr [rsp + 0x30]
00000000004c7954  4c036010                         add r12, qword ptr [rax + 0x10]
00000000004c7958  31c0                             xor eax, eax
00000000004c795a  85d2                             test edx, edx
00000000004c795c  6689442444                       mov word ptr [rsp + 0x44], ax
00000000004c7961  0f8599030000                     jne 0x4c7d00
00000000004c7967  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c796b  be02000000                       mov esi, 2
00000000004c7970  ba01000000                       mov edx, 1
00000000004c7975  4c89f7                           mov rdi, r14
00000000004c7978  e863c6f3ff                       call 0x403fe0
00000000004c797d  0fbf742444                       movsx esi, word ptr [rsp + 0x44]
00000000004c7982  89f0                             mov eax, esi
00000000004c7984  664189442440                     mov word ptr [r12 + 0x40], ax
00000000004c798a  4c89e7                           mov rdi, r12
00000000004c798d  e80e490000                       call 0x4cc2a0
00000000004c7992  31c0                             xor eax, eax
00000000004c7994  6689442444                       mov word ptr [rsp + 0x44], ax
00000000004c7999  8b03                             mov eax, dword ptr [rbx]
00000000004c799b  85c0                             test eax, eax
00000000004c799d  0f853d030000                     jne 0x4c7ce0
00000000004c79a3  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c79a7  ba01000000                       mov edx, 1
00000000004c79ac  be02000000                       mov esi, 2
00000000004c79b1  4c89f7                           mov rdi, r14
00000000004c79b4  4531ff                           xor r15d, r15d
00000000004c79b7  e824c6f3ff                       call 0x403fe0
00000000004c79bc  8b13                             mov edx, dword ptr [rbx]
00000000004c79be  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c79c3  85d2                             test edx, edx
00000000004c79c5  664189442450                     mov word ptr [r12 + 0x50], ax
00000000004c79cb  6644897c2444                     mov word ptr [rsp + 0x44], r15w
00000000004c79d1  0f85a8180000                     jne 0x4c927f
00000000004c79d7  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c79db  ba01000000                       mov edx, 1
00000000004c79e0  be02000000                       mov esi, 2
00000000004c79e5  4c89f7                           mov rdi, r14
00000000004c79e8  e8f3c5f3ff                       call 0x403fe0
00000000004c79ed  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c79f2  6641837c244000                   cmp word ptr [r12 + 0x40], 0
00000000004c79f9  664189442452                     mov word ptr [r12 + 0x52], ax
00000000004c79ff  0f8ecb010000                     jle 0x4c7bd0
00000000004c7a05  31ed                             xor ebp, ebp
00000000004c7a07  e9b3000000                       jmp 0x4c7abf
00000000004c7a0c  0f1f4000                         nop dword ptr [rax]
00000000004c7a10  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c7a14  ba01000000                       mov edx, 1
00000000004c7a19  be04000000                       mov esi, 4
00000000004c7a1e  4c89f7                           mov rdi, r14
00000000004c7a21  e8bac5f3ff                       call 0x403fe0
00000000004c7a26  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c7a2a  41895500                         mov dword ptr [r13], edx
00000000004c7a2e  4d8b7c2438                       mov r15, qword ptr [r12 + 0x38]
00000000004c7a33  4c8d2ced00000000                 lea r13, [rbp*8]
00000000004c7a3b  8b03                             mov eax, dword ptr [rbx]
00000000004c7a3d  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7a45  4d01ef                           add r15, r13
00000000004c7a48  85c0                             test eax, eax
00000000004c7a4a  0f85f0000000                     jne 0x4c7b40
00000000004c7a50  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c7a54  ba01000000                       mov edx, 1
00000000004c7a59  be04000000                       mov esi, 4
00000000004c7a5e  4c89f7                           mov rdi, r14
00000000004c7a61  e87ac5f3ff                       call 0x403fe0
00000000004c7a66  8b03                             mov eax, dword ptr [rbx]
00000000004c7a68  4d036c2438                       add r13, qword ptr [r12 + 0x38]
00000000004c7a6d  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c7a73  f3410f1107                       movss dword ptr [r15], xmm0
00000000004c7a78  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7a80  85c0                             test eax, eax
00000000004c7a82  0f85e5180000                     jne 0x4c936d
00000000004c7a88  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c7a8c  ba01000000                       mov edx, 1
00000000004c7a91  be04000000                       mov esi, 4
00000000004c7a96  4c89f7                           mov rdi, r14
00000000004c7a99  e842c5f3ff                       call 0x403fe0
00000000004c7a9e  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c7aa4  410fbf542440                     movsx edx, word ptr [r12 + 0x40]
00000000004c7aaa  8d4501                           lea eax, [rbp + 1]
00000000004c7aad  4883c501                         add rbp, 1
00000000004c7ab1  f3410f114504                     movss dword ptr [r13 + 4], xmm0
00000000004c7ab7  39c2                             cmp edx, eax
00000000004c7ab9  0f8e11010000                     jle 0x4c7bd0
00000000004c7abf  498b442430                       mov rax, qword ptr [r12 + 0x30]
00000000004c7ac4  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7acc  4c8d2ca8                         lea r13, [rax + rbp*4]
00000000004c7ad0  8b03                             mov eax, dword ptr [rbx]
00000000004c7ad2  85c0                             test eax, eax
00000000004c7ad4  0f8436ffffff                     je 0x4c7a10
00000000004c7ada  31d2                             xor edx, edx
00000000004c7adc  83f801                           cmp eax, 1
00000000004c7adf  0f8545ffffff                     jne 0x4c7a2a
00000000004c7ae5  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7ae9  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c7aed  b804000000                       mov eax, 4
00000000004c7af2  b904000000                       mov ecx, 4
00000000004c7af7  4c89f7                           mov rdi, r14
00000000004c7afa  4129f7                           sub r15d, esi
00000000004c7afd  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c7b01  4183ff04                         cmp r15d, 4
00000000004c7b05  440f4ff8                         cmovg r15d, eax
00000000004c7b09  b800000000                       mov eax, 0
00000000004c7b0e  4585ff                           test r15d, r15d
00000000004c7b11  440f48f8                         cmovs r15d, eax
00000000004c7b15  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7b19  4963d7                           movsxd rdx, r15d
00000000004c7b1c  e87fc0f3ff                       call 0x403ba0
00000000004c7b21  448b442438                       mov r8d, dword ptr [rsp + 0x38]
00000000004c7b26  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c7b2a  4501c7                           add r15d, r8d
00000000004c7b2d  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c7b31  e9f4feffff                       jmp 0x4c7a2a
00000000004c7b36  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004c7b40  83f801                           cmp eax, 1
00000000004c7b43  0f84d7000000                     je 0x4c7c20
00000000004c7b49  41c70700000000                   mov dword ptr [r15], 0
00000000004c7b50  4d89fd                           mov r13, r15
00000000004c7b53  660fefc0                         pxor xmm0, xmm0
00000000004c7b57  e948ffffff                       jmp 0x4c7aa4
00000000004c7b5c  0f1f4000                         nop dword ptr [rax]
00000000004c7b60  83f801                           cmp eax, 1
00000000004c7b63  660fefc0                         pxor xmm0, xmm0
00000000004c7b67  0f858cfdffff                     jne 0x4c78f9
00000000004c7b6d  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7b71  448b4b18                         mov r9d, dword ptr [rbx + 0x18]
00000000004c7b75  b804000000                       mov eax, 4
00000000004c7b7a  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7b7f  b904000000                       mov ecx, 4
00000000004c7b84  4129f1                           sub r9d, esi
00000000004c7b87  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c7b8b  4183f904                         cmp r9d, 4
00000000004c7b8f  440f4fc8                         cmovg r9d, eax
00000000004c7b93  b800000000                       mov eax, 0
00000000004c7b98  4585c9                           test r9d, r9d
00000000004c7b9b  440f48c8                         cmovs r9d, eax
00000000004c7b9f  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7ba3  4963d1                           movsxd rdx, r9d
00000000004c7ba6  44894c2428                       mov dword ptr [rsp + 0x28], r9d
00000000004c7bab  e8f0bff3ff                       call 0x403ba0
00000000004c7bb0  448b542420                       mov r10d, dword ptr [rsp + 0x20]
00000000004c7bb5  448b4c2428                       mov r9d, dword ptr [rsp + 0x28]
00000000004c7bba  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c7bc0  4501d1                           add r9d, r10d
00000000004c7bc3  44894b1c                         mov dword ptr [rbx + 0x1c], r9d
00000000004c7bc7  e92dfdffff                       jmp 0x4c78f9
00000000004c7bcc  0f1f4000                         nop dword ptr [rax]
00000000004c7bd0  488b7c2428                       mov rdi, qword ptr [rsp + 0x28]
00000000004c7bd5  8344242001                       add dword ptr [rsp + 0x20], 1
00000000004c7bda  8b442420                         mov eax, dword ptr [rsp + 0x20]
00000000004c7bde  488344243058                     add qword ptr [rsp + 0x30], 0x58
00000000004c7be4  394718                           cmp dword ptr [rdi + 0x18], eax
00000000004c7be7  0f8f5bfdffff                     jg 0x4c7948
00000000004c7bed  4989fd                           mov r13, rdi
00000000004c7bf0  418b6d20                         mov ebp, dword ptr [r13 + 0x20]
00000000004c7bf4  85ed                             test ebp, ebp
00000000004c7bf6  0f8f84060000                     jg 0x4c8280
00000000004c7bfc  4c89ef                           mov rdi, r13
00000000004c7bff  e8ac610000                       call 0x4cddb0
00000000004c7c04  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c7c09  4c89ea                           mov rdx, r13
00000000004c7c0c  be06000000                       mov esi, 6
00000000004c7c11  e83a51ffff                       call 0x4bcd50
00000000004c7c16  448b33                           mov r14d, dword ptr [rbx]
00000000004c7c19  e9ddf1ffff                       jmp 0x4c6dfb
00000000004c7c1e  6690                             nop 
00000000004c7c20  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7c24  448b4318                         mov r8d, dword ptr [rbx + 0x18]
00000000004c7c28  b804000000                       mov eax, 4
00000000004c7c2d  b904000000                       mov ecx, 4
00000000004c7c32  4c89f7                           mov rdi, r14
00000000004c7c35  4129f0                           sub r8d, esi
00000000004c7c38  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c7c3c  4183f804                         cmp r8d, 4
00000000004c7c40  440f4fc0                         cmovg r8d, eax
00000000004c7c44  b800000000                       mov eax, 0
00000000004c7c49  4585c0                           test r8d, r8d
00000000004c7c4c  440f48c0                         cmovs r8d, eax
00000000004c7c50  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7c54  4963d0                           movsxd rdx, r8d
00000000004c7c57  448944243c                       mov dword ptr [rsp + 0x3c], r8d
00000000004c7c5c  e83fbff3ff                       call 0x403ba0
00000000004c7c61  448b4c2438                       mov r9d, dword ptr [rsp + 0x38]
00000000004c7c66  448b44243c                       mov r8d, dword ptr [rsp + 0x3c]
00000000004c7c6b  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c7c71  4d036c2438                       add r13, qword ptr [r12 + 0x38]
00000000004c7c76  4501c8                           add r8d, r9d
00000000004c7c79  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c7c7d  f3410f1107                       movss dword ptr [r15], xmm0
00000000004c7c82  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7c8a  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7c8e  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c7c92  b804000000                       mov eax, 4
00000000004c7c97  b904000000                       mov ecx, 4
00000000004c7c9c  4c89f7                           mov rdi, r14
00000000004c7c9f  4129f7                           sub r15d, esi
00000000004c7ca2  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c7ca6  4183ff04                         cmp r15d, 4
00000000004c7caa  440f4ff8                         cmovg r15d, eax
00000000004c7cae  b800000000                       mov eax, 0
00000000004c7cb3  4585ff                           test r15d, r15d
00000000004c7cb6  440f48f8                         cmovs r15d, eax
00000000004c7cba  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7cbe  4963d7                           movsxd rdx, r15d
00000000004c7cc1  e8dabef3ff                       call 0x403ba0
00000000004c7cc6  448b442438                       mov r8d, dword ptr [rsp + 0x38]
00000000004c7ccb  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c7cd1  4501c7                           add r15d, r8d
00000000004c7cd4  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c7cd8  e9c7fdffff                       jmp 0x4c7aa4
00000000004c7cdd  0f1f00                           nop dword ptr [rax]
00000000004c7ce0  83f801                           cmp eax, 1
00000000004c7ce3  0f84170a0000                     je 0x4c8700
00000000004c7ce9  31d2                             xor edx, edx
00000000004c7ceb  31c0                             xor eax, eax
00000000004c7ced  664189542450                     mov word ptr [r12 + 0x50], dx
00000000004c7cf3  e9fafcffff                       jmp 0x4c79f2
00000000004c7cf8  0f1f840000000000                 nop dword ptr [rax + rax]
00000000004c7d00  31f6                             xor esi, esi
00000000004c7d02  31c0                             xor eax, eax
00000000004c7d04  83fa01                           cmp edx, 1
00000000004c7d07  0f8577fcffff                     jne 0x4c7984
00000000004c7d0d  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7d11  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c7d14  b802000000                       mov eax, 2
00000000004c7d19  b902000000                       mov ecx, 2
00000000004c7d1e  4c89f7                           mov rdi, r14
00000000004c7d21  29f5                             sub ebp, esi
00000000004c7d23  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c7d27  83fd02                           cmp ebp, 2
00000000004c7d2a  0f4fe8                           cmovg ebp, eax
00000000004c7d2d  b800000000                       mov eax, 0
00000000004c7d32  85ed                             test ebp, ebp
00000000004c7d34  0f48e8                           cmovs ebp, eax
00000000004c7d37  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7d3b  4863d5                           movsxd rdx, ebp
00000000004c7d3e  e85dbef3ff                       call 0x403ba0
00000000004c7d43  448b442438                       mov r8d, dword ptr [rsp + 0x38]
00000000004c7d48  0fbf742444                       movsx esi, word ptr [rsp + 0x44]
00000000004c7d4d  4401c5                           add ebp, r8d
00000000004c7d50  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c7d53  89f0                             mov eax, esi
00000000004c7d55  e92afcffff                       jmp 0x4c7984
00000000004c7d5a  660f1f440000                     nop word ptr [rax + rax]
00000000004c7d60  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7d64  448b6318                         mov r12d, dword ptr [rbx + 0x18]
00000000004c7d68  b804000000                       mov eax, 4
00000000004c7d6d  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7d72  b904000000                       mov ecx, 4
00000000004c7d77  4129f4                           sub r12d, esi
00000000004c7d7a  4989f7                           mov r15, rsi
00000000004c7d7d  4183fc04                         cmp r12d, 4
00000000004c7d81  440f4fe0                         cmovg r12d, eax
00000000004c7d85  4585e4                           test r12d, r12d
00000000004c7d88  450f48e5                         cmovs r12d, r13d
00000000004c7d8c  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7d90  4963d4                           movsxd rdx, r12d
00000000004c7d93  4501fc                           add r12d, r15d
00000000004c7d96  e805bef3ff                       call 0x403ba0
00000000004c7d9b  448b6c2444                       mov r13d, dword ptr [rsp + 0x44]
00000000004c7da0  4489631c                         mov dword ptr [rbx + 0x1c], r12d
00000000004c7da4  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7dac  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7db0  448b6318                         mov r12d, dword ptr [rbx + 0x18]
00000000004c7db4  b804000000                       mov eax, 4
00000000004c7db9  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7dbe  b904000000                       mov ecx, 4
00000000004c7dc3  4129f4                           sub r12d, esi
00000000004c7dc6  4989f7                           mov r15, rsi
00000000004c7dc9  4183fc04                         cmp r12d, 4
00000000004c7dcd  440f4fe0                         cmovg r12d, eax
00000000004c7dd1  b800000000                       mov eax, 0
00000000004c7dd6  4585e4                           test r12d, r12d
00000000004c7dd9  440f48e0                         cmovs r12d, eax
00000000004c7ddd  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7de1  4963d4                           movsxd rdx, r12d
00000000004c7de4  4501fc                           add r12d, r15d
00000000004c7de7  e8b4bdf3ff                       call 0x403ba0
00000000004c7dec  448b4c2444                       mov r9d, dword ptr [rsp + 0x44]
00000000004c7df1  4489631c                         mov dword ptr [rbx + 0x1c], r12d
00000000004c7df5  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7dfd  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7e01  448b6318                         mov r12d, dword ptr [rbx + 0x18]
00000000004c7e05  b804000000                       mov eax, 4
00000000004c7e0a  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7e0f  b904000000                       mov ecx, 4
00000000004c7e14  44894c2420                       mov dword ptr [rsp + 0x20], r9d
00000000004c7e19  4129f4                           sub r12d, esi
00000000004c7e1c  4989f7                           mov r15, rsi
00000000004c7e1f  4183fc04                         cmp r12d, 4
00000000004c7e23  440f4fe0                         cmovg r12d, eax
00000000004c7e27  b800000000                       mov eax, 0
00000000004c7e2c  4585e4                           test r12d, r12d
00000000004c7e2f  440f48e0                         cmovs r12d, eax
00000000004c7e33  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7e37  4963d4                           movsxd rdx, r12d
00000000004c7e3a  4501fc                           add r12d, r15d
00000000004c7e3d  e85ebdf3ff                       call 0x403ba0
00000000004c7e42  4489631c                         mov dword ptr [rbx + 0x1c], r12d
00000000004c7e46  e9f6eeffff                       jmp 0x4c6d41
00000000004c7e4b  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7e50  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7e54  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c7e58  b804000000                       mov eax, 4
00000000004c7e5d  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7e62  b904000000                       mov ecx, 4
00000000004c7e67  4129f7                           sub r15d, esi
00000000004c7e6a  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c7e6e  4183ff04                         cmp r15d, 4
00000000004c7e72  440f4ff8                         cmovg r15d, eax
00000000004c7e76  b800000000                       mov eax, 0
00000000004c7e7b  4585ff                           test r15d, r15d
00000000004c7e7e  440f48f8                         cmovs r15d, eax
00000000004c7e82  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7e86  4963d7                           movsxd rdx, r15d
00000000004c7e89  e812bdf3ff                       call 0x403ba0
00000000004c7e8e  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c7e93  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c7e97  4501cf                           add r15d, r9d
00000000004c7e9a  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c7e9e  41894520                         mov dword ptr [r13 + 0x20], eax
00000000004c7ea2  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c7eaa  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7eae  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c7eb2  b804000000                       mov eax, 4
00000000004c7eb7  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7ebc  b904000000                       mov ecx, 4
00000000004c7ec1  4129f7                           sub r15d, esi
00000000004c7ec4  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c7ec8  4183ff04                         cmp r15d, 4
00000000004c7ecc  440f4ff8                         cmovg r15d, eax
00000000004c7ed0  b800000000                       mov eax, 0
00000000004c7ed5  4585ff                           test r15d, r15d
00000000004c7ed8  440f48f8                         cmovs r15d, eax
00000000004c7edc  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7ee0  4963d7                           movsxd rdx, r15d
00000000004c7ee3  e8b8bcf3ff                       call 0x403ba0
00000000004c7ee8  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c7eed  4501cf                           add r15d, r9d
00000000004c7ef0  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c7ef4  e9ceeeffff                       jmp 0x4c6dc7
00000000004c7ef9  0f1f8000000000                   nop dword ptr [rax]
00000000004c7f00  83f801                           cmp eax, 1
00000000004c7f03  0f85b9f1ffff                     jne 0x4c70c2
00000000004c7f09  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7f0d  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c7f10  b804000000                       mov eax, 4
00000000004c7f15  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7f1a  b904000000                       mov ecx, 4
00000000004c7f1f  29f5                             sub ebp, esi
00000000004c7f21  4989f6                           mov r14, rsi
00000000004c7f24  83fd04                           cmp ebp, 4
00000000004c7f27  0f4fe8                           cmovg ebp, eax
00000000004c7f2a  b800000000                       mov eax, 0
00000000004c7f2f  85ed                             test ebp, ebp
00000000004c7f31  0f48e8                           cmovs ebp, eax
00000000004c7f34  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7f38  4863d5                           movsxd rdx, ebp
00000000004c7f3b  4401f5                           add ebp, r14d
00000000004c7f3e  e85dbcf3ff                       call 0x403ba0
00000000004c7f43  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c7f46  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c7f4a  e973f1ffff                       jmp 0x4c70c2
00000000004c7f4f  90                               nop 
00000000004c7f50  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c7f54  ba01000000                       mov edx, 1
00000000004c7f59  be60000000                       mov esi, 0x60
00000000004c7f5e  4889ef                           mov rdi, rbp
00000000004c7f61  e87ac0f3ff                       call 0x403fe0
00000000004c7f66  e942f3ffff                       jmp 0x4c72ad
00000000004c7f6b  0f1f440000                       nop dword ptr [rax + rax]
00000000004c7f70  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c7f74  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c7f77  b804000000                       mov eax, 4
00000000004c7f7c  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c7f81  b904000000                       mov ecx, 4
00000000004c7f86  29f5                             sub ebp, esi
00000000004c7f88  4989f4                           mov r12, rsi
00000000004c7f8b  83fd04                           cmp ebp, 4
00000000004c7f8e  0f4fe8                           cmovg ebp, eax
00000000004c7f91  85ed                             test ebp, ebp
00000000004c7f93  0f486c2414                       cmovs ebp, dword ptr [rsp + 0x14]
00000000004c7f98  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c7f9c  4863d5                           movsxd rdx, ebp
00000000004c7f9f  4401e5                           add ebp, r12d
00000000004c7fa2  e8f9bbf3ff                       call 0x403ba0
00000000004c7fa7  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c7fac  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c7faf  488d7830                         lea rdi, [rax + 0x30]
00000000004c7fb3  4863431c                         movsxd rax, dword ptr [rbx + 0x1c]
00000000004c7fb7  8b5318                           mov edx, dword ptr [rbx + 0x18]
00000000004c7fba  b920000000                       mov ecx, 0x20
00000000004c7fbf  29c2                             sub edx, eax
00000000004c7fc1  83fa20                           cmp edx, 0x20
00000000004c7fc4  0f4fd1                           cmovg edx, ecx
00000000004c7fc7  b900000000                       mov ecx, 0
00000000004c7fcc  85d2                             test edx, edx
00000000004c7fce  0f48d1                           cmovs edx, ecx
00000000004c7fd1  48034310                         add rax, qword ptr [rbx + 0x10]
00000000004c7fd5  83fa08                           cmp edx, 8
00000000004c7fd8  0f83d20d0000                     jae 0x4c8db0
00000000004c7fde  f6c204                           test dl, 4
00000000004c7fe1  0f853b120000                     jne 0x4c9222
00000000004c7fe7  85d2                             test edx, edx
00000000004c7fe9  741d                             je 0x4c8008
00000000004c7feb  0fb608                           movzx ecx, byte ptr [rax]
00000000004c7fee  f6c202                           test dl, 2
00000000004c7ff1  880f                             mov byte ptr [rdi], cl
00000000004c7ff3  7413                             je 0x4c8008
00000000004c7ff5  89d1                             mov ecx, edx
00000000004c7ff7  0fb74408fe                       movzx eax, word ptr [rax + rcx - 2]
00000000004c7ffc  6689440ffe                       mov word ptr [rdi + rcx - 2], ax
00000000004c8001  0f1f8000000000                   nop dword ptr [rax]
00000000004c8008  01531c                           add dword ptr [rbx + 0x1c], edx
00000000004c800b  448b33                           mov r14d, dword ptr [rbx]
00000000004c800e  e949ecffff                       jmp 0x4c6c5c
00000000004c8013  0f1f440000                       nop dword ptr [rax + rax]
00000000004c8018  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c801c  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8020  b804000000                       mov eax, 4
00000000004c8025  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c802a  b904000000                       mov ecx, 4
00000000004c802f  4129f7                           sub r15d, esi
00000000004c8032  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c8036  4183ff04                         cmp r15d, 4
00000000004c803a  440f4ff8                         cmovg r15d, eax
00000000004c803e  b800000000                       mov eax, 0
00000000004c8043  4585ff                           test r15d, r15d
00000000004c8046  440f48f8                         cmovs r15d, eax
00000000004c804a  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c804e  4963d7                           movsxd rdx, r15d
00000000004c8051  e84abbf3ff                       call 0x403ba0
00000000004c8056  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c805b  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c805f  4501cf                           add r15d, r9d
00000000004c8062  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c8066  4189442420                       mov dword ptr [r12 + 0x20], eax
00000000004c806b  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8073  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8077  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c807b  b804000000                       mov eax, 4
00000000004c8080  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8085  b904000000                       mov ecx, 4
00000000004c808a  4129f7                           sub r15d, esi
00000000004c808d  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c8091  4183ff04                         cmp r15d, 4
00000000004c8095  440f4ff8                         cmovg r15d, eax
00000000004c8099  b800000000                       mov eax, 0
00000000004c809e  4585ff                           test r15d, r15d
00000000004c80a1  440f48f8                         cmovs r15d, eax
00000000004c80a5  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c80a9  4963d7                           movsxd rdx, r15d
00000000004c80ac  e8efbaf3ff                       call 0x403ba0
00000000004c80b1  448b4c2420                       mov r9d, dword ptr [rsp + 0x20]
00000000004c80b6  4501cf                           add r15d, r9d
00000000004c80b9  44897b1c                         mov dword ptr [rbx + 0x1c], r15d
00000000004c80bd  e95aeeffff                       jmp 0x4c6f1c
00000000004c80c2  660f1f440000                     nop word ptr [rax + rax]
00000000004c80c8  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c80cc  448b6b18                         mov r13d, dword ptr [rbx + 0x18]
00000000004c80d0  b804000000                       mov eax, 4
00000000004c80d5  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c80da  b904000000                       mov ecx, 4
00000000004c80df  4129f5                           sub r13d, esi
00000000004c80e2  4989f7                           mov r15, rsi
00000000004c80e5  4183fd04                         cmp r13d, 4
00000000004c80e9  440f4fe8                         cmovg r13d, eax
00000000004c80ed  4585ed                           test r13d, r13d
00000000004c80f0  450f48ec                         cmovs r13d, r12d
00000000004c80f4  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c80f8  4963d5                           movsxd rdx, r13d
00000000004c80fb  4501fd                           add r13d, r15d
00000000004c80fe  e89dbaf3ff                       call 0x403ba0
00000000004c8103  448b642444                       mov r12d, dword ptr [rsp + 0x44]
00000000004c8108  44896b1c                         mov dword ptr [rbx + 0x1c], r13d
00000000004c810c  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8114  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8118  448b6b18                         mov r13d, dword ptr [rbx + 0x18]
00000000004c811c  b804000000                       mov eax, 4
00000000004c8121  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8126  b904000000                       mov ecx, 4
00000000004c812b  4129f5                           sub r13d, esi
00000000004c812e  4989f7                           mov r15, rsi
00000000004c8131  4183fd04                         cmp r13d, 4
00000000004c8135  440f4fe8                         cmovg r13d, eax
00000000004c8139  b800000000                       mov eax, 0
00000000004c813e  4585ed                           test r13d, r13d
00000000004c8141  440f48e8                         cmovs r13d, eax
00000000004c8145  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8149  4963d5                           movsxd rdx, r13d
00000000004c814c  4501fd                           add r13d, r15d
00000000004c814f  e84cbaf3ff                       call 0x403ba0
00000000004c8154  448b4c2444                       mov r9d, dword ptr [rsp + 0x44]
00000000004c8159  44896b1c                         mov dword ptr [rbx + 0x1c], r13d
00000000004c815d  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8165  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8169  448b6b18                         mov r13d, dword ptr [rbx + 0x18]
00000000004c816d  b804000000                       mov eax, 4
00000000004c8172  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8177  b904000000                       mov ecx, 4
00000000004c817c  44894c2420                       mov dword ptr [rsp + 0x20], r9d
00000000004c8181  4129f5                           sub r13d, esi
00000000004c8184  4989f7                           mov r15, rsi
00000000004c8187  4183fd04                         cmp r13d, 4
00000000004c818b  440f4fe8                         cmovg r13d, eax
00000000004c818f  b800000000                       mov eax, 0
00000000004c8194  4585ed                           test r13d, r13d
00000000004c8197  440f48e8                         cmovs r13d, eax
00000000004c819b  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c819f  4963d5                           movsxd rdx, r13d
00000000004c81a2  4501fd                           add r13d, r15d
00000000004c81a5  e8f6b9f3ff                       call 0x403ba0
00000000004c81aa  44896b1c                         mov dword ptr [rbx + 0x1c], r13d
00000000004c81ae  e9e6ecffff                       jmp 0x4c6e99
00000000004c81b3  0f1f440000                       nop dword ptr [rax + rax]
00000000004c81b8  4889da                           mov rdx, rbx
00000000004c81bb  be01000000                       mov esi, 1
00000000004c81c0  4c89ff                           mov rdi, r15
00000000004c81c3  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c81cb  e8f07fffff                       call 0x4c01c0
00000000004c81d0  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c81d4  4889da                           mov rdx, rbx
00000000004c81d7  be01000000                       mov esi, 1
00000000004c81dc  4c89ff                           mov rdi, r15
00000000004c81df  894508                           mov dword ptr [rbp + 8], eax
00000000004c81e2  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c81ea  e8d17fffff                       call 0x4c01c0
00000000004c81ef  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c81f3  4889da                           mov rdx, rbx
00000000004c81f6  be01000000                       mov esi, 1
00000000004c81fb  4c89ff                           mov rdi, r15
00000000004c81fe  89450c                           mov dword ptr [rbp + 0xc], eax
00000000004c8201  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8209  e8b27fffff                       call 0x4c01c0
00000000004c820e  4889da                           mov rdx, rbx
00000000004c8211  be01000000                       mov esi, 1
00000000004c8216  4c89ff                           mov rdi, r15
00000000004c8219  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8221  e89a7fffff                       call 0x4c01c0
00000000004c8226  4889ef                           mov rdi, rbp
00000000004c8229  e872e70300                       call 0x5069a0
00000000004c822e  8b7500                           mov esi, dword ptr [rbp]
00000000004c8231  4889d9                           mov rcx, rbx
00000000004c8234  4889c7                           mov rdi, rax
00000000004c8237  0faf7504                         imul esi, dword ptr [rbp + 4]
00000000004c823b  89f2                             mov edx, esi
00000000004c823d  8d7607                           lea esi, [rsi + 7]
00000000004c8240  85d2                             test edx, edx
00000000004c8242  0f49f2                           cmovns esi, edx
00000000004c8245  ba01000000                       mov edx, 1
00000000004c824a  c1fe03                           sar esi, 3
00000000004c824d  e80ebeffff                       call 0x4c4060
00000000004c8252  4889ef                           mov rdi, rbp
00000000004c8255  e856e70300                       call 0x5069b0
00000000004c825a  8b7508                           mov esi, dword ptr [rbp + 8]
00000000004c825d  4889ef                           mov rdi, rbp
00000000004c8260  e85be70300                       call 0x5069c0
00000000004c8265  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c826a  4889ea                           mov rdx, rbp
00000000004c826d  be09000000                       mov esi, 9
00000000004c8272  e8d94affff                       call 0x4bcd50
00000000004c8277  448b33                           mov r14d, dword ptr [rbx]
00000000004c827a  e97cebffff                       jmp 0x4c6dfb
00000000004c827f  90                               nop 
00000000004c8280  458b5d08                         mov r11d, dword ptr [r13 + 8]
00000000004c8284  4585db                           test r11d, r11d
00000000004c8287  0f8e6ff9ffff                     jle 0x4c7bfc
00000000004c828d  31ed                             xor ebp, ebp
00000000004c828f  4531e4                           xor r12d, r12d
00000000004c8292  e9ed000000                       jmp 0x4c8384
00000000004c8297  660f1f840000000000               nop word ptr [rax + rax]
00000000004c82a0  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c82a4  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c82a9  be02000000                       mov esi, 2
00000000004c82ae  ba01000000                       mov edx, 1
00000000004c82b3  e828bdf3ff                       call 0x403fe0
00000000004c82b8  4d8b4528                         mov r8, qword ptr [r13 + 0x28]
00000000004c82bc  8b33                             mov esi, dword ptr [rbx]
00000000004c82be  4531c9                           xor r9d, r9d
00000000004c82c1  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c82c6  4d01f0                           add r8, r14
00000000004c82c9  85f6                             test esi, esi
00000000004c82cb  66418907                         mov word ptr [r15], ax
00000000004c82cf  6644894c2444                     mov word ptr [rsp + 0x44], r9w
00000000004c82d5  0f85a4100000                     jne 0x4c937f
00000000004c82db  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c82df  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c82e4  be02000000                       mov esi, 2
00000000004c82e9  ba01000000                       mov edx, 1
00000000004c82ee  4c89442420                       mov qword ptr [rsp + 0x20], r8
00000000004c82f3  e8e8bcf3ff                       call 0x403fe0
00000000004c82f8  4d8b7d28                         mov r15, qword ptr [r13 + 0x28]
00000000004c82fc  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c8301  8b33                             mov esi, dword ptr [rbx]
00000000004c8303  4c8b442420                       mov r8, qword ptr [rsp + 0x20]
00000000004c8308  4d01f7                           add r15, r14
00000000004c830b  6641894002                       mov word ptr [r8 + 2], ax
00000000004c8310  418b4520                         mov eax, dword ptr [r13 + 0x20]
00000000004c8314  410fb717                         movzx edx, word ptr [r15]
00000000004c8318  8d48ff                           lea ecx, [rax - 1]
00000000004c831b  410fb74702                       movzx eax, word ptr [r15 + 2]
00000000004c8320  39ca                             cmp edx, ecx
00000000004c8322  0f4fd1                           cmovg edx, ecx
00000000004c8325  85d2                             test edx, edx
00000000004c8327  410f48d4                         cmovs edx, r12d
00000000004c832b  39c8                             cmp eax, ecx
00000000004c832d  0f4fc1                           cmovg eax, ecx
00000000004c8330  66418917                         mov word ptr [r15], dx
00000000004c8334  85c0                             test eax, eax
00000000004c8336  410f48c4                         cmovs eax, r12d
00000000004c833a  85f6                             test esi, esi
00000000004c833c  6641894702                       mov word ptr [r15 + 2], ax
00000000004c8341  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8349  0f8581000000                     jne 0x4c83d0
00000000004c834f  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8353  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8358  ba01000000                       mov edx, 1
00000000004c835d  be04000000                       mov esi, 4
00000000004c8362  e879bcf3ff                       call 0x403fe0
00000000004c8367  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c836d  8d4501                           lea eax, [rbp + 1]
00000000004c8370  4883c501                         add rbp, 1
00000000004c8374  41394508                         cmp dword ptr [r13 + 8], eax
00000000004c8378  f3410f114704                     movss dword ptr [r15 + 4], xmm0
00000000004c837e  0f8e78f8ffff                     jle 0x4c7bfc
00000000004c8384  4d8b7d28                         mov r15, qword ptr [r13 + 0x28]
00000000004c8388  8b33                             mov esi, dword ptr [rbx]
00000000004c838a  4989ee                           mov r14, rbp
00000000004c838d  49c1e605                         shl r14, 5
00000000004c8391  4531d2                           xor r10d, r10d
00000000004c8394  664489542444                     mov word ptr [rsp + 0x44], r10w
00000000004c839a  4d01f7                           add r15, r14
00000000004c839d  85f6                             test esi, esi
00000000004c839f  0f84fbfeffff                     je 0x4c82a0
00000000004c83a5  83fe01                           cmp esi, 1
00000000004c83a8  0f84650a0000                     je 0x4c8e13
00000000004c83ae  31c0                             xor eax, eax
00000000004c83b0  4d89f8                           mov r8, r15
00000000004c83b3  66418907                         mov word ptr [r15], ax
00000000004c83b7  31c0                             xor eax, eax
00000000004c83b9  e94dffffff                       jmp 0x4c830b
00000000004c83be  6690                             nop 
00000000004c83c0  e84be4ffff                       call 0x4c6810
00000000004c83c5  e944f4ffff                       jmp 0x4c780e
00000000004c83ca  660f1f440000                     nop word ptr [rax + rax]
00000000004c83d0  83fe01                           cmp esi, 1
00000000004c83d3  660fefc0                         pxor xmm0, xmm0
00000000004c83d7  7594                             jne 0x4c836d
00000000004c83d9  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c83dd  448b7318                         mov r14d, dword ptr [rbx + 0x18]
00000000004c83e1  b804000000                       mov eax, 4
00000000004c83e6  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c83eb  b904000000                       mov ecx, 4
00000000004c83f0  4129f6                           sub r14d, esi
00000000004c83f3  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c83f7  4183fe04                         cmp r14d, 4
00000000004c83fb  440f4ff0                         cmovg r14d, eax
00000000004c83ff  4585f6                           test r14d, r14d
00000000004c8402  450f48f4                         cmovs r14d, r12d
00000000004c8406  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c840a  4963d6                           movsxd rdx, r14d
00000000004c840d  e88eb7f3ff                       call 0x403ba0
00000000004c8412  448b442420                       mov r8d, dword ptr [rsp + 0x20]
00000000004c8417  f30f10442444                     movss xmm0, dword ptr [rsp + 0x44]
00000000004c841d  4501f0                           add r8d, r14d
00000000004c8420  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c8424  e944ffffff                       jmp 0x4c836d
00000000004c8429  0f1f8000000000                   nop dword ptr [rax]
00000000004c8430  83f801                           cmp eax, 1
00000000004c8433  0f85560e0000                     jne 0x4c928f
00000000004c8439  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c843d  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c8441  b804000000                       mov eax, 4
00000000004c8446  b904000000                       mov ecx, 4
00000000004c844b  4c89e7                           mov rdi, r12
00000000004c844e  4129f5                           sub r13d, esi
00000000004c8451  4989f6                           mov r14, rsi
00000000004c8454  4183fd04                         cmp r13d, 4
00000000004c8458  440f4fe8                         cmovg r13d, eax
00000000004c845c  b800000000                       mov eax, 0
00000000004c8461  4585ed                           test r13d, r13d
00000000004c8464  440f48e8                         cmovs r13d, eax
00000000004c8468  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c846c  4963d5                           movsxd rdx, r13d
00000000004c846f  4501f5                           add r13d, r14d
00000000004c8472  e829b7f3ff                       call 0x403ba0
00000000004c8477  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c847b  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c847f  894544                           mov dword ptr [rbp + 0x44], eax
00000000004c8482  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c848a  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c848e  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c8492  b804000000                       mov eax, 4
00000000004c8497  b904000000                       mov ecx, 4
00000000004c849c  4c89e7                           mov rdi, r12
00000000004c849f  4129f5                           sub r13d, esi
00000000004c84a2  4989f6                           mov r14, rsi
00000000004c84a5  4183fd04                         cmp r13d, 4
00000000004c84a9  440f4fe8                         cmovg r13d, eax
00000000004c84ad  b800000000                       mov eax, 0
00000000004c84b2  4585ed                           test r13d, r13d
00000000004c84b5  440f48e8                         cmovs r13d, eax
00000000004c84b9  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c84bd  4963d5                           movsxd rdx, r13d
00000000004c84c0  4501f5                           add r13d, r14d
00000000004c84c3  e8d8b6f3ff                       call 0x403ba0
00000000004c84c8  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c84cc  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c84d0  894548                           mov dword ptr [rbp + 0x48], eax
00000000004c84d3  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c84db  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c84df  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c84e3  b804000000                       mov eax, 4
00000000004c84e8  b904000000                       mov ecx, 4
00000000004c84ed  4c89e7                           mov rdi, r12
00000000004c84f0  4129f5                           sub r13d, esi
00000000004c84f3  4989f6                           mov r14, rsi
00000000004c84f6  4183fd04                         cmp r13d, 4
00000000004c84fa  440f4fe8                         cmovg r13d, eax
00000000004c84fe  b800000000                       mov eax, 0
00000000004c8503  4585ed                           test r13d, r13d
00000000004c8506  440f48e8                         cmovs r13d, eax
00000000004c850a  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c850e  4963d5                           movsxd rdx, r13d
00000000004c8511  4501f5                           add r13d, r14d
00000000004c8514  e887b6f3ff                       call 0x403ba0
00000000004c8519  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c851d  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c8521  89454c                           mov dword ptr [rbp + 0x4c], eax
00000000004c8524  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c852c  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c8530  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c8534  b804000000                       mov eax, 4
00000000004c8539  b904000000                       mov ecx, 4
00000000004c853e  4c89e7                           mov rdi, r12
00000000004c8541  4129f5                           sub r13d, esi
00000000004c8544  4989f6                           mov r14, rsi
00000000004c8547  4183fd04                         cmp r13d, 4
00000000004c854b  440f4fe8                         cmovg r13d, eax
00000000004c854f  b800000000                       mov eax, 0
00000000004c8554  4585ed                           test r13d, r13d
00000000004c8557  440f48e8                         cmovs r13d, eax
00000000004c855b  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c855f  4963d5                           movsxd rdx, r13d
00000000004c8562  4501f5                           add r13d, r14d
00000000004c8565  e836b6f3ff                       call 0x403ba0
00000000004c856a  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c856e  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c8572  894578                           mov dword ptr [rbp + 0x78], eax
00000000004c8575  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c857d  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c8581  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c8585  b804000000                       mov eax, 4
00000000004c858a  b904000000                       mov ecx, 4
00000000004c858f  4c89e7                           mov rdi, r12
00000000004c8592  4129f5                           sub r13d, esi
00000000004c8595  4989f6                           mov r14, rsi
00000000004c8598  4183fd04                         cmp r13d, 4
00000000004c859c  440f4fe8                         cmovg r13d, eax
00000000004c85a0  b800000000                       mov eax, 0
00000000004c85a5  4585ed                           test r13d, r13d
00000000004c85a8  440f48e8                         cmovs r13d, eax
00000000004c85ac  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c85b0  4963d5                           movsxd rdx, r13d
00000000004c85b3  4501f5                           add r13d, r14d
00000000004c85b6  e8e5b5f3ff                       call 0x403ba0
00000000004c85bb  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c85bf  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c85c3  89457c                           mov dword ptr [rbp + 0x7c], eax
00000000004c85c6  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c85ce  4963771c                         movsxd rsi, dword ptr [r15 + 0x1c]
00000000004c85d2  458b6f18                         mov r13d, dword ptr [r15 + 0x18]
00000000004c85d6  b804000000                       mov eax, 4
00000000004c85db  b904000000                       mov ecx, 4
00000000004c85e0  4c89e7                           mov rdi, r12
00000000004c85e3  4129f5                           sub r13d, esi
00000000004c85e6  4989f6                           mov r14, rsi
00000000004c85e9  4183fd04                         cmp r13d, 4
00000000004c85ed  440f4fe8                         cmovg r13d, eax
00000000004c85f1  b800000000                       mov eax, 0
00000000004c85f6  4585ed                           test r13d, r13d
00000000004c85f9  440f48e8                         cmovs r13d, eax
00000000004c85fd  49037710                         add rsi, qword ptr [r15 + 0x10]
00000000004c8601  4963d5                           movsxd rdx, r13d
00000000004c8604  4501f5                           add r13d, r14d
00000000004c8607  e894b5f3ff                       call 0x403ba0
00000000004c860c  45896f1c                         mov dword ptr [r15 + 0x1c], r13d
00000000004c8610  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c8614  b801000000                       mov eax, 1
00000000004c8619  e92defffff                       jmp 0x4c754b
00000000004c861e  6690                             nop 
00000000004c8620  49634f1c                         movsxd rcx, dword ptr [r15 + 0x1c]
00000000004c8624  418b4718                         mov eax, dword ptr [r15 + 0x18]
00000000004c8628  be20000000                       mov esi, 0x20
00000000004c862d  29c8                             sub eax, ecx
00000000004c862f  83f820                           cmp eax, 0x20
00000000004c8632  0f4fc6                           cmovg eax, esi
00000000004c8635  be00000000                       mov esi, 0
00000000004c863a  85c0                             test eax, eax
00000000004c863c  0f48c6                           cmovs eax, esi
00000000004c863f  49034f10                         add rcx, qword ptr [r15 + 0x10]
00000000004c8643  83f808                           cmp eax, 8
00000000004c8646  0f83bc060000                     jae 0x4c8d08
00000000004c864c  a804                             test al, 4
00000000004c864e  0f85b70b0000                     jne 0x4c920b
00000000004c8654  85c0                             test eax, eax
00000000004c8656  7420                             je 0x4c8678
00000000004c8658  0fb611                           movzx edx, byte ptr [rcx]
00000000004c865b  a802                             test al, 2
00000000004c865d  885500                           mov byte ptr [rbp], dl
00000000004c8660  0f84e7060000                     je 0x4c8d4d
00000000004c8666  89c2                             mov edx, eax
00000000004c8668  0fb74c11fe                       movzx ecx, word ptr [rcx + rdx - 2]
00000000004c866d  66894c15fe                       mov word ptr [rbp + rdx - 2], cx
00000000004c8672  418b17                           mov edx, dword ptr [r15]
00000000004c8675  0f1f00                           nop dword ptr [rax]
00000000004c8678  4101471c                         add dword ptr [r15 + 0x1c], eax
00000000004c867c  85d2                             test edx, edx
00000000004c867e  488d7d20                         lea rdi, [rbp + 0x20]
00000000004c8682  89d0                             mov eax, edx
00000000004c8684  0f848eedffff                     je 0x4c7418
00000000004c868a  660f1f440000                     nop word ptr [rax + rax]
00000000004c8690  83fa01                           cmp edx, 1
00000000004c8693  0f85d0efffff                     jne 0x4c7669
00000000004c8699  4963471c                         movsxd rax, dword ptr [r15 + 0x1c]
00000000004c869d  be20000000                       mov esi, 0x20
00000000004c86a2  418b4f18                         mov ecx, dword ptr [r15 + 0x18]
00000000004c86a6  29c1                             sub ecx, eax
00000000004c86a8  83f920                           cmp ecx, 0x20
00000000004c86ab  0f4fce                           cmovg ecx, esi
00000000004c86ae  be00000000                       mov esi, 0
00000000004c86b3  85c9                             test ecx, ecx
00000000004c86b5  0f48ce                           cmovs ecx, esi
00000000004c86b8  49034710                         add rax, qword ptr [r15 + 0x10]
00000000004c86bc  83f908                           cmp ecx, 8
00000000004c86bf  0f8393060000                     jae 0x4c8d58
00000000004c86c5  f6c104                           test cl, 4
00000000004c86c8  0f85260b0000                     jne 0x4c91f4
00000000004c86ce  85c9                             test ecx, ecx
00000000004c86d0  741e                             je 0x4c86f0
00000000004c86d2  0fb610                           movzx edx, byte ptr [rax]
00000000004c86d5  f6c102                           test cl, 2
00000000004c86d8  885520                           mov byte ptr [rbp + 0x20], dl
00000000004c86db  0f84bd060000                     je 0x4c8d9e
00000000004c86e1  89ca                             mov edx, ecx
00000000004c86e3  0fb74410fe                       movzx eax, word ptr [rax + rdx - 2]
00000000004c86e8  66894417fe                       mov word ptr [rdi + rdx - 2], ax
00000000004c86ed  418b17                           mov edx, dword ptr [r15]
00000000004c86f0  41014f1c                         add dword ptr [r15 + 0x1c], ecx
00000000004c86f4  89d0                             mov eax, edx
00000000004c86f6  e933edffff                       jmp 0x4c742e
00000000004c86fb  0f1f440000                       nop dword ptr [rax + rax]
00000000004c8700  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8704  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c8707  b802000000                       mov eax, 2
00000000004c870c  b902000000                       mov ecx, 2
00000000004c8711  4c89f7                           mov rdi, r14
00000000004c8714  29f5                             sub ebp, esi
00000000004c8716  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c871a  83fd02                           cmp ebp, 2
00000000004c871d  0f4fe8                           cmovg ebp, eax
00000000004c8720  b800000000                       mov eax, 0
00000000004c8725  85ed                             test ebp, ebp
00000000004c8727  0f48e8                           cmovs ebp, eax
00000000004c872a  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c872e  4531ed                           xor r13d, r13d
00000000004c8731  4863d5                           movsxd rdx, ebp
00000000004c8734  e867b4f3ff                       call 0x403ba0
00000000004c8739  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c873e  448b442438                       mov r8d, dword ptr [rsp + 0x38]
00000000004c8743  4401c5                           add ebp, r8d
00000000004c8746  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c8749  664189442450                     mov word ptr [r12 + 0x50], ax
00000000004c874f  6644896c2444                     mov word ptr [rsp + 0x44], r13w
00000000004c8755  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8759  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c875c  b802000000                       mov eax, 2
00000000004c8761  b902000000                       mov ecx, 2
00000000004c8766  4c89f7                           mov rdi, r14
00000000004c8769  29f5                             sub ebp, esi
00000000004c876b  89742438                         mov dword ptr [rsp + 0x38], esi
00000000004c876f  83fd02                           cmp ebp, 2
00000000004c8772  0f4fe8                           cmovg ebp, eax
00000000004c8775  b800000000                       mov eax, 0
00000000004c877a  85ed                             test ebp, ebp
00000000004c877c  0f48e8                           cmovs ebp, eax
00000000004c877f  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8783  4863d5                           movsxd rdx, ebp
00000000004c8786  e815b4f3ff                       call 0x403ba0
00000000004c878b  448b442438                       mov r8d, dword ptr [rsp + 0x38]
00000000004c8790  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c8795  4401c5                           add ebp, r8d
00000000004c8798  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c879b  e952f2ffff                       jmp 0x4c79f2
00000000004c87a0  8b03                             mov eax, dword ptr [rbx]
00000000004c87a2  85c0                             test eax, eax
00000000004c87a4  0f849a090000                     je 0x4c9144
00000000004c87aa  83f801                           cmp eax, 1
00000000004c87ad  0f851ce2ffff                     jne 0x4c69cf
00000000004c87b3  836b1c08                         sub dword ptr [rbx + 0x1c], 8
00000000004c87b7  e913e2ffff                       jmp 0x4c69cf
00000000004c87bc  0f1f4000                         nop dword ptr [rax]
00000000004c87c0  31ff                             xor edi, edi
00000000004c87c2  e809980000                       call 0x4d1fd0
00000000004c87c7  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
00000000004c87cc  4989c7                           mov r15, rax
00000000004c87cf  4889c2                           mov rdx, rax
00000000004c87d2  be0b000000                       mov esi, 0xb
00000000004c87d7  4889442430                       mov qword ptr [rsp + 0x30], rax
00000000004c87dc  e86f45ffff                       call 0x4bcd50
00000000004c87e1  31f6                             xor esi, esi
00000000004c87e3  ba202c0000                       mov edx, 0x2c20
00000000004c87e8  4c89ff                           mov rdi, r15
00000000004c87eb  e880740200                       call 0x4efc70
00000000004c87f0  4c8b742408                       mov r14, qword ptr [rsp + 8]
00000000004c87f5  4889da                           mov rdx, rbx
00000000004c87f8  be01000000                       mov esi, 1
00000000004c87fd  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8805  4c89f7                           mov rdi, r14
00000000004c8808  e8b379ffff                       call 0x4c01c0
00000000004c880d  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8811  4889da                           mov rdx, rbx
00000000004c8814  be01000000                       mov esi, 1
00000000004c8819  4c89f7                           mov rdi, r14
00000000004c881c  418907                           mov dword ptr [r15], eax
00000000004c881f  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8827  e89479ffff                       call 0x4c01c0
00000000004c882c  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8830  4889da                           mov rdx, rbx
00000000004c8833  be01000000                       mov esi, 1
00000000004c8838  4c89f7                           mov rdi, r14
00000000004c883b  41894704                         mov dword ptr [r15 + 4], eax
00000000004c883f  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8847  e87479ffff                       call 0x4c01c0
00000000004c884c  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c8850  4889da                           mov rdx, rbx
00000000004c8853  be01000000                       mov esi, 1
00000000004c8858  4c89f7                           mov rdi, r14
00000000004c885b  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8863  e85879ffff                       call 0x4c01c0
00000000004c8868  85ed                             test ebp, ebp
00000000004c886a  750f                             jne 0x4c887b
00000000004c886c  418b17                           mov edx, dword ptr [r15]
00000000004c886f  89d0                             mov eax, edx
00000000004c8871  c1e81f                           shr eax, 0x1f
00000000004c8874  01d0                             add eax, edx
00000000004c8876  d1f8                             sar eax, 1
00000000004c8878  418907                           mov dword ptr [r15], eax
00000000004c887b  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8880  4889da                           mov rdx, rbx
00000000004c8883  be01000000                       mov esi, 1
00000000004c8888  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8890  e82b79ffff                       call 0x4c01c0
00000000004c8895  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8899  448b33                           mov r14d, dword ptr [rbx]
00000000004c889c  85c0                             test eax, eax
00000000004c889e  0f8e57e5ffff                     jle 0x4c6dfb
00000000004c88a4  83e801                           sub eax, 1
00000000004c88a7  488b7c2430                       mov rdi, qword ptr [rsp + 0x30]
00000000004c88ac  4531ed                           xor r13d, r13d
00000000004c88af  488d1480                         lea rdx, [rax + rax*4]
00000000004c88b3  4c896c2420                       mov qword ptr [rsp + 0x20], r13
00000000004c88b8  4c8b642408                       mov r12, qword ptr [rsp + 8]
00000000004c88bd  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c88c5  488d0450                         lea rax, [rax + rdx*2]
00000000004c88c9  488daf14010000                   lea rbp, [rdi + 0x114]
00000000004c88d0  48c1e005                         shl rax, 5
00000000004c88d4  4585f6                           test r14d, r14d
00000000004c88d7  488d840774020000                 lea rax, [rdi + rax + 0x274]
00000000004c88df  4889442428                       mov qword ptr [rsp + 0x28], rax
00000000004c88e4  0f8555020000                     jne 0x4c8b3f
00000000004c88ea  660f1f440000                     nop word ptr [rax + rax]
00000000004c88f0  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c88f4  ba01000000                       mov edx, 1
00000000004c88f9  be04000000                       mov esi, 4
00000000004c88fe  4c89e7                           mov rdi, r12
00000000004c8901  e8dab6f3ff                       call 0x403fe0
00000000004c8906  8b03                             mov eax, dword ptr [rbx]
00000000004c8908  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c890c  85c0                             test eax, eax
00000000004c890e  8995f4feffff                     mov dword ptr [rbp - 0x10c], edx
00000000004c8914  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c891c  0f85d5090000                     jne 0x4c92f7
00000000004c8922  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8926  ba01000000                       mov edx, 1
00000000004c892b  be04000000                       mov esi, 4
00000000004c8930  4c89e7                           mov rdi, r12
00000000004c8933  e8a8b6f3ff                       call 0x403fe0
00000000004c8938  8b03                             mov eax, dword ptr [rbx]
00000000004c893a  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c893e  85c0                             test eax, eax
00000000004c8940  8995f8feffff                     mov dword ptr [rbp - 0x108], edx
00000000004c8946  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c894e  0f859b090000                     jne 0x4c92ef
00000000004c8954  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8958  ba01000000                       mov edx, 1
00000000004c895d  be04000000                       mov esi, 4
00000000004c8962  4c89e7                           mov rdi, r12
00000000004c8965  e876b6f3ff                       call 0x403fe0
00000000004c896a  8b03                             mov eax, dword ptr [rbx]
00000000004c896c  8b542444                         mov edx, dword ptr [rsp + 0x44]
00000000004c8970  85c0                             test eax, eax
00000000004c8972  8995fcfeffff                     mov dword ptr [rbp - 0x104], edx
00000000004c8978  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8980  0f8596090000                     jne 0x4c931c
00000000004c8986  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c898a  ba01000000                       mov edx, 1
00000000004c898f  be04000000                       mov esi, 4
00000000004c8994  4c89e7                           mov rdi, r12
00000000004c8997  e844b6f3ff                       call 0x403fe0
00000000004c899c  448b33                           mov r14d, dword ptr [rbx]
00000000004c899f  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c89a3  4585f6                           test r14d, r14d
00000000004c89a6  89454c                           mov dword ptr [rbp + 0x4c], eax
00000000004c89a9  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c89b1  0f85d1010000                     jne 0x4c8b88
00000000004c89b7  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c89bb  ba01000000                       mov edx, 1
00000000004c89c0  be04000000                       mov esi, 4
00000000004c89c5  4c89e7                           mov rdi, r12
00000000004c89c8  e813b6f3ff                       call 0x403fe0
00000000004c89cd  448b742444                       mov r14d, dword ptr [rsp + 0x44]
00000000004c89d2  44897540                         mov dword ptr [rbp + 0x40], r14d
00000000004c89d6  4489f6                           mov esi, r14d
00000000004c89d9  4889da                           mov rdx, rbx
00000000004c89dc  4889ef                           mov rdi, rbp
00000000004c89df  e84c78ffff                       call 0x4c0230
00000000004c89e4  448b33                           mov r14d, dword ptr [rbx]
00000000004c89e7  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c89ef  4585f6                           test r14d, r14d
00000000004c89f2  0f85b8020000                     jne 0x4c8cb0
00000000004c89f8  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c89fc  ba01000000                       mov edx, 1
00000000004c8a01  be04000000                       mov esi, 4
00000000004c8a06  4c89e7                           mov rdi, r12
00000000004c8a09  e8d2b5f3ff                       call 0x403fe0
00000000004c8a0e  448b33                           mov r14d, dword ptr [rbx]
00000000004c8a11  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8a15  85c0                             test eax, eax
00000000004c8a17  0f8ef9000000                     jle 0x4c8b16
00000000004c8a1d  83e801                           sub eax, 1
00000000004c8a20  4803442420                       add rax, qword ptr [rsp + 0x20]
00000000004c8a25  488b7c2430                       mov rdi, qword ptr [rsp + 0x30]
00000000004c8a2a  4c8dad00ffffff                   lea r13, [rbp - 0x100]
00000000004c8a31  48c1e004                         shl rax, 4
00000000004c8a35  4c8d7c0724                       lea r15, [rdi + rax + 0x24]
00000000004c8a3a  e98b000000                       jmp 0x4c8aca
00000000004c8a3f  90                               nop 
00000000004c8a40  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8a44  ba01000000                       mov edx, 1
00000000004c8a49  be04000000                       mov esi, 4
00000000004c8a4e  4c89e7                           mov rdi, r12
00000000004c8a51  e88ab5f3ff                       call 0x403fe0
00000000004c8a56  448b33                           mov r14d, dword ptr [rbx]
00000000004c8a59  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8a5d  4585f6                           test r14d, r14d
00000000004c8a60  41894500                         mov dword ptr [r13], eax
00000000004c8a64  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8a6c  0f85bf080000                     jne 0x4c9331
00000000004c8a72  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8a76  ba01000000                       mov edx, 1
00000000004c8a7b  be04000000                       mov esi, 4
00000000004c8a80  4c89e7                           mov rdi, r12
00000000004c8a83  e858b5f3ff                       call 0x403fe0
00000000004c8a88  448b33                           mov r14d, dword ptr [rbx]
00000000004c8a8b  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8a8f  4585f6                           test r14d, r14d
00000000004c8a92  41894508                         mov dword ptr [r13 + 8], eax
00000000004c8a96  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8a9e  755d                             jne 0x4c8afd
00000000004c8aa0  488b4b08                         mov rcx, qword ptr [rbx + 8]
00000000004c8aa4  ba01000000                       mov edx, 1
00000000004c8aa9  be04000000                       mov esi, 4
00000000004c8aae  4c89e7                           mov rdi, r12
00000000004c8ab1  e82ab5f3ff                       call 0x403fe0
00000000004c8ab6  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8aba  448b33                           mov r14d, dword ptr [rbx]
00000000004c8abd  4189450c                         mov dword ptr [r13 + 0xc], eax
00000000004c8ac1  4983c510                         add r13, 0x10
00000000004c8ac5  4d39ef                           cmp r15, r13
00000000004c8ac8  744c                             je 0x4c8b16
00000000004c8aca  4585f6                           test r14d, r14d
00000000004c8acd  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8ad5  0f8465ffffff                     je 0x4c8a40
00000000004c8adb  4183fe01                         cmp r14d, 1
00000000004c8adf  0f84bb000000                     je 0x4c8ba0
00000000004c8ae5  41c7450000000000                 mov dword ptr [r13], 0
00000000004c8aed  41c7450800000000                 mov dword ptr [r13 + 8], 0
00000000004c8af5  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8afd  4183fe01                         cmp r14d, 1
00000000004c8b01  0f8449010000                     je 0x4c8c50
00000000004c8b07  31c0                             xor eax, eax
00000000004c8b09  4983c510                         add r13, 0x10
00000000004c8b0d  418945fc                         mov dword ptr [r13 - 4], eax
00000000004c8b11  4d39ef                           cmp r15, r13
00000000004c8b14  75b4                             jne 0x4c8aca
00000000004c8b16  4881c560010000                   add rbp, 0x160
00000000004c8b1d  488344242016                     add qword ptr [rsp + 0x20], 0x16
00000000004c8b23  48396c2428                       cmp qword ptr [rsp + 0x28], rbp
00000000004c8b28  0f84cde2ffff                     je 0x4c6dfb
00000000004c8b2e  4585f6                           test r14d, r14d
00000000004c8b31  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8b39  0f84b1fdffff                     je 0x4c88f0
00000000004c8b3f  4183fe01                         cmp r14d, 1
00000000004c8b43  0f84db030000                     je 0x4c8f24
00000000004c8b49  c785f4feffff00000000             mov dword ptr [rbp - 0x10c], 0
00000000004c8b53  c785f8feffff00000000             mov dword ptr [rbp - 0x108], 0
00000000004c8b5d  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8b65  4183fe01                         cmp r14d, 1
00000000004c8b69  0f8461040000                     je 0x4c8fd0
00000000004c8b6f  c785fcfeffff00000000             mov dword ptr [rbp - 0x104], 0
00000000004c8b79  c7454c00000000                   mov dword ptr [rbp + 0x4c], 0
00000000004c8b80  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8b88  4183fe01                         cmp r14d, 1
00000000004c8b8c  0f84e7040000                     je 0x4c9079
00000000004c8b92  4531f6                           xor r14d, r14d
00000000004c8b95  e938feffff                       jmp 0x4c89d2
00000000004c8b9a  660f1f440000                     nop word ptr [rax + rax]
00000000004c8ba0  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8ba4  448b7318                         mov r14d, dword ptr [rbx + 0x18]
00000000004c8ba8  b804000000                       mov eax, 4
00000000004c8bad  b904000000                       mov ecx, 4
00000000004c8bb2  4c89e7                           mov rdi, r12
00000000004c8bb5  4129f6                           sub r14d, esi
00000000004c8bb8  89742408                         mov dword ptr [rsp + 8], esi
00000000004c8bbc  4183fe04                         cmp r14d, 4
00000000004c8bc0  440f4ff0                         cmovg r14d, eax
00000000004c8bc4  b800000000                       mov eax, 0
00000000004c8bc9  4585f6                           test r14d, r14d
00000000004c8bcc  440f48f0                         cmovs r14d, eax
00000000004c8bd0  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8bd4  4963d6                           movsxd rdx, r14d
00000000004c8bd7  e8c4aff3ff                       call 0x403ba0
00000000004c8bdc  448b442408                       mov r8d, dword ptr [rsp + 8]
00000000004c8be1  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8be5  4501c6                           add r14d, r8d
00000000004c8be8  4489731c                         mov dword ptr [rbx + 0x1c], r14d
00000000004c8bec  41894500                         mov dword ptr [r13], eax
00000000004c8bf0  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8bf8  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8bfc  448b7318                         mov r14d, dword ptr [rbx + 0x18]
00000000004c8c00  b804000000                       mov eax, 4
00000000004c8c05  b904000000                       mov ecx, 4
00000000004c8c0a  4c89e7                           mov rdi, r12
00000000004c8c0d  4129f6                           sub r14d, esi
00000000004c8c10  89742408                         mov dword ptr [rsp + 8], esi
00000000004c8c14  4183fe04                         cmp r14d, 4
00000000004c8c18  440f4ff0                         cmovg r14d, eax
00000000004c8c1c  b800000000                       mov eax, 0
00000000004c8c21  4585f6                           test r14d, r14d
00000000004c8c24  440f48f0                         cmovs r14d, eax
00000000004c8c28  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8c2c  4963d6                           movsxd rdx, r14d
00000000004c8c2f  e86caff3ff                       call 0x403ba0
00000000004c8c34  448b442408                       mov r8d, dword ptr [rsp + 8]
00000000004c8c39  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8c3d  4501c6                           add r14d, r8d
00000000004c8c40  4489731c                         mov dword ptr [rbx + 0x1c], r14d
00000000004c8c44  41894508                         mov dword ptr [r13 + 8], eax
00000000004c8c48  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8c50  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8c54  448b7318                         mov r14d, dword ptr [rbx + 0x18]
00000000004c8c58  b804000000                       mov eax, 4
00000000004c8c5d  b904000000                       mov ecx, 4
00000000004c8c62  4c89e7                           mov rdi, r12
00000000004c8c65  4129f6                           sub r14d, esi
00000000004c8c68  89742408                         mov dword ptr [rsp + 8], esi
00000000004c8c6c  4183fe04                         cmp r14d, 4
00000000004c8c70  440f4ff0                         cmovg r14d, eax
00000000004c8c74  b800000000                       mov eax, 0
00000000004c8c79  4585f6                           test r14d, r14d
00000000004c8c7c  440f48f0                         cmovs r14d, eax
00000000004c8c80  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8c84  4963d6                           movsxd rdx, r14d
00000000004c8c87  e814aff3ff                       call 0x403ba0
00000000004c8c8c  448b442408                       mov r8d, dword ptr [rsp + 8]
00000000004c8c91  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8c95  4501c6                           add r14d, r8d
00000000004c8c98  4489731c                         mov dword ptr [rbx + 0x1c], r14d
00000000004c8c9c  41be01000000                     mov r14d, 1
00000000004c8ca2  e916feffff                       jmp 0x4c8abd
00000000004c8ca7  660f1f840000000000               nop word ptr [rax + rax]
00000000004c8cb0  4183fe01                         cmp r14d, 1
00000000004c8cb4  0f855cfeffff                     jne 0x4c8b16
00000000004c8cba  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8cbe  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8cc2  b804000000                       mov eax, 4
00000000004c8cc7  b904000000                       mov ecx, 4
00000000004c8ccc  4c89e7                           mov rdi, r12
00000000004c8ccf  4129f7                           sub r15d, esi
00000000004c8cd2  4989f5                           mov r13, rsi
00000000004c8cd5  4183ff04                         cmp r15d, 4
00000000004c8cd9  440f4ff8                         cmovg r15d, eax
00000000004c8cdd  b800000000                       mov eax, 0
00000000004c8ce2  4585ff                           test r15d, r15d
00000000004c8ce5  440f48f8                         cmovs r15d, eax
00000000004c8ce9  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8ced  4963d7                           movsxd rdx, r15d
00000000004c8cf0  e8abaef3ff                       call 0x403ba0
00000000004c8cf5  478d4c3d00                       lea r9d, [r13 + r15]
00000000004c8cfa  44894b1c                         mov dword ptr [rbx + 0x1c], r9d
00000000004c8cfe  e90efdffff                       jmp 0x4c8a11
00000000004c8d03  0f1f440000                       nop dword ptr [rax + rax]
00000000004c8d08  488b11                           mov rdx, qword ptr [rcx]
00000000004c8d0b  48895500                         mov qword ptr [rbp], rdx
00000000004c8d0f  89c2                             mov edx, eax
00000000004c8d11  488b7411f8                       mov rsi, qword ptr [rcx + rdx - 8]
00000000004c8d16  48897415f8                       mov qword ptr [rbp + rdx - 8], rsi
00000000004c8d1b  488d7508                         lea rsi, [rbp + 8]
00000000004c8d1f  4889ea                           mov rdx, rbp
00000000004c8d22  4883e6f8                         and rsi, 0xfffffffffffffff8
00000000004c8d26  4829f2                           sub rdx, rsi
00000000004c8d29  4829d1                           sub rcx, rdx
00000000004c8d2c  01c2                             add edx, eax
00000000004c8d2e  83e2f8                           and edx, 0xfffffff8
00000000004c8d31  83fa08                           cmp edx, 8
00000000004c8d34  7217                             jb 0x4c8d4d
00000000004c8d36  83e2f8                           and edx, 0xfffffff8
00000000004c8d39  31ff                             xor edi, edi
00000000004c8d3b  4189f8                           mov r8d, edi
00000000004c8d3e  83c708                           add edi, 8
00000000004c8d41  4e8b0c01                         mov r9, qword ptr [rcx + r8]
00000000004c8d45  39d7                             cmp edi, edx
00000000004c8d47  4e890c06                         mov qword ptr [rsi + r8], r9
00000000004c8d4b  72ee                             jb 0x4c8d3b
00000000004c8d4d  418b17                           mov edx, dword ptr [r15]
00000000004c8d50  e923f9ffff                       jmp 0x4c8678
00000000004c8d55  0f1f00                           nop dword ptr [rax]
00000000004c8d58  488b10                           mov rdx, qword ptr [rax]
00000000004c8d5b  48895520                         mov qword ptr [rbp + 0x20], rdx
00000000004c8d5f  89ca                             mov edx, ecx
00000000004c8d61  488b7410f8                       mov rsi, qword ptr [rax + rdx - 8]
00000000004c8d66  48897417f8                       mov qword ptr [rdi + rdx - 8], rsi
00000000004c8d6b  488d7528                         lea rsi, [rbp + 0x28]
00000000004c8d6f  4883e6f8                         and rsi, 0xfffffffffffffff8
00000000004c8d73  4829f7                           sub rdi, rsi
00000000004c8d76  4829f8                           sub rax, rdi
00000000004c8d79  4889c2                           mov rdx, rax
00000000004c8d7c  8d0439                           lea eax, [rcx + rdi]
00000000004c8d7f  83e0f8                           and eax, 0xfffffff8
00000000004c8d82  83f808                           cmp eax, 8
00000000004c8d85  7217                             jb 0x4c8d9e
00000000004c8d87  83e0f8                           and eax, 0xfffffff8
00000000004c8d8a  31ff                             xor edi, edi
00000000004c8d8c  4189f8                           mov r8d, edi
00000000004c8d8f  83c708                           add edi, 8
00000000004c8d92  4e8b0c02                         mov r9, qword ptr [rdx + r8]
00000000004c8d96  39c7                             cmp edi, eax
00000000004c8d98  4e890c06                         mov qword ptr [rsi + r8], r9
00000000004c8d9c  72ee                             jb 0x4c8d8c
00000000004c8d9e  418b17                           mov edx, dword ptr [r15]
00000000004c8da1  e94af9ffff                       jmp 0x4c86f0
00000000004c8da6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
00000000004c8db0  488b08                           mov rcx, qword ptr [rax]
00000000004c8db3  48890f                           mov qword ptr [rdi], rcx
00000000004c8db6  89d1                             mov ecx, edx
00000000004c8db8  488b7408f8                       mov rsi, qword ptr [rax + rcx - 8]
00000000004c8dbd  4889740ff8                       mov qword ptr [rdi + rcx - 8], rsi
00000000004c8dc2  488d7708                         lea rsi, [rdi + 8]
00000000004c8dc6  4883e6f8                         and rsi, 0xfffffffffffffff8
00000000004c8dca  4829f7                           sub rdi, rsi
00000000004c8dcd  4829f8                           sub rax, rdi
00000000004c8dd0  4889c1                           mov rcx, rax
00000000004c8dd3  8d043a                           lea eax, [rdx + rdi]
00000000004c8dd6  83e0f8                           and eax, 0xfffffff8
00000000004c8dd9  83f808                           cmp eax, 8
00000000004c8ddc  0f8226f2ffff                     jb 0x4c8008
00000000004c8de2  83e0f8                           and eax, 0xfffffff8
00000000004c8de5  31ff                             xor edi, edi
00000000004c8de7  4189f8                           mov r8d, edi
00000000004c8dea  83c708                           add edi, 8
00000000004c8ded  4e8b0c01                         mov r9, qword ptr [rcx + r8]
00000000004c8df1  39c7                             cmp edi, eax
00000000004c8df3  4e890c06                         mov qword ptr [rsi + r8], r9
00000000004c8df7  72ee                             jb 0x4c8de7
00000000004c8df9  e90af2ffff                       jmp 0x4c8008
00000000004c8dfe  6690                             nop 
00000000004c8e00  48c744241800000000               mov qword ptr [rsp + 0x18], 0
00000000004c8e09  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c8e0e  e9ccdbffff                       jmp 0x4c69df
00000000004c8e13  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8e17  448b4b18                         mov r9d, dword ptr [rbx + 0x18]
00000000004c8e1b  b802000000                       mov eax, 2
00000000004c8e20  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8e25  b902000000                       mov ecx, 2
00000000004c8e2a  4129f1                           sub r9d, esi
00000000004c8e2d  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c8e31  4183f902                         cmp r9d, 2
00000000004c8e35  440f4fc8                         cmovg r9d, eax
00000000004c8e39  4585c9                           test r9d, r9d
00000000004c8e3c  450f48cc                         cmovs r9d, r12d
00000000004c8e40  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8e44  4963d1                           movsxd rdx, r9d
00000000004c8e47  44894c2428                       mov dword ptr [rsp + 0x28], r9d
00000000004c8e4c  e84fadf3ff                       call 0x403ba0
00000000004c8e51  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c8e56  448b542420                       mov r10d, dword ptr [rsp + 0x20]
00000000004c8e5b  31ff                             xor edi, edi
00000000004c8e5d  448b4c2428                       mov r9d, dword ptr [rsp + 0x28]
00000000004c8e62  4d8b4528                         mov r8, qword ptr [r13 + 0x28]
00000000004c8e66  4501d1                           add r9d, r10d
00000000004c8e69  4d01f0                           add r8, r14
00000000004c8e6c  44894b1c                         mov dword ptr [rbx + 0x1c], r9d
00000000004c8e70  66418907                         mov word ptr [r15], ax
00000000004c8e74  66897c2444                       mov word ptr [rsp + 0x44], di
00000000004c8e79  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8e7d  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8e81  b802000000                       mov eax, 2
00000000004c8e86  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8e8b  b902000000                       mov ecx, 2
00000000004c8e90  4c89442428                       mov qword ptr [rsp + 0x28], r8
00000000004c8e95  4129f7                           sub r15d, esi
00000000004c8e98  89742420                         mov dword ptr [rsp + 0x20], esi
00000000004c8e9c  4183ff02                         cmp r15d, 2
00000000004c8ea0  440f4ff8                         cmovg r15d, eax
00000000004c8ea4  4585ff                           test r15d, r15d
00000000004c8ea7  450f48fc                         cmovs r15d, r12d
00000000004c8eab  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8eaf  4963d7                           movsxd rdx, r15d
00000000004c8eb2  e8e9acf3ff                       call 0x403ba0
00000000004c8eb7  448b542420                       mov r10d, dword ptr [rsp + 0x20]
00000000004c8ebc  0fb7442444                       movzx eax, word ptr [rsp + 0x44]
00000000004c8ec1  be01000000                       mov esi, 1
00000000004c8ec6  4c8b442428                       mov r8, qword ptr [rsp + 0x28]
00000000004c8ecb  4501fa                           add r10d, r15d
00000000004c8ece  4d8b7d28                         mov r15, qword ptr [r13 + 0x28]
00000000004c8ed2  4489531c                         mov dword ptr [rbx + 0x1c], r10d
00000000004c8ed6  4d01f7                           add r15, r14
00000000004c8ed9  e92df4ffff                       jmp 0x4c830b
00000000004c8ede  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8ee2  8b6b18                           mov ebp, dword ptr [rbx + 0x18]
00000000004c8ee5  b804000000                       mov eax, 4
00000000004c8eea  488b7c2408                       mov rdi, qword ptr [rsp + 8]
00000000004c8eef  b904000000                       mov ecx, 4
00000000004c8ef4  29f5                             sub ebp, esi
00000000004c8ef6  4989f6                           mov r14, rsi
00000000004c8ef9  83fd04                           cmp ebp, 4
00000000004c8efc  0f4fe8                           cmovg ebp, eax
00000000004c8eff  b800000000                       mov eax, 0
00000000004c8f04  85ed                             test ebp, ebp
00000000004c8f06  0f48e8                           cmovs ebp, eax
00000000004c8f09  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8f0d  4863d5                           movsxd rdx, ebp
00000000004c8f10  4401f5                           add ebp, r14d
00000000004c8f13  e888acf3ff                       call 0x403ba0
00000000004c8f18  896b1c                           mov dword ptr [rbx + 0x1c], ebp
00000000004c8f1b  8b6c2444                         mov ebp, dword ptr [rsp + 0x44]
00000000004c8f1f  e979e0ffff                       jmp 0x4c6f9d
00000000004c8f24  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8f28  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8f2c  b804000000                       mov eax, 4
00000000004c8f31  b904000000                       mov ecx, 4
00000000004c8f36  4c89e7                           mov rdi, r12
00000000004c8f39  4129f7                           sub r15d, esi
00000000004c8f3c  4989f5                           mov r13, rsi
00000000004c8f3f  4183ff04                         cmp r15d, 4
00000000004c8f43  440f4ff8                         cmovg r15d, eax
00000000004c8f47  b800000000                       mov eax, 0
00000000004c8f4c  4585ff                           test r15d, r15d
00000000004c8f4f  440f48f8                         cmovs r15d, eax
00000000004c8f53  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8f57  4963d7                           movsxd rdx, r15d
00000000004c8f5a  e841acf3ff                       call 0x403ba0
00000000004c8f5f  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8f63  478d443d00                       lea r8d, [r13 + r15]
00000000004c8f68  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c8f6c  8985f4feffff                     mov dword ptr [rbp - 0x10c], eax
00000000004c8f72  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8f7a  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8f7e  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8f82  b804000000                       mov eax, 4
00000000004c8f87  b904000000                       mov ecx, 4
00000000004c8f8c  4c89e7                           mov rdi, r12
00000000004c8f8f  4129f7                           sub r15d, esi
00000000004c8f92  4989f5                           mov r13, rsi
00000000004c8f95  4183ff04                         cmp r15d, 4
00000000004c8f99  440f4ff8                         cmovg r15d, eax
00000000004c8f9d  b800000000                       mov eax, 0
00000000004c8fa2  4585ff                           test r15d, r15d
00000000004c8fa5  440f48f8                         cmovs r15d, eax
00000000004c8fa9  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c8fad  4963d7                           movsxd rdx, r15d
00000000004c8fb0  e8ebabf3ff                       call 0x403ba0
00000000004c8fb5  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c8fb9  478d443d00                       lea r8d, [r13 + r15]
00000000004c8fbe  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c8fc2  8985f8feffff                     mov dword ptr [rbp - 0x108], eax
00000000004c8fc8  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c8fd0  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c8fd4  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c8fd8  b804000000                       mov eax, 4
00000000004c8fdd  b904000000                       mov ecx, 4
00000000004c8fe2  4c89e7                           mov rdi, r12
00000000004c8fe5  4129f7                           sub r15d, esi
00000000004c8fe8  4989f5                           mov r13, rsi
00000000004c8feb  4183ff04                         cmp r15d, 4
00000000004c8fef  440f4ff8                         cmovg r15d, eax
00000000004c8ff3  b800000000                       mov eax, 0
00000000004c8ff8  4585ff                           test r15d, r15d
00000000004c8ffb  440f48f8                         cmovs r15d, eax
00000000004c8fff  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c9003  4963d7                           movsxd rdx, r15d
00000000004c9006  e895abf3ff                       call 0x403ba0
00000000004c900b  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c900f  478d443d00                       lea r8d, [r13 + r15]
00000000004c9014  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c9018  8985fcfeffff                     mov dword ptr [rbp - 0x104], eax
00000000004c901e  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c9026  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c902a  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c902e  b804000000                       mov eax, 4
00000000004c9033  b904000000                       mov ecx, 4
00000000004c9038  4c89e7                           mov rdi, r12
00000000004c903b  4129f7                           sub r15d, esi
00000000004c903e  4989f5                           mov r13, rsi
00000000004c9041  4183ff04                         cmp r15d, 4
00000000004c9045  440f4ff8                         cmovg r15d, eax
00000000004c9049  b800000000                       mov eax, 0
00000000004c904e  4585ff                           test r15d, r15d
00000000004c9051  440f48f8                         cmovs r15d, eax
00000000004c9055  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c9059  4963d7                           movsxd rdx, r15d
00000000004c905c  e83fabf3ff                       call 0x403ba0
00000000004c9061  8b442444                         mov eax, dword ptr [rsp + 0x44]
00000000004c9065  478d443d00                       lea r8d, [r13 + r15]
00000000004c906a  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c906e  89454c                           mov dword ptr [rbp + 0x4c], eax
00000000004c9071  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c9079  4863731c                         movsxd rsi, dword ptr [rbx + 0x1c]
00000000004c907d  448b7b18                         mov r15d, dword ptr [rbx + 0x18]
00000000004c9081  b804000000                       mov eax, 4
00000000004c9086  b904000000                       mov ecx, 4
00000000004c908b  4c89e7                           mov rdi, r12
00000000004c908e  4129f7                           sub r15d, esi
00000000004c9091  4989f5                           mov r13, rsi
00000000004c9094  4183ff04                         cmp r15d, 4
00000000004c9098  440f4ff8                         cmovg r15d, eax
00000000004c909c  b800000000                       mov eax, 0
00000000004c90a1  4585ff                           test r15d, r15d
00000000004c90a4  440f48f8                         cmovs r15d, eax
00000000004c90a8  48037310                         add rsi, qword ptr [rbx + 0x10]
00000000004c90ac  4963d7                           movsxd rdx, r15d
00000000004c90af  e8ecaaf3ff                       call 0x403ba0
00000000004c90b4  478d443d00                       lea r8d, [r13 + r15]
00000000004c90b9  448b742444                       mov r14d, dword ptr [rsp + 0x44]
00000000004c90be  4489431c                         mov dword ptr [rbx + 0x1c], r8d
00000000004c90c2  e90bf9ffff                       jmp 0x4c89d2
00000000004c90c7  4863531c                         movsxd rdx, dword ptr [rbx + 0x1c]
00000000004c90cb  8b4318                           mov eax, dword ptr [rbx + 0x18]
00000000004c90ce  b900030000                       mov ecx, 0x300
00000000004c90d3  488b7310                         mov rsi, qword ptr [rbx + 0x10]
00000000004c90d7  29d0                             sub eax, edx
00000000004c90d9  3d00030000                       cmp eax, 0x300
00000000004c90de  0f4fc1                           cmovg eax, ecx
00000000004c90e1  b900000000                       mov ecx, 0
00000000004c90e6  85c0                             test eax, eax
00000000004c90e8  0f48c1                           cmovs eax, ecx
00000000004c90eb  4801d6                           add rsi, rdx
00000000004c90ee  83f808                           cmp eax, 8
00000000004c90f1  7322                             jae 0x4c9115
00000000004c90f3  a804                             test al, 4
00000000004c90f5  0f853a010000                     jne 0x4c9235
00000000004c90fb  85c0                             test eax, eax
00000000004c90fd  740e                             je 0x4c910d
00000000004c90ff  0fb616                           movzx edx, byte ptr [rsi]
00000000004c9102  a802                             test al, 2
00000000004c9104  885500                           mov byte ptr [rbp], dl
00000000004c9107  0f853c010000                     jne 0x4c9249
00000000004c910d  01431c                           add dword ptr [rbx + 0x1c], eax
00000000004c9110  e920e0ffff                       jmp 0x4c7135
00000000004c9115  488b16                           mov rdx, qword ptr [rsi]
00000000004c9118  488d7d08                         lea rdi, [rbp + 8]
00000000004c911c  4883e7f8                         and rdi, 0xfffffffffffffff8
00000000004c9120  48895500                         mov qword ptr [rbp], rdx
00000000004c9124  89c2                             mov edx, eax
00000000004c9126  488b4c16f8                       mov rcx, qword ptr [rsi + rdx - 8]
00000000004c912b  48894c15f8                       mov qword ptr [rbp + rdx - 8], rcx
00000000004c9130  4889ea                           mov rdx, rbp
00000000004c9133  4829fa                           sub rdx, rdi
00000000004c9136  8d0c10                           lea ecx, [rax + rdx]
00000000004c9139  4829d6                           sub rsi, rdx
00000000004c913c  c1e903                           shr ecx, 3
00000000004c913f  f348a5                           rep movsq qword ptr [rdi], qword ptr [rsi]
00000000004c9142  ebc9                             jmp 0x4c910d
00000000004c9144  488b7b08                         mov rdi, qword ptr [rbx + 8]
00000000004c9148  ba01000000                       mov edx, 1
00000000004c914d  48c7c6f8ffffff                   mov rsi, 0xfffffffffffffff8
00000000004c9154  e827a9f3ff                       call 0x403a80
00000000004c9159  e971d8ffff                       jmp 0x4c69cf
00000000004c915e  4863531c                         movsxd rdx, dword ptr [rbx + 0x1c]
00000000004c9162  8b4318                           mov eax, dword ptr [rbx + 0x18]
00000000004c9165  b960000000                       mov ecx, 0x60
00000000004c916a  488b7310                         mov rsi, qword ptr [rbx + 0x10]
00000000004c916e  29d0                             sub eax, edx
00000000004c9170  83f860                           cmp eax, 0x60
00000000004c9173  0f4fc1                           cmovg eax, ecx
00000000004c9176  b900000000                       mov ecx, 0
00000000004c917b  85c0                             test eax, eax
00000000004c917d  0f48c1                           cmovs eax, ecx
00000000004c9180  4801d6                           add rsi, rdx
00000000004c9183  83f808                           cmp eax, 8
00000000004c9186  733d                             jae 0x4c91c5
00000000004c9188  a804                             test al, 4
00000000004c918a  0f85ca000000                     jne 0x4c925a
00000000004c9190  85c0                             test eax, eax
00000000004c9192  740e                             je 0x4c91a2
00000000004c9194  0fb616                           movzx edx, byte ptr [rsi]
00000000004c9197  a802                             test al, 2
00000000004c9199  885500                           mov byte ptr [rbp], dl
00000000004c919c  0f85cc000000                     jne 0x4c926e
00000000004c91a2  01431c                           add dword ptr [rbx + 0x1c], eax
00000000004c91a5  e903e1ffff                       jmp 0x4c72ad
00000000004c91aa  4889c7                           mov rdi, rax
00000000004c91ad  e82e35ffff                       call 0x4bc6e0
00000000004c91b2  48c744241800000000               mov qword ptr [rsp + 0x18], 0
00000000004c91bb  488b442418                       mov rax, qword ptr [rsp + 0x18]
00000000004c91c0  e91ad8ffff                       jmp 0x4c69df
00000000004c91c5  488b16                           mov rdx, qword ptr [rsi]
00000000004c91c8  488d7d08                         lea rdi, [rbp + 8]
00000000004c91cc  4883e7f8                         and rdi, 0xfffffffffffffff8
00000000004c91d0  48895500                         mov qword ptr [rbp], rdx
00000000004c91d4  89c2                             mov edx, eax
00000000004c91d6  488b4c16f8                       mov rcx, qword ptr [rsi + rdx - 8]
00000000004c91db  48894c15f8                       mov qword ptr [rbp + rdx - 8], rcx
00000000004c91e0  4889ea                           mov rdx, rbp
00000000004c91e3  4829fa                           sub rdx, rdi
00000000004c91e6  8d0c10                           lea ecx, [rax + rdx]
00000000004c91e9  4829d6                           sub rsi, rdx
00000000004c91ec  c1e903                           shr ecx, 3
00000000004c91ef  f348a5                           rep movsq qword ptr [rdi], qword ptr [rsi]
00000000004c91f2  ebae                             jmp 0x4c91a2
00000000004c91f4  8b10                             mov edx, dword ptr [rax]
00000000004c91f6  895520                           mov dword ptr [rbp + 0x20], edx
00000000004c91f9  89ca                             mov edx, ecx
00000000004c91fb  8b4410fc                         mov eax, dword ptr [rax + rdx - 4]
00000000004c91ff  894417fc                         mov dword ptr [rdi + rdx - 4], eax
00000000004c9203  418b17                           mov edx, dword ptr [r15]
00000000004c9206  e9e5f4ffff                       jmp 0x4c86f0
00000000004c920b  8b11                             mov edx, dword ptr [rcx]
00000000004c920d  895500                           mov dword ptr [rbp], edx
00000000004c9210  89c2                             mov edx, eax
00000000004c9212  8b4c11fc                         mov ecx, dword ptr [rcx + rdx - 4]
00000000004c9216  894c15fc                         mov dword ptr [rbp + rdx - 4], ecx
00000000004c921a  418b17                           mov edx, dword ptr [r15]
00000000004c921d  e956f4ffff                       jmp 0x4c8678
00000000004c9222  8b08                             mov ecx, dword ptr [rax]
00000000004c9224  890f                             mov dword ptr [rdi], ecx
00000000004c9226  89d1                             mov ecx, edx
00000000004c9228  8b4408fc                         mov eax, dword ptr [rax + rcx - 4]
00000000004c922c  89440ffc                         mov dword ptr [rdi + rcx - 4], eax
00000000004c9230  e9d3edffff                       jmp 0x4c8008
00000000004c9235  8b16                             mov edx, dword ptr [rsi]
00000000004c9237  895500                           mov dword ptr [rbp], edx
00000000004c923a  89c2                             mov edx, eax
00000000004c923c  8b4c16fc                         mov ecx, dword ptr [rsi + rdx - 4]
00000000004c9240  894c15fc                         mov dword ptr [rbp + rdx - 4], ecx
00000000004c9244  e9c4feffff                       jmp 0x4c910d
00000000004c9249  89c2                             mov edx, eax
00000000004c924b  0fb74c16fe                       movzx ecx, word ptr [rsi + rdx - 2]
00000000004c9250  66894c15fe                       mov word ptr [rbp + rdx - 2], cx
00000000004c9255  e9b3feffff                       jmp 0x4c910d
00000000004c925a  8b16                             mov edx, dword ptr [rsi]
00000000004c925c  895500                           mov dword ptr [rbp], edx
00000000004c925f  89c2                             mov edx, eax
00000000004c9261  8b4c16fc                         mov ecx, dword ptr [rsi + rdx - 4]
00000000004c9265  894c15fc                         mov dword ptr [rbp + rdx - 4], ecx
00000000004c9269  e934ffffff                       jmp 0x4c91a2
00000000004c926e  89c2                             mov edx, eax
00000000004c9270  0fb74c16fe                       movzx ecx, word ptr [rsi + rdx - 2]
00000000004c9275  66894c15fe                       mov word ptr [rbp + rdx - 2], cx
00000000004c927a  e923ffffff                       jmp 0x4c91a2
00000000004c927f  31c0                             xor eax, eax
00000000004c9281  83ea01                           sub edx, 1
00000000004c9284  0f84cbf4ffff                     je 0x4c8755
00000000004c928a  e963e7ffff                       jmp 0x4c79f2
00000000004c928f  c7454400000000                   mov dword ptr [rbp + 0x44], 0
00000000004c9296  c7454800000000                   mov dword ptr [rbp + 0x48], 0
00000000004c929d  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c92a5  83f801                           cmp eax, 1
00000000004c92a8  0f842df2ffff                     je 0x4c84db
00000000004c92ae  c7454c00000000                   mov dword ptr [rbp + 0x4c], 0
00000000004c92b5  c7457800000000                   mov dword ptr [rbp + 0x78], 0
00000000004c92bc  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c92c4  83f801                           cmp eax, 1
00000000004c92c7  0f84b0f2ffff                     je 0x4c857d
00000000004c92cd  c7457c00000000                   mov dword ptr [rbp + 0x7c], 0
00000000004c92d4  31d2                             xor edx, edx
00000000004c92d6  e970e2ffff                       jmp 0x4c754b
00000000004c92db  83e801                           sub eax, 1
00000000004c92de  0f8430eeffff                     je 0x4c8114
00000000004c92e4  4531c9                           xor r9d, r9d
00000000004c92e7  4531ed                           xor r13d, r13d
00000000004c92ea  e9bfdbffff                       jmp 0x4c6eae
00000000004c92ef  4189c6                           mov r14d, eax
00000000004c92f2  e96ef8ffff                       jmp 0x4c8b65
00000000004c92f7  83f801                           cmp eax, 1
00000000004c92fa  0f847afcffff                     je 0x4c8f7a
00000000004c9300  c785f8feffff00000000             mov dword ptr [rbp - 0x108], 0
00000000004c930a  c785fcfeffff00000000             mov dword ptr [rbp - 0x104], 0
00000000004c9314  c744244400000000                 mov dword ptr [rsp + 0x44], 0
00000000004c931c  83e801                           sub eax, 1
00000000004c931f  0f8401fdffff                     je 0x4c9026
00000000004c9325  c7454c00000000                   mov dword ptr [rbp + 0x4c], 0
00000000004c932c  e9a1f6ffff                       jmp 0x4c89d2
00000000004c9331  4183fe01                         cmp r14d, 1
00000000004c9335  0f84bdf8ffff                     je 0x4c8bf8
00000000004c933b  41c7450800000000                 mov dword ptr [r13 + 8], 0
00000000004c9343  31c0                             xor eax, eax
00000000004c9345  e973f7ffff                       jmp 0x4c8abd
00000000004c934a  83e801                           sub eax, 1
00000000004c934d  0f8459eaffff                     je 0x4c7dac
00000000004c9353  4531c9                           xor r9d, r9d
00000000004c9356  4531e4                           xor r12d, r12d
00000000004c9359  e9fcd9ffff                       jmp 0x4c6d5a
00000000004c935e  4183fe01                         cmp r14d, 1
00000000004c9362  0f844becffff                     je 0x4c7fb3
00000000004c9368  e98edaffff                       jmp 0x4c6dfb
00000000004c936d  83e801                           sub eax, 1
00000000004c9370  660fefc0                         pxor xmm0, xmm0
00000000004c9374  0f8410e9ffff                     je 0x4c7c8a
00000000004c937a  e925e7ffff                       jmp 0x4c7aa4
00000000004c937f  83fe01                           cmp esi, 1
00000000004c9382  0f84f1faffff                     je 0x4c8e79
00000000004c9388  4d89c7                           mov r15, r8
00000000004c938b  31c0                             xor eax, eax
00000000004c938d  e979efffff                       jmp 0x4c830b
00000000004c9392  83e801                           sub eax, 1
00000000004c9395  0f840febffff                     je 0x4c7eaa
00000000004c939b  e927daffff                       jmp 0x4c6dc7
00000000004c93a0  83e801                           sub eax, 1
00000000004c93a3  0f84caecffff                     je 0x4c8073
00000000004c93a9  e96edbffff                       jmp 0x4c6f1c
00000000004c93ae  e8edacf3ff                       call 0x4040a0
