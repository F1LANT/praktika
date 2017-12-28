.model flat
.data
_A dw 110b;6
_B dw 11b;3
_C dw 10b;2
_add dw 10b;2
_mul dw 1111b;15
.code
main:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _A
mul _B
mov dx, 0
div _C
add ax, _add
xor dx, dx
mov dx, ax
push dx

xor ax, ax
xor dx, dx

mov ax, _C
mul _mul
mov bx, ax
xor ax, ax
pop ax
or ax, bx

shr ax, 3

ret
end main