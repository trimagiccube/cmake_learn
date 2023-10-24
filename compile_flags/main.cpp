#include <iostream>

int main()
{
	std::cout << "hello build type" << std::endl;
#ifdef TEST_FLAG
	std::cout << "TEST_FLAG SET" << std::endl;
#endif
	return 0;
}
