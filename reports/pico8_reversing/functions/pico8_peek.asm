00000000004782a0  4531c0                           xor r8d, r8d
00000000004782a3  4885ff                           test rdi, rdi
00000000004782a6  53                               push rbx
00000000004782a7  0fb7da                           movzx ebx, dx
00000000004782aa  740c                             je 0x4782b8
00000000004782ac  4863c3                           movsxd rax, ebx
00000000004782af  440fb68407b05e0200               movzx r8d, byte ptr [rdi + rax + 0x25eb0]
00000000004782b8  81fbff1f0000                     cmp ebx, 0x1fff
00000000004782be  7f30                             jg 0x4782f0
00000000004782c0  488b4610                         mov rax, qword ptr [rsi + 0x10]
00000000004782c4  c1fb06                           sar ebx, 6
00000000004782c7  4801d2                           add rdx, rdx
00000000004782ca  4863db                           movsxd rbx, ebx
00000000004782cd  83e27e                           and edx, 0x7e
00000000004782d0  488b4018                         mov rax, qword ptr [rax + 0x18]
00000000004782d4  488b0cd8                         mov rcx, qword ptr [rax + rbx*8]
00000000004782d8  440fb6441101                     movzx r8d, byte ptr [rcx + rdx + 1]
00000000004782de  0fb60411                         movzx eax, byte ptr [rcx + rdx]
00000000004782e2  41c1e004                         shl r8d, 4
00000000004782e6  4101c0                           add r8d, eax
00000000004782e9  410fb6c0                         movzx eax, r8b
00000000004782ed  5b                               pop rbx
00000000004782ee  c3                               ret 
00000000004782ef  90                               nop 
00000000004782f0  81fbff2f0000                     cmp ebx, 0x2fff
00000000004782f6  7f28                             jg 0x478320
00000000004782f8  488b5618                         mov rdx, qword ptr [rsi + 0x18]
00000000004782fc  81eb00200000                     sub ebx, 0x2000
0000000000478302  89d8                             mov eax, ebx
0000000000478304  83e37f                           and ebx, 0x7f
0000000000478307  c1f807                           sar eax, 7
000000000047830a  488b5218                         mov rdx, qword ptr [rdx + 0x18]
000000000047830e  4898                             cdqe 
0000000000478310  488b04c2                         mov rax, qword ptr [rdx + rax*8]
0000000000478314  440fb60418                       movzx r8d, byte ptr [rax + rbx]
0000000000478319  ebce                             jmp 0x4782e9
000000000047831b  0f1f440000                       nop dword ptr [rax + rax]
0000000000478320  81fbff300000                     cmp ebx, 0x30ff
0000000000478326  7e48                             jle 0x478370
0000000000478328  81fbff310000                     cmp ebx, 0x31ff
000000000047832e  7f60                             jg 0x478390
0000000000478330  8d8b00cfffff                     lea ecx, [rbx - 0x3100]
0000000000478336  89ca                             mov edx, ecx
0000000000478338  83e103                           and ecx, 3
000000000047833b  c1fa02                           sar edx, 2
000000000047833e  4863c1                           movsxd rax, ecx
0000000000478341  4863d2                           movsxd rdx, edx
0000000000478344  488d849048290000                 lea rax, [rax + rdx*4 + 0x2948]
000000000047834c  448b0486                         mov r8d, dword ptr [rsi + rax*4]
0000000000478350  8b849620a90000                   mov eax, dword ptr [rsi + rdx*4 + 0xa920]
0000000000478357  4183e07f                         and r8d, 0x7f
000000000047835b  d3f8                             sar eax, cl
000000000047835d  4489c2                           mov edx, r8d
0000000000478360  80ca80                           or dl, 0x80
0000000000478363  a801                             test al, 1
0000000000478365  440f45c2                         cmovne r8d, edx
0000000000478369  e97bffffff                       jmp 0x4782e9
000000000047836e  6690                             nop 
0000000000478370  81eb00300000                     sub ebx, 0x3000
0000000000478376  4863db                           movsxd rbx, ebx
0000000000478379  448b849e30aa0000                 mov r8d, dword ptr [rsi + rbx*4 + 0xaa30]
0000000000478381  e963ffffff                       jmp 0x4782e9
0000000000478386  662e0f1f840000000000             nop word ptr cs:[rax + rax]
0000000000478390  81fbff420000                     cmp ebx, 0x42ff
0000000000478396  7e58                             jle 0x4783f0
0000000000478398  31c0                             xor eax, eax
000000000047839a  4885ff                           test rdi, rdi
000000000047839d  0f844affffff                     je 0x4782ed
00000000004783a3  81fbff5d0000                     cmp ebx, 0x5dff
00000000004783a9  0f8e3affffff                     jle 0x4782e9
00000000004783af  81fbff5e0000                     cmp ebx, 0x5eff
00000000004783b5  0f8fea000000                     jg 0x4784a5
00000000004783bb  81eb005e0000                     sub ebx, 0x5e00
00000000004783c1  488d1500417800                   lea rdx, [rip + 0x784100]
00000000004783c8  89d8                             mov eax, ebx
00000000004783ca  83e303                           and ebx, 3
00000000004783cd  c1f802                           sar eax, 2
00000000004783d0  8d0cdd00000000                   lea ecx, [rbx*8]
00000000004783d7  4898                             cdqe 
00000000004783d9  448b0482                         mov r8d, dword ptr [rdx + rax*4]
00000000004783dd  41d3e8                           shr r8d, cl
00000000004783e0  450fb6c0                         movzx r8d, r8b
00000000004783e4  e900ffffff                       jmp 0x4782e9
00000000004783e9  0f1f8000000000                   nop dword ptr [rax]
00000000004783f0  81eb00320000                     sub ebx, 0x3200
00000000004783f6  baf1f0f0f0                       mov edx, 0xf0f0f0f1
00000000004783fb  89d8                             mov eax, ebx
00000000004783fd  f7e2                             mul edx
00000000004783ff  c1ea06                           shr edx, 6
0000000000478402  6bc244                           imul eax, edx, 0x44
0000000000478405  29c3                             sub ebx, eax
0000000000478407  83fb3f                           cmp ebx, 0x3f
000000000047840a  7f34                             jg 0x478440
000000000047840c  89d8                             mov eax, ebx
000000000047840e  d1f8                             sar eax, 1
0000000000478410  4869d294020000                   imul rdx, rdx, 0x294
0000000000478417  4898                             cdqe 
0000000000478419  488d0480                         lea rax, [rax + rax*4]
000000000047841d  488d0482                         lea rax, [rdx + rax*4]
0000000000478421  4801c6                           add rsi, rax
0000000000478424  83e301                           and ebx, 1
0000000000478427  8b4638                           mov eax, dword ptr [rsi + 0x38]
000000000047842a  7543                             jne 0x47846f
000000000047842c  c1e006                           shl eax, 6
000000000047842f  440fb6c0                         movzx r8d, al
0000000000478433  440b4634                         or r8d, dword ptr [rsi + 0x34]
0000000000478437  e9adfeffff                       jmp 0x4782e9
000000000047843c  0f1f4000                         nop dword ptr [rax]
0000000000478440  4863c2                           movsxd rax, edx
0000000000478443  4869c094020000                   imul rax, rax, 0x294
000000000047844a  83fb40                           cmp ebx, 0x40
000000000047844d  0f8483000000                     je 0x4784d6
0000000000478453  83fb41                           cmp ebx, 0x41
0000000000478456  0f8495000000                     je 0x4784f1
000000000047845c  83fb42                           cmp ebx, 0x42
000000000047845f  0f84ec000000                     je 0x478551
0000000000478465  448b440630                       mov r8d, dword ptr [rsi + rax + 0x30]
000000000047846a  e97afeffff                       jmp 0x4782e9
000000000047846f  8b4e3c                           mov ecx, dword ptr [rsi + 0x3c]
0000000000478472  c1f802                           sar eax, 2
0000000000478475  83e001                           and eax, 1
0000000000478478  448d0409                         lea r8d, [rcx + rcx]
000000000047847c  4183e00e                         and r8d, 0xe
0000000000478480  4409c0                           or eax, r8d
0000000000478483  448b4644                         mov r8d, dword ptr [rsi + 0x44]
0000000000478487  4181e080000000                   and r8d, 0x80
000000000047848e  4409c0                           or eax, r8d
0000000000478491  448b4640                         mov r8d, dword ptr [rsi + 0x40]
0000000000478495  41c1e004                         shl r8d, 4
0000000000478499  4183e070                         and r8d, 0x70
000000000047849d  4109c0                           or r8d, eax
00000000004784a0  e944feffff                       jmp 0x4782e9
00000000004784a5  81fb7f5f0000                     cmp ebx, 0x5f7f
00000000004784ab  7f4e                             jg 0x4784fb
00000000004784ad  8d8300a1ffff                     lea eax, [rbx - 0x5f00]
00000000004784b3  83f80f                           cmp eax, 0xf
00000000004784b6  0f8f9f000000                     jg 0x47855b
00000000004784bc  488d159d037600                   lea rdx, [rip + 0x76039d]
00000000004784c3  4898                             cdqe 
00000000004784c5  448b84829c4e0200                 mov r8d, dword ptr [rdx + rax*4 + 0x24e9c]
00000000004784cd  450fb6c0                         movzx r8d, r8b
00000000004784d1  e913feffff                       jmp 0x4782e9
00000000004784d6  4801c6                           add rsi, rax
00000000004784d9  448b4624                         mov r8d, dword ptr [rsi + 0x24]
00000000004784dd  8b4620                           mov eax, dword ptr [rsi + 0x20]
00000000004784e0  4183e001                         and r8d, 1
00000000004784e4  25fe000000                       and eax, 0xfe
00000000004784e9  4109c0                           or r8d, eax
00000000004784ec  e9f8fdffff                       jmp 0x4782e9
00000000004784f1  448b440628                       mov r8d, dword ptr [rsi + rax + 0x28]
00000000004784f6  e9eefdffff                       jmp 0x4782e9
00000000004784fb  81fbff5f0000                     cmp ebx, 0x5fff
0000000000478501  7e79                             jle 0x47857c
0000000000478503  81fbff7f0000                     cmp ebx, 0x7fff
0000000000478509  0f8fdafdffff                     jg 0x4782e9
000000000047850f  488b156a037600                   mov rdx, qword ptr [rip + 0x76036a]
0000000000478516  81eb00600000                     sub ebx, 0x6000
000000000047851c  89d8                             mov eax, ebx
000000000047851e  4801db                           add rbx, rbx
0000000000478521  c1f806                           sar eax, 6
0000000000478524  488b5218                         mov rdx, qword ptr [rdx + 0x18]
0000000000478528  4898                             cdqe 
000000000047852a  488b0cc2                         mov rcx, qword ptr [rdx + rax*8]
000000000047852e  4889d8                           mov rax, rbx
0000000000478531  83e07e                           and eax, 0x7e
0000000000478534  440fb6440101                     movzx r8d, byte ptr [rcx + rax + 1]
000000000047853a  0fb61401                         movzx edx, byte ptr [rcx + rax]
000000000047853e  4183e00f                         and r8d, 0xf
0000000000478542  83e20f                           and edx, 0xf
0000000000478545  41c1e004                         shl r8d, 4
0000000000478549  4101d0                           add r8d, edx
000000000047854c  e998fdffff                       jmp 0x4782e9
0000000000478551  448b44062c                       mov r8d, dword ptr [rsi + rax + 0x2c]
0000000000478556  e98efdffff                       jmp 0x4782e9
000000000047855b  83f81f                           cmp eax, 0x1f
000000000047855e  7f2f                             jg 0x47858f
0000000000478560  8d83f0a0ffff                     lea eax, [rbx - 0x5f10]
0000000000478566  488d15f3027600                   lea rdx, [rip + 0x7602f3]
000000000047856d  4898                             cdqe 
000000000047856f  448b8482dc4e0200                 mov r8d, dword ptr [rdx + rax*4 + 0x24edc]
0000000000478577  e951ffffff                       jmp 0x4784cd
000000000047857c  8dbb80a0ffff                     lea edi, [rbx - 0x5f80]
0000000000478582  e839670300                       call 0x4aecc0
0000000000478587  4189c0                           mov r8d, eax
000000000047858a  e95afdffff                       jmp 0x4782e9
000000000047858f  83f823                           cmp eax, 0x23
0000000000478592  7f1c                             jg 0x4785b0
0000000000478594  8d83e0a0ffff                     lea eax, [rbx - 0x5f20]
000000000047859a  488d15bf027600                   lea rdx, [rip + 0x7602bf]
00000000004785a1  4898                             cdqe 
00000000004785a3  448b84825c4f0200                 mov r8d, dword ptr [rdx + rax*4 + 0x24f5c]
00000000004785ab  e91dffffff                       jmp 0x4784cd
00000000004785b0  83f824                           cmp eax, 0x24
00000000004785b3  0f8444010000                     je 0x4786fd
00000000004785b9  83f825                           cmp eax, 0x25
00000000004785bc  0f842f010000                     je 0x4786f1
00000000004785c2  83f826                           cmp eax, 0x26
00000000004785c5  0f841a010000                     je 0x4786e5
00000000004785cb  83f827                           cmp eax, 0x27
00000000004785ce  0f8435010000                     je 0x478709
00000000004785d4  83f828                           cmp eax, 0x28
00000000004785d7  0f8465010000                     je 0x478742
00000000004785dd  83f829                           cmp eax, 0x29
00000000004785e0  0f844c010000                     je 0x478732
00000000004785e6  83f82a                           cmp eax, 0x2a
00000000004785e9  0f8436010000                     je 0x478725
00000000004785ef  83f82b                           cmp eax, 0x2b
00000000004785f2  0f841d010000                     je 0x478715
00000000004785f8  83f82c                           cmp eax, 0x2c
00000000004785fb  0f845f020000                     je 0x478860
0000000000478601  83f831                           cmp eax, 0x31
0000000000478604  0f8449020000                     je 0x478853
000000000047860a  83f832                           cmp eax, 0x32
000000000047860d  0f842f020000                     je 0x478842
0000000000478613  83f833                           cmp eax, 0x33
0000000000478616  0f8419020000                     je 0x478835
000000000047861c  83f835                           cmp eax, 0x35
000000000047861f  0f8403020000                     je 0x478828
0000000000478625  83f83c                           cmp eax, 0x3c
0000000000478628  0f84ed010000                     je 0x47881b
000000000047862e  83f83d                           cmp eax, 0x3d
0000000000478631  0f84d4010000                     je 0x47880b
0000000000478637  83f83e                           cmp eax, 0x3e
000000000047863a  0f84be010000                     je 0x4787fe
0000000000478640  83f83f                           cmp eax, 0x3f
0000000000478643  0f84a5010000                     je 0x4787ee
0000000000478649  83f840                           cmp eax, 0x40
000000000047864c  0f8490010000                     je 0x4787e2
0000000000478652  83f841                           cmp eax, 0x41
0000000000478655  0f847b010000                     je 0x4787d6
000000000047865b  83f842                           cmp eax, 0x42
000000000047865e  0f8466010000                     je 0x4787ca
0000000000478664  83f843                           cmp eax, 0x43
0000000000478667  0f8451010000                     je 0x4787be
000000000047866d  8d50bc                           lea edx, [rax - 0x44]
0000000000478670  83fa03                           cmp edx, 3
0000000000478673  0f862c010000                     jbe 0x4787a5
0000000000478679  8d50b8                           lea edx, [rax - 0x48]
000000000047867c  83fa03                           cmp edx, 3
000000000047867f  0f86f7000000                     jbe 0x47877c
0000000000478685  8d50b4                           lea edx, [rax - 0x4c]
0000000000478688  83fa07                           cmp edx, 7
000000000047868b  0f87be000000                     ja 0x47874f
0000000000478691  8d83b4a0ffff                     lea eax, [rbx - 0x5f4c]
0000000000478697  488d3dc2017600                   lea rdi, [rip + 0x7601c2]
000000000047869e  31c9                             xor ecx, ecx
00000000004786a0  31d2                             xor edx, edx
00000000004786a2  41b801000000                     mov r8d, 1
00000000004786a8  4898                             cdqe 
00000000004786aa  48c1e005                         shl rax, 5
00000000004786ae  4801f8                           add rax, rdi
00000000004786b1  8bb488cc4f0200                   mov esi, dword ptr [rax + rcx*4 + 0x24fcc]
00000000004786b8  85f6                             test esi, esi
00000000004786ba  7405                             je 0x4786c1
00000000004786bc  4489c6                           mov esi, r8d
00000000004786bf  d3e6                             shl esi, cl
00000000004786c1  4883c101                         add rcx, 1
00000000004786c5  09f2                             or edx, esi
00000000004786c7  4883f908                         cmp rcx, 8
00000000004786cb  75e4                             jne 0x4786b1
00000000004786cd  440fb6841fb05e0200               movzx r8d, byte ptr [rdi + rbx + 0x25eb0]
00000000004786d6  4181e0c0000000                   and r8d, 0xc0
00000000004786dd  4109d0                           or r8d, edx
00000000004786e0  e9e8fdffff                       jmp 0x4784cd
00000000004786e5  448b05e4507800                   mov r8d, dword ptr [rip + 0x7850e4]
00000000004786ec  e9dcfdffff                       jmp 0x4784cd
00000000004786f1  448b05d4507800                   mov r8d, dword ptr [rip + 0x7850d4]
00000000004786f8  e9d0fdffff                       jmp 0x4784cd
00000000004786fd  448b05d4507800                   mov r8d, dword ptr [rip + 0x7850d4]
0000000000478704  e9c4fdffff                       jmp 0x4784cd
0000000000478709  448b05c4507800                   mov r8d, dword ptr [rip + 0x7850c4]
0000000000478710  e9b8fdffff                       jmp 0x4784cd
0000000000478715  448b05d4507800                   mov r8d, dword ptr [rip + 0x7850d4]
000000000047871c  41c1f808                         sar r8d, 8
0000000000478720  e9a8fdffff                       jmp 0x4784cd
0000000000478725  440fb605c3507800                 movzx r8d, byte ptr [rip + 0x7850c3]
000000000047872d  e99bfdffff                       jmp 0x4784cd
0000000000478732  448b05b3507800                   mov r8d, dword ptr [rip + 0x7850b3]
0000000000478739  41c1f808                         sar r8d, 8
000000000047873d  e98bfdffff                       jmp 0x4784cd
0000000000478742  440fb605a2507800                 movzx r8d, byte ptr [rip + 0x7850a2]
000000000047874a  e97efdffff                       jmp 0x4784cd
000000000047874f  83f85e                           cmp eax, 0x5e
0000000000478752  7444                             je 0x478798
0000000000478754  83e860                           sub eax, 0x60
0000000000478757  83f80f                           cmp eax, 0xf
000000000047875a  0f876dfdffff                     ja 0x4784cd
0000000000478760  8d83a0a0ffff                     lea eax, [rbx - 0x5f60]
0000000000478766  488d15f3007600                   lea rdx, [rip + 0x7600f3]
000000000047876d  4898                             cdqe 
000000000047876f  448b84821c4f0200                 mov r8d, dword ptr [rdx + rax*4 + 0x24f1c]
0000000000478777  e951fdffff                       jmp 0x4784cd
000000000047877c  bf01000000                       mov edi, 1
0000000000478781  e8ea820100                       call 0x490a70
0000000000478786  8d0cddc005fdff                   lea ecx, [rbx*8 - 0x2fa40]
000000000047878d  d3e8                             shr eax, cl
000000000047878f  440fb6c0                         movzx r8d, al
0000000000478793  e935fdffff                       jmp 0x4784cd
0000000000478798  440fb6055c507800                 movzx r8d, byte ptr [rip + 0x78505c]
00000000004787a0  e928fdffff                       jmp 0x4784cd
00000000004787a5  31ff                             xor edi, edi
00000000004787a7  e8c4820100                       call 0x490a70
00000000004787ac  8d0cdde005fdff                   lea ecx, [rbx*8 - 0x2fa20]
00000000004787b3  d3e8                             shr eax, cl
00000000004787b5  440fb6c0                         movzx r8d, al
00000000004787b9  e90ffdffff                       jmp 0x4784cd
00000000004787be  448b05af557800                   mov r8d, dword ptr [rip + 0x7855af]
00000000004787c5  e903fdffff                       jmp 0x4784cd
00000000004787ca  448b059f557800                   mov r8d, dword ptr [rip + 0x78559f]
00000000004787d1  e9f7fcffff                       jmp 0x4784cd
00000000004787d6  448b058f557800                   mov r8d, dword ptr [rip + 0x78558f]
00000000004787dd  e9ebfcffff                       jmp 0x4784cd
00000000004787e2  448b057f557800                   mov r8d, dword ptr [rip + 0x78557f]
00000000004787e9  e9dffcffff                       jmp 0x4784cd
00000000004787ee  448b051f507800                   mov r8d, dword ptr [rip + 0x78501f]
00000000004787f5  41c1f808                         sar r8d, 8
00000000004787f9  e9cffcffff                       jmp 0x4784cd
00000000004787fe  440fb6050e507800                 movzx r8d, byte ptr [rip + 0x78500e]
0000000000478806  e9c2fcffff                       jmp 0x4784cd
000000000047880b  448b05fe4f7800                   mov r8d, dword ptr [rip + 0x784ffe]
0000000000478812  41c1f808                         sar r8d, 8
0000000000478816  e9b2fcffff                       jmp 0x4784cd
000000000047881b  440fb605ed4f7800                 movzx r8d, byte ptr [rip + 0x784fed]
0000000000478823  e9a5fcffff                       jmp 0x4784cd
0000000000478828  440fb605e84f7800                 movzx r8d, byte ptr [rip + 0x784fe8]
0000000000478830  e998fcffff                       jmp 0x4784cd
0000000000478835  440fb605d14f7800                 movzx r8d, byte ptr [rip + 0x784fd1]
000000000047883d  e98bfcffff                       jmp 0x4784cd
0000000000478842  8b05c44f7800                     mov eax, dword ptr [rip + 0x784fc4]
0000000000478848  0fb6c4                           movzx eax, ah
000000000047884b  4189c0                           mov r8d, eax
000000000047884e  e97afcffff                       jmp 0x4784cd
0000000000478853  440fb605b14f7800                 movzx r8d, byte ptr [rip + 0x784fb1]
000000000047885b  e96dfcffff                       jmp 0x4784cd
0000000000478860  448b05914f7800                   mov r8d, dword ptr [rip + 0x784f91]
0000000000478867  e961fcffff                       jmp 0x4784cd
