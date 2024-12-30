#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int arr[],int length );

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int abc;
    printf("Sum of odd numbers \n");
getch();
    int arr[7] = {1,2,3,4,5,6,7};
    
    
     asmfunc(arr,7); 
   
   getch();
    
    
    printf("back to  C! \n"); 
  
    
return 0;
}
