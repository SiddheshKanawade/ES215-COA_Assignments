
#include <bits/stdc++.h>
using namespace std;
unsigned long long valueArray[1000];

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

unsigned long long fib(int x)
{
    // base case
    if (x <= 1)
        return x;
 
    if (valueArray[x] != 0)
        return valueArray[x];
 
    else {
 
        valueArray[x] = fib(x - 1) + fib(x - 2);
 
        return valueArray[x];
    }
}
 
int main()
{
    int x;
    cin >> x;

    long start = currentTime();

    for(int i = 0; i < x; i++) {
      cout << fib(i) << " ";
   }

   long end = currentTime();

   cout << endl << "Time taken(in ns) " << end - start << endl; 
    return 0;
}