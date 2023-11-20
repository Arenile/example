struct TestStruct
{
	int a;
	int b;
	int c;
};

int main()
{
	TestStruct tester[7];

	int test = tester[2].a + tester[2].b + tester[2].c;
}
