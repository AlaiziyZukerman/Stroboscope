#include "unity_fixture.h"
#include <stdio.h>
extern struct parameters_t my_parameters;
//------------------------------------------------------------------------------
TEST_GROUP(driver);

//------------------------------------------------------------------------------
TEST_SETUP(driver)
{
}

//------------------------------------------------------------------------------
TEST_TEAR_DOWN(driver)
{
}

//------------------------------------------------------------------------------
TEST(driver, Positive)
{
	TEST_ASSERT_EQUAL_INT(0, set_shutdown());
    TEST_ASSERT_EQUAL_INT(0, set_strob());
	TEST_ASSERT_EQUAL_INT(3, set_light());
	TEST_ASSERT_EQUAL_INT(6, set_power());
	TEST_ASSERT_EQUAL_INT(0, set_parameters());
	TEST_ASSERT_EQUAL_INT(0, fill_parameters());
}

//------------------------------------------------------------------------------
TEST(driver, Negative)
{
	TEST_ASSERT_NOT_EQUAL_INT(1, set_shutdown());
    TEST_ASSERT_NOT_EQUAL_INT(3, set_strob());
	TEST_ASSERT_NOT_EQUAL_INT(4, set_light());
	TEST_ASSERT_NOT_EQUAL_INT(5, set_power());
	TEST_ASSERT_NOT_EQUAL_INT(3, set_parameters());
	TEST_ASSERT_NOT_EQUAL_INT(2, fill_parameters());
}


