.model flat
.data
_A dw 1111b;15
_B dw 1010b;10
_C dw 1010b;10
_div dw 10b;2
.code
main:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _A
mov bx, _B
and ax, bx
mov dx, ax
push dx

xor ax, ax
xor bx, bx
xor dx, dx

mov ax, _B
mov bx, _C
or ax, bx
xor bx, bx
pop bx
add ax, bx

mov dx, 0
div _div

ret

end main