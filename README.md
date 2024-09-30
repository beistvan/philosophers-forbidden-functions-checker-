# Philosophers forbidden functions checker

Philosophers forbidden functions checker (Subject v11)

## Run
`./mandatory_philo_forbidden_functions_checker.sh`

## Download and Run the Bash Script

This script checks for forbidden functions in the Philosophers project.

### Steps to Download and Run

1. **Download the script using `curl`:**

    ```sh
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/beistvan/philosophers-forbidden-functions-checker-/main/mandatory_philo_forbidden_functions_checker.sh)"
    ```

2. **Make the script executable:**

    ```sh
    chmod +x mandatory_philo_forbidden_functions_checker.sh
    ```

3. **Run the script:**

    ```sh
    ./mandatory_philo_forbidden_functions_checker.sh
    ```

### Example Output

### No forbidden functions detected
```sh
Forbidden functions checker for philosophers (Subject v11)<br>
✅ OK: No forbidden functions found. ✅
```

### Forbidden functions detected
```sh
Forbidden functions checker for mandatory philosophers (Subject v.11)
❌ Forbidden functions detected ❌:
dirfd
dlerror
dlsym
dlvsym
fileno_unlocked
getauxval
getrlimit
getrusage
getuid
isatty
mallopt
pthread_attr_destroy
pthread_attr_init
pthread_attr_setstacksize
pthread_getattr_np
pthread_key_create
pthread_self
pthread_setspecific
sched_yield
setrlimit
signgam
stderr
stdout
sysconf
syslog
```
