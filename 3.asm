.model flat

.data

_A dw 1011b;11
_B dw 1010b;10
_C dw 1100b;12
_Z dw 10b;2

.code

start:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _A
mov dx, _B
and ax, dx
xor dx, dx
mov dx, ax
push dx

xor ax, ax
xor dx, dx

mov ax, _B
mov dx, _C
or ax, dx

xor dx, dx
pop bx
add ax, bx
mov dx, 0
div _Z

ret

end start