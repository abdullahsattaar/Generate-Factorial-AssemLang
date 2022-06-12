[org 0x0100]

nums: dw 3,5,1,6,7
fac_num: dw 0,0,0,0,0

mov ax, nums
mov bx, fac_num
mov cx, 5
start:
mov dx,ax

factorial:
imul ax, dx
sub dx, 1
jnz factorial
mov bx,ax
add ax,2
add bx, 2
sub cx,1
jnz start

mov ax, 0x4c00
int 21h


