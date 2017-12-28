
;Y = a/b+c-10

.model flat
.data
_A dw 1001b;9
_B dw 11b;3
_C dw 1101b;13
_sub dw 1010b;10
.code
main:
mov ax, @data
mov dx, ax
mov ds, dx

xor ax, ax
xor dx, dx

mov ax, _A
div _B

add ax, _C
sub ax, _sub

shr ax, 5

ret
	
end main
