.model flat
.data
_A dw 1101b
_B dw 1110b
_C dw 1100b
_div dw 10b
.code
main:

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
div _div

nop
ret
end main