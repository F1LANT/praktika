.model flat; Модель памяти

.data

_y dw 110b;Входные данные
_x dw 11b;
_z dw 1010b

;res dw 0;Результат

.code

start:

mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _y
mul _y
mov dx, ax
push dx

xor ax, ax

mov ax, _x
mul _x

pop bx

add ax, bx
sub ax, _z

shr ax, 3
ret
end start