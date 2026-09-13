0000000000490ab0  8b05568a4300                     mov eax, dword ptr [rip + 0x438a56]
0000000000490ab6  8b154c8a4300                     mov edx, dword ptr [rip + 0x438a4c]
0000000000490abc  c1c010                           rol eax, 0x10
0000000000490abf  01d0                             add eax, edx
0000000000490ac1  01c2                             add edx, eax
0000000000490ac3  8905438a4300                     mov dword ptr [rip + 0x438a43], eax
0000000000490ac9  8915398a4300                     mov dword ptr [rip + 0x438a39], edx
0000000000490acf  c3                               ret 
