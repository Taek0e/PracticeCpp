#include <iostream>
using namespace std;


int main(void) {
	int num1 = 1000;
	int &num2 = num1;
	int& num3 = num2;

	num3 = 999;

	cout << num2 << " " << num1;
	return 0;
}

