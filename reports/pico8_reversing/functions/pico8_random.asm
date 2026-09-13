0000000000490b20  31d2                             xor edx, edx
0000000000490b22  85ff                             test edi, edi
0000000000490b24  7423                             je 0x490b49
0000000000490b26  8b05e0894300                     mov eax, dword ptr [rip + 0x4389e0]
0000000000490b2c  8b15d6894300                     mov edx, dword ptr [rip + 0x4389d6]
0000000000490b32  c1c010                           rol eax, 0x10
0000000000490b35  01d0                             add eax, edx
0000000000490b37  01c2                             add edx, eax
0000000000490b39  8905cd894300                     mov dword ptr [rip + 0x4389cd], eax
0000000000490b3f  8915c3894300                     mov dword ptr [rip + 0x4389c3], edx
0000000000490b45  31d2                             xor edx, edx
0000000000490b47  f7f7                             div edi
0000000000490b49  89d0                             mov eax, edx
0000000000490b4b  c3                               ret 
