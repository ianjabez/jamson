#include <stdlib.h>
#include <stdio.h>

int main(void)
{
	printf("Enter two integers, and I will tell you\n");
	printf("the relationships they satisfy:\n");

	int num1;
	int num2;

	scanf("%d%d", &num1, &num2);

	if (num1 == num2)
	{
		printf("%d is equal to %d\n", num1, num2);
	}

	if (num1 != num2)
	{
		printf("%d is not equal to %d\n", num1, num2);
	}

	if (num1 < num2)
	{
		printf("%d is less to %d\n", num1, num2);
	}

	if (num1 > num2)
	{
		printf("%d is greater to %d\n", num1, num2);
	}

	if (num1 <= num2)
	{
		printf("%d is less than or equal to %d\n", num1, num2);
	}

	if (num1 >= num2)
	{
		printf("%d is greater than or equal to %d\n", num1, num2);
	}

	system("pause");
	return 0;
}