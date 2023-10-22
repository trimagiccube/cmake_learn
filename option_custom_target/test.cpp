#include <iostream>

using namespace std;
int main()
{
	cout<<"hello world"<<endl;
#ifdef TEST_OPTION
	cout<<"TEST_OPTION is defined"<<endl;
#endif

	return 0;
}
