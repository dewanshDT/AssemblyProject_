section .data
    hello db 'Hello, Assembly World!',0

section .text
    global _start

_start:
    ; Write the string to stdout (file descriptor 1)
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, hello      ; pointer to the message
    mov edx, 22         ; message length
    int 0x80            ; syscall interrupt

    ; Exit the program
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; syscall interrupt