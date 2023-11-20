struct TestStruct
{
	int a;
	int b;
	int c;
};

int main()
{
	TestStruct tester[7];
	for (int i = 0; i < 7; ++i)
	{
		int test = tester[i].a + tester[i].b + tester[i].c;
	}
}
