.section .data
string: .byte "1", "2", "3"
resultado: .quad 0


.section .text
.globl _start

_start:

movb $0, %al
movb $0, %bl
movb $0, %cl
movb string(, %al,1), %bl
movb string(, %al,2), %cl

mulb $10, %cl
addb %cl, %bl

movb string(, %al,3), %cl

mulb $100, %cl
addb %cl, %bl

movzbq %bl, %rdi

movq $60, %rax
syscall
