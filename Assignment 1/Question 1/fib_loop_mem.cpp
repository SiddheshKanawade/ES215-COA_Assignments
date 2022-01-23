#include <iostream>
using namespace std;
unsigned long long valueArray[1000];

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

int main()
{
    int n;
    valueArray[0] = 0;
    valueArray[1] = 1;


    cin >> n;

    

    long start = currentTime();

    for (int i = 0; i < n; i++)
    {
        
        if (i == 0)
        {
            cout << valueArray[0] << " ";
            continue;
        }
        if (i == 1)
        {
            cout << valueArray[1] << " ";
            continue;
        }
        valueArray[i] = valueArray[i-1] + valueArray[i-2];
    

        cout << valueArray[i] << " ";
    }



    long end = currentTime();
    cout << endl
         << "Time taken(in ns)= " << end - start << endl;
    return 0;
}