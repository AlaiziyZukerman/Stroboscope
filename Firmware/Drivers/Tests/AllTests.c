#include "unity_fixture.h"

//------------------------------------------------------------------------------
void RunAllTests(void)
{
    RUN_TEST_GROUP(driver);
}

//------------------------------------------------------------------------------

TEST_GROUP_RUNNER(driver){
	RUN_TEST_CASE(driver, Positive);
	RUN_TEST_CASE(driver, Negative);
}
