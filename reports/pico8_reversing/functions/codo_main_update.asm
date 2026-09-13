000000000040e800  4157                             push r15
000000000040e802  4156                             push r14
000000000040e804  4155                             push r13
000000000040e806  4154                             push r12
000000000040e808  55                               push rbp
000000000040e809  53                               push rbx
000000000040e80a  4883ec48                         sub rsp, 0x48
000000000040e80e  64488b042528000000               mov rax, qword ptr fs:[0x28]
000000000040e817  4889442438                       mov qword ptr [rsp + 0x38], rax
000000000040e81c  31c0                             xor eax, eax
000000000040e81e  e80dffffff                       call 0x40e730
000000000040e823  31c0                             xor eax, eax
000000000040e825  e8a61b0300                       call 0x4403d0
000000000040e82a  8b35b8305a00                     mov esi, dword ptr [rip + 0x5a30b8]
000000000040e830  85f6                             test esi, esi
000000000040e832  750f                             jne 0x40e843
000000000040e834  8b1d96ed7e00                     mov ebx, dword ptr [rip + 0x7eed96]
000000000040e83a  83fb01                           cmp ebx, 1
000000000040e83d  0f84fd050000                     je 0x40ee40
000000000040e843  31c0                             xor eax, eax
000000000040e845  e826e30f00                       call 0x50cb70
000000000040e84a  8905b8f94b00                     mov dword ptr [rip + 0x4bf9b8], eax
000000000040e850  31c0                             xor eax, eax
000000000040e852  e839680000                       call 0x415090
000000000040e857  31c0                             xor eax, eax
000000000040e859  e8e2910600                       call 0x477a40
000000000040e85e  31c0                             xor eax, eax
000000000040e860  e87bde0400                       call 0x45c6e0
000000000040e865  8b05f1997000                     mov eax, dword ptr [rip + 0x7099f1]
000000000040e86b  85c0                             test eax, eax
000000000040e86d  7406                             je 0x40e875
000000000040e86f  8905c73e5d00                     mov dword ptr [rip + 0x5d3ec7], eax
000000000040e875  488b358cfe7e00                   mov rsi, qword ptr [rip + 0x7efe8c]
000000000040e87c  488d3ddd9f7c00                   lea rdi, [rip + 0x7c9fdd]
000000000040e883  ba2d5f0000                       mov edx, 0x5f2d
000000000040e888  c705ce99700000010000             mov dword ptr [rip + 0x7099ce], 0x100
000000000040e892  e8099a0600                       call 0x4782a0
000000000040e897  31ff                             xor edi, edi
000000000040e899  833d30ed7e0001                   cmp dword ptr [rip + 0x7eed30], 1
000000000040e8a0  750c                             jne 0x40e8ae
000000000040e8a2  83e005                           and eax, 5
000000000040e8a5  31ff                             xor edi, edi
000000000040e8a7  83f805                           cmp eax, 5
000000000040e8aa  400f94c7                         sete dil
000000000040e8ae  8b1534305a00                     mov edx, dword ptr [rip + 0x5a3034]
000000000040e8b4  b800000000                       mov eax, 0
000000000040e8b9  85d2                             test edx, edx
000000000040e8bb  0f45f8                           cmovne edi, eax
000000000040e8be  e85d1a1000                       call 0x510320
000000000040e8c3  8b05233c5d00                     mov eax, dword ptr [rip + 0x5d3c23]
000000000040e8c9  85c0                             test eax, eax
000000000040e8cb  740d                             je 0x40e8da
000000000040e8cd  833dfcec7e0001                   cmp dword ptr [rip + 0x7eecfc], 1
000000000040e8d4  0f846e0d0000                     je 0x40f648
000000000040e8da  8b05ac225a00                     mov eax, dword ptr [rip + 0x5a22ac]
000000000040e8e0  85c0                             test eax, eax
000000000040e8e2  0f8508050000                     jne 0x40edf0
000000000040e8e8  48c705b5c8700000000000           mov qword ptr [rip + 0x70c8b5], 0
000000000040e8f3  bffbffffff                       mov edi, 0xfffffffb
000000000040e8f8  c70522f94b0001000000             mov dword ptr [rip + 0x4bf922], 1
000000000040e902  e849f30a00                       call 0x4bdc50
000000000040e907  85c0                             test eax, eax
000000000040e909  0f8591090000                     jne 0x40f2a0
000000000040e90f  bffbffffff                       mov edi, 0xfffffffb
000000000040e914  e837f30a00                       call 0x4bdc50
000000000040e919  85c0                             test eax, eax
000000000040e91b  0f856f070000                     jne 0x40f090
000000000040e921  bffbffffff                       mov edi, 0xfffffffb
000000000040e926  e825f30a00                       call 0x4bdc50
000000000040e92b  85c0                             test eax, eax
000000000040e92d  0f8565080000                     jne 0x40f198
000000000040e933  8b05abec7e00                     mov eax, dword ptr [rip + 0x7eecab]
000000000040e939  660f76c0                         pcmpeqd xmm0, xmm0
000000000040e93d  c705f500800059000000             mov dword ptr [rip + 0x8000f5], 0x59
000000000040e947  85c0                             test eax, eax
000000000040e949  0f1105ecf27e00                   movups xmmword ptr [rip + 0x7ef2ec], xmm0
000000000040e950  0f1105f5f27e00                   movups xmmword ptr [rip + 0x7ef2f5], xmm0
000000000040e957  744a                             je 0x40e9a3
000000000040e959  83f801                           cmp eax, 1
000000000040e95c  c7057e9f7c0000000000             mov dword ptr [rip + 0x7c9f7e], 0
000000000040e966  0f84b40e0000                     je 0x40f820
000000000040e96c  83f802                           cmp eax, 2
000000000040e96f  0f846b0e0000                     je 0x40f7e0
000000000040e975  83f803                           cmp eax, 3
000000000040e978  0f84820e0000                     je 0x40f800
000000000040e97e  83f804                           cmp eax, 4
000000000040e981  0f84190e0000                     je 0x40f7a0
000000000040e987  83f805                           cmp eax, 5
000000000040e98a  0f84d00e0000                     je 0x40f860
000000000040e990  83f806                           cmp eax, 6
000000000040e993  0f84b70e0000                     je 0x40f850
000000000040e999  c70541ec7e0000000000             mov dword ptr [rip + 0x7eec41], 0
000000000040e9a3  833d26ec7e0001                   cmp dword ptr [rip + 0x7eec26], 1
000000000040e9aa  742c                             je 0x40e9d8
000000000040e9ac  8b05362f5a00                     mov eax, dword ptr [rip + 0x5a2f36]
000000000040e9b2  c705e0c7700000000000             mov dword ptr [rip + 0x70c7e0], 0
000000000040e9bc  85c0                             test eax, eax
000000000040e9be  0f856c040000                     jne 0x40ee30
000000000040e9c4  c7051a2f5a0000000000             mov dword ptr [rip + 0x5a2f1a], 0
000000000040e9ce  c70540fe7f001e000000             mov dword ptr [rip + 0x7ffe40], 0x1e
000000000040e9d8  31c0                             xor eax, eax
000000000040e9da  e891e10f00                       call 0x50cb70
000000000040e9df  8b35b7c77000                     mov esi, dword ptr [rip + 0x70c7b7]
000000000040e9e5  8db800a24a04                     lea edi, [rax + 0x44aa200]
000000000040e9eb  448b0526fe7f00                   mov r8d, dword ptr [rip + 0x7ffe26]
000000000040e9f2  41b91e000000                     mov r9d, 0x1e
000000000040e9f8  85f6                             test esi, esi
000000000040e9fa  0f84d0030000                     je 0x40edd0
000000000040ea00  89f9                             mov ecx, edi
000000000040ea02  2b0d3cf84b00                     sub ecx, dword ptr [rip + 0x4bf83c]
000000000040ea08  b8007d0000                       mov eax, 0x7d00
000000000040ea0d  bad34d6210                       mov edx, 0x10624dd3
000000000040ea12  81f9007d0000                     cmp ecx, 0x7d00
000000000040ea18  0f4fc8                           cmovg ecx, eax
000000000040ea1b  c1e110                           shl ecx, 0x10
000000000040ea1e  89c8                             mov eax, ecx
000000000040ea20  c1f91f                           sar ecx, 0x1f
000000000040ea23  f7ea                             imul edx
000000000040ea25  c1fa06                           sar edx, 6
000000000040ea28  29ca                             sub edx, ecx
000000000040ea2a  410fafd1                         imul edx, r9d
000000000040ea2e  0315f83c5d00                     add edx, dword ptr [rip + 0x5d3cf8]
000000000040ea34  0f8886050000                     js 0x40efc0
000000000040ea3a  8915ec3c5d00                     mov dword ptr [rip + 0x5d3cec], edx
000000000040ea40  448b35a53a5d00                   mov r14d, dword ptr [rip + 0x5d3aa5]
000000000040ea47  b800000100                       mov eax, 0x10000
000000000040ea4c  893df2f74b00                     mov dword ptr [rip + 0x4bf7f2], edi
000000000040ea52  4585f6                           test r14d, r14d
000000000040ea55  0f45d0                           cmovne edx, eax
000000000040ea58  31c0                             xor eax, eax
000000000040ea5a  4183f83c                         cmp r8d, 0x3c
000000000040ea5e  0f94c0                           sete al
000000000040ea61  05ffff0100                       add eax, 0x1ffff
000000000040ea66  39d0                             cmp eax, edx
000000000040ea68  0f4ed0                           cmovle edx, eax
000000000040ea6b  85f6                             test esi, esi
000000000040ea6d  8915b93c5d00                     mov dword ptr [rip + 0x5d3cb9], edx
000000000040ea73  0f8457020000                     je 0x40ecd0
000000000040ea79  81faffff0000                     cmp edx, 0xffff
000000000040ea7f  0f8ffb0a0000                     jg 0x40f580
000000000040ea85  48833d43eb7e0000                 cmp qword ptr [rip + 0x7eeb43], 0
000000000040ea8d  0f84ad080000                     je 0x40f340
000000000040ea93  8b2d3beb7e00                     mov ebp, dword ptr [rip + 0x7eeb3b]
000000000040ea99  85ed                             test ebp, ebp
000000000040ea9b  0f858f080000                     jne 0x40f330
000000000040eaa1  48833d27eb7e0001                 cmp qword ptr [rip + 0x7eeb27], 1
000000000040eaa9  0f8491050000                     je 0x40f040
000000000040eaaf  448b1d36eb7e00                   mov r11d, dword ptr [rip + 0x7eeb36]
000000000040eab6  4585db                           test r11d, r11d
000000000040eab9  0f85e1080000                     jne 0x40f3a0
000000000040eabf  8b1d1f205a00                     mov ebx, dword ptr [rip + 0x5a201f]
000000000040eac5  85db                             test ebx, ebx
000000000040eac7  0f85f6080000                     jne 0x40f3c3
000000000040eacd  bffbffffff                       mov edi, 0xfffffffb
000000000040ead2  e879f10a00                       call 0x4bdc50
000000000040ead7  85c0                             test eax, eax
000000000040ead9  0f856e090000                     jne 0x40f44d
000000000040eadf  bffbffffff                       mov edi, 0xfffffffb
000000000040eae4  e867f10a00                       call 0x4bdc50
000000000040eae9  85c0                             test eax, eax
000000000040eaeb  0f8583090000                     jne 0x40f474
000000000040eaf1  bffbffffff                       mov edi, 0xfffffffb
000000000040eaf6  e855f10a00                       call 0x4bdc50
000000000040eafb  85c0                             test eax, eax
000000000040eafd  0f8598090000                     jne 0x40f49b
000000000040eb03  bffbffffff                       mov edi, 0xfffffffb
000000000040eb08  e843f10a00                       call 0x4bdc50
000000000040eb0d  85c0                             test eax, eax
000000000040eb0f  0f85ad090000                     jne 0x40f4c2
000000000040eb15  bffbffffff                       mov edi, 0xfffffffb
000000000040eb1a  e831f10a00                       call 0x4bdc50
000000000040eb1f  85c0                             test eax, eax
000000000040eb21  0f85c2090000                     jne 0x40f4e9
000000000040eb27  bffcffffff                       mov edi, 0xfffffffc
000000000040eb2c  e81ff10a00                       call 0x4bdc50
000000000040eb31  85c0                             test eax, eax
000000000040eb33  0f858f000000                     jne 0x40ebc8
000000000040eb39  83fb01                           cmp ebx, 1
000000000040eb3c  0f84be120000                     je 0x40fe00
000000000040eb42  83fb02                           cmp ebx, 2
000000000040eb45  0f8495120000                     je 0x40fde0
000000000040eb4b  83fb03                           cmp ebx, 3
000000000040eb4e  0f846c0d0000                     je 0x40f8c0
000000000040eb54  83fb04                           cmp ebx, 4
000000000040eb57  0f8543130000                     jne 0x40fea0
000000000040eb5d  31f6                             xor esi, esi
000000000040eb5f  31ff                             xor edi, edi
000000000040eb61  e8cab70400                       call 0x45a330
000000000040eb66  83f809                           cmp eax, 9
000000000040eb69  488d35983a2200                   lea rsi, [rip + 0x223a98]
000000000040eb70  740f                             je 0x40eb81
000000000040eb72  85c0                             test eax, eax
000000000040eb74  0f8ea6150000                     jle 0x410120
000000000040eb7a  488d3528332200                   lea rsi, [rip + 0x223328]
000000000040eb81  488d3d88395d00                   lea rdi, [rip + 0x5d3988]
000000000040eb88  e873081200                       call 0x52f400
000000000040eb8d  31c0                             xor eax, eax
000000000040eb8f  e8dcdf0f00                       call 0x50cb70
000000000040eb94  8905763a5d00                     mov dword ptr [rip + 0x5d3a76], eax
000000000040eb9a  31c0                             xor eax, eax
000000000040eb9c  e8cfdf0f00                       call 0x50cb70
000000000040eba1  056c070000                       add eax, 0x76c
000000000040eba6  c705683a5d000f000000             mov dword ptr [rip + 0x5d3a68], 0xf
000000000040ebb0  89055e3a5d00                     mov dword ptr [rip + 0x5d3a5e], eax
000000000040ebb6  833ddb1f5a0001                   cmp dword ptr [rip + 0x5a1fdb], 1
000000000040ebbd  0f84f8140000                     je 0x4100bb
000000000040ebc3  0f1f440000                       nop dword ptr [rax + rax]
000000000040ebc8  448b15ed345b00                   mov r10d, dword ptr [rip + 0x5b34ed]
000000000040ebcf  4585d2                           test r10d, r10d
000000000040ebd2  7452                             je 0x40ec26
000000000040ebd4  488d0545fb7000                   lea rax, [rip + 0x70fb45]
000000000040ebdb  488b15d8325b00                   mov rdx, qword ptr [rip + 0x5b32d8]
000000000040ebe2  488d35d1325b00                   lea rsi, [rip + 0x5b32d1]
000000000040ebe9  488d7808                         lea rdi, [rax + 8]
000000000040ebed  4889152cfb7000                   mov qword ptr [rip + 0x70fb2c], rdx
000000000040ebf4  488b15b7345b00                   mov rdx, qword ptr [rip + 0x5b34b7]
000000000040ebfb  4883e7f8                         and rdi, 0xfffffffffffffff8
000000000040ebff  4829f8                           sub rax, rdi
000000000040ec02  8d8800020000                     lea ecx, [rax + 0x200]
000000000040ec08  4829c6                           sub rsi, rax
000000000040ec0b  48891506fd7000                   mov qword ptr [rip + 0x70fd06], rdx
000000000040ec12  89c8                             mov eax, ecx
000000000040ec14  c1e803                           shr eax, 3
000000000040ec17  89c1                             mov ecx, eax
000000000040ec19  f348a5                           rep movsq qword ptr [rdi], qword ptr [rsi]
000000000040ec1c  c70596345b0000000000             mov dword ptr [rip + 0x5b3496], 0
000000000040ec26  448b0dc3e97e00                   mov r9d, dword ptr [rip + 0x7ee9c3]
000000000040ec2d  4585c9                           test r9d, r9d
000000000040ec30  751e                             jne 0x40ec50
000000000040ec32  448b05971f5a00                   mov r8d, dword ptr [rip + 0x5a1f97]
000000000040ec39  4585c0                           test r8d, r8d
000000000040ec3c  7512                             jne 0x40ec50
000000000040ec3e  8b3db0e97e00                     mov edi, dword ptr [rip + 0x7ee9b0]
000000000040ec44  85ff                             test edi, edi
000000000040ec46  0f84440b0000                     je 0x40f790
000000000040ec4c  0f1f4000                         nop dword ptr [rax]
000000000040ec50  8b1d7ae97e00                     mov ebx, dword ptr [rip + 0x7ee97a]
000000000040ec56  83fb01                           cmp ebx, 1
000000000040ec59  0f8479030000                     je 0x40efd8
000000000040ec5f  83eb02                           sub ebx, 2
000000000040ec62  83fb01                           cmp ebx, 1
000000000040ec65  0f86b5010000                     jbe 0x40ee20
000000000040ec6b  448b0576c57000                   mov r8d, dword ptr [rip + 0x70c576]
000000000040ec72  4585c0                           test r8d, r8d
000000000040ec75  0f85c5020000                     jne 0x40ef40
000000000040ec7b  448b056ac57000                   mov r8d, dword ptr [rip + 0x70c56a]
000000000040ec82  4585c0                           test r8d, r8d
000000000040ec85  0f8545020000                     jne 0x40eed0
000000000040ec8b  488b3d06475d00                   mov rdi, qword ptr [rip + 0x5d4706]
000000000040ec92  4885ff                           test rdi, rdi
000000000040ec95  7405                             je 0x40ec9c
000000000040ec97  e8e458ffff                       call 0x404580
000000000040ec9c  488b3d45f54b00                   mov rdi, qword ptr [rip + 0x4bf545]
000000000040eca3  e8d858ffff                       call 0x404580
000000000040eca8  488b442438                       mov rax, qword ptr [rsp + 0x38]
000000000040ecad  644833042528000000               xor rax, qword ptr fs:[0x28]
000000000040ecb6  0f85d7140000                     jne 0x410193
000000000040ecbc  4883c448                         add rsp, 0x48
000000000040ecc0  5b                               pop rbx
000000000040ecc1  5d                               pop rbp
000000000040ecc2  415c                             pop r12
000000000040ecc4  415d                             pop r13
000000000040ecc6  415e                             pop r14
000000000040ecc8  415f                             pop r15
000000000040ecca  c3                               ret 
000000000040eccb  0f1f440000                       nop dword ptr [rax + rax]
000000000040ecd0  8b1d122c5a00                     mov ebx, dword ptr [rip + 0x5a2c12]
000000000040ecd6  85db                             test ebx, ebx
000000000040ecd8  0f859bfdffff                     jne 0x40ea79
000000000040ecde  488d542428                       lea rdx, [rsp + 0x28]
000000000040ece3  488d742424                       lea rsi, [rsp + 0x24]
000000000040ece8  488d7c2420                       lea rdi, [rsp + 0x20]
000000000040eced  e82e171000                       call 0x510420
000000000040ecf2  8b442420                         mov eax, dword ptr [rsp + 0x20]
000000000040ecf6  3b0540f54b00                     cmp eax, dword ptr [rip + 0x4bf540]
000000000040ecfc  8b542424                         mov edx, dword ptr [rsp + 0x24]
000000000040ed00  0f846a130000                     je 0x410070
000000000040ed06  bb01000000                       mov ebx, 1
000000000040ed0b  bfe1000000                       mov edi, 0xe1
000000000040ed10  890526f54b00                     mov dword ptr [rip + 0x4bf526], eax
000000000040ed16  89151cf54b00                     mov dword ptr [rip + 0x4bf51c], edx
000000000040ed1c  e82fef0a00                       call 0x4bdc50
000000000040ed21  85c0                             test eax, eax
000000000040ed23  8b05033a5d00                     mov eax, dword ptr [rip + 0x5d3a03]
000000000040ed29  0f85110c0000                     jne 0x40f940
000000000040ed2f  833d9ae87e0001                   cmp dword ptr [rip + 0x7ee89a], 1
000000000040ed36  0f84040c0000                     je 0x40f940
000000000040ed3c  85db                             test ebx, ebx
000000000040ed3e  0f84fc0b0000                     je 0x40f940
000000000040ed44  3dff7f0000                       cmp eax, 0x7fff
000000000040ed49  0f8ffc0b0000                     jg 0x40f94b
000000000040ed4f  4863050a465d00                   movsxd rax, dword ptr [rip + 0x5d460a]
000000000040ed56  488d1543185a00                   lea rdx, [rip + 0x5a1843]
000000000040ed5d  48c1e005                         shl rax, 5
000000000040ed61  838402d025030001                 add dword ptr [rdx + rax + 0x325d0], 1
000000000040ed69  31c0                             xor eax, eax
000000000040ed6b  e870281000                       call 0x5115e0
000000000040ed70  8b15f2947000                     mov edx, dword ptr [rip + 0x7094f2]
000000000040ed76  85c0                             test eax, eax
000000000040ed78  0f4515e5947000                   cmovne edx, dword ptr [rip + 0x7094e5]
000000000040ed7f  b810270000                       mov eax, 0x2710
000000000040ed84  85d2                             test edx, edx
000000000040ed86  7e13                             jle 0x40ed9b
000000000040ed88  83fa32                           cmp edx, 0x32
000000000040ed8b  b864000000                       mov eax, 0x64
000000000040ed90  b932000000                       mov ecx, 0x32
000000000040ed95  0f4eca                           cmovle ecx, edx
000000000040ed98  99                               cdq 
000000000040ed99  f7f9                             idiv ecx
000000000040ed9b  8b1593f44b00                     mov edx, dword ptr [rip + 0x4bf493]
000000000040eda1  39c2                             cmp edx, eax
000000000040eda3  7d0d                             jge 0x40edb2
000000000040eda5  31c0                             xor eax, eax
000000000040eda7  e864830a00                       call 0x4b7110
000000000040edac  8b1582f44b00                     mov edx, dword ptr [rip + 0x4bf482]
000000000040edb2  83c201                           add edx, 1
000000000040edb5  8b0571395d00                     mov eax, dword ptr [rip + 0x5d3971]
000000000040edbb  891573f44b00                     mov dword ptr [rip + 0x4bf473], edx
000000000040edc1  e98f0b0000                       jmp 0x40f955
000000000040edc6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040edd0  448b3d112b5a00                   mov r15d, dword ptr [rip + 0x5a2b11]
000000000040edd7  ba1e000000                       mov edx, 0x1e
000000000040eddc  4585ff                           test r15d, r15d
000000000040eddf  410f44d0                         cmove edx, r8d
000000000040ede3  4189d1                           mov r9d, edx
000000000040ede6  e915fcffff                       jmp 0x40ea00
000000000040edeb  0f1f440000                       nop dword ptr [rax + rax]
000000000040edf0  8b05dae77e00                     mov eax, dword ptr [rip + 0x7ee7da]
000000000040edf6  85c0                             test eax, eax
000000000040edf8  0f85eafaffff                     jne 0x40e8e8
000000000040edfe  833dcfe77e0001                   cmp dword ptr [rip + 0x7ee7cf], 1
000000000040ee05  0f86ddfaffff                     jbe 0x40e8e8
000000000040ee0b  31c0                             xor eax, eax
000000000040ee0d  e8ce380400                       call 0x4526e0
000000000040ee12  e9dcfaffff                       jmp 0x40e8f3
000000000040ee17  660f1f840000000000               nop word ptr [rax + rax]
000000000040ee20  48c705bdc3700000000000           mov qword ptr [rip + 0x70c3bd], 0
000000000040ee2b  e95bfeffff                       jmp 0x40ec8b
000000000040ee30  c7055a01800000000000             mov dword ptr [rip + 0x80015a], 0
000000000040ee3a  e985fbffff                       jmp 0x40e9c4
000000000040ee3f  90                               nop 
000000000040ee40  8b0da2e77e00                     mov ecx, dword ptr [rip + 0x7ee7a2]
000000000040ee46  85c9                             test ecx, ecx
000000000040ee48  0f84f5f9ffff                     je 0x40e843
000000000040ee4e  31f6                             xor esi, esi
000000000040ee50  bf06000000                       mov edi, 6
000000000040ee55  e8b6f30700                       call 0x48e210
000000000040ee5a  85c0                             test eax, eax
000000000040ee5c  0f84fe120000                     je 0x410160
000000000040ee62  8b0598f34b00                     mov eax, dword ptr [rip + 0x4bf398]
000000000040ee68  83c001                           add eax, 1
000000000040ee6b  83f805                           cmp eax, 5
000000000040ee6e  89058cf34b00                     mov dword ptr [rip + 0x4bf38c], eax
000000000040ee74  7e4a                             jle 0x40eec0
000000000040ee76  31c0                             xor eax, eax
000000000040ee78  e8f3dc0f00                       call 0x50cb70
000000000040ee7d  8b3585f34b00                     mov esi, dword ptr [rip + 0x4bf385]
000000000040ee83  8d96f4010000                     lea edx, [rsi + 0x1f4]
000000000040ee89  39d0                             cmp eax, edx
000000000040ee8b  7e33                             jle 0x40eec0
000000000040ee8d  31c0                             xor eax, eax
000000000040ee8f  c7054f2a5a0001000000             mov dword ptr [rip + 0x5a2a4f], 1
000000000040ee99  c7054d2a5a0000000000             mov dword ptr [rip + 0x5a2a4d], 0
000000000040eea3  e808b3ffff                       call 0x40a1b0
000000000040eea8  31c0                             xor eax, eax
000000000040eeaa  e861fa0700                       call 0x48e910
000000000040eeaf  c60593f4700001                   mov byte ptr [rip + 0x70f493], 1
000000000040eeb6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040eec0  891d3ef34b00                     mov dword ptr [rip + 0x4bf33e], ebx
000000000040eec6  e985f9ffff                       jmp 0x40e850
000000000040eecb  0f1f440000                       nop dword ptr [rax + rax]
000000000040eed0  488d0d00302200                   lea rcx, [rip + 0x223000]
000000000040eed7  488d3d62b07000                   lea rdi, [rip + 0x70b062]
000000000040eede  450fb6c0                         movzx r8d, r8b
000000000040eee2  ba00100000                       mov edx, 0x1000
000000000040eee7  be01000000                       mov esi, 1
000000000040eeec  31c0                             xor eax, eax
000000000040eeee  e8dd53ffff                       call 0x4042d0
000000000040eef3  488d3546b07000                   lea rsi, [rip + 0x70b046]
000000000040eefa  488d3d0f365d00                   lea rdi, [rip + 0x5d360f]
000000000040ef01  e8fa041200                       call 0x52f400
000000000040ef06  31c0                             xor eax, eax
000000000040ef08  e863dc0f00                       call 0x50cb70
000000000040ef0d  8905fd365d00                     mov dword ptr [rip + 0x5d36fd], eax
000000000040ef13  31c0                             xor eax, eax
000000000040ef15  e856dc0f00                       call 0x50cb70
000000000040ef1a  0578050000                       add eax, 0x578
000000000040ef1f  c705ef365d000f000000             mov dword ptr [rip + 0x5d36ef], 0xf
000000000040ef29  c705b9c2700000000000             mov dword ptr [rip + 0x70c2b9], 0
000000000040ef33  8905db365d00                     mov dword ptr [rip + 0x5d36db], eax
000000000040ef39  e94dfdffff                       jmp 0x40ec8b
000000000040ef3e  6690                             nop 
000000000040ef40  488d0d7a2f2200                   lea rcx, [rip + 0x222f7a]
000000000040ef47  488d3df2af7000                   lea rdi, [rip + 0x70aff2]
000000000040ef4e  450fb6c0                         movzx r8d, r8b
000000000040ef52  ba00100000                       mov edx, 0x1000
000000000040ef57  be01000000                       mov esi, 1
000000000040ef5c  31c0                             xor eax, eax
000000000040ef5e  e86d53ffff                       call 0x4042d0
000000000040ef63  488d35d6af7000                   lea rsi, [rip + 0x70afd6]
000000000040ef6a  488d3d9f355d00                   lea rdi, [rip + 0x5d359f]
000000000040ef71  e88a041200                       call 0x52f400
000000000040ef76  31c0                             xor eax, eax
000000000040ef78  e8f3db0f00                       call 0x50cb70
000000000040ef7d  89058d365d00                     mov dword ptr [rip + 0x5d368d], eax
000000000040ef83  31c0                             xor eax, eax
000000000040ef85  e8e6db0f00                       call 0x50cb70
000000000040ef8a  448b055bc27000                   mov r8d, dword ptr [rip + 0x70c25b]
000000000040ef91  0578050000                       add eax, 0x578
000000000040ef96  c70578365d000f000000             mov dword ptr [rip + 0x5d3678], 0xf
000000000040efa0  89056e365d00                     mov dword ptr [rip + 0x5d366e], eax
000000000040efa6  c70538c2700000000000             mov dword ptr [rip + 0x70c238], 0
000000000040efb0  4585c0                           test r8d, r8d
000000000040efb3  0f84d2fcffff                     je 0x40ec8b
000000000040efb9  e912ffffff                       jmp 0x40eed0
000000000040efbe  6690                             nop 
000000000040efc0  c70562375d0000000000             mov dword ptr [rip + 0x5d3762], 0
000000000040efca  31d2                             xor edx, edx
000000000040efcc  e96ffaffff                       jmp 0x40ea40
000000000040efd1  0f1f8000000000                   nop dword ptr [rax]
000000000040efd8  8b350ae67e00                     mov esi, dword ptr [rip + 0x7ee60a]
000000000040efde  85f6                             test esi, esi
000000000040efe0  0f8485fcffff                     je 0x40ec6b
000000000040efe6  488b351bf77e00                   mov rsi, qword ptr [rip + 0x7ef71b]
000000000040efed  488d3d6c987c00                   lea rdi, [rip + 0x7c986c]
000000000040eff4  ba2f5f0000                       mov edx, 0x5f2f
000000000040eff9  e8a2920600                       call 0x4782a0
000000000040effe  8b0de4285a00                     mov ecx, dword ptr [rip + 0x5a28e4]
000000000040f004  85c9                             test ecx, ecx
000000000040f006  0f8514090000                     jne 0x40f920
000000000040f00c  8b15e2285a00                     mov edx, dword ptr [rip + 0x5a28e2]
000000000040f012  85d2                             test edx, edx
000000000040f014  0f8506090000                     jne 0x40f920
000000000040f01a  83f801                           cmp eax, 1
000000000040f01d  0f8406090000                     je 0x40f929
000000000040f023  8b057bc17000                     mov eax, dword ptr [rip + 0x70c17b]
000000000040f029  8d50ff                           lea edx, [rax - 1]
000000000040f02c  83fa03                           cmp edx, 3
000000000040f02f  0f8612110000                     jbe 0x410147
000000000040f035  31db                             xor ebx, ebx
000000000040f037  e9ed080000                       jmp 0x40f929
000000000040f03c  0f1f4000                         nop dword ptr [rax]
000000000040f040  833da1285a0002                   cmp dword ptr [rip + 0x5a28a1], 2
000000000040f047  0f84630e0000                     je 0x40feb0
000000000040f04d  bf29000000                       mov edi, 0x29
000000000040f052  e8f9eb0a00                       call 0x4bdc50
000000000040f057  83f803                           cmp eax, 3
000000000040f05a  0f8550060000                     jne 0x40f6b0
000000000040f060  8b1d82285a00                     mov ebx, dword ptr [rip + 0x5a2882]
000000000040f066  85db                             test ebx, ebx
000000000040f068  0f84f20d0000                     je 0x40fe60
000000000040f06e  c7051cff7f0000000000             mov dword ptr [rip + 0x7fff1c], 0
000000000040f078  c70566285a0000000000             mov dword ptr [rip + 0x5a2866], 0
000000000040f082  c605c0f2700001                   mov byte ptr [rip + 0x70f2c0], 1
000000000040f089  e921faffff                       jmp 0x40eaaf
000000000040f08e  6690                             nop 
000000000040f090  bf2d000000                       mov edi, 0x2d
000000000040f095  e8b6eb0a00                       call 0x4bdc50
000000000040f09a  83f803                           cmp eax, 3
000000000040f09d  0f857ef8ffff                     jne 0x40e921
000000000040f0a3  8b0593365d00                     mov eax, dword ptr [rip + 0x5d3693]
000000000040f0a9  83f81f                           cmp eax, 0x1f
000000000040f0ac  0f8fe60e0000                     jg 0x40ff98
000000000040f0b2  660f6f0586362200                 movdqa xmm0, xmmword ptr [rip + 0x223686]
000000000040f0ba  b82d2d0000                       mov eax, 0x2d2d
000000000040f0bf  c70573365d0000000000             mov dword ptr [rip + 0x5d3673], 0
000000000040f0c9  c7058991700000000000             mov dword ptr [rip + 0x709189], 0
000000000040f0d3  0f110566ae7000                   movups xmmword ptr [rip + 0x70ae66], xmm0
000000000040f0da  6689056aae7000                   mov word ptr [rip + 0x70ae6a], ax
000000000040f0e1  660f6f0567362200                 movdqa xmm0, xmmword ptr [rip + 0x223667]
000000000040f0e9  0f110560ae7000                   movups xmmword ptr [rip + 0x70ae60], xmm0
000000000040f0f0  c60556ae70002d                   mov byte ptr [rip + 0x70ae56], 0x2d
000000000040f0f7  c60550ae70002d                   mov byte ptr [rip + 0x70ae50], 0x2d
000000000040f0fe  c6054aae70002d                   mov byte ptr [rip + 0x70ae4a], 0x2d
000000000040f105  c60544ae70002d                   mov byte ptr [rip + 0x70ae44], 0x2d
000000000040f10c  c6053eae70002d                   mov byte ptr [rip + 0x70ae3e], 0x2d
000000000040f113  b82d000000                       mov eax, 0x2d
000000000040f118  488d3521ae7000                   lea rsi, [rip + 0x70ae21]
000000000040f11f  488d3dea335d00                   lea rdi, [rip + 0x5d33ea]
000000000040f126  880526ae7000                     mov byte ptr [rip + 0x70ae26], al
000000000040f12c  e8cf021200                       call 0x52f400
000000000040f131  31c0                             xor eax, eax
000000000040f133  e838da0f00                       call 0x50cb70
000000000040f138  8905d2345d00                     mov dword ptr [rip + 0x5d34d2], eax
000000000040f13e  31c0                             xor eax, eax
000000000040f140  e82bda0f00                       call 0x50cb70
000000000040f145  056c070000                       add eax, 0x76c
000000000040f14a  812dbc345d00e8030000             sub dword ptr [rip + 0x5d34bc], 0x3e8
000000000040f154  c705ba345d000f000000             mov dword ptr [rip + 0x5d34ba], 0xf
000000000040f15e  8905b0345d00                     mov dword ptr [rip + 0x5d34b0], eax
000000000040f164  31c0                             xor eax, eax
000000000040f166  e845b0ffff                       call 0x40a1b0
000000000040f16b  e907000000                       jmp 0x40f177
000000000040f170  31c0                             xor eax, eax
000000000040f172  e849ea0a00                       call 0x4bdbc0
000000000040f177  31c0                             xor eax, eax
000000000040f179  e832ea0a00                       call 0x4bdbb0
000000000040f17e  85c0                             test eax, eax
000000000040f180  75ee                             jne 0x40f170
000000000040f182  bffbffffff                       mov edi, 0xfffffffb
000000000040f187  e8c4ea0a00                       call 0x4bdc50
000000000040f18c  85c0                             test eax, eax
000000000040f18e  0f849ff7ffff                     je 0x40e933
000000000040f194  0f1f4000                         nop dword ptr [rax]
000000000040f198  bf2e000000                       mov edi, 0x2e
000000000040f19d  e8aeea0a00                       call 0x4bdc50
000000000040f1a2  83f803                           cmp eax, 3
000000000040f1a5  0f8588f7ffff                     jne 0x40e933
000000000040f1ab  8b058b355d00                     mov eax, dword ptr [rip + 0x5d358b]
000000000040f1b1  83f8e0                           cmp eax, -0x20
000000000040f1b4  0f8d160d0000                     jge 0x40fed0
000000000040f1ba  660f6f057e352200                 movdqa xmm0, xmmword ptr [rip + 0x22357e]
000000000040f1c2  b82d2d0000                       mov eax, 0x2d2d
000000000040f1c7  c7056b355d0000000000             mov dword ptr [rip + 0x5d356b], 0
000000000040f1d1  c7058190700000000000             mov dword ptr [rip + 0x709081], 0
000000000040f1db  0f11055ead7000                   movups xmmword ptr [rip + 0x70ad5e], xmm0
000000000040f1e2  66890562ad7000                   mov word ptr [rip + 0x70ad62], ax
000000000040f1e9  660f6f055f352200                 movdqa xmm0, xmmword ptr [rip + 0x22355f]
000000000040f1f1  0f110558ad7000                   movups xmmword ptr [rip + 0x70ad58], xmm0
000000000040f1f8  c6054ead70002d                   mov byte ptr [rip + 0x70ad4e], 0x2d
000000000040f1ff  c60548ad70002d                   mov byte ptr [rip + 0x70ad48], 0x2d
000000000040f206  c60542ad70002d                   mov byte ptr [rip + 0x70ad42], 0x2d
000000000040f20d  c6053cad70002d                   mov byte ptr [rip + 0x70ad3c], 0x2d
000000000040f214  c60536ad70002d                   mov byte ptr [rip + 0x70ad36], 0x2d
000000000040f21b  b82d000000                       mov eax, 0x2d
000000000040f220  488d3519ad7000                   lea rsi, [rip + 0x70ad19]
000000000040f227  488d3de2325d00                   lea rdi, [rip + 0x5d32e2]
000000000040f22e  88051ead7000                     mov byte ptr [rip + 0x70ad1e], al
000000000040f234  e8c7011200                       call 0x52f400
000000000040f239  31c0                             xor eax, eax
000000000040f23b  e830d90f00                       call 0x50cb70
000000000040f240  8905ca335d00                     mov dword ptr [rip + 0x5d33ca], eax
000000000040f246  31c0                             xor eax, eax
000000000040f248  e823d90f00                       call 0x50cb70
000000000040f24d  056c070000                       add eax, 0x76c
000000000040f252  812db4335d00e8030000             sub dword ptr [rip + 0x5d33b4], 0x3e8
000000000040f25c  c705b2335d000f000000             mov dword ptr [rip + 0x5d33b2], 0xf
000000000040f266  8905a8335d00                     mov dword ptr [rip + 0x5d33a8], eax
000000000040f26c  31c0                             xor eax, eax
000000000040f26e  e83dafffff                       call 0x40a1b0
000000000040f273  e90f000000                       jmp 0x40f287
000000000040f278  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040f280  31c0                             xor eax, eax
000000000040f282  e839e90a00                       call 0x4bdbc0
000000000040f287  31c0                             xor eax, eax
000000000040f289  e822e90a00                       call 0x4bdbb0
000000000040f28e  85c0                             test eax, eax
000000000040f290  75ee                             jne 0x40f280
000000000040f292  e99cf6ffff                       jmp 0x40e933
000000000040f297  660f1f840000000000               nop word ptr [rax + rax]
000000000040f2a0  bf10000000                       mov edi, 0x10
000000000040f2a5  e8a6e90a00                       call 0x4bdc50
000000000040f2aa  83f803                           cmp eax, 3
000000000040f2ad  0f855cf6ffff                     jne 0x40e90f
000000000040f2b3  8b05a38f7000                     mov eax, dword ptr [rip + 0x708fa3]
000000000040f2b9  85c0                             test eax, eax
000000000040f2bb  0f85060e0000                     jne 0x4100c7
000000000040f2c1  8b0575345d00                     mov eax, dword ptr [rip + 0x5d3475]
000000000040f2c7  ba00010000                       mov edx, 0x100
000000000040f2cc  488d35e5292200                   lea rsi, [rip + 0x2229e5]
000000000040f2d3  85c0                             test eax, eax
000000000040f2d5  0f44c2                           cmove eax, edx
000000000040f2d8  89057e8f7000                     mov dword ptr [rip + 0x708f7e], eax
000000000040f2de  488d3d2b325d00                   lea rdi, [rip + 0x5d322b]
000000000040f2e5  e816011200                       call 0x52f400
000000000040f2ea  31c0                             xor eax, eax
000000000040f2ec  e87fd80f00                       call 0x50cb70
000000000040f2f1  890519335d00                     mov dword ptr [rip + 0x5d3319], eax
000000000040f2f7  31c0                             xor eax, eax
000000000040f2f9  e872d80f00                       call 0x50cb70
000000000040f2fe  0578050000                       add eax, 0x578
000000000040f303  c7050b335d000f000000             mov dword ptr [rip + 0x5d330b], 0xf
000000000040f30d  c705498f700000010000             mov dword ptr [rip + 0x708f49], 0x100
000000000040f317  8905f7325d00                     mov dword ptr [rip + 0x5d32f7], eax
000000000040f31d  31c0                             xor eax, eax
000000000040f31f  e88caeffff                       call 0x40a1b0
000000000040f324  e9e6f5ffff                       jmp 0x40e90f
000000000040f329  0f1f8000000000                   nop dword ptr [rax]
000000000040f330  31c0                             xor eax, eax
000000000040f332  e899450400                       call 0x4538d0
000000000040f337  e965f7ffff                       jmp 0x40eaa1
000000000040f33c  0f1f4000                         nop dword ptr [rax]
000000000040f340  31c0                             xor eax, eax
000000000040f342  e809c7ffff                       call 0x40ba50
000000000040f347  448b3d32fa7f00                   mov r15d, dword ptr [rip + 0x7ffa32]
000000000040f34e  4585ff                           test r15d, r15d
000000000040f351  0f843cf7ffff                     je 0x40ea93
000000000040f357  448b3526fa7f00                   mov r14d, dword ptr [rip + 0x7ffa26]
000000000040f35e  4585f6                           test r14d, r14d
000000000040f361  0f8e2cf7ffff                     jle 0x40ea93
000000000040f367  31ff                             xor edi, edi
000000000040f369  e8026effff                       call 0x406170
000000000040f36e  448b2d0bfa7f00                   mov r13d, dword ptr [rip + 0x7ffa0b]
000000000040f375  4585ed                           test r13d, r13d
000000000040f378  0f8415f7ffff                     je 0x40ea93
000000000040f37e  448b25fff97f00                   mov r12d, dword ptr [rip + 0x7ff9ff]
000000000040f385  4585e4                           test r12d, r12d
000000000040f388  0f8e05f7ffff                     jle 0x40ea93
000000000040f38e  31ff                             xor edi, edi
000000000040f390  e8db6dffff                       call 0x406170
000000000040f395  e9f9f6ffff                       jmp 0x40ea93
000000000040f39a  660f1f440000                     nop word ptr [rax + rax]
000000000040f3a0  8b3d2ee27e00                     mov edi, dword ptr [rip + 0x7ee22e]
000000000040f3a6  e835f40300                       call 0x44e7e0
000000000040f3ab  8b1d33175a00                     mov ebx, dword ptr [rip + 0x5a1733]
000000000040f3b1  c70531e27e0000000000             mov dword ptr [rip + 0x7ee231], 0
000000000040f3bb  85db                             test ebx, ebx
000000000040f3bd  0f840af7ffff                     je 0x40eacd
000000000040f3c3  bf3f000000                       mov edi, 0x3f
000000000040f3c8  bb01000000                       mov ebx, 1
000000000040f3cd  e87ee80a00                       call 0x4bdc50
000000000040f3d2  83f803                           cmp eax, 3
000000000040f3d5  0f8585030000                     jne 0x40f760
000000000040f3db  bf40000000                       mov edi, 0x40
000000000040f3e0  e86be80a00                       call 0x4bdc50
000000000040f3e5  83f803                           cmp eax, 3
000000000040f3e8  0f855a030000                     jne 0x40f748
000000000040f3ee  bb02000000                       mov ebx, 2
000000000040f3f3  bf41000000                       mov edi, 0x41
000000000040f3f8  e853e80a00                       call 0x4bdc50
000000000040f3fd  83f803                           cmp eax, 3
000000000040f400  0f85da020000                     jne 0x40f6e0
000000000040f406  bf42000000                       mov edi, 0x42
000000000040f40b  bb03000000                       mov ebx, 3
000000000040f410  e83be80a00                       call 0x4bdc50
000000000040f415  83f803                           cmp eax, 3
000000000040f418  0f85e8020000                     jne 0x40f706
000000000040f41e  bf43000000                       mov edi, 0x43
000000000040f423  bb04000000                       mov ebx, 4
000000000040f428  e823e80a00                       call 0x4bdc50
000000000040f42d  83f803                           cmp eax, 3
000000000040f430  0f85f6020000                     jne 0x40f72c
000000000040f436  bffbffffff                       mov edi, 0xfffffffb
000000000040f43b  bb05000000                       mov ebx, 5
000000000040f440  e80be80a00                       call 0x4bdc50
000000000040f445  85c0                             test eax, eax
000000000040f447  0f8492f6ffff                     je 0x40eadf
000000000040f44d  bf23000000                       mov edi, 0x23
000000000040f452  e8f9e70a00                       call 0x4bdc50
000000000040f457  bffbffffff                       mov edi, 0xfffffffb
000000000040f45c  83f803                           cmp eax, 3
000000000040f45f  b801000000                       mov eax, 1
000000000040f464  0f44d8                           cmove ebx, eax
000000000040f467  e8e4e70a00                       call 0x4bdc50
000000000040f46c  85c0                             test eax, eax
000000000040f46e  0f847df6ffff                     je 0x40eaf1
000000000040f474  bf24000000                       mov edi, 0x24
000000000040f479  e8d2e70a00                       call 0x4bdc50
000000000040f47e  bffbffffff                       mov edi, 0xfffffffb
000000000040f483  83f803                           cmp eax, 3
000000000040f486  b802000000                       mov eax, 2
000000000040f48b  0f44d8                           cmove ebx, eax
000000000040f48e  e8bde70a00                       call 0x4bdc50
000000000040f493  85c0                             test eax, eax
000000000040f495  0f8468f6ffff                     je 0x40eb03
000000000040f49b  bf25000000                       mov edi, 0x25
000000000040f4a0  e8abe70a00                       call 0x4bdc50
000000000040f4a5  bffbffffff                       mov edi, 0xfffffffb
000000000040f4aa  83f803                           cmp eax, 3
000000000040f4ad  b803000000                       mov eax, 3
000000000040f4b2  0f44d8                           cmove ebx, eax
000000000040f4b5  e896e70a00                       call 0x4bdc50
000000000040f4ba  85c0                             test eax, eax
000000000040f4bc  0f8453f6ffff                     je 0x40eb15
000000000040f4c2  bf26000000                       mov edi, 0x26
000000000040f4c7  e884e70a00                       call 0x4bdc50
000000000040f4cc  bffbffffff                       mov edi, 0xfffffffb
000000000040f4d1  83f803                           cmp eax, 3
000000000040f4d4  b804000000                       mov eax, 4
000000000040f4d9  0f44d8                           cmove ebx, eax
000000000040f4dc  e86fe70a00                       call 0x4bdc50
000000000040f4e1  85c0                             test eax, eax
000000000040f4e3  0f843ef6ffff                     je 0x40eb27
000000000040f4e9  bf27000000                       mov edi, 0x27
000000000040f4ee  e85de70a00                       call 0x4bdc50
000000000040f4f3  83f803                           cmp eax, 3
000000000040f4f6  0f852bf6ffff                     jne 0x40eb27
000000000040f4fc  bffcffffff                       mov edi, 0xfffffffc
000000000040f501  e84ae70a00                       call 0x4bdc50
000000000040f506  85c0                             test eax, eax
000000000040f508  0f85baf6ffff                     jne 0x40ebc8
000000000040f50e  8b0578165a00                     mov eax, dword ptr [rip + 0x5a1678]
000000000040f514  31d2                             xor edx, edx
000000000040f516  488d35fc282200                   lea rsi, [rip + 0x2228fc]
000000000040f51d  85c0                             test eax, eax
000000000040f51f  488d0507292200                   lea rax, [rip + 0x222907]
000000000040f526  0f94c2                           sete dl
000000000040f529  89155d165a00                     mov dword ptr [rip + 0x5a165d], edx
000000000040f52f  480f45f0                         cmovne rsi, rax
000000000040f533  488d3dd62f5d00                   lea rdi, [rip + 0x5d2fd6]
000000000040f53a  e8c1fe1100                       call 0x52f400
000000000040f53f  31c0                             xor eax, eax
000000000040f541  e82ad60f00                       call 0x50cb70
000000000040f546  8905c4305d00                     mov dword ptr [rip + 0x5d30c4], eax
000000000040f54c  31c0                             xor eax, eax
000000000040f54e  e81dd60f00                       call 0x50cb70
000000000040f553  448b15622b5b00                   mov r10d, dword ptr [rip + 0x5b2b62]
000000000040f55a  056c070000                       add eax, 0x76c
000000000040f55f  c705af305d000f000000             mov dword ptr [rip + 0x5d30af], 0xf
000000000040f569  8905a5305d00                     mov dword ptr [rip + 0x5d30a5], eax
000000000040f56f  4585d2                           test r10d, r10d
000000000040f572  0f84aef6ffff                     je 0x40ec26
000000000040f578  e957f6ffff                       jmp 0x40ebd4
000000000040f57d  0f1f00                           nop dword ptr [rax]
000000000040f580  488d1d81235a00                   lea rbx, [rip + 0x5a2381]
000000000040f587  31c0                             xor eax, eax
000000000040f589  31ed                             xor ebp, ebp
000000000040f58b  e8c0fe0700                       call 0x48f450
000000000040f590  31c0                             xor eax, eax
000000000040f592  e8d9d50f00                       call 0x50cb70
000000000040f597  89ef                             mov edi, ebp
000000000040f599  89c6                             mov esi, eax
000000000040f59b  e810a00f00                       call 0x5095b0
000000000040f5a0  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040f5a4  0f1103                           movups xmmword ptr [rbx], xmm0
000000000040f5a7  48837b0800                       cmp qword ptr [rbx + 8], 0
000000000040f5ac  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040f5b1  0f114310                         movups xmmword ptr [rbx + 0x10], xmm0
000000000040f5b5  0f8445050000                     je 0x40fb00
000000000040f5bb  83c501                           add ebp, 1
000000000040f5be  4883c320                         add rbx, 0x20
000000000040f5c2  83fd04                           cmp ebp, 4
000000000040f5c5  75c9                             jne 0x40f590
000000000040f5c7  31c0                             xor eax, eax
000000000040f5c9  e8a2d50f00                       call 0x50cb70
000000000040f5ce  bfffffffff                       mov edi, 0xffffffff
000000000040f5d3  89c6                             mov esi, eax
000000000040f5d5  e8d69f0f00                       call 0x5095b0
000000000040f5da  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040f5de  0f1105a3235a00                   movups xmmword ptr [rip + 0x5a23a3], xmm0
000000000040f5e5  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040f5ea  8b05f8225a00                     mov eax, dword ptr [rip + 0x5a22f8]
000000000040f5f0  0f1105a1235a00                   movups xmmword ptr [rip + 0x5a23a1], xmm0
000000000040f5f7  83f802                           cmp eax, 2
000000000040f5fa  0f84600a0000                     je 0x410060
000000000040f600  83f803                           cmp eax, 3
000000000040f603  0f8477020000                     je 0x40f880
000000000040f609  31c0                             xor eax, eax
000000000040f60b  e820b7ffff                       call 0x40ad30
000000000040f610  31c0                             xor eax, eax
000000000040f612  e859b9ffff                       call 0x40af70
000000000040f617  448b257e155a00                   mov r12d, dword ptr [rip + 0x5a157e]
000000000040f61e  812d04315d0000000100             sub dword ptr [rip + 0x5d3104], 0x10000
000000000040f628  4585e4                           test r12d, r12d
000000000040f62b  0f8554f4ffff                     jne 0x40ea85
000000000040f631  488b3de8305d00                   mov rdi, qword ptr [rip + 0x5d30e8]
000000000040f638  e813bd0400                       call 0x45b350
000000000040f63d  e943f4ffff                       jmp 0x40ea85
000000000040f642  660f1f440000                     nop word ptr [rax + rax]
000000000040f648  83c001                           add eax, 1
000000000040f64b  83f80c                           cmp eax, 0xc
000000000040f64e  8905982e5d00                     mov dword ptr [rip + 0x5d2e98], eax
000000000040f654  750a                             jne 0x40f660
000000000040f656  c70584927c0001000000             mov dword ptr [rip + 0x7c9284], 1
000000000040f660  833d7ddf7e0001                   cmp dword ptr [rip + 0x7edf7d], 1
000000000040f667  0f857bf2ffff                     jne 0x40e8e8
000000000040f66d  488b3d54927c00                   mov rdi, qword ptr [rip + 0x7c9254]
000000000040f674  31d2                             xor edx, edx
000000000040f676  31f6                             xor esi, esi
000000000040f678  e8d34d0000                       call 0x414450
000000000040f67d  8b056d2e5d00                     mov eax, dword ptr [rip + 0x5d2e6d]
000000000040f683  c7055f2e5d0001000000             mov dword ptr [rip + 0x5d2e5f], 1
000000000040f68d  83c001                           add eax, 1
000000000040f690  83f830                           cmp eax, 0x30
000000000040f693  8905572e5d00                     mov dword ptr [rip + 0x5d2e57], eax
000000000040f699  0f853bf2ffff                     jne 0x40e8da
000000000040f69f  31ff                             xor edi, edi
000000000040f6a1  e80a44ffff                       call 0x403ab0
000000000040f6a6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040f6b0  bffbffffff                       mov edi, 0xfffffffb
000000000040f6b5  e896e50a00                       call 0x4bdc50
000000000040f6ba  85c0                             test eax, eax
000000000040f6bc  0f84edf3ffff                     je 0x40eaaf
000000000040f6c2  bf1e000000                       mov edi, 0x1e
000000000040f6c7  e884e50a00                       call 0x4bdc50
000000000040f6cc  83f803                           cmp eax, 3
000000000040f6cf  0f85daf3ffff                     jne 0x40eaaf
000000000040f6d5  e986f9ffff                       jmp 0x40f060
000000000040f6da  660f1f440000                     nop word ptr [rax + rax]
000000000040f6e0  bf3c000000                       mov edi, 0x3c
000000000040f6e5  e866e50a00                       call 0x4bdc50
000000000040f6ea  83f803                           cmp eax, 3
000000000040f6ed  0f8413fdffff                     je 0x40f406
000000000040f6f3  bf42000000                       mov edi, 0x42
000000000040f6f8  e853e50a00                       call 0x4bdc50
000000000040f6fd  83f803                           cmp eax, 3
000000000040f700  0f8418fdffff                     je 0x40f41e
000000000040f706  bf3d000000                       mov edi, 0x3d
000000000040f70b  e840e50a00                       call 0x4bdc50
000000000040f710  83f803                           cmp eax, 3
000000000040f713  0f8405fdffff                     je 0x40f41e
000000000040f719  bf43000000                       mov edi, 0x43
000000000040f71e  e82de50a00                       call 0x4bdc50
000000000040f723  83f803                           cmp eax, 3
000000000040f726  0f840afdffff                     je 0x40f436
000000000040f72c  bf3e000000                       mov edi, 0x3e
000000000040f731  e81ae50a00                       call 0x4bdc50
000000000040f736  83f803                           cmp eax, 3
000000000040f739  0f858ef3ffff                     jne 0x40eacd
000000000040f73f  e9f2fcffff                       jmp 0x40f436
000000000040f744  0f1f4000                         nop dword ptr [rax]
000000000040f748  bf3b000000                       mov edi, 0x3b
000000000040f74d  e8fee40a00                       call 0x4bdc50
000000000040f752  83f803                           cmp eax, 3
000000000040f755  0f8598fcffff                     jne 0x40f3f3
000000000040f75b  e98efcffff                       jmp 0x40f3ee
000000000040f760  bf3a000000                       mov edi, 0x3a
000000000040f765  31db                             xor ebx, ebx
000000000040f767  e8e4e40a00                       call 0x4bdc50
000000000040f76c  bf40000000                       mov edi, 0x40
000000000040f771  83f803                           cmp eax, 3
000000000040f774  0f94c3                           sete bl
000000000040f777  e8d4e40a00                       call 0x4bdc50
000000000040f77c  83f803                           cmp eax, 3
000000000040f77f  0f8469fcffff                     je 0x40f3ee
000000000040f785  ebc1                             jmp 0x40f748
000000000040f787  660f1f840000000000               nop word ptr [rax + rax]
000000000040f790  c705f6f57f0000000000             mov dword ptr [rip + 0x7ff5f6], 0
000000000040f79a  e9b1f4ffff                       jmp 0x40ec50
000000000040f79f  90                               nop 
000000000040f7a0  31c0                             xor eax, eax
000000000040f7a2  e8890c0300                       call 0x440430
000000000040f7a7  31c0                             xor eax, eax
000000000040f7a9  e892f00200                       call 0x43e840
000000000040f7ae  488d3d83562200                   lea rdi, [rip + 0x225683]
000000000040f7b5  e806e60200                       call 0x43ddc0
000000000040f7ba  488d3dff4b5d00                   lea rdi, [rip + 0x5d4bff]
000000000040f7c1  e8fae50200                       call 0x43ddc0
000000000040f7c6  8b0518de7e00                     mov eax, dword ptr [rip + 0x7ede18]
000000000040f7cc  83f805                           cmp eax, 5
000000000040f7cf  0f85bbf1ffff                     jne 0x40e990
000000000040f7d5  e986000000                       jmp 0x40f860
000000000040f7da  660f1f440000                     nop word ptr [rax + rax]
000000000040f7e0  31c0                             xor eax, eax
000000000040f7e2  e8490c0300                       call 0x440430
000000000040f7e7  8b05f7dd7e00                     mov eax, dword ptr [rip + 0x7eddf7]
000000000040f7ed  83f803                           cmp eax, 3
000000000040f7f0  0f8588f1ffff                     jne 0x40e97e
000000000040f7f6  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040f800  31c0                             xor eax, eax
000000000040f802  e869dcffff                       call 0x40d470
000000000040f807  8b05d7dd7e00                     mov eax, dword ptr [rip + 0x7eddd7]
000000000040f80d  83f804                           cmp eax, 4
000000000040f810  0f8571f1ffff                     jne 0x40e987
000000000040f816  eb88                             jmp 0x40f7a0
000000000040f818  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040f820  31c0                             xor eax, eax
000000000040f822  e8c9240300                       call 0x441cf0
000000000040f827  833da2dd7e0002                   cmp dword ptr [rip + 0x7edda2], 2
000000000040f82e  750a                             jne 0x40f83a
000000000040f830  c70596dd7e0000000000             mov dword ptr [rip + 0x7edd96], 0
000000000040f83a  8b05a4dd7e00                     mov eax, dword ptr [rip + 0x7edda4]
000000000040f840  83f802                           cmp eax, 2
000000000040f843  0f852cf1ffff                     jne 0x40e975
000000000040f849  eb95                             jmp 0x40f7e0
000000000040f84b  0f1f440000                       nop dword ptr [rax + rax]
000000000040f850  31c0                             xor eax, eax
000000000040f852  e8e9ef0200                       call 0x43e840
000000000040f857  e93df1ffff                       jmp 0x40e999
000000000040f85c  0f1f4000                         nop dword ptr [rax]
000000000040f860  31c0                             xor eax, eax
000000000040f862  e809dcffff                       call 0x40d470
000000000040f867  8b0577dd7e00                     mov eax, dword ptr [rip + 0x7edd77]
000000000040f86d  83f806                           cmp eax, 6
000000000040f870  0f8523f1ffff                     jne 0x40e999
000000000040f876  ebd8                             jmp 0x40f850
000000000040f878  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040f880  31f6                             xor esi, esi
000000000040f882  bf06000000                       mov edi, 6
000000000040f887  e8f4030800                       call 0x48fc80
000000000040f88c  85c0                             test eax, eax
000000000040f88e  0f8483fdffff                     je 0x40f617
000000000040f894  448b2d4d205a00                   mov r13d, dword ptr [rip + 0x5a204d]
000000000040f89b  4585ed                           test r13d, r13d
000000000040f89e  740a                             je 0x40f8aa
000000000040f8a0  c705eaf67f0000000000             mov dword ptr [rip + 0x7ff6ea], 0
000000000040f8aa  31c0                             xor eax, eax
000000000040f8ac  c70532205a0000000000             mov dword ptr [rip + 0x5a2032], 0
000000000040f8b6  e855f00700                       call 0x48e910
000000000040f8bb  e957fdffff                       jmp 0x40f617
000000000040f8c0  31c0                             xor eax, eax
000000000040f8c2  e8a9bd0400                       call 0x45b670
000000000040f8c7  488d35c2252200                   lea rsi, [rip + 0x2225c2]
000000000040f8ce  488d3d3b2c5d00                   lea rdi, [rip + 0x5d2c3b]
000000000040f8d5  e826fb1100                       call 0x52f400
000000000040f8da  31c0                             xor eax, eax
000000000040f8dc  e88fd20f00                       call 0x50cb70
000000000040f8e1  8905292d5d00                     mov dword ptr [rip + 0x5d2d29], eax
000000000040f8e7  31c0                             xor eax, eax
000000000040f8e9  e882d20f00                       call 0x50cb70
000000000040f8ee  448b15c7275b00                   mov r10d, dword ptr [rip + 0x5b27c7]
000000000040f8f5  0578050000                       add eax, 0x578
000000000040f8fa  c705142d5d000f000000             mov dword ptr [rip + 0x5d2d14], 0xf
000000000040f904  89050a2d5d00                     mov dword ptr [rip + 0x5d2d0a], eax
000000000040f90a  4585d2                           test r10d, r10d
000000000040f90d  0f8413f3ffff                     je 0x40ec26
000000000040f913  e9bcf2ffff                       jmp 0x40ebd4
000000000040f918  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040f920  83f802                           cmp eax, 2
000000000040f923  0f84faf6ffff                     je 0x40f023
000000000040f929  891d75b87000                     mov dword ptr [rip + 0x70b875], ebx
000000000040f92f  8b1d9bdc7e00                     mov ebx, dword ptr [rip + 0x7edc9b]
000000000040f935  e925f3ffff                       jmp 0x40ec5f
000000000040f93a  660f1f440000                     nop word ptr [rax + rax]
000000000040f940  3dffff0000                       cmp eax, 0xffff
000000000040f945  0f8e04f4ffff                     jle 0x40ed4f
000000000040f94b  c705dfe84b0000000000             mov dword ptr [rip + 0x4be8df], 0
000000000040f955  488d742434                       lea rsi, [rsp + 0x34]
000000000040f95a  488d1dff8e7c00                   lea rbx, [rip + 0x7c8eff]
000000000040f961  4889742408                       mov qword ptr [rsp + 8], rsi
000000000040f966  488d742430                       lea rsi, [rsp + 0x30]
000000000040f96b  4889742410                       mov qword ptr [rsp + 0x10], rsi
000000000040f970  488d74242c                       lea rsi, [rsp + 0x2c]
000000000040f975  4889742418                       mov qword ptr [rsp + 0x18], rsi
000000000040f97a  41bd02000000                     mov r13d, 2
000000000040f980  e988000000                       jmp 0x40fa0d
000000000040f985  0f1f00                           nop dword ptr [rax]
000000000040f988  31c0                             xor eax, eax
000000000040f98a  e8c1fa0700                       call 0x48f450
000000000040f98f  8b05f3f37f00                     mov eax, dword ptr [rip + 0x7ff3f3]
000000000040f995  83f801                           cmp eax, 1
000000000040f998  0f84fa030000                     je 0x40fd98
000000000040f99e  83f802                           cmp eax, 2
000000000040f9a1  0f84e1030000                     je 0x40fd88
000000000040f9a7  c7053fdc7e0000000000             mov dword ptr [rip + 0x7edc3f], 0
000000000040f9b1  8b0519dc7e00                     mov eax, dword ptr [rip + 0x7edc19]
000000000040f9b7  83f802                           cmp eax, 2
000000000040f9ba  0f84c8000000                     je 0x40fa88
000000000040f9c0  83f803                           cmp eax, 3
000000000040f9c3  0f84d5000000                     je 0x40fa9e
000000000040f9c9  31c0                             xor eax, eax
000000000040f9cb  e860ddffff                       call 0x40d730
000000000040f9d0  8b356ae84b00                     mov esi, dword ptr [rip + 0x4be86a]
000000000040f9d6  8b05502d5d00                     mov eax, dword ptr [rip + 0x5d2d50]
000000000040f9dc  830301                           add dword ptr [rbx], 1
000000000040f9df  8305aaf37f0001                   add dword ptr [rip + 0x7ff3aa], 1
000000000040f9e6  8d5601                           lea edx, [rsi + 1]
000000000040f9e9  2d00000100                       sub eax, 0x10000
000000000040f9ee  89d1                             mov ecx, edx
000000000040f9f0  83e101                           and ecx, 1
000000000040f9f3  8905332d5d00                     mov dword ptr [rip + 0x5d2d33], eax
000000000040f9f9  890d41e84b00                     mov dword ptr [rip + 0x4be841], ecx
000000000040f9ff  8b0d97115a00                     mov ecx, dword ptr [rip + 0x5a1197]
000000000040fa05  85c9                             test ecx, ecx
000000000040fa07  0f84e3020000                     je 0x40fcf0
000000000040fa0d  3dffff0000                       cmp eax, 0xffff
000000000040fa12  0f8e6df0ffff                     jle 0x40ea85
000000000040fa18  448b35b1db7e00                   mov r14d, dword ptr [rip + 0x7edbb1]
000000000040fa1f  4183fe01                         cmp r14d, 1
000000000040fa23  0f855fffffff                     jne 0x40f988
000000000040fa29  8b2da1115a00                     mov ebp, dword ptr [rip + 0x5a11a1]
000000000040fa2f  85ed                             test ebp, ebp
000000000040fa31  7f10                             jg 0x40fa43
000000000040fa33  448b25dee74b00                   mov r12d, dword ptr [rip + 0x4be7de]
000000000040fa3a  4585e4                           test r12d, r12d
000000000040fa3d  0f849d000000                     je 0x40fae0
000000000040fa43  31c0                             xor eax, eax
000000000040fa45  e806fa0700                       call 0x48f450
000000000040fa4a  448b1d7f115a00                   mov r11d, dword ptr [rip + 0x5a117f]
000000000040fa51  4585db                           test r11d, r11d
000000000040fa54  7e07                             jle 0x40fa5d
000000000040fa56  31c0                             xor eax, eax
000000000040fa58  e883e2ffff                       call 0x40dce0
000000000040fa5d  8b058ddb7e00                     mov eax, dword ptr [rip + 0x7edb8d]
000000000040fa63  83f80a                           cmp eax, 0xa
000000000040fa66  0f8e45ffffff                     jle 0x40f9b1
000000000040fa6c  83e801                           sub eax, 1
000000000040fa6f  89057bdb7e00                     mov dword ptr [rip + 0x7edb7b], eax
000000000040fa75  8b0555db7e00                     mov eax, dword ptr [rip + 0x7edb55]
000000000040fa7b  83f802                           cmp eax, 2
000000000040fa7e  0f853cffffff                     jne 0x40f9c0
000000000040fa84  0f1f4000                         nop dword ptr [rax]
000000000040fa88  31c0                             xor eax, eax
000000000040fa8a  e8615f0a00                       call 0x4b59f0
000000000040fa8f  8b053bdb7e00                     mov eax, dword ptr [rip + 0x7edb3b]
000000000040fa95  83f803                           cmp eax, 3
000000000040fa98  0f852bffffff                     jne 0x40f9c9
000000000040fa9e  31c0                             xor eax, eax
000000000040faa0  e87be10a00                       call 0x4bdc20
000000000040faa5  85c0                             test eax, eax
000000000040faa7  7527                             jne 0x40fad0
000000000040faa9  8b357ddd7e00                     mov esi, dword ptr [rip + 0x7edd7d]
000000000040faaf  85f6                             test esi, esi
000000000040fab1  751d                             jne 0x40fad0
000000000040fab3  48833d75dd7e0000                 cmp qword ptr [rip + 0x7edd75], 0
000000000040fabb  7513                             jne 0x40fad0
000000000040fabd  48833d73dd7e0000                 cmp qword ptr [rip + 0x7edd73], 0
000000000040fac5  0f84dd050000                     je 0x4100a8
000000000040facb  0f1f440000                       nop dword ptr [rax + rax]
000000000040fad0  31c0                             xor eax, eax
000000000040fad2  e8d978ffff                       call 0x4073b0
000000000040fad7  e9edfeffff                       jmp 0x40f9c9
000000000040fadc  0f1f4000                         nop dword ptr [rax]
000000000040fae0  8b050adb7e00                     mov eax, dword ptr [rip + 0x7edb0a]
000000000040fae6  85c0                             test eax, eax
000000000040fae8  7e46                             jle 0x40fb30
000000000040faea  83e801                           sub eax, 1
000000000040faed  8905fdda7e00                     mov dword ptr [rip + 0x7edafd], eax
000000000040faf3  e9d1feffff                       jmp 0x40f9c9
000000000040faf8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040fb00  31c0                             xor eax, eax
000000000040fb02  e869d00f00                       call 0x50cb70
000000000040fb07  8d7d04                           lea edi, [rbp + 4]
000000000040fb0a  89c6                             mov esi, eax
000000000040fb0c  e89f9a0f00                       call 0x5095b0
000000000040fb11  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040fb15  0f1103                           movups xmmword ptr [rbx], xmm0
000000000040fb18  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040fb1d  0f114310                         movups xmmword ptr [rbx + 0x10], xmm0
000000000040fb21  e995faffff                       jmp 0x40f5bb
000000000040fb26  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040fb30  4c8d3dd11d5a00                   lea r15, [rip + 0x5a1dd1]
000000000040fb37  31ed                             xor ebp, ebp
000000000040fb39  31c0                             xor eax, eax
000000000040fb3b  e830d00f00                       call 0x50cb70
000000000040fb40  89ef                             mov edi, ebp
000000000040fb42  89c6                             mov esi, eax
000000000040fb44  e8679a0f00                       call 0x5095b0
000000000040fb49  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040fb4d  410f1107                         movups xmmword ptr [r15], xmm0
000000000040fb51  49837f0800                       cmp qword ptr [r15 + 8], 0
000000000040fb56  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040fb5b  410f114710                       movups xmmword ptr [r15 + 0x10], xmm0
000000000040fb60  0f844a020000                     je 0x40fdb0
000000000040fb66  83c501                           add ebp, 1
000000000040fb69  4983c720                         add r15, 0x20
000000000040fb6d  83fd04                           cmp ebp, 4
000000000040fb70  75c7                             jne 0x40fb39
000000000040fb72  31c0                             xor eax, eax
000000000040fb74  e8f7cf0f00                       call 0x50cb70
000000000040fb79  bfffffffff                       mov edi, 0xffffffff
000000000040fb7e  89c6                             mov esi, eax
000000000040fb80  e82b9a0f00                       call 0x5095b0
000000000040fb85  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040fb89  0f1105f81d5a00                   movups xmmword ptr [rip + 0x5a1df8], xmm0
000000000040fb90  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040fb95  8b0559da7e00                     mov eax, dword ptr [rip + 0x7eda59]
000000000040fb9b  0f1105f61d5a00                   movups xmmword ptr [rip + 0x5a1df6], xmm0
000000000040fba2  85c0                             test eax, eax
000000000040fba4  7e13                             jle 0x40fbb9
000000000040fba6  41bc97000000                     mov r12d, 0x97
000000000040fbac  3d97000000                       cmp eax, 0x97
000000000040fbb1  410f4fc4                         cmovg eax, r12d
000000000040fbb5  448d60ff                         lea r12d, [rax - 1]
000000000040fbb9  31c0                             xor eax, eax
000000000040fbbb  44892532da7e00                   mov dword ptr [rip + 0x7eda32], r12d
000000000040fbc2  e869b1ffff                       call 0x40ad30
000000000040fbc7  488b742410                       mov rsi, qword ptr [rsp + 0x10]
000000000040fbcc  488b542408                       mov rdx, qword ptr [rsp + 8]
000000000040fbd1  488b7c2418                       mov rdi, qword ptr [rsp + 0x18]
000000000040fbd6  c744242c00000000                 mov dword ptr [rsp + 0x2c], 0
000000000040fbde  c744243000000000                 mov dword ptr [rsp + 0x30], 0
000000000040fbe6  c744243400000000                 mov dword ptr [rsp + 0x34], 0
000000000040fbee  e82d081000                       call 0x510420
000000000040fbf3  8b05ff8a4b00                     mov eax, dword ptr [rip + 0x4b8aff]
000000000040fbf9  8b74242c                         mov esi, dword ptr [rsp + 0x2c]
000000000040fbfd  83f8ff                           cmp eax, -1
000000000040fc00  0f8482040000                     je 0x410088
000000000040fc06  39f0                             cmp eax, esi
000000000040fc08  7407                             je 0x40fc11
000000000040fc0a  830d0bdc7e0001                   or dword ptr [rip + 0x7edc0b], 1
000000000040fc11  8b542430                         mov edx, dword ptr [rsp + 0x30]
000000000040fc15  3915d98a4b00                     cmp dword ptr [rip + 0x4b8ad9], edx
000000000040fc1b  7407                             je 0x40fc24
000000000040fc1d  830df8db7e0002                   or dword ptr [rip + 0x7edbf8], 2
000000000040fc24  8b442434                         mov eax, dword ptr [rsp + 0x34]
000000000040fc28  3905c28a4b00                     cmp dword ptr [rip + 0x4b8ac2], eax
000000000040fc2e  7407                             je 0x40fc37
000000000040fc30  830de5db7e0004                   or dword ptr [rip + 0x7edbe5], 4
000000000040fc37  448b15aad97e00                   mov r10d, dword ptr [rip + 0x7ed9aa]
000000000040fc3e  8935b48a4b00                     mov dword ptr [rip + 0x4b8ab4], esi
000000000040fc44  8915aa8a4b00                     mov dword ptr [rip + 0x4b8aaa], edx
000000000040fc4a  8905a08a4b00                     mov dword ptr [rip + 0x4b8aa0], eax
000000000040fc50  4585d2                           test r10d, r10d
000000000040fc53  0f84cf010000                     je 0x40fe28
000000000040fc59  833dfce07e0001                   cmp dword ptr [rip + 0x7ee0fc], 1
000000000040fc60  0f8ec2010000                     jle 0x40fe28
000000000040fc66  833d778c7c0002                   cmp dword ptr [rip + 0x7c8c77], 2
000000000040fc6d  0f8f3efdffff                     jg 0x40f9b1
000000000040fc73  31c0                             xor eax, eax
000000000040fc75  c705f5365d0001000000             mov dword ptr [rip + 0x5d36f5], 1
000000000040fc7f  e8fc310300                       call 0x442e80
000000000040fc84  448b054d8c7c00                   mov r8d, dword ptr [rip + 0x7c8c4d]
000000000040fc8b  c705df365d0000000000             mov dword ptr [rip + 0x5d36df], 0
000000000040fc95  4585c0                           test r8d, r8d
000000000040fc98  0f8413fdffff                     je 0x40f9b1
000000000040fc9e  8b3d44d97e00                     mov edi, dword ptr [rip + 0x7ed944]
000000000040fca4  c705822a5d0001000000             mov dword ptr [rip + 0x5d2a82], 1
000000000040fcae  85ff                             test edi, edi
000000000040fcb0  0f84fbfcffff                     je 0x40f9b1
000000000040fcb6  833d9fe07e0002                   cmp dword ptr [rip + 0x7ee09f], 2
000000000040fcbd  0f85eefcffff                     jne 0x40f9b1
000000000040fcc3  31ff                             xor edi, edi
000000000040fcc5  e836eb0200                       call 0x43e800
000000000040fcca  3d00002000                       cmp eax, 0x200000
000000000040fccf  0f8edcfcffff                     jle 0x40f9b1
000000000040fcd5  31c0                             xor eax, eax
000000000040fcd7  e874ed0700                       call 0x48ea50
000000000040fcdc  31c0                             xor eax, eax
000000000040fcde  e8fdacffff                       call 0x40a9e0
000000000040fce3  31c0                             xor eax, eax
000000000040fce5  e866050300                       call 0x440250
000000000040fcea  e9c2fcffff                       jmp 0x40f9b1
000000000040fcef  90                               nop 
000000000040fcf0  8b05a6b47000                     mov eax, dword ptr [rip + 0x70b4a6]
000000000040fcf6  85c0                             test eax, eax
000000000040fcf8  7566                             jne 0x40fd60
000000000040fcfa  8b05e81b5a00                     mov eax, dword ptr [rip + 0x5a1be8]
000000000040fd00  85c0                             test eax, eax
000000000040fd02  755c                             jne 0x40fd60
000000000040fd04  833d0deb7f003c                   cmp dword ptr [rip + 0x7feb0d], 0x3c
000000000040fd0b  7505                             jne 0x40fd12
000000000040fd0d  83e201                           and edx, 1
000000000040fd10  742c                             je 0x40fd3e
000000000040fd12  833dffea7f001e                   cmp dword ptr [rip + 0x7feaff], 0x1e
000000000040fd19  7445                             je 0x40fd60
000000000040fd1b  833df6ea7f000f                   cmp dword ptr [rip + 0x7feaf6], 0xf
000000000040fd22  7556                             jne 0x40fd7a
000000000040fd24  488b3df5295d00                   mov rdi, qword ptr [rip + 0x5d29f5]
000000000040fd2b  e820b60400                       call 0x45b350
000000000040fd30  488b3de9295d00                   mov rdi, qword ptr [rip + 0x5d29e9]
000000000040fd37  e814b60400                       call 0x45b350
000000000040fd3c  eb3c                             jmp 0x40fd7a
000000000040fd3e  488b3ddb295d00                   mov rdi, qword ptr [rip + 0x5d29db]
000000000040fd45  e806b60400                       call 0x45b350
000000000040fd4a  8b054cb47000                     mov eax, dword ptr [rip + 0x70b44c]
000000000040fd50  85c0                             test eax, eax
000000000040fd52  750c                             jne 0x40fd60
000000000040fd54  8b058e1b5a00                     mov eax, dword ptr [rip + 0x5a1b8e]
000000000040fd5a  85c0                             test eax, eax
000000000040fd5c  74b4                             je 0x40fd12
000000000040fd5e  6690                             nop 
000000000040fd60  488b3db9295d00                   mov rdi, qword ptr [rip + 0x5d29b9]
000000000040fd67  e8e4b50400                       call 0x45b350
000000000040fd6c  8b052ab47000                     mov eax, dword ptr [rip + 0x70b42a]
000000000040fd72  85c0                             test eax, eax
000000000040fd74  0f848e030000                     je 0x410108
000000000040fd7a  8b05ac295d00                     mov eax, dword ptr [rip + 0x5d29ac]
000000000040fd80  e9f5fbffff                       jmp 0x40f97a
000000000040fd85  0f1f00                           nop dword ptr [rax]
000000000040fd88  31c0                             xor eax, eax
000000000040fd8a  e821e80900                       call 0x4ae5b0
000000000040fd8f  e913fcffff                       jmp 0x40f9a7
000000000040fd94  0f1f4000                         nop dword ptr [rax]
000000000040fd98  31c0                             xor eax, eax
000000000040fd9a  e8511e0900                       call 0x4a1bf0
000000000040fd9f  8b05e3ef7f00                     mov eax, dword ptr [rip + 0x7fefe3]
000000000040fda5  e9f4fbffff                       jmp 0x40f99e
000000000040fdaa  660f1f440000                     nop word ptr [rax + rax]
000000000040fdb0  31c0                             xor eax, eax
000000000040fdb2  e8b9cd0f00                       call 0x50cb70
000000000040fdb7  8d7d04                           lea edi, [rbp + 4]
000000000040fdba  89c6                             mov esi, eax
000000000040fdbc  e8ef970f00                       call 0x5095b0
000000000040fdc1  f30f6f00                         movdqu xmm0, xmmword ptr [rax]
000000000040fdc5  410f1107                         movups xmmword ptr [r15], xmm0
000000000040fdc9  f30f6f4010                       movdqu xmm0, xmmword ptr [rax + 0x10]
000000000040fdce  410f114710                       movups xmmword ptr [r15 + 0x10], xmm0
000000000040fdd3  e98efdffff                       jmp 0x40fb66
000000000040fdd8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040fde0  488b3de18a7c00                   mov rdi, qword ptr [rip + 0x7c8ae1]
000000000040fde7  e8e4c50400                       call 0x45c3d0
000000000040fdec  488d3588202200                   lea rsi, [rip + 0x222088]
000000000040fdf3  e9d6faffff                       jmp 0x40f8ce
000000000040fdf8  0f1f840000000000                 nop dword ptr [rax + rax]
000000000040fe00  488b3dc18a7c00                   mov rdi, qword ptr [rip + 0x7c8ac1]
000000000040fe07  31d2                             xor edx, edx
000000000040fe09  31f6                             xor esi, esi
000000000040fe0b  e840460000                       call 0x414450
000000000040fe10  85c0                             test eax, eax
000000000040fe12  0f8480020000                     je 0x410098
000000000040fe18  488d3523202200                   lea rsi, [rip + 0x222023]
000000000040fe1f  e90ff7ffff                       jmp 0x40f533
000000000040fe24  0f1f4000                         nop dword ptr [rax]
000000000040fe28  31c0                             xor eax, eax
000000000040fe2a  e821f60700                       call 0x48f450
000000000040fe2f  448b0db2d77e00                   mov r9d, dword ptr [rip + 0x7ed7b2]
000000000040fe36  4585c9                           test r9d, r9d
000000000040fe39  7412                             je 0x40fe4d
000000000040fe3b  833dd6e97f001e                   cmp dword ptr [rip + 0x7fe9d6], 0x1e
000000000040fe42  450f44f5                         cmove r14d, r13d
000000000040fe46  440135178a7c00                   add dword ptr [rip + 0x7c8a17], r14d
000000000040fe4d  31c0                             xor eax, eax
000000000040fe4f  e88cabffff                       call 0x40a9e0
000000000040fe54  31c0                             xor eax, eax
000000000040fe56  e8f5030300                       call 0x440250
000000000040fe5b  e906feffff                       jmp 0x40fc66
000000000040fe60  833d21ef7f0002                   cmp dword ptr [rip + 0x7fef21], 2
000000000040fe67  0f8442ecffff                     je 0x40eaaf
000000000040fe6d  31c0                             xor eax, eax
000000000040fe6f  e8bc050300                       call 0x440430
000000000040fe74  eb11                             jmp 0x40fe87
000000000040fe76  662e0f1f840000000000             nop word ptr cs:[rax + rax]
000000000040fe80  31c0                             xor eax, eax
000000000040fe82  e839dd0a00                       call 0x4bdbc0
000000000040fe87  31c0                             xor eax, eax
000000000040fe89  e822dd0a00                       call 0x4bdbb0
000000000040fe8e  85c0                             test eax, eax
000000000040fe90  75ee                             jne 0x40fe80
000000000040fe92  e918ecffff                       jmp 0x40eaaf
000000000040fe97  660f1f840000000000               nop word ptr [rax + rax]
000000000040fea0  83fb05                           cmp ebx, 5
000000000040fea3  0f8465f6ffff                     je 0x40f50e
000000000040fea9  e91aedffff                       jmp 0x40ebc8
000000000040feae  6690                             nop 
000000000040feb0  bf29000000                       mov edi, 0x29
000000000040feb5  e896dd0a00                       call 0x4bdc50
000000000040feba  83f803                           cmp eax, 3
000000000040febd  0f858af1ffff                     jne 0x40f04d
000000000040fec3  31c0                             xor eax, eax
000000000040fec5  e8d61c0900                       call 0x4a1ba0
000000000040feca  e97ef1ffff                       jmp 0x40f04d
000000000040fecf  90                               nop 
000000000040fed0  3de0000000                       cmp eax, 0xe0
000000000040fed5  bae0000000                       mov edx, 0xe0
000000000040feda  0f4fc2                           cmovg eax, edx
000000000040fedd  660f6f055b282200                 movdqa xmm0, xmmword ptr [rip + 0x22285b]
000000000040fee5  83c020                           add eax, 0x20
000000000040fee8  89c2                             mov edx, eax
000000000040feea  89054c285d00                     mov dword ptr [rip + 0x5d284c], eax
000000000040fef0  890566837000                     mov dword ptr [rip + 0x708366], eax
000000000040fef6  c1fa05                           sar edx, 5
000000000040fef9  0f110540a07000                   movups xmmword ptr [rip + 0x70a040], xmm0
000000000040ff00  85d2                             test edx, edx
000000000040ff02  660f6f0546282200                 movdqa xmm0, xmmword ptr [rip + 0x222846]
000000000040ff0a  0f11053fa07000                   movups xmmword ptr [rip + 0x70a03f], xmm0
000000000040ff11  0f84d9010000                     je 0x4100f0
000000000040ff17  83fa01                           cmp edx, 1
000000000040ff1a  c6052aa0700010                   mov byte ptr [rip + 0x70a02a], 0x10
000000000040ff21  0f8ed0010000                     jle 0x4100f7
000000000040ff27  83fa02                           cmp edx, 2
000000000040ff2a  c6051ba0700010                   mov byte ptr [rip + 0x70a01b], 0x10
000000000040ff31  0f8ec1f2ffff                     jle 0x40f1f8
000000000040ff37  83fa03                           cmp edx, 3
000000000040ff3a  c6050ca0700010                   mov byte ptr [rip + 0x70a00c], 0x10
000000000040ff41  0f8eb8f2ffff                     jle 0x40f1ff
000000000040ff47  83fa04                           cmp edx, 4
000000000040ff4a  c605fd9f700010                   mov byte ptr [rip + 0x709ffd], 0x10
000000000040ff51  0f8eaff2ffff                     jle 0x40f206
000000000040ff57  83fa05                           cmp edx, 5
000000000040ff5a  c605ee9f700010                   mov byte ptr [rip + 0x709fee], 0x10
000000000040ff61  0f8ea6f2ffff                     jle 0x40f20d
000000000040ff67  83fa06                           cmp edx, 6
000000000040ff6a  c605df9f700010                   mov byte ptr [rip + 0x709fdf], 0x10
000000000040ff71  0f8e9df2ffff                     jle 0x40f214
000000000040ff77  83fa08                           cmp edx, 8
000000000040ff7a  b810000000                       mov eax, 0x10
000000000040ff7f  ba2d000000                       mov edx, 0x2d
000000000040ff84  c605c69f700010                   mov byte ptr [rip + 0x709fc6], 0x10
000000000040ff8b  0f45c2                           cmovne eax, edx
000000000040ff8e  e98df2ffff                       jmp 0x40f220
000000000040ff93  0f1f440000                       nop dword ptr [rax + rax]
000000000040ff98  3d20010000                       cmp eax, 0x120
000000000040ff9d  ba20010000                       mov edx, 0x120
000000000040ffa2  0f4fc2                           cmovg eax, edx
000000000040ffa5  660f6f0593272200                 movdqa xmm0, xmmword ptr [rip + 0x222793]
000000000040ffad  83e820                           sub eax, 0x20
000000000040ffb0  89c2                             mov edx, eax
000000000040ffb2  890584275d00                     mov dword ptr [rip + 0x5d2784], eax
000000000040ffb8  89059e827000                     mov dword ptr [rip + 0x70829e], eax
000000000040ffbe  c1fa05                           sar edx, 5
000000000040ffc1  0f1105789f7000                   movups xmmword ptr [rip + 0x709f78], xmm0
000000000040ffc8  85d2                             test edx, edx
000000000040ffca  660f6f057e272200                 movdqa xmm0, xmmword ptr [rip + 0x22277e]
000000000040ffd2  0f1105779f7000                   movups xmmword ptr [rip + 0x709f77], xmm0
000000000040ffd9  0f84fe000000                     je 0x4100dd
000000000040ffdf  83fa01                           cmp edx, 1
000000000040ffe2  c605629f700010                   mov byte ptr [rip + 0x709f62], 0x10
000000000040ffe9  0f8ef5000000                     jle 0x4100e4
000000000040ffef  83fa02                           cmp edx, 2
000000000040fff2  c605539f700010                   mov byte ptr [rip + 0x709f53], 0x10
000000000040fff9  0f8ef1f0ffff                     jle 0x40f0f0
000000000040ffff  83fa03                           cmp edx, 3
0000000000410002  c605449f700010                   mov byte ptr [rip + 0x709f44], 0x10
0000000000410009  0f8ee8f0ffff                     jle 0x40f0f7
000000000041000f  83fa04                           cmp edx, 4
0000000000410012  c605359f700010                   mov byte ptr [rip + 0x709f35], 0x10
0000000000410019  0f8edff0ffff                     jle 0x40f0fe
000000000041001f  83fa05                           cmp edx, 5
0000000000410022  c605269f700010                   mov byte ptr [rip + 0x709f26], 0x10
0000000000410029  0f8ed6f0ffff                     jle 0x40f105
000000000041002f  83fa06                           cmp edx, 6
0000000000410032  c605179f700010                   mov byte ptr [rip + 0x709f17], 0x10
0000000000410039  0f8ecdf0ffff                     jle 0x40f10c
000000000041003f  83fa08                           cmp edx, 8
0000000000410042  b810000000                       mov eax, 0x10
0000000000410047  ba2d000000                       mov edx, 0x2d
000000000041004c  c605fe9e700010                   mov byte ptr [rip + 0x709efe], 0x10
0000000000410053  0f45c2                           cmovne eax, edx
0000000000410056  e9bdf0ffff                       jmp 0x40f118
000000000041005b  0f1f440000                       nop dword ptr [rax + rax]
0000000000410060  31c0                             xor eax, eax
0000000000410062  e8891b0900                       call 0x4a1bf0
0000000000410067  e9abf5ffff                       jmp 0x40f617
000000000041006c  0f1f4000                         nop dword ptr [rax]
0000000000410070  3b15c2e14b00                     cmp edx, dword ptr [rip + 0x4be1c2]
0000000000410076  0f858aecffff                     jne 0x40ed06
000000000041007c  e98aecffff                       jmp 0x40ed0b
0000000000410081  0f1f8000000000                   nop dword ptr [rax]
0000000000410088  8b542430                         mov edx, dword ptr [rsp + 0x30]
000000000041008c  8b442434                         mov eax, dword ptr [rsp + 0x34]
0000000000410090  e9a2fbffff                       jmp 0x40fc37
0000000000410095  0f1f00                           nop dword ptr [rax]
0000000000410098  488d35c01d2200                   lea rsi, [rip + 0x221dc0]
000000000041009f  e92af8ffff                       jmp 0x40f8ce
00000000004100a4  0f1f4000                         nop dword ptr [rax]
00000000004100a8  48833d90d77e0000                 cmp qword ptr [rip + 0x7ed790], 0
00000000004100b0  0f851afaffff                     jne 0x40fad0
00000000004100b6  e90ef9ffff                       jmp 0x40f9c9
00000000004100bb  31c0                             xor eax, eax
00000000004100bd  e8aeb50400                       call 0x45b670
00000000004100c2  e901ebffff                       jmp 0x40ebc8
00000000004100c7  c7058b81700000000000             mov dword ptr [rip + 0x70818b], 0
00000000004100d1  488d35cd1b2200                   lea rsi, [rip + 0x221bcd]
00000000004100d8  e901f2ffff                       jmp 0x40f2de
00000000004100dd  c605679e70002d                   mov byte ptr [rip + 0x709e67], 0x2d
00000000004100e4  c605619e70002d                   mov byte ptr [rip + 0x709e61], 0x2d
00000000004100eb  e900f0ffff                       jmp 0x40f0f0
00000000004100f0  c605549e70002d                   mov byte ptr [rip + 0x709e54], 0x2d
00000000004100f7  c6054e9e70002d                   mov byte ptr [rip + 0x709e4e], 0x2d
00000000004100fe  e9f5f0ffff                       jmp 0x40f1f8
0000000000410103  0f1f440000                       nop dword ptr [rax + rax]
0000000000410108  8b05da175a00                     mov eax, dword ptr [rip + 0x5a17da]
000000000041010e  85c0                             test eax, eax
0000000000410110  0f8564fcffff                     jne 0x40fd7a
0000000000410116  e900fcffff                       jmp 0x40fd1b
000000000041011b  0f1f440000                       nop dword ptr [rax + rax]
0000000000410120  31c0                             xor eax, eax
0000000000410122  e8c9cc0400                       call 0x45cdf0
0000000000410127  488d3dfa242200                   lea rdi, [rip + 0x2224fa]
000000000041012e  41b801000000                     mov r8d, 1
0000000000410134  31c9                             xor ecx, ecx
0000000000410136  89c2                             mov edx, eax
0000000000410138  bedc050000                       mov esi, 0x5dc
000000000041013d  e87ed1ffff                       call 0x40d2c0
0000000000410142  e96feaffff                       jmp 0x40ebb6
0000000000410147  83c001                           add eax, 1
000000000041014a  8b1d80d47e00                     mov ebx, dword ptr [rip + 0x7ed480]
0000000000410150  89054eb07000                     mov dword ptr [rip + 0x70b04e], eax
0000000000410156  e904ebffff                       jmp 0x40ec5f
000000000041015b  0f1f440000                       nop dword ptr [rax + rax]
0000000000410160  31f6                             xor esi, esi
0000000000410162  bf06000000                       mov edi, 6
0000000000410167  e844de0700                       call 0x48dfb0
000000000041016c  83c080                           add eax, -0x80
000000000041016f  0f8fedecffff                     jg 0x40ee62
0000000000410175  31c0                             xor eax, eax
0000000000410177  31db                             xor ebx, ebx
0000000000410179  e8f2c90f00                       call 0x50cb70
000000000041017e  c70578e04b0000000000             mov dword ptr [rip + 0x4be078], 0
0000000000410188  89057ae04b00                     mov dword ptr [rip + 0x4be07a], eax
000000000041018e  e92dedffff                       jmp 0x40eec0
0000000000410193  e8083fffff                       call 0x4040a0
