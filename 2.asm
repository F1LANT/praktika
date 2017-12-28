
;y=a/2*(5+b)+13*c

.model flat

.data

_a dw 1000b;8
_b dw 10b;2
_c dw 11b;3
_z dw 101b;5
_h dw 1101b;13
_o dw 10b;

;res dw 0b

.code

start:
mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

;(5+b)=q
mov dx, _b
mov ax, _z
add dx, ax
push dx

xor dx, dx
xor ax, ax

;a/2*q=e
mov ax, _a
;mov dx, _o
div _o
pop bx
mul bx
xor dx, dx
mov dx, ax
push dx

xor dx, dx
xor ax, ax
xor bx, bx

;13*c=w
mov ax, _h
mov dx, _c
mul dx
xor dx, dx
mov dx, ax
push dx

xor dx, dx
xor ax, ax

;e+w=res
pop bx
mov ax, bx
xor bx, bx
pop bx
mov dx, bx
add ax, dx

shr ax, 4

xor dx, dx
xor ax, ax
xor bx, bx

ret
end start

