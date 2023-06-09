; int ft_strcmp(const char *s1, const char *s2);

global _ft_strcmp

section .text

_ft_strcmp:
	mov rcx, -1

.loop:
	inc rcx
	cmp BYTE [rdi + rcx], 0
	je .endfunc
	cmp BYTE [rsi + rcx], 0
	je .endfunc
	mov al, BYTE [rdi + rcx]
	cmp al, BYTE [rsi + rcx]
	je .loop

.endfunc:
	movzx rax, BYTE [rdi + rcx]
	movzx rdx, BYTE [rsi + rcx]
	sub rax, rdx
	ret
