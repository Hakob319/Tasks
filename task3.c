#include <stdio.h>

int main(){
	int rating;
	printf("Input your rating: "\n);
	scanf("%d", &rating);

	if(rating >= 90 && rating <= 100){
		printf("A Classroom"\n);

	   }   else if(rating >= 80 && rating <= 89){
		   printf("B Classroom"\n);

	   }	else if(rating >= 70 && rating <= 79){
		   printf("C Classroom"\n);

           }   else if(rating >= 60 && rating <= 69){
		   printf("D Classroom"\n);
          
           } else if(rating >= 0 && rating <60){
		   printf("E Classroom"\n);


           } else {
		printf("Invalid rating"\n);

	   }


     return 0;

}


	            
