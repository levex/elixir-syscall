#!/bin/bash

# Configuration
syscall_h=/usr/include/bits/syscall.h
# End Configuration

if [ -z ${LINUX_SOURCE_DIR} ]; then
    echo Please provide \$LINUX_SOURCE_DIR to point at the root of a Linux kernel source 1>&2
    exit 1
fi

syscall_tmp_file=$(mktemp)

# Begin

# Generate the names of the system calls
cat ${syscall_h} | \
    sed -ne 's/.*SYS_\(.*\) .*/\1/p' | \
    sort -u > ${syscall_tmp_file}

num_syscalls=$(wc -l ${syscall_tmp_file} | cut -d' ' -f1)

echo There are ${num_syscalls} system calls to generate stubs for. 1>&2

# From the Linux Kernel source code, fetch all the syscall
# definitions.
syscall_defines_tmp_file=$(mktemp)

echo Extracting system call definitons and arity from the Linux kernel source code 1>&2
echo Bear with us, this may take some time... 1>&2
egrep -r 'SYSCALL_DEFINE[0-9]\(' ${LINUX_SOURCE_DIR} | \
    cut -d':' -f2 | \
    egrep '^SYSCALL' | \
    cut -d',' -f1 | \
    sed -ne 's/SYSCALL_DEFINE\([0-9]\)(\(.*\)/\2 \1/p' | \
    sed -e 's/)//' | \
    sort -u > \
        ${syscall_defines_tmp_file}

stat_failed_gen=0

while read line; do
    num=$(echo ${line} | cut -d' ' -f2)
    syscall=$(echo ${line} | cut -d' ' -f1)
    syscall_no=$(grep -w ${syscall} \
        ${LINUX_SOURCE_DIR}/arch/x86/entry/syscalls/syscall_64.tbl | \
        egrep -w 'common|64' | \
        cut -d$'\t' -f1)

    if [ -z ${syscall_no} ]; then
        stat_failed_gen=$((stat_failed_gen + 1))
    else
        echo -n def sys_${syscall}\(
        for i in $(seq 1 ${num}); do
            if [ ${i} = ${num} ]; then
                echo -n a${i}
            else
                echo -n "a${i}, "
            fi
        done
        echo \) do
        echo -n "  make_raw_syscall ${syscall_no}, "
        for i in $(seq 1 ${num}); do
                echo -n "a${i}, "
        done
        for i in $(seq ${num} 6); do
            if [ ${i} = 6 ]; then
                echo -n 0
            else
                echo -n "0, "
            fi
        done
        echo
        echo "end"
    fi
done <${syscall_defines_tmp_file}

echo "Failed to generate stubs for ${stat_failed_gen} system calls!" 1>&2

echo "syscall_defines_tmp_file: " ${syscall_defines_tmp_file} 1>&2
echo "syscall_tmp_file: " ${syscall_tmp_file} 1>&2

read line

# Clean up
rm ${syscall_tmp_file}
rm ${syscall_defines_tmp_file}
