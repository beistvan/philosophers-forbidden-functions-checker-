#!/bin/bash
echo "Forbidden functions checker for mandatory philosophers (Subject v.11)"

allowed_funcs=(memset printf malloc free write usleep gettimeofday pthread_create pthread_detach pthread_join pthread_mutex_init pthread_mutex_destroy pthread_mutex_lock pthread_mutex_unlock)

forbidden_funcs=()

symbols=$(nm -u ./philo)

while read -r symbol; do
    symbol=$(echo "$symbol" | cut -c3- | sed 's/^ *//; s/@.*//')

    if [[ $symbol == _* ]]; then
        continue
    fi

    if [[ ! " ${allowed_funcs[@]} " =~ " ${symbol} " ]]; then
        forbidden_funcs+=("$symbol")
    fi
done <<< "$symbols"

if [ ${#forbidden_funcs[@]} -eq 0 ]; then
    echo "✅ OK: No forbidden functions found. ✅"
else
    echo "❌ Forbidden functions detected ❌:"
    for func in "${forbidden_funcs[@]}"; do
        echo "$func"
    done
fi
