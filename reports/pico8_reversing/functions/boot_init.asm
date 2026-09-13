00000000004073b0  8b05eecf5d00                     mov eax, dword ptr [rip + 0x5dcfee]
00000000004073b6  53                               push rbx
00000000004073b7  85c0                             test eax, eax
00000000004073b9  740a                             je 0x4073c5
00000000004073bb  c705dfcf5d0000000000             mov dword ptr [rip + 0x5dcfdf], 0
00000000004073c5  31c0                             xor eax, eax
00000000004073c7  c70577b75d0000000000             mov dword ptr [rip + 0x5db777], 0
00000000004073d1  c705f5617f0002000000             mov dword ptr [rip + 0x7f61f5], 2
00000000004073db  c7057b147d00f1ffffff             mov dword ptr [rip + 0x7d147b], 0xfffffff1
00000000004073e5  c705ed7b800000000000             mov dword ptr [rip + 0x807bed], 0
00000000004073ef  e84c740300                       call 0x43e840
00000000004073f4  31c0                             xor eax, eax
00000000004073f6  e855760300                       call 0x43ea50
00000000004073fb  488d3d36da2200                   lea rdi, [rip + 0x22da36]
0000000000407402  e8b9690300                       call 0x43ddc0
0000000000407407  488b3d72147d00                   mov rdi, qword ptr [rip + 0x7d1472]
000000000040740e  c705b4637f0007000000             mov dword ptr [rip + 0x7f63b4], 7
0000000000407418  e8e3170b00                       call 0x4b8c00
000000000040741d  488b3da4147d00                   mov rdi, qword ptr [rip + 0x7d14a4]
0000000000407424  e8d7170b00                       call 0x4b8c00
0000000000407429  488b05908d5a00                   mov rax, qword ptr [rip + 0x5a8d90]
0000000000407430  41b907000000                     mov r9d, 7
0000000000407436  41b805000000                     mov r8d, 5
000000000040743c  b905000000                       mov ecx, 5
0000000000407441  ba02000000                       mov edx, 2
0000000000407446  be02000000                       mov esi, 2
000000000040744b  488b7808                         mov rdi, qword ptr [rax + 8]
000000000040744f  e8cc350b00                       call 0x4baa20
0000000000407454  488b05658d5a00                   mov rax, qword ptr [rip + 0x5a8d65]
000000000040745b  41b907000000                     mov r9d, 7
0000000000407461  41b805000000                     mov r8d, 5
0000000000407467  b902000000                       mov ecx, 2
000000000040746c  ba02000000                       mov edx, 2
0000000000407471  be05000000                       mov esi, 5
0000000000407476  488b7808                         mov rdi, qword ptr [rax + 8]
000000000040747a  e8a1350b00                       call 0x4baa20
000000000040747f  31ff                             xor edi, edi
0000000000407481  e8dad0ffff                       call 0x404560
0000000000407486  4889c3                           mov rbx, rax
0000000000407489  31c0                             xor eax, eax
000000000040748b  e8e0561000                       call 0x50cb70
0000000000407490  8d3c18                           lea edi, [rax + rbx]
0000000000407493  e838960800                       call 0x490ad0
0000000000407498  31c0                             xor eax, eax
000000000040749a  e8b1191000                       call 0x508e50
000000000040749f  31f6                             xor esi, esi
00000000004074a1  31ff                             xor edi, edi
00000000004074a3  e8a8f70f00                       call 0x506c50
00000000004074a8  c705f23c710000000000             mov dword ptr [rip + 0x713cf2], 0
00000000004074b2  c705646d4c0000000000             mov dword ptr [rip + 0x4c6d64], 0
00000000004074bc  c705566d4c0000000000             mov dword ptr [rip + 0x4c6d56], 0
00000000004074c6  c70584b65d0000000000             mov dword ptr [rip + 0x5db684], 0
00000000004074d0  c705d6955a0000000000             mov dword ptr [rip + 0x5a95d6], 0
00000000004074da  eb0b                             jmp 0x4074e7
00000000004074dc  0f1f4000                         nop dword ptr [rax]
00000000004074e0  31c0                             xor eax, eax
00000000004074e2  e8d9660b00                       call 0x4bdbc0
00000000004074e7  31c0                             xor eax, eax
00000000004074e9  e8c2660b00                       call 0x4bdbb0
00000000004074ee  85c0                             test eax, eax
00000000004074f0  75ee                             jne 0x4074e0
00000000004074f2  5b                               pop rbx
00000000004074f3  c3                               ret 
