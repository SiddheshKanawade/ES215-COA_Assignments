
#include <iostream>
#include <time.h>
 
using namespace std;
 
#define N 512

long currentTime()
{
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec * 1000000000 + time.tv_nsec;
}

void multiply(double mat1[N][N],
              double mat2[N][N],
              double res[N][N])
{
    int i, j, k;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            res[i][j] = 0;
        }
    }

    for (j = 0; j < N; j++) {
        for (i = 0; i < N; i++) {
            for (k = 0; k < N; k++)
                res[i][j] += mat1[i][k] * mat2[k][j];
        }
    }
}

void randomMat(double mat[N][N]){
    for(int i = 0; i < N; i++){
        for(int j = 0; j < N; j++){
            mat[i][j] = (rand() % 100)*0.21;
        }
    }
}

int main()
{
    int i, j;
    double res[N][N]; // To store result
    double mat1[N][N];
    double mat2[N][N];
    randomMat(mat1);
    randomMat(mat2);

    // Using srand function
    srand(time(0));

    // cout << "Mat1 is \n";
    // for (i = 0; i < N; i++) {
    //     for (j = 0; j < N; j++)
    //         cout << mat1[i][j] << " ";
    //     cout << "\n";
    // }

    // cout << "Mat2 is \n";
    // for (i = 0; i < N; i++) {
    //     for (j = 0; j < N; j++)
    //         cout << mat2[i][j] << " ";
    //     cout << "\n";
    // }

    long start = currentTime();

    multiply(mat1, mat2, res);

    long end = currentTime();

    cout << "Multiplied matrix is \n";
    for (i = 0; i < N; i++) {
        cout << "[";
        for (j = 0; j < N; j++)
            cout << res[i][j] << " ";
        cout << "]" << "\n";
    }

    cout << endl << "Total time taken in ns = " << end-start << endl;
 
    return 0;
}
