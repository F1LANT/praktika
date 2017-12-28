
; y = a/3 * (8 + b) + 11*c

.model flat

.data
_A dw 1001b;9
_B dw 11b;3
_C dw 11b;3
_div dw 11b;3
_mul dw 1011b;11
_add dw 1000b;8

.code
main:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

;mov ax, _add
mov dx, _B
add dx, _add
push dx

xor dx, dx

mov ax, _A
div _div

pop bx
mul bx
mov dx, ax
push dx

xor ax, ax
xor bx, bx
xor dx, dx

mov ax, _C
mul _mul
pop bx
add ax, bx

shl ax, 3
shr ax, 2

ret

end main
