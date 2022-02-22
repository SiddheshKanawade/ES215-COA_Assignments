# 0 "fib_loop.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "fib_loop.c"
# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdio.h" 1 3 4







# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/features.h" 1 3 4
# 9 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdio.h" 2 3 4
# 26 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdio.h" 3 4
# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 1 3 4
# 43 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4

# 43 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef unsigned int size_t;
# 58 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef int ssize_t;
# 155 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef long long off_t;
# 313 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef struct _IO_FILE FILE;





typedef __builtin_va_list va_list;




typedef __builtin_va_list __isoc_va_list;
# 27 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdio.h" 2 3 4
# 54 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/stdio.h" 3 4
typedef union _G_fpos64_t {
 char __opaque[16];
 long long __lldata;
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);




int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);




char *cuserid(char *);
void setlinebuf(FILE *);
void setbuffer(FILE *, char *, size_t);
int fgetc_unlocked(FILE *);
int fputc_unlocked(int, FILE *);
int fflush_unlocked(FILE *);
size_t fread_unlocked(void *, size_t, size_t, FILE *);
size_t fwrite_unlocked(const void *, size_t, size_t, FILE *);
void clearerr_unlocked(FILE *);
int feof_unlocked(FILE *);
int ferror_unlocked(FILE *);
int fileno_unlocked(FILE *);
int getw(FILE *);
int putw(int, FILE *);
char *fgetln(FILE *, size_t *);
int asprintf(char **, const char *, ...);
int vasprintf(char **, const char *, __isoc_va_list);
# 2 "fib_loop.c" 2
# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/time.h" 1 3 4
# 31 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/time.h" 3 4
# 1 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 1 3 4
# 78 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef long long time_t;
# 202 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef void * timer_t;




typedef int clockid_t;




typedef long clock_t;
# 222 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
struct timespec { time_t tv_sec; int :8*(sizeof(time_t)-sizeof(long))*(4321==4321); long tv_nsec; int :8*(sizeof(time_t)-sizeof(long))*(4321!=4321); };





typedef int pid_t;
# 336 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/bits/alltypes.h" 3 4
typedef struct __locale_struct * locale_t;
# 32 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/time.h" 2 3 4






struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long tm_gmtoff;
 const char *tm_zone;
};

clock_t clock (void);
time_t time (time_t *);
double difftime (time_t, time_t);
time_t mktime (struct tm *);
size_t strftime (char *restrict, size_t, const char *restrict, const struct tm *restrict);
struct tm *gmtime (const time_t *);
struct tm *localtime (const time_t *);
char *asctime (const struct tm *);
char *ctime (const time_t *);
int timespec_get(struct timespec *, int);
# 71 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/time.h" 3 4
size_t strftime_l (char * restrict, size_t, const char * restrict, const struct tm * restrict, locale_t);

struct tm *gmtime_r (const time_t *restrict, struct tm *restrict);
struct tm *localtime_r (const time_t *restrict, struct tm *restrict);
char *asctime_r (const struct tm *restrict, char *restrict);
char *ctime_r (const time_t *, char *);

void tzset (void);

struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 100 "/home/siddhesh/openwrt/staging_dir/toolchain-mips_24kc_gcc-11.2.0_musl/include/time.h" 3 4
int nanosleep (const struct timespec *, struct timespec *);
int clock_getres (clockid_t, struct timespec *);
int clock_gettime (clockid_t, struct timespec *);
int clock_settime (clockid_t, const struct timespec *);
int clock_nanosleep (clockid_t, int, const struct timespec *, struct timespec *);
int clock_getcpuclockid (pid_t, clockid_t *);

struct sigevent;
int timer_create (clockid_t, struct sigevent *restrict, timer_t *restrict);
int timer_delete (timer_t);
int timer_settime (timer_t, int, const struct itimerspec *restrict, struct itimerspec *restrict);
int timer_gettime (timer_t, struct itimerspec *);
int timer_getoverrun (timer_t);

extern char *tzname[2];





char *strptime (const char *restrict, const char *restrict, struct tm *restrict);
extern int daylight;
extern long timezone;
extern int getdate_err;
struct tm *getdate (const char *);




int stime(const time_t *);
time_t timegm(struct tm *);



__typeof__(time) time __asm__("__time64");
__typeof__(difftime) difftime __asm__("__difftime64");
__typeof__(mktime) mktime __asm__("__mktime64");
__typeof__(gmtime) gmtime __asm__("__gmtime64");
__typeof__(localtime) localtime __asm__("__localtime64");
__typeof__(ctime) ctime __asm__("__ctime64");
__typeof__(timespec_get) timespec_get __asm__("__timespec_get_time64");



__typeof__(gmtime_r) gmtime_r __asm__("__gmtime64_r");
__typeof__(localtime_r) localtime_r __asm__("__localtime64_r");
__typeof__(ctime_r) ctime_r __asm__("__ctime64_r");
__typeof__(nanosleep) nanosleep __asm__("__nanosleep_time64");
__typeof__(clock_getres) clock_getres __asm__("__clock_getres_time64");
__typeof__(clock_gettime) clock_gettime __asm__("__clock_gettime64");
__typeof__(clock_settime) clock_settime __asm__("__clock_settime64");
__typeof__(clock_nanosleep) clock_nanosleep __asm__("__clock_nanosleep_time64");
__typeof__(timer_settime) timer_settime __asm__("__timer_settime64");
__typeof__(timer_gettime) timer_gettime __asm__("__timer_gettime64");


__typeof__(stime) stime __asm__("__stime64");
__typeof__(timegm) timegm __asm__("__timegm_time64");
# 3 "fib_loop.c" 2


# 4 "fib_loop.c"
long currentTime()
{
    struct timespec time;
    timespec_get(&time, 
# 7 "fib_loop.c" 3 4
                       1
# 7 "fib_loop.c"
                                      );
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
