
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(void);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int abc;
    printf("Summing the odd numbers \n");
getch();

    
    asmfunc(); //assembly proc calling
   
   getch();
    
    
    printf("back to  C! \n"); // printing in c
    
  
    
    return 0;
}