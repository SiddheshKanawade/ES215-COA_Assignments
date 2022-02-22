#include <stdio.h>
#include <time.h>

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

int main()
{
    int n;
    unsigned long long term1 = 0, term2 = 1, nextTerm = 0;

    scanf("%d", &n);

    long start = currentTime();

    for (int i = 1; i <= n; ++i)
    {
        // Prints the first two terms.
        if (i == 1)
        {
            printf("%llu ", term1);

            continue;
        }
        if (i == 2)
        {
            printf("%llu ", term2);
            continue;
        }
        nextTerm = term1 + term2;
        term1 = term2;
        term2 = nextTerm;

        printf("%llu ", nextTerm);
    }

    long end = currentTime();
    printf("\n");
    printf("Total time taken(in ns) = %ld \n", end - start);
    return 0;
}