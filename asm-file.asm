

INCLUDE Irvine32.inc
.data
arr dword 1,2,3,4,6,7           ;declared an array with both even and odd numbers
str1 db "the sum of of odd numbers is:",0
sum dword 0


.code
asmfunc PROC
mov esi,offset arr            ;gave the address of array to esi
mov ecx,Lengthof arr           ;the loop will run according to the length
next:
test dword ptr[esi],1
jz skip ;if the number is even skip  
mov eax,sum
add eax,[esi]
mov sum,eax
skip:
add esi,TYPE arr
loop next
;Displaying the sum of odd numbers
mov edx,offset str1
call writestring
mov eax,sum
call writeint
    
    ret
asmfunc ENDP
end