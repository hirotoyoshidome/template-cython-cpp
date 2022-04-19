# include "SampleUtils.hpp"
# include <iostream>

/* 検証用 */
int main()
{
    char text[] = "test";
    sampleFn(text);

    int res;
    res = sampleFn2(2,5);
    std::cout << res << std::endl;
}
