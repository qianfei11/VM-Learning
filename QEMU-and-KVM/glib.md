# GLIB

```cpp
static void main_loop(void)
{
#ifdef CONFIG_PROFILER
    int64_t ti;
#endif
    do {
#ifdef CONFIG_PROFILER
        ti = profile_getclock();
#endif
        main_loop_wait(false);
#ifdef CONFIG_PROFILER
        dev_time += profile_getclock() - ti;
#endif
    } while (!main_loop_should_exit());
}
```
