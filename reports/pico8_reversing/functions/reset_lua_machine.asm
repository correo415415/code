000000000043e840  4883ec08                         sub rsp, 8
000000000043e844  488b3d6dfe4800                   mov rdi, qword ptr [rip + 0x48fe6d]
000000000043e84b  4885ff                           test rdi, rdi
000000000043e84e  7405                             je 0x43e855
000000000043e850  e8ebfcfdff                       call 0x41e540
000000000043e855  48c7c780784700                   mov rdi, 0x477880
000000000043e85c  31f6                             xor esi, esi
000000000043e85e  e8ad8dfeff                       call 0x427610
000000000043e863  4889c7                           mov rdi, rax
000000000043e866  4889054bfe4800                   mov qword ptr [rip + 0x48fe4b], rax
000000000043e86d  4889054cfe4800                   mov qword ptr [rip + 0x48fe4c], rax
000000000043e874  e8d706feff                       call 0x41ef50
000000000043e879  488b3d40fe4800                   mov rdi, qword ptr [rip + 0x48fe40]
000000000043e880  48890529fe4800                   mov qword ptr [rip + 0x48fe29], rax
000000000043e887  e894aa0200                       call 0x469320
000000000043e88c  488b3d2dfe4800                   mov rdi, qword ptr [rip + 0x48fe2d]
000000000043e893  ba64000000                       mov edx, 0x64
000000000043e898  be06000000                       mov esi, 6
000000000043e89d  e89e08feff                       call 0x41f140
000000000043e8a2  488b3d17fe4800                   mov rdi, qword ptr [rip + 0x48fe17]
000000000043e8a9  bac8000000                       mov edx, 0xc8
000000000043e8ae  be07000000                       mov esi, 7
000000000043e8b3  4883c408                         add rsp, 8
000000000043e8b7  e98408feff                       jmp 0x41f140
