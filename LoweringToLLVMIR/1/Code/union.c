#include <stdio.h>
#include <string.h>
 
union Example
{
   int i;
   float f;
   char str[20];
};
 
int main( ) 
{
   union Example example;        

   example.i = 10;
   printf("example.i : %d\n", example.i);

   example.f = 220.5;
   printf("example.f : %f\n", example.f);
   
   strcpy(example.str, "Union");
   printf("example.str : %s\n", example.str);

   return 0;
}