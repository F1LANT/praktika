.model flat
.data
_A dw 1001b
_B dw 100b
_C dw 1b
_div dw 11b
_add dw 111b
_mul dw 110b
.code
main:
mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _B
mov dx, _add
add ax, dx
xor dx, dx
mov dx, ax
push dx

xor ax, ax
xor dx, dx

mov ax, _A
div _div
pop dx
mul dx
xor dx, dx
mov dx, ax
push dx

xor ax, ax
xor dx, dx

mov ax, _C
mul _mul
pop dx
add ax, dx
nop

ret
end main