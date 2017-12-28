.model flat
.data 
_A dw 1000b
_B dw 11b
_C dw 111b
_div dw 10b
_add1 dw 101b
_add2 dw 11b
_mul dw 1101b
.code
main:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _B
mul _add2
add ax, _add1
mov dx, ax
push dx

xor ax, ax
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

shl ax, 1

ret
end main