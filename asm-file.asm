INCLUDE Irvine32.inc
.data
;public asmfunc

str1 db "Sum of odd numbers is ",0
.code
asmfunc PROC arr:DWORD , p2:DWORD
    
   mov eax,0
   mov ebx,0
   mov esi,arr
   mov ecx,p2
   next:
   mov eax,[esi]
   TEST eax,1h
   jz skip
   add ebx,eax                 
                    
    skip:
 add esi,4                  
 loop next                 

mov ecx,0
;sum of odd numbers
mov edx,offset str1 
call writestring
call crlf
mov eax,0
mov eax,ebx
call writeint
call crlf






    ret
asmfunc ENDP
end
