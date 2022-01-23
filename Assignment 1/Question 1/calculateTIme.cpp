#include <iostream>
using namespace std;

long currentTime(){
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec*1000000000 + time.tv_nsec;
}
int main(){

    long start = currentTime();

    for(int i = 0; i < 100; i++){
        cout << "hello" << endl;
    }

    long end = currentTime();

    cout << end - start << endl;

    
}