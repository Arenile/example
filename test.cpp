struct TestStruct {
	int a = 1;
	int b = 2;
	int c = 3;
};

int main() {
	TestStruct tester;

	int test = tester.a + tester.b + tester.c;
}
