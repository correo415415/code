0000000000495440  4157                             push r15
0000000000495442  4156                             push r14
0000000000495444  4989f3                           mov r11, rsi
0000000000495447  4155                             push r13
0000000000495449  4154                             push r12
000000000049544b  4989fc                           mov r12, rdi
000000000049544e  55                               push rbp
000000000049544f  53                               push rbx
0000000000495450  4881ec58080000                   sub rsp, 0x858
0000000000495457  c705af40430001000000             mov dword ptr [rip + 0x4340af], 1
0000000000495461  c705dd214c0000000000             mov dword ptr [rip + 0x4c21dd], 0
000000000049546b  4c8d6c2440                       lea r13, [rsp + 0x40]
0000000000495470  89542404                         mov dword ptr [rsp + 4], edx
0000000000495474  48893db5214c00                   mov qword ptr [rip + 0x4c21b5], rdi
000000000049547b  660f6f05cd2b1a00                 movdqa xmm0, xmmword ptr [rip + 0x1a2bcd]
0000000000495483  498d9500040000                   lea rdx, [r13 + 0x400]
000000000049548a  c705ac214c0000000000             mov dword ptr [rip + 0x4c21ac], 0
0000000000495494  660f6f0d54bf1a00                 movdqa xmm1, xmmword ptr [rip + 0x1abf54]
000000000049549c  64488b042528000000               mov rax, qword ptr fs:[0x28]
00000000004954a5  4889842448080000                 mov qword ptr [rsp + 0x848], rax
00000000004954ad  31c0                             xor eax, eax
00000000004954af  4c89e8                           mov rax, r13
00000000004954b2  660f1f440000                     nop word ptr [rax + rax]
00000000004954b8  0f2900                           movaps xmmword ptr [rax], xmm0
00000000004954bb  660ffec1                         paddd xmm0, xmm1
00000000004954bf  4883c010                         add rax, 0x10
00000000004954c3  4839d0                           cmp rax, rdx
00000000004954c6  75f0                             jne 0x4954b8
00000000004954c8  31c0                             xor eax, eax
00000000004954ca  660f1f440000                     nop word ptr [rax + rax]
00000000004954d0  4963548500                       movsxd rdx, dword ptr [r13 + rax*4]
00000000004954d5  89849440040000                   mov dword ptr [rsp + rdx*4 + 0x440], eax
00000000004954dc  4883c001                         add rax, 1
00000000004954e0  483d00010000                     cmp rax, 0x100
00000000004954e6  75e8                             jne 0x4954d0
00000000004954e8  488d742420                       lea rsi, [rsp + 0x20]
00000000004954ed  31ed                             xor ebp, ebp
00000000004954ef  488d7e20                         lea rdi, [rsi + 0x20]
00000000004954f3  0f1f440000                       nop dword ptr [rax + rax]
00000000004954f8  4863c5                           movsxd rax, ebp
00000000004954fb  410fb61404                       movzx edx, byte ptr [r12 + rax]
0000000000495500  89d1                             mov ecx, edx
0000000000495502  83e101                           and ecx, 1
0000000000495505  0fb6c1                           movzx eax, cl
0000000000495508  83c902                           or ecx, 2
000000000049550b  f6c202                           test dl, 2
000000000049550e  0fb6c9                           movzx ecx, cl
0000000000495511  0f45c1                           cmovne eax, ecx
0000000000495514  89c1                             mov ecx, eax
0000000000495516  83c904                           or ecx, 4
0000000000495519  f6c204                           test dl, 4
000000000049551c  0f45c1                           cmovne eax, ecx
000000000049551f  89c1                             mov ecx, eax
0000000000495521  83c908                           or ecx, 8
0000000000495524  f6c208                           test dl, 8
0000000000495527  0f45c1                           cmovne eax, ecx
000000000049552a  89c1                             mov ecx, eax
000000000049552c  83c910                           or ecx, 0x10
000000000049552f  f6c210                           test dl, 0x10
0000000000495532  0f45c1                           cmovne eax, ecx
0000000000495535  89c1                             mov ecx, eax
0000000000495537  83c920                           or ecx, 0x20
000000000049553a  f6c220                           test dl, 0x20
000000000049553d  0f45c1                           cmovne eax, ecx
0000000000495540  89c1                             mov ecx, eax
0000000000495542  83c940                           or ecx, 0x40
0000000000495545  f6c240                           test dl, 0x40
0000000000495548  0f45c1                           cmovne eax, ecx
000000000049554b  83c501                           add ebp, 1
000000000049554e  84d2                             test dl, dl
0000000000495550  0f89ca030000                     jns 0x495920
0000000000495556  0c80                             or al, 0x80
0000000000495558  4883c604                         add rsi, 4
000000000049555c  8946fc                           mov dword ptr [rsi - 4], eax
000000000049555f  4839f7                           cmp rdi, rsi
0000000000495562  7594                             jne 0x4954f8
0000000000495564  8b442430                         mov eax, dword ptr [rsp + 0x30]
0000000000495568  31d2                             xor edx, edx
000000000049556a  4531f6                           xor r14d, r14d
000000000049556d  4531ff                           xor r15d, r15d
0000000000495570  4c896c2408                       mov qword ptr [rsp + 8], r13
0000000000495575  892dc5204c00                     mov dword ptr [rip + 0x4c20c5], ebp
000000000049557b  c7058b3f430001000000             mov dword ptr [rip + 0x433f8b], 1
0000000000495585  bb01000000                       mov ebx, 1
000000000049558a  4d89dd                           mov r13, r11
000000000049558d  c1e008                           shl eax, 8
0000000000495590  03442434                         add eax, dword ptr [rsp + 0x34]
0000000000495594  89c7                             mov edi, eax
0000000000495596  890424                           mov dword ptr [rsp], eax
0000000000495599  8b442438                         mov eax, dword ptr [rsp + 0x38]
000000000049559d  c1e008                           shl eax, 8
00000000004955a0  0344243c                         add eax, dword ptr [rsp + 0x3c]
00000000004955a4  89442410                         mov dword ptr [rsp + 0x10], eax
00000000004955a8  8b442404                         mov eax, dword ptr [rsp + 4]
00000000004955ac  83e801                           sub eax, 1
00000000004955af  396c2410                         cmp dword ptr [rsp + 0x10], ebp
00000000004955b3  89442418                         mov dword ptr [rsp + 0x18], eax
00000000004955b7  8d47ff                           lea eax, [rdi - 1]
00000000004955ba  8944241c                         mov dword ptr [rsp + 0x1c], eax
00000000004955be  0f8e18030000                     jle 0x4958dc
00000000004955c4  0f1f4000                         nop dword ptr [rax]
00000000004955c8  8b3424                           mov esi, dword ptr [rsp]
00000000004955cb  8b442404                         mov eax, dword ptr [rsp + 4]
00000000004955cf  39c6                             cmp esi, eax
00000000004955d1  0f4ec6                           cmovle eax, esi
00000000004955d4  4139c7                           cmp r15d, eax
00000000004955d7  0f8dff020000                     jge 0x4958dc
00000000004955dd  4863cd                           movsxd rcx, ebp
00000000004955e0  8d341b                           lea esi, [rbx + rbx]
00000000004955e3  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004955e8  4189d1                           mov r9d, edx
00000000004955eb  4121d9                           and r9d, ebx
00000000004955ee  81fe00010000                     cmp esi, 0x100
00000000004955f4  0f843e030000                     je 0x495938
00000000004955fa  21d6                             and esi, edx
00000000004955fc  4585c9                           test r9d, r9d
00000000004955ff  8d049d00000000                   lea eax, [rbx*4]
0000000000495606  0f84fc040000                     je 0x495b08
000000000049560c  3d00010000                       cmp eax, 0x100
0000000000495611  0f85d40a0000                     jne 0x4960eb
0000000000495617  83c501                           add ebp, 1
000000000049561a  4863cd                           movsxd rcx, ebp
000000000049561d  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495622  4189d1                           mov r9d, edx
0000000000495625  89d7                             mov edi, edx
0000000000495627  4183e101                         and r9d, 1
000000000049562b  85f6                             test esi, esi
000000000049562d  0f84d00e0000                     je 0x496503
0000000000495633  83e702                           and edi, 2
0000000000495636  4584c9                           test r9b, r9b
0000000000495639  bb04000000                       mov ebx, 4
000000000049563e  400fb6c7                         movzx eax, dil
0000000000495642  41be01000000                     mov r14d, 1
0000000000495648  0f84f20d0000                     je 0x496440
000000000049564e  89d6                             mov esi, edx
0000000000495650  8d3c1b                           lea edi, [rbx + rbx]
0000000000495653  21de                             and esi, ebx
0000000000495655  85c0                             test eax, eax
0000000000495657  0f8441100000                     je 0x49669e
000000000049565d  81ff00010000                     cmp edi, 0x100
0000000000495663  0f8561110000                     jne 0x4967ca
0000000000495669  83c501                           add ebp, 1
000000000049566c  4863cd                           movsxd rcx, ebp
000000000049566f  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495674  89d0                             mov eax, edx
0000000000495676  89d7                             mov edi, edx
0000000000495678  83e001                           and eax, 1
000000000049567b  85f6                             test esi, esi
000000000049567d  0f84960e0000                     je 0x496519
0000000000495683  83e702                           and edi, 2
0000000000495686  84c0                             test al, al
0000000000495688  bb04000000                       mov ebx, 4
000000000049568d  400fb6f7                         movzx esi, dil
0000000000495691  41be01000000                     mov r14d, 1
0000000000495697  0f84f70d0000                     je 0x496494
000000000049569d  89d8                             mov eax, ebx
000000000049569f  8d3c1b                           lea edi, [rbx + rbx]
00000000004956a2  21d0                             and eax, edx
00000000004956a4  85f6                             test esi, esi
00000000004956a6  0f84ca100000                     je 0x496776
00000000004956ac  81ff00010000                     cmp edi, 0x100
00000000004956b2  0f85d90a0000                     jne 0x496191
00000000004956b8  83c501                           add ebp, 1
00000000004956bb  4863cd                           movsxd rcx, ebp
00000000004956be  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004956c3  89d6                             mov esi, edx
00000000004956c5  89d7                             mov edi, edx
00000000004956c7  83e601                           and esi, 1
00000000004956ca  85c0                             test eax, eax
00000000004956cc  0f84920e0000                     je 0x496564
00000000004956d2  83e702                           and edi, 2
00000000004956d5  4084f6                           test sil, sil
00000000004956d8  bb04000000                       mov ebx, 4
00000000004956dd  400fb6c7                         movzx eax, dil
00000000004956e1  41be01000000                     mov r14d, 1
00000000004956e7  0f84bc0d0000                     je 0x4964a9
00000000004956ed  89d6                             mov esi, edx
00000000004956ef  8d3c1b                           lea edi, [rbx + rbx]
00000000004956f2  21de                             and esi, ebx
00000000004956f4  85c0                             test eax, eax
00000000004956f6  0f848a100000                     je 0x496786
00000000004956fc  81ff00010000                     cmp edi, 0x100
0000000000495702  0f85da0a0000                     jne 0x4961e2
0000000000495708  83c501                           add ebp, 1
000000000049570b  4863cd                           movsxd rcx, ebp
000000000049570e  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495713  89d0                             mov eax, edx
0000000000495715  89d7                             mov edi, edx
0000000000495717  83e001                           and eax, 1
000000000049571a  85f6                             test esi, esi
000000000049571c  0f84fd0e0000                     je 0x49661f
0000000000495722  83e702                           and edi, 2
0000000000495725  84c0                             test al, al
0000000000495727  bb04000000                       mov ebx, 4
000000000049572c  400fb6f7                         movzx esi, dil
0000000000495730  41be01000000                     mov r14d, 1
0000000000495736  0f845e0e0000                     je 0x49659a
000000000049573c  89d0                             mov eax, edx
000000000049573e  8d3c1b                           lea edi, [rbx + rbx]
0000000000495741  21d8                             and eax, ebx
0000000000495743  85f6                             test esi, esi
0000000000495745  0f84e90f0000                     je 0x496734
000000000049574b  81ff00010000                     cmp edi, 0x100
0000000000495751  0f85dd0a0000                     jne 0x496234
0000000000495757  83c501                           add ebp, 1
000000000049575a  4863cd                           movsxd rcx, ebp
000000000049575d  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495762  89d6                             mov esi, edx
0000000000495764  89d7                             mov edi, edx
0000000000495766  83e601                           and esi, 1
0000000000495769  85c0                             test eax, eax
000000000049576b  0f848f0c0000                     je 0x496400
0000000000495771  83e702                           and edi, 2
0000000000495774  4084f6                           test sil, sil
0000000000495777  41be01000000                     mov r14d, 1
000000000049577d  400fb6c7                         movzx eax, dil
0000000000495781  bf04000000                       mov edi, 4
0000000000495786  0f84e20e0000                     je 0x49666e
000000000049578c  89fe                             mov esi, edi
000000000049578e  448d0c3f                         lea r9d, [rdi + rdi]
0000000000495792  21d6                             and esi, edx
0000000000495794  85c0                             test eax, eax
0000000000495796  0f84e9140000                     je 0x496c85
000000000049579c  4181f900010000                   cmp r9d, 0x100
00000000004957a3  0f85ee140000                     jne 0x496c97
00000000004957a9  83c501                           add ebp, 1
00000000004957ac  85f6                             test esi, esi
00000000004957ae  bb02000000                       mov ebx, 2
00000000004957b3  41be01000000                     mov r14d, 1
00000000004957b9  4863cd                           movsxd rcx, ebp
00000000004957bc  0f84680f0000                     je 0x49672a
00000000004957c2  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004957c7  41b914000000                     mov r9d, 0x14
00000000004957cd  bef0ff0f00                       mov esi, 0xffff0
00000000004957d2  660f1f440000                     nop word ptr [rax + rax]
00000000004957d8  31c0                             xor eax, eax
00000000004957da  31c9                             xor ecx, ecx
00000000004957dc  41ba01000000                     mov r10d, 1
00000000004957e2  eb0c                             jmp 0x4957f0
00000000004957e4  0f1f4000                         nop dword ptr [rax]
00000000004957e8  4863d5                           movsxd rdx, ebp
00000000004957eb  410fb61414                       movzx edx, byte ptr [r12 + rdx]
00000000004957f0  21da                             and edx, ebx
00000000004957f2  01db                             add ebx, ebx
00000000004957f4  81fb00010000                     cmp ebx, 0x100
00000000004957fa  750e                             jne 0x49580a
00000000004957fc  83c501                           add ebp, 1
00000000004957ff  bb01000000                       mov ebx, 1
0000000000495804  41be01000000                     mov r14d, 1
000000000049580a  4589d0                           mov r8d, r10d
000000000049580d  89c7                             mov edi, eax
000000000049580f  41d3e0                           shl r8d, cl
0000000000495812  4409c0                           or eax, r8d
0000000000495815  85d2                             test edx, edx
0000000000495817  0f44c7                           cmove eax, edi
000000000049581a  83c101                           add ecx, 1
000000000049581d  4439c9                           cmp ecx, r9d
0000000000495820  75c6                             jne 0x4957e8
0000000000495822  01f0                             add eax, esi
0000000000495824  3dff000000                       cmp eax, 0xff
0000000000495829  0f8fec0b0000                     jg 0x49641b
000000000049582f  4863f8                           movsxd rdi, eax
0000000000495832  4963d7                           movsxd rdx, r15d
0000000000495835  4183c701                         add r15d, 1
0000000000495839  48634cbc40                       movsxd rcx, dword ptr [rsp + rdi*4 + 0x40]
000000000049583e  85c0                             test eax, eax
0000000000495840  41884c1500                       mov byte ptr [r13 + rdx], cl
0000000000495845  4963d7                           movsxd rdx, r15d
0000000000495848  41c644150000                     mov byte ptr [r13 + rdx], 0
000000000049584e  746e                             je 0x4958be
0000000000495850  83e801                           sub eax, 1
0000000000495853  4c8b5c2408                       mov r11, qword ptr [rsp + 8]
0000000000495858  4c63c8                           movsxd r9, eax
000000000049585b  89c0                             mov eax, eax
000000000049585d  4a8d348d00000000                 lea rsi, [r9*4]
0000000000495865  48c1e002                         shl rax, 2
0000000000495869  498d1433                         lea rdx, [r11 + rsi]
000000000049586d  498d7433fc                       lea rsi, [r11 + rsi - 4]
0000000000495872  4829c6                           sub rsi, rax
0000000000495875  0f1f00                           nop dword ptr [rax]
0000000000495878  486302                           movsxd rax, dword ptr [rdx]
000000000049587b  4883ea04                         sub rdx, 4
000000000049587f  8384844004000001                 add dword ptr [rsp + rax*4 + 0x440], 1
0000000000495887  4839f2                           cmp rdx, rsi
000000000049588a  75ec                             jne 0x495878
000000000049588c  4a8d148d04000000                 lea rdx, [r9*4 + 4]
0000000000495894  488b442408                       mov rax, qword ptr [rsp + 8]
0000000000495899  48c1e702                         shl rdi, 2
000000000049589d  4889fe                           mov rsi, rdi
00000000004958a0  4883c704                         add rdi, 4
00000000004958a4  894c2414                         mov dword ptr [rsp + 0x14], ecx
00000000004958a8  4829d6                           sub rsi, rdx
00000000004958ab  4829d7                           sub rdi, rdx
00000000004958ae  4801c6                           add rsi, rax
00000000004958b1  4801c7                           add rdi, rax
00000000004958b4  e8e7e6f6ff                       call 0x403fa0
00000000004958b9  48634c2414                       movsxd rcx, dword ptr [rsp + 0x14]
00000000004958be  894c2440                         mov dword ptr [rsp + 0x40], ecx
00000000004958c2  c7848c4004000000000000           mov dword ptr [rsp + rcx*4 + 0x440], 0
00000000004958cd  ba01000000                       mov edx, 1
00000000004958d2  396c2410                         cmp dword ptr [rsp + 0x10], ebp
00000000004958d6  0f8fecfcffff                     jg 0x4955c8
00000000004958dc  4584f6                           test r14b, r14b
00000000004958df  0f85ff0e0000                     jne 0x4967e4
00000000004958e5  84d2                             test dl, dl
00000000004958e7  0f85370b0000                     jne 0x496424
00000000004958ed  31c0                             xor eax, eax
00000000004958ef  488b9c2448080000                 mov rbx, qword ptr [rsp + 0x848]
00000000004958f7  6448331c2528000000               xor rbx, qword ptr fs:[0x28]
0000000000495900  0f85bf0e0000                     jne 0x4967c5
0000000000495906  4881c458080000                   add rsp, 0x858
000000000049590d  5b                               pop rbx
000000000049590e  5d                               pop rbp
000000000049590f  415c                             pop r12
0000000000495911  415d                             pop r13
0000000000495913  415e                             pop r14
0000000000495915  415f                             pop r15
0000000000495917  c3                               ret 
0000000000495918  0f1f840000000000                 nop dword ptr [rax + rax]
0000000000495920  8906                             mov dword ptr [rsi], eax
0000000000495922  4883c604                         add rsi, 4
0000000000495926  4839fe                           cmp rsi, rdi
0000000000495929  0f85c9fbffff                     jne 0x4954f8
000000000049592f  e930fcffff                       jmp 0x495564
0000000000495934  0f1f4000                         nop dword ptr [rax]
0000000000495938  83c501                           add ebp, 1
000000000049593b  4863cd                           movsxd rcx, ebp
000000000049593e  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495943  89d7                             mov edi, edx
0000000000495945  89d6                             mov esi, edx
0000000000495947  83e702                           and edi, 2
000000000049594a  83e601                           and esi, 1
000000000049594d  4585c9                           test r9d, r9d
0000000000495950  440fb6cf                         movzx r9d, dil
0000000000495954  0f846e070000                     je 0x4960c8
000000000049595a  85f6                             test esi, esi
000000000049595c  bf04000000                       mov edi, 4
0000000000495961  41be01000000                     mov r14d, 1
0000000000495967  0f84c30a0000                     je 0x496430
000000000049596d  89f8                             mov eax, edi
000000000049596f  8d1c3f                           lea ebx, [rdi + rdi]
0000000000495972  21d0                             and eax, edx
0000000000495974  4585c9                           test r9d, r9d
0000000000495977  0f84c70d0000                     je 0x496744
000000000049597d  81fb00010000                     cmp ebx, 0x100
0000000000495983  0f85c5fcffff                     jne 0x49564e
0000000000495989  83c501                           add ebp, 1
000000000049598c  4863cd                           movsxd rcx, ebp
000000000049598f  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495994  89d6                             mov esi, edx
0000000000495996  89d7                             mov edi, edx
0000000000495998  83e601                           and esi, 1
000000000049599b  85c0                             test eax, eax
000000000049599d  0f84a60b0000                     je 0x496549
00000000004959a3  83e702                           and edi, 2
00000000004959a6  4084f6                           test sil, sil
00000000004959a9  41be01000000                     mov r14d, 1
00000000004959af  400fb6c7                         movzx eax, dil
00000000004959b3  bf04000000                       mov edi, 4
00000000004959b8  0f84c10a0000                     je 0x49647f
00000000004959be  89fe                             mov esi, edi
00000000004959c0  8d1c3f                           lea ebx, [rdi + rdi]
00000000004959c3  21d6                             and esi, edx
00000000004959c5  85c0                             test eax, eax
00000000004959c7  0f84c90d0000                     je 0x496796
00000000004959cd  81fb00010000                     cmp ebx, 0x100
00000000004959d3  0f85c4fcffff                     jne 0x49569d
00000000004959d9  83c501                           add ebp, 1
00000000004959dc  4863cd                           movsxd rcx, ebp
00000000004959df  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004959e4  89d0                             mov eax, edx
00000000004959e6  89d7                             mov edi, edx
00000000004959e8  83e001                           and eax, 1
00000000004959eb  85f6                             test esi, esi
00000000004959ed  0f84bc0b0000                     je 0x4965af
00000000004959f3  83e702                           and edi, 2
00000000004959f6  84c0                             test al, al
00000000004959f8  41b904000000                     mov r9d, 4
00000000004959fe  400fb6f7                         movzx esi, dil
0000000000495a02  41be01000000                     mov r14d, 1
0000000000495a08  0f84b00a0000                     je 0x4964be
0000000000495a0e  89d0                             mov eax, edx
0000000000495a10  438d1c09                         lea ebx, [r9 + r9]
0000000000495a14  4421c8                           and eax, r9d
0000000000495a17  85f6                             test esi, esi
0000000000495a19  0f84b20d0000                     je 0x4967d1
0000000000495a1f  81fb00010000                     cmp ebx, 0x100
0000000000495a25  0f85c2fcffff                     jne 0x4956ed
0000000000495a2b  83c501                           add ebp, 1
0000000000495a2e  4863cd                           movsxd rcx, ebp
0000000000495a31  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495a36  89d6                             mov esi, edx
0000000000495a38  89d7                             mov edi, edx
0000000000495a3a  83e601                           and esi, 1
0000000000495a3d  85c0                             test eax, eax
0000000000495a3f  0f84a40b0000                     je 0x4965e9
0000000000495a45  83e702                           and edi, 2
0000000000495a48  4084f6                           test sil, sil
0000000000495a4b  41b904000000                     mov r9d, 4
0000000000495a51  400fb6c7                         movzx eax, dil
0000000000495a55  41be01000000                     mov r14d, 1
0000000000495a5b  0f84d30a0000                     je 0x496534
0000000000495a61  89d6                             mov esi, edx
0000000000495a63  438d1c09                         lea ebx, [r9 + r9]
0000000000495a67  4421ce                           and esi, r9d
0000000000495a6a  85c0                             test eax, eax
0000000000495a6c  0f84e40c0000                     je 0x496756
0000000000495a72  81fb00010000                     cmp ebx, 0x100
0000000000495a78  0f85befcffff                     jne 0x49573c
0000000000495a7e  83c501                           add ebp, 1
0000000000495a81  4863cd                           movsxd rcx, ebp
0000000000495a84  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495a89  89d0                             mov eax, edx
0000000000495a8b  89d7                             mov edi, edx
0000000000495a8d  83e001                           and eax, 1
0000000000495a90  85f6                             test esi, esi
0000000000495a92  0f84eb0b0000                     je 0x496683
0000000000495a98  83e702                           and edi, 2
0000000000495a9b  84c0                             test al, al
0000000000495a9d  bb04000000                       mov ebx, 4
0000000000495aa2  400fb6f7                         movzx esi, dil
0000000000495aa6  41be01000000                     mov r14d, 1
0000000000495aac  0f8439090000                     je 0x4963eb
0000000000495ab2  89d0                             mov eax, edx
0000000000495ab4  8d3c1b                           lea edi, [rbx + rbx]
0000000000495ab7  21d8                             and eax, ebx
0000000000495ab9  85f6                             test esi, esi
0000000000495abb  0f843a0c0000                     je 0x4966fb
0000000000495ac1  81ff00010000                     cmp edi, 0x100
0000000000495ac7  0f85bffcffff                     jne 0x49578c
0000000000495acd  83c501                           add ebp, 1
0000000000495ad0  4863cd                           movsxd rcx, ebp
0000000000495ad3  410fb63c0c                       movzx edi, byte ptr [r12 + rcx]
0000000000495ad8  89fa                             mov edx, edi
0000000000495ada  83e201                           and edx, 1
0000000000495add  85c0                             test eax, eax
0000000000495adf  0f84260c0000                     je 0x49670b
0000000000495ae5  84d2                             test dl, dl
0000000000495ae7  bb04000000                       mov ebx, 4
0000000000495aec  41be01000000                     mov r14d, 1
0000000000495af2  0f85cafcffff                     jne 0x4957c2
0000000000495af8  bb02000000                       mov ebx, 2
0000000000495afd  e985070000                       jmp 0x496287
0000000000495b02  660f1f440000                     nop word ptr [rax + rax]
0000000000495b08  3d00010000                       cmp eax, 0x100
0000000000495b0d  0f858d070000                     jne 0x4962a0
0000000000495b13  83c501                           add ebp, 1
0000000000495b16  85f6                             test esi, esi
0000000000495b18  4863cd                           movsxd rcx, ebp
0000000000495b1b  410fb63c0c                       movzx edi, byte ptr [r12 + rcx]
0000000000495b20  0f8414080000                     je 0x49633a
0000000000495b26  4189f9                           mov r9d, edi
0000000000495b29  b802000000                       mov eax, 2
0000000000495b2e  41be01000000                     mov r14d, 1
0000000000495b34  4183e101                         and r9d, 1
0000000000495b38  400fb6d7                         movzx edx, dil
0000000000495b3c  31ff                             xor edi, edi
0000000000495b3e  4585c9                           test r9d, r9d
0000000000495b41  be02000000                       mov esi, 2
0000000000495b46  400f95c7                         setne dil
0000000000495b4a  29fe                             sub esi, edi
0000000000495b4c  8d34b6                           lea esi, [rsi + rsi*4]
0000000000495b4f  83fe0a                           cmp esi, 0xa
0000000000495b52  410f94c1                         sete r9b
0000000000495b56  21c2                             and edx, eax
0000000000495b58  01c0                             add eax, eax
0000000000495b5a  3d00010000                       cmp eax, 0x100
0000000000495b5f  7511                             jne 0x495b72
0000000000495b61  83c501                           add ebp, 1
0000000000495b64  b801000000                       mov eax, 1
0000000000495b69  41be01000000                     mov r14d, 1
0000000000495b6f  4863cd                           movsxd rcx, ebp
0000000000495b72  31ff                             xor edi, edi
0000000000495b74  85d2                             test edx, edx
0000000000495b76  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495b7b  400f95c7                         setne dil
0000000000495b7f  21c2                             and edx, eax
0000000000495b81  01c0                             add eax, eax
0000000000495b83  3d00010000                       cmp eax, 0x100
0000000000495b88  0f846a070000                     je 0x4962f8
0000000000495b8e  4189fa                           mov r10d, edi
0000000000495b91  4183ca02                         or r10d, 2
0000000000495b95  85d2                             test edx, edx
0000000000495b97  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495b9c  410f45fa                         cmovne edi, r10d
0000000000495ba0  21c2                             and edx, eax
0000000000495ba2  01c0                             add eax, eax
0000000000495ba4  3d00010000                       cmp eax, 0x100
0000000000495ba9  0f845f070000                     je 0x49630e
0000000000495baf  4189fa                           mov r10d, edi
0000000000495bb2  4183ca04                         or r10d, 4
0000000000495bb6  85d2                             test edx, edx
0000000000495bb8  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495bbd  410f45fa                         cmovne edi, r10d
0000000000495bc1  21c2                             and edx, eax
0000000000495bc3  01c0                             add eax, eax
0000000000495bc5  3d00010000                       cmp eax, 0x100
0000000000495bca  0f8454070000                     je 0x496324
0000000000495bd0  4189fa                           mov r10d, edi
0000000000495bd3  8d1c00                           lea ebx, [rax + rax]
0000000000495bd6  4183ca08                         or r10d, 8
0000000000495bda  85d2                             test edx, edx
0000000000495bdc  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000495be1  410f45fa                         cmovne edi, r10d
0000000000495be5  21c2                             and edx, eax
0000000000495be7  81fb00010000                     cmp ebx, 0x100
0000000000495bed  0f8474070000                     je 0x496367
0000000000495bf3  89f8                             mov eax, edi
0000000000495bf5  83c810                           or eax, 0x10
0000000000495bf8  85d2                             test edx, edx
0000000000495bfa  0f45f8                           cmovne edi, eax
0000000000495bfd  83fe05                           cmp esi, 5
0000000000495c00  0f84da010000                     je 0x495de0
0000000000495c06  4863c5                           movsxd rax, ebp
0000000000495c09  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495c0e  21d8                             and eax, ebx
0000000000495c10  01db                             add ebx, ebx
0000000000495c12  81fb00010000                     cmp ebx, 0x100
0000000000495c18  750e                             jne 0x495c28
0000000000495c1a  83c501                           add ebp, 1
0000000000495c1d  bb01000000                       mov ebx, 1
0000000000495c22  41be01000000                     mov r14d, 1
0000000000495c28  89fa                             mov edx, edi
0000000000495c2a  83ca20                           or edx, 0x20
0000000000495c2d  85c0                             test eax, eax
0000000000495c2f  0f45fa                           cmovne edi, edx
0000000000495c32  83fe06                           cmp esi, 6
0000000000495c35  0f84a5010000                     je 0x495de0
0000000000495c3b  4863c5                           movsxd rax, ebp
0000000000495c3e  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495c43  21d8                             and eax, ebx
0000000000495c45  01db                             add ebx, ebx
0000000000495c47  81fb00010000                     cmp ebx, 0x100
0000000000495c4d  750e                             jne 0x495c5d
0000000000495c4f  83c501                           add ebp, 1
0000000000495c52  bb01000000                       mov ebx, 1
0000000000495c57  41be01000000                     mov r14d, 1
0000000000495c5d  89fa                             mov edx, edi
0000000000495c5f  83ca40                           or edx, 0x40
0000000000495c62  85c0                             test eax, eax
0000000000495c64  0f45fa                           cmovne edi, edx
0000000000495c67  83fe07                           cmp esi, 7
0000000000495c6a  0f8470010000                     je 0x495de0
0000000000495c70  4863c5                           movsxd rax, ebp
0000000000495c73  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495c78  21d8                             and eax, ebx
0000000000495c7a  01db                             add ebx, ebx
0000000000495c7c  81fb00010000                     cmp ebx, 0x100
0000000000495c82  750e                             jne 0x495c92
0000000000495c84  83c501                           add ebp, 1
0000000000495c87  bb01000000                       mov ebx, 1
0000000000495c8c  41be01000000                     mov r14d, 1
0000000000495c92  89fa                             mov edx, edi
0000000000495c94  80ca80                           or dl, 0x80
0000000000495c97  85c0                             test eax, eax
0000000000495c99  0f45fa                           cmovne edi, edx
0000000000495c9c  83fe08                           cmp esi, 8
0000000000495c9f  0f843b010000                     je 0x495de0
0000000000495ca5  4863c5                           movsxd rax, ebp
0000000000495ca8  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495cad  21d8                             and eax, ebx
0000000000495caf  01db                             add ebx, ebx
0000000000495cb1  81fb00010000                     cmp ebx, 0x100
0000000000495cb7  0f84bd060000                     je 0x49637a
0000000000495cbd  89fa                             mov edx, edi
0000000000495cbf  80ce01                           or dh, 1
0000000000495cc2  85c0                             test eax, eax
0000000000495cc4  0f45fa                           cmovne edi, edx
0000000000495cc7  83fe09                           cmp esi, 9
0000000000495cca  0f8410010000                     je 0x495de0
0000000000495cd0  4863c5                           movsxd rax, ebp
0000000000495cd3  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495cd8  21d8                             and eax, ebx
0000000000495cda  01db                             add ebx, ebx
0000000000495cdc  81fb00010000                     cmp ebx, 0x100
0000000000495ce2  0f84a5060000                     je 0x49638d
0000000000495ce8  89fa                             mov edx, edi
0000000000495cea  80ce02                           or dh, 2
0000000000495ced  85c0                             test eax, eax
0000000000495cef  0f45fa                           cmovne edi, edx
0000000000495cf2  83fe0a                           cmp esi, 0xa
0000000000495cf5  0f84e5000000                     je 0x495de0
0000000000495cfb  4863c5                           movsxd rax, ebp
0000000000495cfe  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495d03  21d8                             and eax, ebx
0000000000495d05  01db                             add ebx, ebx
0000000000495d07  81fb00010000                     cmp ebx, 0x100
0000000000495d0d  750e                             jne 0x495d1d
0000000000495d0f  83c501                           add ebp, 1
0000000000495d12  bb01000000                       mov ebx, 1
0000000000495d17  41be01000000                     mov r14d, 1
0000000000495d1d  89fa                             mov edx, edi
0000000000495d1f  80ce04                           or dh, 4
0000000000495d22  85c0                             test eax, eax
0000000000495d24  0f45fa                           cmovne edi, edx
0000000000495d27  83fe0b                           cmp esi, 0xb
0000000000495d2a  0f84b0000000                     je 0x495de0
0000000000495d30  4863c5                           movsxd rax, ebp
0000000000495d33  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495d38  21d8                             and eax, ebx
0000000000495d3a  01db                             add ebx, ebx
0000000000495d3c  81fb00010000                     cmp ebx, 0x100
0000000000495d42  750e                             jne 0x495d52
0000000000495d44  83c501                           add ebp, 1
0000000000495d47  bb01000000                       mov ebx, 1
0000000000495d4c  41be01000000                     mov r14d, 1
0000000000495d52  89fa                             mov edx, edi
0000000000495d54  80ce08                           or dh, 8
0000000000495d57  85c0                             test eax, eax
0000000000495d59  0f45fa                           cmovne edi, edx
0000000000495d5c  83fe0c                           cmp esi, 0xc
0000000000495d5f  747f                             je 0x495de0
0000000000495d61  4863c5                           movsxd rax, ebp
0000000000495d64  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495d69  21d8                             and eax, ebx
0000000000495d6b  01db                             add ebx, ebx
0000000000495d6d  81fb00010000                     cmp ebx, 0x100
0000000000495d73  750e                             jne 0x495d83
0000000000495d75  83c501                           add ebp, 1
0000000000495d78  bb01000000                       mov ebx, 1
0000000000495d7d  41be01000000                     mov r14d, 1
0000000000495d83  89fa                             mov edx, edi
0000000000495d85  80ce10                           or dh, 0x10
0000000000495d88  85c0                             test eax, eax
0000000000495d8a  0f45fa                           cmovne edi, edx
0000000000495d8d  83fe0d                           cmp esi, 0xd
0000000000495d90  744e                             je 0x495de0
0000000000495d92  4863c5                           movsxd rax, ebp
0000000000495d95  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495d9a  21d8                             and eax, ebx
0000000000495d9c  01db                             add ebx, ebx
0000000000495d9e  81fb00010000                     cmp ebx, 0x100
0000000000495da4  0f841b060000                     je 0x4963c5
0000000000495daa  89fa                             mov edx, edi
0000000000495dac  80ce20                           or dh, 0x20
0000000000495daf  85c0                             test eax, eax
0000000000495db1  0f45fa                           cmovne edi, edx
0000000000495db4  83fe0f                           cmp esi, 0xf
0000000000495db7  7527                             jne 0x495de0
0000000000495db9  4863c5                           movsxd rax, ebp
0000000000495dbc  410fb60404                       movzx eax, byte ptr [r12 + rax]
0000000000495dc1  21d8                             and eax, ebx
0000000000495dc3  01db                             add ebx, ebx
0000000000495dc5  81fb00010000                     cmp ebx, 0x100
0000000000495dcb  0f8407060000                     je 0x4963d8
0000000000495dd1  89fa                             mov edx, edi
0000000000495dd3  80ce40                           or dh, 0x40
0000000000495dd6  85c0                             test eax, eax
0000000000495dd8  0f45fa                           cmovne edi, edx
0000000000495ddb  0f1f440000                       nop dword ptr [rax + rax]
0000000000495de0  85ff                             test edi, edi
0000000000495de2  0f94c0                           sete al
0000000000495de5  4120c1                           and r9b, al
0000000000495de8  0f84080a0000                     je 0x4967f6
0000000000495dee  443b3c24                         cmp r15d, dword ptr [rsp]
0000000000495df2  0f8dd5faffff                     jge 0x4958cd
0000000000495df8  8b44241c                         mov eax, dword ptr [rsp + 0x1c]
0000000000495dfc  4963f7                           movsxd rsi, r15d
0000000000495dff  4429f8                           sub eax, r15d
0000000000495e02  4c8d440601                       lea r8, [rsi + rax + 1]
0000000000495e07  eb25                             jmp 0x495e2e
0000000000495e09  0f1f8000000000                   nop dword ptr [rax]
0000000000495e10  85c0                             test eax, eax
0000000000495e12  4188443500                       mov byte ptr [r13 + rsi], al
0000000000495e17  0f84b0faffff                     je 0x4958cd
0000000000495e1d  448d7e01                         lea r15d, [rsi + 1]
0000000000495e21  4883c601                         add rsi, 1
0000000000495e25  4939f0                           cmp r8, rsi
0000000000495e28  0f849ffaffff                     je 0x4958cd
0000000000495e2e  4863c5                           movsxd rax, ebp
0000000000495e31  8d0c1b                           lea ecx, [rbx + rbx]
0000000000495e34  4189f7                           mov r15d, esi
0000000000495e37  410fb61404                       movzx edx, byte ptr [r12 + rax]
0000000000495e3c  31c0                             xor eax, eax
0000000000495e3e  85da                             test edx, ebx
0000000000495e40  0f95c0                           setne al
0000000000495e43  81f900010000                     cmp ecx, 0x100
0000000000495e49  0f84f9000000                     je 0x495f48
0000000000495e4f  8d3c9d00000000                   lea edi, [rbx*4]
0000000000495e56  21d1                             and ecx, edx
0000000000495e58  81ff00010000                     cmp edi, 0x100
0000000000495e5e  0f85d4010000                     jne 0x496038
0000000000495e64  83c501                           add ebp, 1
0000000000495e67  4863d5                           movsxd rdx, ebp
0000000000495e6a  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495e6f  89d7                             mov edi, edx
0000000000495e71  83e701                           and edi, 1
0000000000495e74  85c9                             test ecx, ecx
0000000000495e76  0f84dc010000                     je 0x496058
0000000000495e7c  83c802                           or eax, 2
0000000000495e7f  4589ce                           mov r14d, r9d
0000000000495e82  bb02000000                       mov ebx, 2
0000000000495e87  8d0c1b                           lea ecx, [rbx + rbx]
0000000000495e8a  4189c2                           mov r10d, eax
0000000000495e8d  21d3                             and ebx, edx
0000000000495e8f  4183ca04                         or r10d, 4
0000000000495e93  85ff                             test edi, edi
0000000000495e95  410f45c2                         cmovne eax, r10d
0000000000495e99  81f900010000                     cmp ecx, 0x100
0000000000495e9f  0f85fe000000                     jne 0x495fa3
0000000000495ea5  83c501                           add ebp, 1
0000000000495ea8  4863d5                           movsxd rdx, ebp
0000000000495eab  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495eb0  89d1                             mov ecx, edx
0000000000495eb2  83e101                           and ecx, 1
0000000000495eb5  85db                             test ebx, ebx
0000000000495eb7  0f8483010000                     je 0x496040
0000000000495ebd  83c808                           or eax, 8
0000000000495ec0  4589ce                           mov r14d, r9d
0000000000495ec3  41ba02000000                     mov r10d, 2
0000000000495ec9  438d3c12                         lea edi, [r10 + r10]
0000000000495ecd  4189c3                           mov r11d, eax
0000000000495ed0  4121d2                           and r10d, edx
0000000000495ed3  4183cb10                         or r11d, 0x10
0000000000495ed7  85c9                             test ecx, ecx
0000000000495ed9  410f45c3                         cmovne eax, r11d
0000000000495edd  81ff00010000                     cmp edi, 0x100
0000000000495ee3  0f85fc000000                     jne 0x495fe5
0000000000495ee9  83c501                           add ebp, 1
0000000000495eec  4863d5                           movsxd rdx, ebp
0000000000495eef  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495ef4  89d7                             mov edi, edx
0000000000495ef6  83e701                           and edi, 1
0000000000495ef9  4585d2                           test r10d, r10d
0000000000495efc  0f8496010000                     je 0x496098
0000000000495f02  83c820                           or eax, 0x20
0000000000495f05  4589ce                           mov r14d, r9d
0000000000495f08  b902000000                       mov ecx, 2
0000000000495f0d  8d1c09                           lea ebx, [rcx + rcx]
0000000000495f10  21ca                             and edx, ecx
0000000000495f12  89c1                             mov ecx, eax
0000000000495f14  83c940                           or ecx, 0x40
0000000000495f17  85ff                             test edi, edi
0000000000495f19  0f45c1                           cmovne eax, ecx
0000000000495f1c  81fb00010000                     cmp ebx, 0x100
0000000000495f22  750b                             jne 0x495f2f
0000000000495f24  83c501                           add ebp, 1
0000000000495f27  4589ce                           mov r14d, r9d
0000000000495f2a  bb01000000                       mov ebx, 1
0000000000495f2f  85d2                             test edx, edx
0000000000495f31  0f84d9feffff                     je 0x495e10
0000000000495f37  0c80                             or al, 0x80
0000000000495f39  4188443500                       mov byte ptr [r13 + rsi], al
0000000000495f3e  e9dafeffff                       jmp 0x495e1d
0000000000495f43  0f1f440000                       nop dword ptr [rax + rax]
0000000000495f48  83c501                           add ebp, 1
0000000000495f4b  4589ce                           mov r14d, r9d
0000000000495f4e  bb04000000                       mov ebx, 4
0000000000495f53  4863d5                           movsxd rdx, ebp
0000000000495f56  bf02000000                       mov edi, 2
0000000000495f5b  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495f60  89d1                             mov ecx, edx
0000000000495f62  83e101                           and ecx, 1
0000000000495f65  4189c2                           mov r10d, eax
0000000000495f68  21d7                             and edi, edx
0000000000495f6a  4183ca02                         or r10d, 2
0000000000495f6e  85c9                             test ecx, ecx
0000000000495f70  410f45c2                         cmovne eax, r10d
0000000000495f74  81fb00010000                     cmp ebx, 0x100
0000000000495f7a  0f8507ffffff                     jne 0x495e87
0000000000495f80  83c501                           add ebp, 1
0000000000495f83  4863d5                           movsxd rdx, ebp
0000000000495f86  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495f8b  89d3                             mov ebx, edx
0000000000495f8d  83e301                           and ebx, 1
0000000000495f90  85ff                             test edi, edi
0000000000495f92  0f84d8000000                     je 0x496070
0000000000495f98  83c804                           or eax, 4
0000000000495f9b  4589ce                           mov r14d, r9d
0000000000495f9e  b902000000                       mov ecx, 2
0000000000495fa3  448d1409                         lea r10d, [rcx + rcx]
0000000000495fa7  89c7                             mov edi, eax
0000000000495fa9  21d1                             and ecx, edx
0000000000495fab  83cf08                           or edi, 8
0000000000495fae  85db                             test ebx, ebx
0000000000495fb0  0f45c7                           cmovne eax, edi
0000000000495fb3  4181fa00010000                   cmp r10d, 0x100
0000000000495fba  0f8509ffffff                     jne 0x495ec9
0000000000495fc0  83c501                           add ebp, 1
0000000000495fc3  4863d5                           movsxd rdx, ebp
0000000000495fc6  410fb61414                       movzx edx, byte ptr [r12 + rdx]
0000000000495fcb  4189d2                           mov r10d, edx
0000000000495fce  4183e201                         and r10d, 1
0000000000495fd2  85c9                             test ecx, ecx
0000000000495fd4  0f84d6000000                     je 0x4960b0
0000000000495fda  83c810                           or eax, 0x10
0000000000495fdd  4589ce                           mov r14d, r9d
0000000000495fe0  bf02000000                       mov edi, 2
0000000000495fe5  8d0c3f                           lea ecx, [rdi + rdi]
0000000000495fe8  4189c3                           mov r11d, eax
0000000000495feb  21d7                             and edi, edx
0000000000495fed  4183cb20                         or r11d, 0x20
0000000000495ff1  4585d2                           test r10d, r10d
0000000000495ff4  410f45c3                         cmovne eax, r11d
0000000000495ff8  81f900010000                     cmp ecx, 0x100
0000000000495ffe  0f8509ffffff                     jne 0x495f0d
0000000000496004  83c501                           add ebp, 1
0000000000496007  4863d5                           movsxd rdx, ebp
000000000049600a  410fb61414                       movzx edx, byte ptr [r12 + rdx]
000000000049600f  83e201                           and edx, 1
0000000000496012  85ff                             test edi, edi
0000000000496014  7472                             je 0x496088
0000000000496016  83c840                           or eax, 0x40
0000000000496019  85d2                             test edx, edx
000000000049601b  0f84bf020000                     je 0x4962e0
0000000000496021  0c80                             or al, 0x80
0000000000496023  4589ce                           mov r14d, r9d
0000000000496026  bb02000000                       mov ebx, 2
000000000049602b  4188443500                       mov byte ptr [r13 + rsi], al
0000000000496030  e9e8fdffff                       jmp 0x495e1d
0000000000496035  0f1f00                           nop dword ptr [rax]
0000000000496038  c1e303                           shl ebx, 3
000000000049603b  e925ffffff                       jmp 0x495f65
0000000000496040  4589ce                           mov r14d, r9d
0000000000496043  bf04000000                       mov edi, 4
0000000000496048  41ba02000000                     mov r10d, 2
000000000049604e  e97afeffff                       jmp 0x495ecd
0000000000496053  0f1f440000                       nop dword ptr [rax + rax]
0000000000496058  4589ce                           mov r14d, r9d
000000000049605b  b904000000                       mov ecx, 4
0000000000496060  bb02000000                       mov ebx, 2
0000000000496065  e920feffff                       jmp 0x495e8a
000000000049606a  660f1f440000                     nop word ptr [rax + rax]
0000000000496070  4589ce                           mov r14d, r9d
0000000000496073  41ba04000000                     mov r10d, 4
0000000000496079  b902000000                       mov ecx, 2
000000000049607e  e924ffffff                       jmp 0x495fa7
0000000000496083  0f1f440000                       nop dword ptr [rax + rax]
0000000000496088  4589ce                           mov r14d, r9d
000000000049608b  bb02000000                       mov ebx, 2
0000000000496090  e99afeffff                       jmp 0x495f2f
0000000000496095  0f1f00                           nop dword ptr [rax]
0000000000496098  4589ce                           mov r14d, r9d
000000000049609b  bb04000000                       mov ebx, 4
00000000004960a0  b902000000                       mov ecx, 2
00000000004960a5  e966feffff                       jmp 0x495f10
00000000004960aa  660f1f440000                     nop word ptr [rax + rax]
00000000004960b0  4589ce                           mov r14d, r9d
00000000004960b3  b904000000                       mov ecx, 4
00000000004960b8  bf02000000                       mov edi, 2
00000000004960bd  e926ffffff                       jmp 0x495fe8
00000000004960c2  660f1f440000                     nop word ptr [rax + rax]
00000000004960c8  85f6                             test esi, esi
00000000004960ca  0f8587020000                     jne 0x496357
00000000004960d0  4489ca                           mov edx, r9d
00000000004960d3  be0f000000                       mov esi, 0xf
00000000004960d8  4531c9                           xor r9d, r9d
00000000004960db  b804000000                       mov eax, 4
00000000004960e0  41be01000000                     mov r14d, 1
00000000004960e6  e987faffff                       jmp 0x495b72
00000000004960eb  4189d1                           mov r9d, edx
00000000004960ee  8d3cdd00000000                   lea edi, [rbx*8]
00000000004960f5  4121c1                           and r9d, eax
00000000004960f8  85f6                             test esi, esi
00000000004960fa  0f8469060000                     je 0x496769
0000000000496100  81ff00010000                     cmp edi, 0x100
0000000000496106  0f8561f8ffff                     jne 0x49596d
000000000049610c  83c501                           add ebp, 1
000000000049610f  4863cd                           movsxd rcx, ebp
0000000000496112  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000496117  89d0                             mov eax, edx
0000000000496119  89d7                             mov edi, edx
000000000049611b  83e001                           and eax, 1
000000000049611e  4585c9                           test r9d, r9d
0000000000496121  0f84c1030000                     je 0x4964e8
0000000000496127  83e702                           and edi, 2
000000000049612a  84c0                             test al, al
000000000049612c  bb04000000                       mov ebx, 4
0000000000496131  400fb6f7                         movzx esi, dil
0000000000496135  41be01000000                     mov r14d, 1
000000000049613b  0f8414030000                     je 0x496455
0000000000496141  89d0                             mov eax, edx
0000000000496143  8d3c1b                           lea edi, [rbx + rbx]
0000000000496146  21d8                             and eax, ebx
0000000000496148  85f6                             test esi, esi
000000000049614a  0f848b050000                     je 0x4966db
0000000000496150  81ff00010000                     cmp edi, 0x100
0000000000496156  0f8562f8ffff                     jne 0x4959be
000000000049615c  83c501                           add ebp, 1
000000000049615f  4863cd                           movsxd rcx, ebp
0000000000496162  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000496167  89d6                             mov esi, edx
0000000000496169  89d7                             mov edi, edx
000000000049616b  83e601                           and esi, 1
000000000049616e  85c0                             test eax, eax
0000000000496170  0f8409040000                     je 0x49657f
0000000000496176  83e702                           and edi, 2
0000000000496179  4084f6                           test sil, sil
000000000049617c  41be01000000                     mov r14d, 1
0000000000496182  400fb6c7                         movzx eax, dil
0000000000496186  bf04000000                       mov edi, 4
000000000049618b  0f84d9020000                     je 0x49646a
0000000000496191  89d6                             mov esi, edx
0000000000496193  448d0c3f                         lea r9d, [rdi + rdi]
0000000000496197  21fe                             and esi, edi
0000000000496199  85c0                             test eax, eax
000000000049619b  0f8407060000                     je 0x4967a8
00000000004961a1  4181f900010000                   cmp r9d, 0x100
00000000004961a8  0f8560f8ffff                     jne 0x495a0e
00000000004961ae  83c501                           add ebp, 1
00000000004961b1  4863cd                           movsxd rcx, ebp
00000000004961b4  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004961b9  89d0                             mov eax, edx
00000000004961bb  89d7                             mov edi, edx
00000000004961bd  83e001                           and eax, 1
00000000004961c0  85f6                             test esi, esi
00000000004961c2  0f843c040000                     je 0x496604
00000000004961c8  83e702                           and edi, 2
00000000004961cb  84c0                             test al, al
00000000004961cd  41be01000000                     mov r14d, 1
00000000004961d3  400fb6f7                         movzx esi, dil
00000000004961d7  bf04000000                       mov edi, 4
00000000004961dc  0f84f1020000                     je 0x4964d3
00000000004961e2  89d0                             mov eax, edx
00000000004961e4  448d0c3f                         lea r9d, [rdi + rdi]
00000000004961e8  21f8                             and eax, edi
00000000004961ea  85f6                             test esi, esi
00000000004961ec  0f84810a0000                     je 0x496c73
00000000004961f2  4181f900010000                   cmp r9d, 0x100
00000000004961f9  0f8562f8ffff                     jne 0x495a61
00000000004961ff  83c501                           add ebp, 1
0000000000496202  4863cd                           movsxd rcx, ebp
0000000000496205  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
000000000049620a  89d6                             mov esi, edx
000000000049620c  89d7                             mov edi, edx
000000000049620e  83e601                           and esi, 1
0000000000496211  85c0                             test eax, eax
0000000000496213  0f8495040000                     je 0x4966ae
0000000000496219  83e702                           and edi, 2
000000000049621c  4084f6                           test sil, sil
000000000049621f  41be01000000                     mov r14d, 1
0000000000496225  400fb6c7                         movzx eax, dil
0000000000496229  bf04000000                       mov edi, 4
000000000049622e  0f8406040000                     je 0x49663a
0000000000496234  89d6                             mov esi, edx
0000000000496236  8d1c3f                           lea ebx, [rdi + rdi]
0000000000496239  21fe                             and esi, edi
000000000049623b  85c0                             test eax, eax
000000000049623d  0f8486040000                     je 0x4966c9
0000000000496243  81fb00010000                     cmp ebx, 0x100
0000000000496249  0f8563f8ffff                     jne 0x495ab2
000000000049624f  83c501                           add ebp, 1
0000000000496252  4863cd                           movsxd rcx, ebp
0000000000496255  410fb63c0c                       movzx edi, byte ptr [r12 + rcx]
000000000049625a  89f8                             mov eax, edi
000000000049625c  83e001                           and eax, 1
000000000049625f  85f6                             test esi, esi
0000000000496261  0f84e8030000                     je 0x49664f
0000000000496267  89fa                             mov edx, edi
0000000000496269  83e202                           and edx, 2
000000000049626c  84c0                             test al, al
000000000049626e  0f8456030000                     je 0x4965ca
0000000000496274  84d2                             test dl, dl
0000000000496276  0f856f040000                     jne 0x4966eb
000000000049627c  bb04000000                       mov ebx, 4
0000000000496281  41be01000000                     mov r14d, 1
0000000000496287  41b913000000                     mov r9d, 0x13
000000000049628d  bef0ff0700                       mov esi, 0x7fff0
0000000000496292  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
0000000000496297  e93cf5ffff                       jmp 0x4957d8
000000000049629c  0f1f4000                         nop dword ptr [rax]
00000000004962a0  4189d1                           mov r9d, edx
00000000004962a3  c1e303                           shl ebx, 3
00000000004962a6  4121c1                           and r9d, eax
00000000004962a9  85f6                             test esi, esi
00000000004962ab  0f8407010000                     je 0x4963b8
00000000004962b1  81fb00010000                     cmp ebx, 0x100
00000000004962b7  0f8532050000                     jne 0x4967ef
00000000004962bd  83c501                           add ebp, 1
00000000004962c0  b801000000                       mov eax, 1
00000000004962c5  41be01000000                     mov r14d, 1
00000000004962cb  4863cd                           movsxd rcx, ebp
00000000004962ce  410fb6140c                       movzx edx, byte ptr [r12 + rcx]
00000000004962d3  e964f8ffff                       jmp 0x495b3c
00000000004962d8  0f1f840000000000                 nop dword ptr [rax + rax]
00000000004962e0  4188443500                       mov byte ptr [r13 + rsi], al
00000000004962e5  4589ce                           mov r14d, r9d
00000000004962e8  bb02000000                       mov ebx, 2
00000000004962ed  e92bfbffff                       jmp 0x495e1d
00000000004962f2  660f1f440000                     nop word ptr [rax + rax]
00000000004962f8  83c501                           add ebp, 1
00000000004962fb  b801000000                       mov eax, 1
0000000000496300  41be01000000                     mov r14d, 1
0000000000496306  4863cd                           movsxd rcx, ebp
0000000000496309  e980f8ffff                       jmp 0x495b8e
000000000049630e  83c501                           add ebp, 1
0000000000496311  b801000000                       mov eax, 1
0000000000496316  41be01000000                     mov r14d, 1
000000000049631c  4863cd                           movsxd rcx, ebp
000000000049631f  e98bf8ffff                       jmp 0x495baf
0000000000496324  83c501                           add ebp, 1
0000000000496327  b801000000                       mov eax, 1
000000000049632c  41be01000000                     mov r14d, 1
0000000000496332  4863cd                           movsxd rcx, ebp
0000000000496335  e996f8ffff                       jmp 0x495bd0
000000000049633a  89fa                             mov edx, edi
000000000049633c  be0f000000                       mov esi, 0xf
0000000000496341  4531c9                           xor r9d, r9d
0000000000496344  83e201                           and edx, 1
0000000000496347  b802000000                       mov eax, 2
000000000049634c  41be01000000                     mov r14d, 1
0000000000496352  e91bf8ffff                       jmp 0x495b72
0000000000496357  b804000000                       mov eax, 4
000000000049635c  41be01000000                     mov r14d, 1
0000000000496362  e9d5f7ffff                       jmp 0x495b3c
0000000000496367  83c501                           add ebp, 1
000000000049636a  bb01000000                       mov ebx, 1
000000000049636f  41be01000000                     mov r14d, 1
0000000000496375  e979f8ffff                       jmp 0x495bf3
000000000049637a  83c501                           add ebp, 1
000000000049637d  bb01000000                       mov ebx, 1
0000000000496382  41be01000000                     mov r14d, 1
0000000000496388  e930f9ffff                       jmp 0x495cbd
000000000049638d  89fa                             mov edx, edi
000000000049638f  83c501                           add ebp, 1
0000000000496392  bb01000000                       mov ebx, 1
0000000000496397  80ce02                           or dh, 2
000000000049639a  85c0                             test eax, eax
000000000049639c  41be01000000                     mov r14d, 1
00000000004963a2  0f45fa                           cmovne edi, edx
00000000004963a5  83fe0a                           cmp esi, 0xa
00000000004963a8  0f854df9ffff                     jne 0x495cfb
00000000004963ae  e92dfaffff                       jmp 0x495de0
00000000004963b3  0f1f440000                       nop dword ptr [rax + rax]
00000000004963b8  be0f000000                       mov esi, 0xf
00000000004963bd  4531c9                           xor r9d, r9d
00000000004963c0  e991f7ffff                       jmp 0x495b56
00000000004963c5  83c501                           add ebp, 1
00000000004963c8  bb01000000                       mov ebx, 1
00000000004963cd  41be01000000                     mov r14d, 1
00000000004963d3  e9d2f9ffff                       jmp 0x495daa
00000000004963d8  83c501                           add ebp, 1
00000000004963db  bb01000000                       mov ebx, 1
00000000004963e0  41be01000000                     mov r14d, 1
00000000004963e6  e9e6f9ffff                       jmp 0x495dd1
00000000004963eb  41b910000000                     mov r9d, 0x10
00000000004963f1  bb02000000                       mov ebx, 2
00000000004963f6  bef0ff0000                       mov esi, 0xfff0
00000000004963fb  e9d8f3ffff                       jmp 0x4957d8
0000000000496400  41b910000000                     mov r9d, 0x10
0000000000496406  bb01000000                       mov ebx, 1
000000000049640b  41be01000000                     mov r14d, 1
0000000000496411  bef0ff0000                       mov esi, 0xfff0
0000000000496416  e9bdf3ffff                       jmp 0x4957d8
000000000049641b  4584f6                           test r14b, r14b
000000000049641e  0f8596030000                     jne 0x4967ba
0000000000496424  891de6304300                     mov dword ptr [rip + 0x4330e6], ebx
000000000049642a  e9bef4ffff                       jmp 0x4958ed
000000000049642f  90                               nop 
0000000000496430  41b904000000                     mov r9d, 4
0000000000496436  bb02000000                       mov ebx, 2
000000000049643b  e998f3ffff                       jmp 0x4957d8
0000000000496440  41b905000000                     mov r9d, 5
0000000000496446  bb02000000                       mov ebx, 2
000000000049644b  be10000000                       mov esi, 0x10
0000000000496450  e983f3ffff                       jmp 0x4957d8
0000000000496455  41b906000000                     mov r9d, 6
000000000049645b  bb02000000                       mov ebx, 2
0000000000496460  be30000000                       mov esi, 0x30
0000000000496465  e96ef3ffff                       jmp 0x4957d8
000000000049646a  41b909000000                     mov r9d, 9
0000000000496470  bb02000000                       mov ebx, 2
0000000000496475  bef0010000                       mov esi, 0x1f0
000000000049647a  e959f3ffff                       jmp 0x4957d8
000000000049647f  41b907000000                     mov r9d, 7
0000000000496485  bb02000000                       mov ebx, 2
000000000049648a  be70000000                       mov esi, 0x70
000000000049648f  e944f3ffff                       jmp 0x4957d8
0000000000496494  41b908000000                     mov r9d, 8
000000000049649a  bb02000000                       mov ebx, 2
000000000049649f  bef0000000                       mov esi, 0xf0
00000000004964a4  e92ff3ffff                       jmp 0x4957d8
00000000004964a9  41b90b000000                     mov r9d, 0xb
00000000004964af  bb02000000                       mov ebx, 2
00000000004964b4  bef0070000                       mov esi, 0x7f0
00000000004964b9  e91af3ffff                       jmp 0x4957d8
00000000004964be  41b90a000000                     mov r9d, 0xa
00000000004964c4  bb02000000                       mov ebx, 2
00000000004964c9  bef0030000                       mov esi, 0x3f0
00000000004964ce  e905f3ffff                       jmp 0x4957d8
00000000004964d3  41b90c000000                     mov r9d, 0xc
00000000004964d9  bb02000000                       mov ebx, 2
00000000004964de  bef00f0000                       mov esi, 0xff0
00000000004964e3  e9f0f2ffff                       jmp 0x4957d8
00000000004964e8  41b905000000                     mov r9d, 5
00000000004964ee  bb01000000                       mov ebx, 1
00000000004964f3  41be01000000                     mov r14d, 1
00000000004964f9  be10000000                       mov esi, 0x10
00000000004964fe  e9d5f2ffff                       jmp 0x4957d8
0000000000496503  41b904000000                     mov r9d, 4
0000000000496509  bb01000000                       mov ebx, 1
000000000049650e  41be01000000                     mov r14d, 1
0000000000496514  e9bff2ffff                       jmp 0x4957d8
0000000000496519  41b907000000                     mov r9d, 7
000000000049651f  bb01000000                       mov ebx, 1
0000000000496524  41be01000000                     mov r14d, 1
000000000049652a  be70000000                       mov esi, 0x70
000000000049652f  e9a4f2ffff                       jmp 0x4957d8
0000000000496534  41b90d000000                     mov r9d, 0xd
000000000049653a  bb02000000                       mov ebx, 2
000000000049653f  bef01f0000                       mov esi, 0x1ff0
0000000000496544  e98ff2ffff                       jmp 0x4957d8
0000000000496549  41b906000000                     mov r9d, 6
000000000049654f  bb01000000                       mov ebx, 1
0000000000496554  41be01000000                     mov r14d, 1
000000000049655a  be30000000                       mov esi, 0x30
000000000049655f  e974f2ffff                       jmp 0x4957d8
0000000000496564  41b90a000000                     mov r9d, 0xa
000000000049656a  bb01000000                       mov ebx, 1
000000000049656f  41be01000000                     mov r14d, 1
0000000000496575  bef0030000                       mov esi, 0x3f0
000000000049657a  e959f2ffff                       jmp 0x4957d8
000000000049657f  41b908000000                     mov r9d, 8
0000000000496585  bb01000000                       mov ebx, 1
000000000049658a  41be01000000                     mov r14d, 1
0000000000496590  bef0000000                       mov esi, 0xf0
0000000000496595  e93ef2ffff                       jmp 0x4957d8
000000000049659a  41b90e000000                     mov r9d, 0xe
00000000004965a0  bb02000000                       mov ebx, 2
00000000004965a5  bef03f0000                       mov esi, 0x3ff0
00000000004965aa  e929f2ffff                       jmp 0x4957d8
00000000004965af  41b909000000                     mov r9d, 9
00000000004965b5  bb01000000                       mov ebx, 1
00000000004965ba  41be01000000                     mov r14d, 1
00000000004965c0  bef0010000                       mov esi, 0x1f0
00000000004965c5  e90ef2ffff                       jmp 0x4957d8
00000000004965ca  41b912000000                     mov r9d, 0x12
00000000004965d0  bb02000000                       mov ebx, 2
00000000004965d5  41be01000000                     mov r14d, 1
00000000004965db  bef0ff0300                       mov esi, 0x3fff0
00000000004965e0  400fb6d7                         movzx edx, dil
00000000004965e4  e9eff1ffff                       jmp 0x4957d8
00000000004965e9  41b90c000000                     mov r9d, 0xc
00000000004965ef  bb01000000                       mov ebx, 1
00000000004965f4  41be01000000                     mov r14d, 1
00000000004965fa  bef00f0000                       mov esi, 0xff0
00000000004965ff  e9d4f1ffff                       jmp 0x4957d8
0000000000496604  41b90b000000                     mov r9d, 0xb
000000000049660a  bb01000000                       mov ebx, 1
000000000049660f  41be01000000                     mov r14d, 1
0000000000496615  bef0070000                       mov esi, 0x7f0
000000000049661a  e9b9f1ffff                       jmp 0x4957d8
000000000049661f  41b90d000000                     mov r9d, 0xd
0000000000496625  bb01000000                       mov ebx, 1
000000000049662a  41be01000000                     mov r14d, 1
0000000000496630  bef01f0000                       mov esi, 0x1ff0
0000000000496635  e99ef1ffff                       jmp 0x4957d8
000000000049663a  41b90f000000                     mov r9d, 0xf
0000000000496640  bb02000000                       mov ebx, 2
0000000000496645  bef07f0000                       mov esi, 0x7ff0
000000000049664a  e989f1ffff                       jmp 0x4957d8
000000000049664f  41b911000000                     mov r9d, 0x11
0000000000496655  bb01000000                       mov ebx, 1
000000000049665a  41be01000000                     mov r14d, 1
0000000000496660  bef0ff0100                       mov esi, 0x1fff0
0000000000496665  400fb6d7                         movzx edx, dil
0000000000496669  e96af1ffff                       jmp 0x4957d8
000000000049666e  41b911000000                     mov r9d, 0x11
0000000000496674  bb02000000                       mov ebx, 2
0000000000496679  bef0ff0100                       mov esi, 0x1fff0
000000000049667e  e955f1ffff                       jmp 0x4957d8
0000000000496683  41b90f000000                     mov r9d, 0xf
0000000000496689  bb01000000                       mov ebx, 1
000000000049668e  41be01000000                     mov r14d, 1
0000000000496694  bef07f0000                       mov esi, 0x7ff0
0000000000496699  e93af1ffff                       jmp 0x4957d8
000000000049669e  41b906000000                     mov r9d, 6
00000000004966a4  be30000000                       mov esi, 0x30
00000000004966a9  e92af1ffff                       jmp 0x4957d8
00000000004966ae  41b90e000000                     mov r9d, 0xe
00000000004966b4  bb01000000                       mov ebx, 1
00000000004966b9  41be01000000                     mov r14d, 1
00000000004966bf  bef03f0000                       mov esi, 0x3ff0
00000000004966c4  e90ff1ffff                       jmp 0x4957d8
00000000004966c9  89fb                             mov ebx, edi
00000000004966cb  41b910000000                     mov r9d, 0x10
00000000004966d1  bef0ff0000                       mov esi, 0xfff0
00000000004966d6  e9fdf0ffff                       jmp 0x4957d8
00000000004966db  41b907000000                     mov r9d, 7
00000000004966e1  be70000000                       mov esi, 0x70
00000000004966e6  e9edf0ffff                       jmp 0x4957d8
00000000004966eb  bb08000000                       mov ebx, 8
00000000004966f0  41be01000000                     mov r14d, 1
00000000004966f6  e9c7f0ffff                       jmp 0x4957c2
00000000004966fb  41b911000000                     mov r9d, 0x11
0000000000496701  bef0ff0100                       mov esi, 0x1fff0
0000000000496706  e9cdf0ffff                       jmp 0x4957d8
000000000049670b  41b912000000                     mov r9d, 0x12
0000000000496711  bb01000000                       mov ebx, 1
0000000000496716  41be01000000                     mov r14d, 1
000000000049671c  bef0ff0300                       mov esi, 0x3fff0
0000000000496721  400fb6d7                         movzx edx, dil
0000000000496725  e9aef0ffff                       jmp 0x4957d8
000000000049672a  bb01000000                       mov ebx, 1
000000000049672f  e953fbffff                       jmp 0x496287
0000000000496734  41b90f000000                     mov r9d, 0xf
000000000049673a  bef07f0000                       mov esi, 0x7ff0
000000000049673f  e994f0ffff                       jmp 0x4957d8
0000000000496744  89fb                             mov ebx, edi
0000000000496746  41b905000000                     mov r9d, 5
000000000049674c  be10000000                       mov esi, 0x10
0000000000496751  e982f0ffff                       jmp 0x4957d8
0000000000496756  4489cb                           mov ebx, r9d
0000000000496759  bef03f0000                       mov esi, 0x3ff0
000000000049675e  41b90e000000                     mov r9d, 0xe
0000000000496764  e96ff0ffff                       jmp 0x4957d8
0000000000496769  89c3                             mov ebx, eax
000000000049676b  41b904000000                     mov r9d, 4
0000000000496771  e962f0ffff                       jmp 0x4957d8
0000000000496776  41b909000000                     mov r9d, 9
000000000049677c  bef0010000                       mov esi, 0x1f0
0000000000496781  e952f0ffff                       jmp 0x4957d8
0000000000496786  41b90c000000                     mov r9d, 0xc
000000000049678c  bef00f0000                       mov esi, 0xff0
0000000000496791  e942f0ffff                       jmp 0x4957d8
0000000000496796  89fb                             mov ebx, edi
0000000000496798  41b908000000                     mov r9d, 8
000000000049679e  bef0000000                       mov esi, 0xf0
00000000004967a3  e930f0ffff                       jmp 0x4957d8
00000000004967a8  89fb                             mov ebx, edi
00000000004967aa  41b90a000000                     mov r9d, 0xa
00000000004967b0  bef0030000                       mov esi, 0x3f0
00000000004967b5  e91ef0ffff                       jmp 0x4957d8
00000000004967ba  892d800e4c00                     mov dword ptr [rip + 0x4c0e80], ebp
00000000004967c0  e95ffcffff                       jmp 0x496424
00000000004967c5  e8d6d8f6ff                       call 0x4040a0
00000000004967ca  89fb                             mov ebx, edi
00000000004967cc  e970f9ffff                       jmp 0x496141
00000000004967d1  4489cb                           mov ebx, r9d
00000000004967d4  bef0070000                       mov esi, 0x7f0
00000000004967d9  41b90b000000                     mov r9d, 0xb
00000000004967df  e9f4efffff                       jmp 0x4957d8
00000000004967e4  892d560e4c00                     mov dword ptr [rip + 0x4c0e56], ebp
00000000004967ea  e9f6f0ffff                       jmp 0x4958e5
00000000004967ef  89d8                             mov eax, ebx
00000000004967f1  e946f3ffff                       jmp 0x495b3c
00000000004967f6  448d4701                         lea r8d, [rdi + 1]
00000000004967fa  4531c9                           xor r9d, r9d
00000000004967fd  4531d2                           xor r10d, r10d
0000000000496800  4863c5                           movsxd rax, ebp
0000000000496803  31c9                             xor ecx, ecx
0000000000496805  410fb63404                       movzx esi, byte ptr [r12 + rax]
000000000049680a  8d041b                           lea eax, [rbx + rbx]
000000000049680d  85de                             test esi, ebx
000000000049680f  0f95c1                           setne cl
0000000000496812  3d00010000                       cmp eax, 0x100
0000000000496817  0f8493030000                     je 0x496bb0
000000000049681d  8d149d00000000                   lea edx, [rbx*4]
0000000000496824  21f0                             and eax, esi
0000000000496826  81fa00010000                     cmp edx, 0x100
000000000049682c  0f85ce030000                     jne 0x496c00
0000000000496832  83c501                           add ebp, 1
0000000000496835  4863d5                           movsxd rdx, ebp
0000000000496838  410fb61414                       movzx edx, byte ptr [r12 + rdx]
000000000049683d  83e201                           and edx, 1
0000000000496840  85c0                             test eax, eax
0000000000496842  0f84c0030000                     je 0x496c08
0000000000496848  83c902                           or ecx, 2
000000000049684b  bb02000000                       mov ebx, 2
0000000000496850  41be01000000                     mov r14d, 1
0000000000496856  662e0f1f840000000000             nop word ptr cs:[rax + rax]
0000000000496860  85d2                             test edx, edx
0000000000496862  0f8438030000                     je 0x496ba0
0000000000496868  83c904                           or ecx, 4
000000000049686b  4183c203                         add r10d, 3
000000000049686f  4101c9                           add r9d, ecx
0000000000496872  4181fa9f860100                   cmp r10d, 0x1869f
0000000000496879  7f05                             jg 0x496880
000000000049687b  83f907                           cmp ecx, 7
000000000049687e  7480                             je 0x496800
0000000000496880  4963cf                           movsxd rcx, r15d
0000000000496883  4863f7                           movsxd rsi, edi
0000000000496886  418d5103                         lea edx, [r9 + 3]
000000000049688a  488d410f                         lea rax, [rcx + 0xf]
000000000049688e  488d79ff                         lea rdi, [rcx - 1]
0000000000496892  4829f0                           sub rax, rsi
0000000000496895  4829f7                           sub rdi, rsi
0000000000496898  4839c1                           cmp rcx, rax
000000000049689b  488d4110                         lea rax, [rcx + 0x10]
000000000049689f  4989fb                           mov r11, rdi
00000000004968a2  400f9dc6                         setge sil
00000000004968a6  4839c7                           cmp rdi, rax
00000000004968a9  0f9dc0                           setge al
00000000004968ac  4008c6                           or sil, al
00000000004968af  0f8463030000                     je 0x496c18
00000000004968b5  83fa16                           cmp edx, 0x16
00000000004968b8  0f865a030000                     jbe 0x496c18
00000000004968be  498d7c3d00                       lea rdi, [r13 + rdi]
00000000004968c3  418d7102                         lea esi, [r9 + 2]
00000000004968c7  48f7df                           neg rdi
00000000004968ca  89742414                         mov dword ptr [rsp + 0x14], esi
00000000004968ce  83e70f                           and edi, 0xf
00000000004968d1  8d470f                           lea eax, [rdi + 0xf]
00000000004968d4  39f0                             cmp eax, esi
00000000004968d6  4489f8                           mov eax, r15d
00000000004968d9  0f8782030000                     ja 0x496c61
00000000004968df  85ff                             test edi, edi
00000000004968e1  0f8483030000                     je 0x496c6a
00000000004968e7  4429c0                           sub eax, r8d
00000000004968ea  458d5701                         lea r10d, [r15 + 1]
00000000004968ee  83ff01                           cmp edi, 1
00000000004968f1  4898                             cdqe 
00000000004968f3  89f2                             mov edx, esi
00000000004968f5  410fb6440500                     movzx eax, byte ptr [r13 + rax]
00000000004968fb  4188440d00                       mov byte ptr [r13 + rcx], al
0000000000496900  4489d0                           mov eax, r10d
0000000000496903  0f84ff010000                     je 0x496b08
0000000000496909  4429c0                           sub eax, r8d
000000000049690c  83ff02                           cmp edi, 2
000000000049690f  4898                             cdqe 
0000000000496911  410fb6540500                     movzx edx, byte ptr [r13 + rax]
0000000000496917  4963c2                           movsxd rax, r10d
000000000049691a  4188540500                       mov byte ptr [r13 + rax], dl
000000000049691f  418d4702                         lea eax, [r15 + 2]
0000000000496923  418d5101                         lea edx, [r9 + 1]
0000000000496927  0f84db010000                     je 0x496b08
000000000049692d  89c2                             mov edx, eax
000000000049692f  4898                             cdqe 
0000000000496931  4429c2                           sub edx, r8d
0000000000496934  83ff03                           cmp edi, 3
0000000000496937  4863d2                           movsxd rdx, edx
000000000049693a  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496940  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496945  418d4703                         lea eax, [r15 + 3]
0000000000496949  0f840a030000                     je 0x496c59
000000000049694f  89c2                             mov edx, eax
0000000000496951  4898                             cdqe 
0000000000496953  4429c2                           sub edx, r8d
0000000000496956  83ff04                           cmp edi, 4
0000000000496959  4863d2                           movsxd rdx, edx
000000000049695c  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496962  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496967  418d4704                         lea eax, [r15 + 4]
000000000049696b  418d51ff                         lea edx, [r9 - 1]
000000000049696f  0f8493010000                     je 0x496b08
0000000000496975  89c2                             mov edx, eax
0000000000496977  4898                             cdqe 
0000000000496979  4429c2                           sub edx, r8d
000000000049697c  83ff05                           cmp edi, 5
000000000049697f  4863d2                           movsxd rdx, edx
0000000000496982  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496988  4188540500                       mov byte ptr [r13 + rax], dl
000000000049698d  418d4705                         lea eax, [r15 + 5]
0000000000496991  418d51fe                         lea edx, [r9 - 2]
0000000000496995  0f846d010000                     je 0x496b08
000000000049699b  89c2                             mov edx, eax
000000000049699d  4898                             cdqe 
000000000049699f  4429c2                           sub edx, r8d
00000000004969a2  83ff06                           cmp edi, 6
00000000004969a5  4863d2                           movsxd rdx, edx
00000000004969a8  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
00000000004969ae  4188540500                       mov byte ptr [r13 + rax], dl
00000000004969b3  418d4706                         lea eax, [r15 + 6]
00000000004969b7  418d51fd                         lea edx, [r9 - 3]
00000000004969bb  0f8447010000                     je 0x496b08
00000000004969c1  89c2                             mov edx, eax
00000000004969c3  4898                             cdqe 
00000000004969c5  4429c2                           sub edx, r8d
00000000004969c8  83ff07                           cmp edi, 7
00000000004969cb  4863d2                           movsxd rdx, edx
00000000004969ce  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
00000000004969d4  4188540500                       mov byte ptr [r13 + rax], dl
00000000004969d9  418d4707                         lea eax, [r15 + 7]
00000000004969dd  418d51fc                         lea edx, [r9 - 4]
00000000004969e1  0f8421010000                     je 0x496b08
00000000004969e7  89c2                             mov edx, eax
00000000004969e9  4898                             cdqe 
00000000004969eb  4429c2                           sub edx, r8d
00000000004969ee  83ff08                           cmp edi, 8
00000000004969f1  4863d2                           movsxd rdx, edx
00000000004969f4  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
00000000004969fa  4188540500                       mov byte ptr [r13 + rax], dl
00000000004969ff  418d4708                         lea eax, [r15 + 8]
0000000000496a03  418d51fb                         lea edx, [r9 - 5]
0000000000496a07  0f84fb000000                     je 0x496b08
0000000000496a0d  89c2                             mov edx, eax
0000000000496a0f  4898                             cdqe 
0000000000496a11  4429c2                           sub edx, r8d
0000000000496a14  83ff09                           cmp edi, 9
0000000000496a17  4863d2                           movsxd rdx, edx
0000000000496a1a  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496a20  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496a25  418d4709                         lea eax, [r15 + 9]
0000000000496a29  418d51fa                         lea edx, [r9 - 6]
0000000000496a2d  0f84d5000000                     je 0x496b08
0000000000496a33  89c2                             mov edx, eax
0000000000496a35  4898                             cdqe 
0000000000496a37  4429c2                           sub edx, r8d
0000000000496a3a  83ff0a                           cmp edi, 0xa
0000000000496a3d  4863d2                           movsxd rdx, edx
0000000000496a40  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496a46  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496a4b  418d470a                         lea eax, [r15 + 0xa]
0000000000496a4f  418d51f9                         lea edx, [r9 - 7]
0000000000496a53  0f84af000000                     je 0x496b08
0000000000496a59  89c2                             mov edx, eax
0000000000496a5b  4898                             cdqe 
0000000000496a5d  4429c2                           sub edx, r8d
0000000000496a60  83ff0b                           cmp edi, 0xb
0000000000496a63  4863d2                           movsxd rdx, edx
0000000000496a66  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496a6c  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496a71  418d470b                         lea eax, [r15 + 0xb]
0000000000496a75  418d51f8                         lea edx, [r9 - 8]
0000000000496a79  0f8489000000                     je 0x496b08
0000000000496a7f  89c2                             mov edx, eax
0000000000496a81  4898                             cdqe 
0000000000496a83  4429c2                           sub edx, r8d
0000000000496a86  83ff0c                           cmp edi, 0xc
0000000000496a89  4863d2                           movsxd rdx, edx
0000000000496a8c  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496a92  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496a97  418d470c                         lea eax, [r15 + 0xc]
0000000000496a9b  418d51f7                         lea edx, [r9 - 9]
0000000000496a9f  7467                             je 0x496b08
0000000000496aa1  89c2                             mov edx, eax
0000000000496aa3  4898                             cdqe 
0000000000496aa5  4429c2                           sub edx, r8d
0000000000496aa8  83ff0d                           cmp edi, 0xd
0000000000496aab  4863d2                           movsxd rdx, edx
0000000000496aae  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496ab4  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496ab9  418d470d                         lea eax, [r15 + 0xd]
0000000000496abd  418d51f6                         lea edx, [r9 - 0xa]
0000000000496ac1  7445                             je 0x496b08
0000000000496ac3  89c2                             mov edx, eax
0000000000496ac5  4898                             cdqe 
0000000000496ac7  4429c2                           sub edx, r8d
0000000000496aca  83ff0f                           cmp edi, 0xf
0000000000496acd  4863d2                           movsxd rdx, edx
0000000000496ad0  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496ad6  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496adb  418d470e                         lea eax, [r15 + 0xe]
0000000000496adf  418d51f5                         lea edx, [r9 - 0xb]
0000000000496ae3  7523                             jne 0x496b08
0000000000496ae5  89c2                             mov edx, eax
0000000000496ae7  4898                             cdqe 
0000000000496ae9  4429c2                           sub edx, r8d
0000000000496aec  4863d2                           movsxd rdx, edx
0000000000496aef  410fb6541500                     movzx edx, byte ptr [r13 + rdx]
0000000000496af5  4188540500                       mov byte ptr [r13 + rax], dl
0000000000496afa  418d470f                         lea eax, [r15 + 0xf]
0000000000496afe  418d51f4                         lea edx, [r9 - 0xc]
0000000000496b02  660f1f440000                     nop word ptr [rax + rax]
0000000000496b08  4129f9                           sub r9d, edi
0000000000496b0b  89fe                             mov esi, edi
0000000000496b0d  458d7903                         lea r15d, [r9 + 3]
0000000000496b11  498d3c33                         lea rdi, [r11 + rsi]
0000000000496b15  4801f1                           add rcx, rsi
0000000000496b18  4d8d5c0d00                       lea r11, [r13 + rcx]
0000000000496b1d  31f6                             xor esi, esi
0000000000496b1f  31c9                             xor ecx, ecx
0000000000496b21  4589f9                           mov r9d, r15d
0000000000496b24  4c01ef                           add rdi, r13
0000000000496b27  41c1e904                         shr r9d, 4
0000000000496b2b  0f1f440000                       nop dword ptr [rax + rax]
0000000000496b30  660f6f040f                       movdqa xmm0, xmmword ptr [rdi + rcx]
0000000000496b35  83c601                           add esi, 1
0000000000496b38  410f11040b                       movups xmmword ptr [r11 + rcx], xmm0
0000000000496b3d  4883c110                         add rcx, 0x10
0000000000496b41  4439ce                           cmp esi, r9d
0000000000496b44  72ea                             jb 0x496b30
0000000000496b46  4489f9                           mov ecx, r15d
0000000000496b49  83e1f0                           and ecx, 0xfffffff0
0000000000496b4c  01c8                             add eax, ecx
0000000000496b4e  29ca                             sub edx, ecx
0000000000496b50  4439f9                           cmp ecx, r15d
0000000000496b53  741b                             je 0x496b70
0000000000496b55  4898                             cdqe 
0000000000496b57  4963f0                           movsxd rsi, r8d
0000000000496b5a  4c01e8                           add rax, r13
0000000000496b5d  48f7de                           neg rsi
0000000000496b60  0fb60c30                         movzx ecx, byte ptr [rax + rsi]
0000000000496b64  4883c001                         add rax, 1
0000000000496b68  8848ff                           mov byte ptr [rax - 1], cl
0000000000496b6b  83ea01                           sub edx, 1
0000000000496b6e  75f0                             jne 0x496b60
0000000000496b70  448b7c2414                       mov r15d, dword ptr [rsp + 0x14]
0000000000496b75  4501d7                           add r15d, r10d
0000000000496b78  44397c2418                       cmp dword ptr [rsp + 0x18], r15d
0000000000496b7d  0f8e4aedffff                     jle 0x4958cd
0000000000496b83  4963c7                           movsxd rax, r15d
0000000000496b86  ba01000000                       mov edx, 1
0000000000496b8b  41c644050000                     mov byte ptr [r13 + rax], 0
0000000000496b91  e93cedffff                       jmp 0x4958d2
0000000000496b96  662e0f1f840000000000             nop word ptr cs:[rax + rax]
0000000000496ba0  4101c9                           add r9d, ecx
0000000000496ba3  e9d8fcffff                       jmp 0x496880
0000000000496ba8  0f1f840000000000                 nop dword ptr [rax + rax]
0000000000496bb0  83c501                           add ebp, 1
0000000000496bb3  bb04000000                       mov ebx, 4
0000000000496bb8  ba02000000                       mov edx, 2
0000000000496bbd  4863c5                           movsxd rax, ebp
0000000000496bc0  41be01000000                     mov r14d, 1
0000000000496bc6  410fb63404                       movzx esi, byte ptr [r12 + rax]
0000000000496bcb  89f0                             mov eax, esi
0000000000496bcd  83e001                           and eax, 1
0000000000496bd0  21f2                             and edx, esi
0000000000496bd2  89ce                             mov esi, ecx
0000000000496bd4  83ce02                           or esi, 2
0000000000496bd7  85c0                             test eax, eax
0000000000496bd9  0f45ce                           cmovne ecx, esi
0000000000496bdc  81fb00010000                     cmp ebx, 0x100
0000000000496be2  0f8578fcffff                     jne 0x496860
0000000000496be8  83c501                           add ebp, 1
0000000000496beb  bb01000000                       mov ebx, 1
0000000000496bf0  41be01000000                     mov r14d, 1
0000000000496bf6  e965fcffff                       jmp 0x496860
0000000000496bfb  0f1f440000                       nop dword ptr [rax + rax]
0000000000496c00  c1e303                           shl ebx, 3
0000000000496c03  ebcb                             jmp 0x496bd0
0000000000496c05  0f1f00                           nop dword ptr [rax]
0000000000496c08  bb02000000                       mov ebx, 2
0000000000496c0d  41be01000000                     mov r14d, 1
0000000000496c13  e948fcffff                       jmp 0x496860
0000000000496c18  498d740d01                       lea rsi, [r13 + rcx + 1]
0000000000496c1d  4963d0                           movsxd rdx, r8d
0000000000496c20  4889c8                           mov rax, rcx
0000000000496c23  418d4902                         lea ecx, [r9 + 2]
0000000000496c27  4829d0                           sub rax, rdx
0000000000496c2a  4829d6                           sub rsi, rdx
0000000000496c2d  4c01e8                           add rax, r13
0000000000496c30  894c2414                         mov dword ptr [rsp + 0x14], ecx
0000000000496c34  4801ce                           add rsi, rcx
0000000000496c37  660f1f840000000000               nop word ptr [rax + rax]
0000000000496c40  0fb608                           movzx ecx, byte ptr [rax]
0000000000496c43  4883c001                         add rax, 1
0000000000496c47  884c10ff                         mov byte ptr [rax + rdx - 1], cl
0000000000496c4b  4839f0                           cmp rax, rsi
0000000000496c4e  75f0                             jne 0x496c40
0000000000496c50  458d5701                         lea r10d, [r15 + 1]
0000000000496c54  e917ffffff                       jmp 0x496b70
0000000000496c59  4489ca                           mov edx, r9d
0000000000496c5c  e9a7feffff                       jmp 0x496b08
0000000000496c61  458d5701                         lea r10d, [r15 + 1]
0000000000496c65  e9ebfeffff                       jmp 0x496b55
0000000000496c6a  458d5701                         lea r10d, [r15 + 1]
0000000000496c6e  e995feffff                       jmp 0x496b08
0000000000496c73  89fb                             mov ebx, edi
0000000000496c75  41b90d000000                     mov r9d, 0xd
0000000000496c7b  bef01f0000                       mov esi, 0x1ff0
0000000000496c80  e953ebffff                       jmp 0x4957d8
0000000000496c85  89fb                             mov ebx, edi
0000000000496c87  41b912000000                     mov r9d, 0x12
0000000000496c8d  bef0ff0300                       mov esi, 0x3fff0
0000000000496c92  e941ebffff                       jmp 0x4957d8
0000000000496c97  85f6                             test esi, esi
0000000000496c99  8d1cbd00000000                   lea ebx, [rdi*4]
0000000000496ca0  7432                             je 0x496cd4
0000000000496ca2  81fb00010000                     cmp ebx, 0x100
0000000000496ca8  0f8514ebffff                     jne 0x4957c2
0000000000496cae  83c501                           add ebp, 1
0000000000496cb1  41b914000000                     mov r9d, 0x14
0000000000496cb7  bb01000000                       mov ebx, 1
0000000000496cbc  4863c5                           movsxd rax, ebp
0000000000496cbf  41be01000000                     mov r14d, 1
0000000000496cc5  bef0ff0f00                       mov esi, 0xffff0
0000000000496cca  410fb61404                       movzx edx, byte ptr [r12 + rax]
0000000000496ccf  e904ebffff                       jmp 0x4957d8
0000000000496cd4  4489cb                           mov ebx, r9d
0000000000496cd7  e9abf5ffff                       jmp 0x496287
