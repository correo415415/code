0000000000490ad0  85ff                             test edi, edi
0000000000490ad2  7434                             je 0x490b08
0000000000490ad4  89f8                             mov eax, edi
0000000000490ad6  35ba29adbe                       xor eax, 0xbead29ba
0000000000490adb  ba20000000                       mov edx, 0x20
0000000000490ae0  c1c010                           rol eax, 0x10
0000000000490ae3  01f8                             add eax, edi
0000000000490ae5  01c7                             add edi, eax
0000000000490ae7  83ea01                           sub edx, 1
0000000000490aea  75f4                             jne 0x490ae0
0000000000490aec  893d168a4300                     mov dword ptr [rip + 0x438a16], edi
0000000000490af2  bf08000000                       mov edi, 8
0000000000490af7  89050f8a4300                     mov dword ptr [rip + 0x438a0f], eax
0000000000490afd  e92e04fbff                       jmp 0x440f30
0000000000490b02  660f1f440000                     nop word ptr [rax + rax]
0000000000490b08  b855970060                       mov eax, 0x60009755
0000000000490b0d  bfefbeadde                       mov edi, 0xdeadbeef
0000000000490b12  ebc7                             jmp 0x490adb
