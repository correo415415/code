0000000000466370  48638fd0000000                   movsxd rcx, dword ptr [rdi + 0xd0]
0000000000466377  83f901                           cmp ecx, 1
000000000046637a  0f8e40010000                     jle 0x4664c0
0000000000466380  4154                             push r12
0000000000466382  55                               push rbp
0000000000466383  4863d1                           movsxd rdx, ecx
0000000000466386  53                               push rbx
0000000000466387  4c8b4710                         mov r8, qword ptr [rdi + 0x10]
000000000046638b  4889d0                           mov rax, rdx
000000000046638e  48c1e004                         shl rax, 4
0000000000466392  4989fc                           mov r12, rdi
0000000000466395  4c89c7                           mov rdi, r8
0000000000466398  4829c7                           sub rdi, rax
000000000046639b  837f0803                         cmp dword ptr [rdi + 8], 3
000000000046639f  757f                             jne 0x466420
00000000004663a1  8b1f                             mov ebx, dword ptr [rdi]
00000000004663a3  c1fb10                           sar ebx, 0x10
00000000004663a6  bf01000000                       mov edi, 1
00000000004663ab  4829d7                           sub rdi, rdx
00000000004663ae  4889f8                           mov rax, rdi
00000000004663b1  48c1e004                         shl rax, 4
00000000004663b5  498d3c00                         lea rdi, [r8 + rax]
00000000004663b9  837f0803                         cmp dword ptr [rdi + 8], 3
00000000004663bd  0f8505010000                     jne 0x4664c8
00000000004663c3  8b2f                             mov ebp, dword ptr [rdi]
00000000004663c5  c1fd10                           sar ebp, 0x10
00000000004663c8  83f902                           cmp ecx, 2
00000000004663cb  7e75                             jle 0x466442
00000000004663cd  b803000000                       mov eax, 3
00000000004663d2  4829c8                           sub rax, rcx
00000000004663d5  48c1e004                         shl rax, 4
00000000004663d9  498d7c00f0                       lea rdi, [r8 + rax - 0x10]
00000000004663de  837f0803                         cmp dword ptr [rdi + 8], 3
00000000004663e2  0f8500010000                     jne 0x4664e8
00000000004663e8  8b07                             mov eax, dword ptr [rdi]
00000000004663ea  89c6                             mov esi, eax
00000000004663ec  c1fe10                           sar esi, 0x10
00000000004663ef  833d2a74790001                   cmp dword ptr [rip + 0x79742a], 1
00000000004663f6  400fb6d6                         movzx edx, sil
00000000004663fa  8915cc737900                     mov dword ptr [rip + 0x7973cc], edx
0000000000466400  0f84f2000000                     je 0x4664f8
0000000000466406  448b05ff737900                   mov r8d, dword ptr [rip + 0x7973ff]
000000000046640d  4489c7                           mov edi, r8d
0000000000466410  81e700000400                     and edi, 0x40000
0000000000466416  eb41                             jmp 0x466459
0000000000466418  0f1f840000000000                 nop dword ptr [rax + rax]
0000000000466420  e89b1afbff                       call 0x417ec0
0000000000466425  49638c24d0000000                 movsxd rcx, dword ptr [r12 + 0xd0]
000000000046642d  c1f810                           sar eax, 0x10
0000000000466430  31ed                             xor ebp, ebp
0000000000466432  4d8b442410                       mov r8, qword ptr [r12 + 0x10]
0000000000466437  89c3                             mov ebx, eax
0000000000466439  83f901                           cmp ecx, 1
000000000046643c  0f8f16010000                     jg 0x466558
0000000000466442  448b05c3737900                   mov r8d, dword ptr [rip + 0x7973c3]
0000000000466449  0fb6157c737900                   movzx edx, byte ptr [rip + 0x79737c]
0000000000466450  4489c7                           mov edi, r8d
0000000000466453  81e700000400                     and edi, 0x40000
0000000000466459  488d3500247700                   lea rsi, [rip + 0x772400]
0000000000466460  89d0                             mov eax, edx
0000000000466462  c1fa04                           sar edx, 4
0000000000466465  83e00f                           and eax, 0xf
0000000000466468  4863d2                           movsxd rdx, edx
000000000046646b  8b8c869c4e0200                   mov ecx, dword ptr [rsi + rax*4 + 0x24e9c]
0000000000466472  8b84969c4e0200                   mov eax, dword ptr [rsi + rdx*4 + 0x24e9c]
0000000000466479  c1e004                           shl eax, 4
000000000046647c  83e10f                           and ecx, 0xf
000000000046647f  0fb6c0                           movzx eax, al
0000000000466482  01c1                             add ecx, eax
0000000000466484  85ff                             test edi, edi
0000000000466486  740a                             je 0x466492
0000000000466488  83e10f                           and ecx, 0xf
000000000046648b  8b8c8e1c4f0200                   mov ecx, dword ptr [rsi + rcx*4 + 0x24f1c]
0000000000466492  2b1d54737900                     sub ebx, dword ptr [rip + 0x797354]
0000000000466498  2b2d52737900                     sub ebp, dword ptr [rip + 0x797352]
000000000046649e  488b3ddb237700                   mov rdi, qword ptr [rip + 0x7723db]
00000000004664a5  0fbfd5                           movsx edx, bp
00000000004664a8  0fbff3                           movsx esi, bx
00000000004664ab  e880b10000                       call 0x471630
00000000004664b0  5b                               pop rbx
00000000004664b1  31c0                             xor eax, eax
00000000004664b3  5d                               pop rbp
00000000004664b4  415c                             pop r12
00000000004664b6  c3                               ret 
00000000004664b7  660f1f840000000000               nop word ptr [rax + rax]
00000000004664c0  31c0                             xor eax, eax
00000000004664c2  c3                               ret 
00000000004664c3  0f1f440000                       nop dword ptr [rax + rax]
00000000004664c8  e8f319fbff                       call 0x417ec0
00000000004664cd  c1f810                           sar eax, 0x10
00000000004664d0  4d8b442410                       mov r8, qword ptr [r12 + 0x10]
00000000004664d5  49638c24d0000000                 movsxd rcx, dword ptr [r12 + 0xd0]
00000000004664dd  89c5                             mov ebp, eax
00000000004664df  e9e4feffff                       jmp 0x4663c8
00000000004664e4  0f1f4000                         nop dword ptr [rax]
00000000004664e8  e8d319fbff                       call 0x417ec0
00000000004664ed  e9f8feffff                       jmp 0x4663ea
00000000004664f2  660f1f440000                     nop word ptr [rax + rax]
00000000004664f8  a900000010                       test eax, 0x10000000
00000000004664fd  0f8403ffffff                     je 0x466406
0000000000466503  a900000001                       test eax, 0x1000000
0000000000466508  440fb7c0                         movzx r8d, ax
000000000046650c  7407                             je 0x466515
000000000046650e  4181c800000100                   or r8d, 0x10000
0000000000466515  a900000002                       test eax, 0x2000000
000000000046651a  448905eb727900                   mov dword ptr [rip + 0x7972eb], r8d
0000000000466521  753d                             jne 0x466560
0000000000466523  488d0536237700                   lea rax, [rip + 0x772336]
000000000046652a  c1fa04                           sar edx, 4
000000000046652d  83e60f                           and esi, 0xf
0000000000466530  4863d2                           movsxd rdx, edx
0000000000466533  8b8c909c4e0200                   mov ecx, dword ptr [rax + rdx*4 + 0x24e9c]
000000000046653a  c1e104                           shl ecx, 4
000000000046653d  0fb6f9                           movzx edi, cl
0000000000466540  8b8cb09c4e0200                   mov ecx, dword ptr [rax + rsi*4 + 0x24e9c]
0000000000466547  83e10f                           and ecx, 0xf
000000000046654a  01f9                             add ecx, edi
000000000046654c  e941ffffff                       jmp 0x466492
0000000000466551  0f1f8000000000                   nop dword ptr [rax]
0000000000466558  4863d1                           movsxd rdx, ecx
000000000046655b  e946feffff                       jmp 0x4663a6
0000000000466560  4181c800000200                   or r8d, 0x20000
0000000000466567  488d05f2227700                   lea rax, [rip + 0x7722f2]
000000000046656e  44890597727900                   mov dword ptr [rip + 0x797297], r8d
0000000000466575  ebb3                             jmp 0x46652a
