0000000000412570  4157                             push r15
0000000000412572  4156                             push r14
0000000000412574  488d35b5652200                   lea rsi, [rip + 0x2265b5]
000000000041257b  4155                             push r13
000000000041257d  4154                             push r12
000000000041257f  55                               push rbp
0000000000412580  53                               push rbx
0000000000412581  4883ec58                         sub rsp, 0x58
0000000000412585  e896190b00                       call 0x4c3f20
000000000041258a  4885c0                           test rax, rax
000000000041258d  4889442440                       mov qword ptr [rsp + 0x40], rax
0000000000412592  0f8418040000                     je 0x4129b0
0000000000412598  4889c3                           mov rbx, rax
000000000041259b  31c0                             xor eax, eax
000000000041259d  e80efc0f00                       call 0x5121b0
00000000004125a2  bf00000400                       mov edi, 0x40000
00000000004125a7  4889442428                       mov qword ptr [rsp + 0x28], rax
00000000004125ac  e87fd40d00                       call 0x4efa30
00000000004125b1  bf00000100                       mov edi, 0x10000
00000000004125b6  4989c6                           mov r14, rax
00000000004125b9  4889442410                       mov qword ptr [rsp + 0x10], rax
00000000004125be  e86dd40d00                       call 0x4efa30
00000000004125c3  4889d9                           mov rcx, rbx
00000000004125c6  baffff0100                       mov edx, 0x1ffff
00000000004125cb  be01000000                       mov esi, 1
00000000004125d0  4c89f7                           mov rdi, r14
00000000004125d3  4889442448                       mov qword ptr [rsp + 0x48], rax
00000000004125d8  e8831a0b00                       call 0x4c4060
00000000004125dd  89442418                         mov dword ptr [rsp + 0x18], eax
00000000004125e1  410fb606                         movzx eax, byte ptr [r14]
00000000004125e5  3cef                             cmp al, 0xef
00000000004125e7  0f84ab020000                     je 0x412898
00000000004125ed  84c0                             test al, al
00000000004125ef  0f85db020000                     jne 0x4128d0
00000000004125f5  488b442410                       mov rax, qword ptr [rsp + 0x10]
00000000004125fa  80780100                         cmp byte ptr [rax + 1], 0
00000000004125fe  7510                             jne 0x412610
0000000000412600  807802fe                         cmp byte ptr [rax + 2], 0xfe
0000000000412604  0f841e030000                     je 0x412928
000000000041260a  660f1f440000                     nop word ptr [rax + rax]
0000000000412610  4889c3                           mov rbx, rax
0000000000412613  c644241f00                       mov byte ptr [rsp + 0x1f], 0
0000000000412618  4531ff                           xor r15d, r15d
000000000041261b  c744240401000000                 mov dword ptr [rsp + 4], 1
0000000000412623  8b4c2418                         mov ecx, dword ptr [rsp + 0x18]
0000000000412627  85c9                             test ecx, ecx
0000000000412629  0f8e71030000                     jle 0x4129a0
000000000041262f  4863442404                       movsxd rax, dword ptr [rsp + 4]
0000000000412634  4531ed                           xor r13d, r13d
0000000000412637  c7042400000000                   mov dword ptr [rsp], 0
000000000041263e  4589f9                           mov r9d, r15d
0000000000412641  4989de                           mov r14, rbx
0000000000412644  4889c1                           mov rcx, rax
0000000000412647  4889442408                       mov qword ptr [rsp + 8], rax
000000000041264c  8d80ffffff7f                     lea eax, [rax + 0x7fffffff]
0000000000412652  01c0                             add eax, eax
0000000000412654  89442434                         mov dword ptr [rsp + 0x34], eax
0000000000412658  8d41ff                           lea eax, [rcx - 1]
000000000041265b  4883c001                         add rax, 1
000000000041265f  4889442438                       mov qword ptr [rsp + 0x38], rax
0000000000412664  0f1f4000                         nop dword ptr [rax]
0000000000412668  4585ff                           test r15d, r15d
000000000041266b  0f844d030000                     je 0x4129be
0000000000412671  31f6                             xor esi, esi
0000000000412673  41803e00                         cmp byte ptr [r14], 0
0000000000412677  400f95c6                         setne sil
000000000041267b  837c240401                       cmp dword ptr [rsp + 4], 1
0000000000412680  0f849a010000                     je 0x412820
0000000000412686  4183ff01                         cmp r15d, 1
000000000041268a  0f8481010000                     je 0x412811
0000000000412690  4489c8                           mov eax, r9d
0000000000412693  4429f8                           sub eax, r15d
0000000000412696  83c001                           add eax, 1
0000000000412699  4898                             cdqe 
000000000041269b  803c0300                         cmp byte ptr [rbx + rax], 0
000000000041269f  0f85c3010000                     jne 0x412868
00000000004126a5  837c240402                       cmp dword ptr [rsp + 4], 2
00000000004126aa  0f8470010000                     je 0x412820
00000000004126b0  4183ff02                         cmp r15d, 2
00000000004126b4  7415                             je 0x4126cb
00000000004126b6  4489c8                           mov eax, r9d
00000000004126b9  4429f8                           sub eax, r15d
00000000004126bc  83c002                           add eax, 2
00000000004126bf  4898                             cdqe 
00000000004126c1  803c0300                         cmp byte ptr [rbx + rax], 0
00000000004126c5  0f85b5010000                     jne 0x412880
00000000004126cb  807c241f00                       cmp byte ptr [rsp + 0x1f], 0
00000000004126d0  0f844a010000                     je 0x412820
00000000004126d6  4489c8                           mov eax, r9d
00000000004126d9  4429f8                           sub eax, r15d
00000000004126dc  83c003                           add eax, 3
00000000004126df  4898                             cdqe 
00000000004126e1  803c0300                         cmp byte ptr [rbx + rax], 0
00000000004126e5  0f8435010000                     je 0x412820
00000000004126eb  418d5501                         lea edx, [r13 + 1]
00000000004126ef  4963fd                           movsxd rdi, r13d
00000000004126f2  418d4502                         lea eax, [r13 + 2]
00000000004126f6  4863d2                           movsxd rdx, edx
00000000004126f9  c6043b5f                         mov byte ptr [rbx + rdi], 0x5f
00000000004126fd  48895c2420                       mov qword ptr [rsp + 0x20], rbx
0000000000412702  c6041378                         mov byte ptr [rbx + rdx], 0x78
0000000000412706  4c89f5                           mov rbp, r14
0000000000412709  4c63e0                           movsxd r12, eax
000000000041270c  89442430                         mov dword ptr [rsp + 0x30], eax
0000000000412710  488b442438                       mov rax, qword ptr [rsp + 0x38]
0000000000412715  4901dc                           add r12, rbx
0000000000412718  4c89e3                           mov rbx, r12
000000000041271b  4589cc                           mov r12d, r9d
000000000041271e  4e8d2c30                         lea r13, [rax + r14]
0000000000412722  440fbe4500                       movsx r8d, byte ptr [rbp]
0000000000412727  488d0daca12300                   lea rcx, [rip + 0x23a1ac]
000000000041272e  4889df                           mov rdi, rbx
0000000000412731  31c0                             xor eax, eax
0000000000412733  48c7c2ffffffff                   mov rdx, 0xffffffffffffffff
000000000041273a  be01000000                       mov esi, 1
000000000041273f  4883c501                         add rbp, 1
0000000000412743  4883c302                         add rbx, 2
0000000000412747  e8841bffff                       call 0x4042d0
000000000041274c  4939ed                           cmp r13, rbp
000000000041274f  75d1                             jne 0x412722
0000000000412751  8b442430                         mov eax, dword ptr [rsp + 0x30]
0000000000412755  8b4c2434                         mov ecx, dword ptr [rsp + 0x34]
0000000000412759  4589e1                           mov r9d, r12d
000000000041275c  488b5c2420                       mov rbx, qword ptr [rsp + 0x20]
0000000000412761  448d6c0802                       lea r13d, [rax + rcx + 2]
0000000000412766  418d4501                         lea eax, [r13 + 1]
000000000041276a  4963cd                           movsxd rcx, r13d
000000000041276d  4801d9                           add rcx, rbx
0000000000412770  4898                             cdqe 
0000000000412772  4801d8                           add rax, rbx
0000000000412775  83042401                         add dword ptr [rsp], 1
0000000000412779  44034c2404                       add r9d, dword ptr [rsp + 4]
000000000041277e  8b1424                           mov edx, dword ptr [rsp]
0000000000412781  4c03742408                       add r14, qword ptr [rsp + 8]
0000000000412786  3b542418                         cmp edx, dword ptr [rsp + 0x18]
000000000041278a  0f85d8feffff                     jne 0x412668
0000000000412790  c6010a                           mov byte ptr [rcx], 0xa
0000000000412793  bf00000200                       mov edi, 0x20000
0000000000412798  c60000                           mov byte ptr [rax], 0
000000000041279b  e890d20d00                       call 0x4efa30
00000000004127a0  4889df                           mov rdi, rbx
00000000004127a3  4889c6                           mov rsi, rax
00000000004127a6  4889c5                           mov rbp, rax
00000000004127a9  e852381000                       call 0x516000
00000000004127ae  488b7c2440                       mov rdi, qword ptr [rsp + 0x40]
00000000004127b3  c685feff000000                   mov byte ptr [rbp + 0xfffe], 0
00000000004127ba  e831180b00                       call 0x4c3ff0
00000000004127bf  488b7c2410                       mov rdi, qword ptr [rsp + 0x10]
00000000004127c4  e8c7d30d00                       call 0x4efb90
00000000004127c9  488b7c2448                       mov rdi, qword ptr [rsp + 0x48]
00000000004127ce  e8bdd30d00                       call 0x4efb90
00000000004127d3  4889ef                           mov rdi, rbp
00000000004127d6  e81515ffff                       call 0x403cf0
00000000004127db  ba0a000000                       mov edx, 0xa
00000000004127e0  4889ee                           mov rsi, rbp
00000000004127e3  6689540500                       mov word ptr [rbp + rax], dx
00000000004127e8  488b442428                       mov rax, qword ptr [rsp + 0x28]
00000000004127ed  488b38                           mov rdi, qword ptr [rax]
00000000004127f0  e80bcc1100                       call 0x52f400
00000000004127f5  4889ef                           mov rdi, rbp
00000000004127f8  e893d30d00                       call 0x4efb90
00000000004127fd  488b442428                       mov rax, qword ptr [rsp + 0x28]
0000000000412802  4883c458                         add rsp, 0x58
0000000000412806  5b                               pop rbx
0000000000412807  5d                               pop rbp
0000000000412808  415c                             pop r12
000000000041280a  415d                             pop r13
000000000041280c  415e                             pop r14
000000000041280e  415f                             pop r15
0000000000412810  c3                               ret 
0000000000412811  837c240402                       cmp dword ptr [rsp + 4], 2
0000000000412816  0f859afeffff                     jne 0x4126b6
000000000041281c  0f1f4000                         nop dword ptr [rax]
0000000000412820  418d5501                         lea edx, [r13 + 1]
0000000000412824  4963fd                           movsxd rdi, r13d
0000000000412827  488d0c3b                         lea rcx, [rbx + rdi]
000000000041282b  4863c2                           movsxd rax, edx
000000000041282e  4801d8                           add rax, rbx
0000000000412831  85f6                             test esi, esi
0000000000412833  0f85b9feffff                     jne 0x4126f2
0000000000412839  4963f1                           movsxd rsi, r9d
000000000041283c  0fb63433                         movzx esi, byte ptr [rbx + rsi]
0000000000412840  4080fe0d                         cmp sil, 0xd
0000000000412844  0f842bffffff                     je 0x412775
000000000041284a  408831                           mov byte ptr [rcx], sil
000000000041284d  8d7201                           lea esi, [rdx + 1]
0000000000412850  4889c1                           mov rcx, rax
0000000000412853  4189d5                           mov r13d, edx
0000000000412856  4863f6                           movsxd rsi, esi
0000000000412859  488d0433                         lea rax, [rbx + rsi]
000000000041285d  e913ffffff                       jmp 0x412775
0000000000412862  660f1f440000                     nop word ptr [rax + rax]
0000000000412868  837c240402                       cmp dword ptr [rsp + 4], 2
000000000041286d  be01000000                       mov esi, 1
0000000000412872  0f8538feffff                     jne 0x4126b0
0000000000412878  e96efeffff                       jmp 0x4126eb
000000000041287d  0f1f00                           nop dword ptr [rax]
0000000000412880  807c241f00                       cmp byte ptr [rsp + 0x1f], 0
0000000000412885  be01000000                       mov esi, 1
000000000041288a  0f8546feffff                     jne 0x4126d6
0000000000412890  e956feffff                       jmp 0x4126eb
0000000000412895  0f1f00                           nop dword ptr [rax]
0000000000412898  488b442410                       mov rax, qword ptr [rsp + 0x10]
000000000041289d  807801bb                         cmp byte ptr [rax + 1], 0xbb
00000000004128a1  0f8569fdffff                     jne 0x412610
00000000004128a7  807802bf                         cmp byte ptr [rax + 2], 0xbf
00000000004128ab  0f855ffdffff                     jne 0x412610
00000000004128b1  488d5803                         lea rbx, [rax + 3]
00000000004128b5  836c241803                       sub dword ptr [rsp + 0x18], 3
00000000004128ba  c644241f00                       mov byte ptr [rsp + 0x1f], 0
00000000004128bf  4531ff                           xor r15d, r15d
00000000004128c2  c744240401000000                 mov dword ptr [rsp + 4], 1
00000000004128ca  e954fdffff                       jmp 0x412623
00000000004128cf  90                               nop 
00000000004128d0  3cff                             cmp al, 0xff
00000000004128d2  0f8515010000                     jne 0x4129ed
00000000004128d8  488b442410                       mov rax, qword ptr [rsp + 0x10]
00000000004128dd  807801fe                         cmp byte ptr [rax + 1], 0xfe
00000000004128e1  0f8529fdffff                     jne 0x412610
00000000004128e7  80780200                         cmp byte ptr [rax + 2], 0
00000000004128eb  757b                             jne 0x412968
00000000004128ed  80780300                         cmp byte ptr [rax + 3], 0
00000000004128f1  7575                             jne 0x412968
00000000004128f3  8b542418                         mov edx, dword ptr [rsp + 0x18]
00000000004128f7  488d5804                         lea rbx, [rax + 4]
00000000004128fb  c644241f01                       mov byte ptr [rsp + 0x1f], 1
0000000000412900  c744240404000000                 mov dword ptr [rsp + 4], 4
0000000000412908  83ea04                           sub edx, 4
000000000041290b  8d4203                           lea eax, [rdx + 3]
000000000041290e  85d2                             test edx, edx
0000000000412910  0f49c2                           cmovns eax, edx
0000000000412913  4531ff                           xor r15d, r15d
0000000000412916  c1f802                           sar eax, 2
0000000000412919  89442418                         mov dword ptr [rsp + 0x18], eax
000000000041291d  e901fdffff                       jmp 0x412623
0000000000412922  660f1f440000                     nop word ptr [rax + rax]
0000000000412928  807803ff                         cmp byte ptr [rax + 3], 0xff
000000000041292c  0f85defcffff                     jne 0x412610
0000000000412932  8b542418                         mov edx, dword ptr [rsp + 0x18]
0000000000412936  488d5804                         lea rbx, [rax + 4]
000000000041293a  c644241f00                       mov byte ptr [rsp + 0x1f], 0
000000000041293f  41bf03000000                     mov r15d, 3
0000000000412945  c744240404000000                 mov dword ptr [rsp + 4], 4
000000000041294d  83ea04                           sub edx, 4
0000000000412950  8d4203                           lea eax, [rdx + 3]
0000000000412953  85d2                             test edx, edx
0000000000412955  0f49c2                           cmovns eax, edx
0000000000412958  c1f802                           sar eax, 2
000000000041295b  89442418                         mov dword ptr [rsp + 0x18], eax
000000000041295f  e9bffcffff                       jmp 0x412623
0000000000412964  0f1f4000                         nop dword ptr [rax]
0000000000412968  80780200                         cmp byte ptr [rax + 2], 0
000000000041296c  7473                             je 0x4129e1
000000000041296e  8b542418                         mov edx, dword ptr [rsp + 0x18]
0000000000412972  488d5802                         lea rbx, [rax + 2]
0000000000412976  c644241f00                       mov byte ptr [rsp + 0x1f], 0
000000000041297b  4531ff                           xor r15d, r15d
000000000041297e  c744240402000000                 mov dword ptr [rsp + 4], 2
0000000000412986  83ea02                           sub edx, 2
0000000000412989  89d0                             mov eax, edx
000000000041298b  c1e81f                           shr eax, 0x1f
000000000041298e  01d0                             add eax, edx
0000000000412990  d1f8                             sar eax, 1
0000000000412992  89442418                         mov dword ptr [rsp + 0x18], eax
0000000000412996  e988fcffff                       jmp 0x412623
000000000041299b  0f1f440000                       nop dword ptr [rax + rax]
00000000004129a0  488d4301                         lea rax, [rbx + 1]
00000000004129a4  4889d9                           mov rcx, rbx
00000000004129a7  e9e4fdffff                       jmp 0x412790
00000000004129ac  0f1f4000                         nop dword ptr [rax]
00000000004129b0  48c744242800000000               mov qword ptr [rsp + 0x28], 0
00000000004129b9  e93ffeffff                       jmp 0x4127fd
00000000004129be  31f6                             xor esi, esi
00000000004129c0  837c240401                       cmp dword ptr [rsp + 4], 1
00000000004129c5  0f85c5fcffff                     jne 0x412690
00000000004129cb  418d5501                         lea edx, [r13 + 1]
00000000004129cf  4963fd                           movsxd rdi, r13d
00000000004129d2  488d0c3b                         lea rcx, [rbx + rdi]
00000000004129d6  4863c2                           movsxd rax, edx
00000000004129d9  4801d8                           add rax, rbx
00000000004129dc  e958feffff                       jmp 0x412839
00000000004129e1  80780300                         cmp byte ptr [rax + 3], 0
00000000004129e5  0f8425fcffff                     je 0x412610
00000000004129eb  eb81                             jmp 0x41296e
00000000004129ed  3cfe                             cmp al, 0xfe
00000000004129ef  754f                             jne 0x412a40
00000000004129f1  488b442410                       mov rax, qword ptr [rsp + 0x10]
00000000004129f6  807801ff                         cmp byte ptr [rax + 1], 0xff
00000000004129fa  0f8510fcffff                     jne 0x412610
0000000000412a00  80780200                         cmp byte ptr [rax + 2], 0
0000000000412a04  750a                             jne 0x412a10
0000000000412a06  80780300                         cmp byte ptr [rax + 3], 0
0000000000412a0a  0f8400fcffff                     je 0x412610
0000000000412a10  8b542418                         mov edx, dword ptr [rsp + 0x18]
0000000000412a14  488d5802                         lea rbx, [rax + 2]
0000000000412a18  c644241f00                       mov byte ptr [rsp + 0x1f], 0
0000000000412a1d  41bf01000000                     mov r15d, 1
0000000000412a23  c744240402000000                 mov dword ptr [rsp + 4], 2
0000000000412a2b  83ea02                           sub edx, 2
0000000000412a2e  89d0                             mov eax, edx
0000000000412a30  c1e81f                           shr eax, 0x1f
0000000000412a33  01d0                             add eax, edx
0000000000412a35  d1f8                             sar eax, 1
0000000000412a37  89442418                         mov dword ptr [rsp + 0x18], eax
0000000000412a3b  e9e3fbffff                       jmp 0x412623
0000000000412a40  488b5c2410                       mov rbx, qword ptr [rsp + 0x10]
0000000000412a45  c644241f00                       mov byte ptr [rsp + 0x1f], 0
0000000000412a4a  4531ff                           xor r15d, r15d
0000000000412a4d  c744240401000000                 mov dword ptr [rsp + 4], 1
0000000000412a55  e9c9fbffff                       jmp 0x412623
