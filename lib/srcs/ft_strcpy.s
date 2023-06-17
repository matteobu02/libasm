; char *ft_strcpy(char *dest, const char *src);

section .text
	global _ft_strcpy

_ft_strcpy:
	mov rcx, -1

.loop:
	inc rcx
	mov al, BYTE [rsi + rcx]
	mov BYTE [rdi + rcx], al
	cmp al, 0
	jne .loop
	mov rax, rdi
	ret
