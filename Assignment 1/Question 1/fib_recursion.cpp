#include <iostream>
using namespace std;

long currentTime(){
    struct timespec time;
    timespec_get(&time, CLOCK_MONOTONIC);
    return time.tv_sec*1000000000 + time.tv_nsec;
}
unsigned long long fibNumbers(int x) {
   if((x==1)||(x==0)) {
      return(x);
   }else {
      return(fibNumbers(x-1)+fibNumbers(x-2));
   }
}
int main() {
   int x;
   cin >> x;
   
   long start = currentTime();
   for(int i = 0; i < x; i++) {
      cout << fibNumbers(i) << " ";
   }

   long end = currentTime();
   cout << endl << "Time required(in ns) = " << end - start << endl;

   return 0;
}
