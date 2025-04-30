#include<stdio.h>

int main()
{
	char *name = "xixi";
	int num = 0;
	
	//compute the number of array elements

	for(; name[num] != '\0'; num++); 
	
	printf("num is: %d\n",num);
	for(int i = 0; i < num; i++) {
		printf("按位输出xixi: %c\n", name[i]);
	}

	return 0;
}
