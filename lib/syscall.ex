defmodule Syscall do
  # fast_compare.ex
  @on_load :load_nifs

  def load_nifs do
    soname = Path.join(:code.priv_dir(:syscall), "syscall")
    :erlang.load_nif(soname, 0)
  end

  def string_to_buffer(str) do
    len = String.length str
    sl = String.to_charlist str
    stringify_term len, sl
  end

  def make_raw_syscall(_, _, _, _, _, _, _, _) do
    raise "NIF make_syscall/7 not implemented"
  end

  def stringify_term(_, _) do
    raise "NIF stringify_term/2 not implemented"
  end

  def get_errno() do
    raise "NIF get_errno/2 not implemented"
  end

  def test() do
    str = "Hello, World!\n\r"
    len = String.length str
    buf = stringify_term len, (String.to_charlist str)
    sys_write 1, buf, len
    sys_exit_group(42)
  end

# THIS CODE IS AUTOGENERATED
# See `generate_stubs.sh` at the top folder of the repository.
def sys_accept(a1, a2, a3) do
  make_raw_syscall 43, a1, a2, a3, 0, 0, 0, 0
end
def sys_accept4(a1, a2, a3, a4) do
  make_raw_syscall 288, a1, a2, a3, a4, 0, 0, 0
end
def sys_access(a1, a2) do
  make_raw_syscall 21, a1, a2, 0, 0, 0, 0, 0
end
def sys_acct(a1) do
  make_raw_syscall 163, a1, 0, 0, 0, 0, 0, 0
end
def sys_add_key(a1, a2, a3, a4, a5) do
  make_raw_syscall 248, a1, a2, a3, a4, a5, 0, 0
end
def sys_adjtimex(a1) do
  make_raw_syscall 159, a1, 0, 0, 0, 0, 0, 0
end
def sys_alarm(a1) do
  make_raw_syscall 37, a1, 0, 0, 0, 0, 0, 0
end
def sys_arch_prctl(a1, a2) do
  make_raw_syscall 158, a1, a2, 0, 0, 0, 0, 0
end
def sys_bind(a1, a2, a3) do
  make_raw_syscall 49, a1, a2, a3, 0, 0, 0, 0
end
def sys_bpf(a1, a2, a3) do
  make_raw_syscall 321, a1, a2, a3, 0, 0, 0, 0
end
def sys_brk(a1) do
  make_raw_syscall 12, a1, 0, 0, 0, 0, 0, 0
end
def sys_capget(a1, a2) do
  make_raw_syscall 125, a1, a2, 0, 0, 0, 0, 0
end
def sys_capset(a1, a2) do
  make_raw_syscall 126, a1, a2, 0, 0, 0, 0, 0
end
def sys_chdir(a1) do
  make_raw_syscall 80, a1, 0, 0, 0, 0, 0, 0
end
def sys_chmod(a1, a2) do
  make_raw_syscall 90, a1, a2, 0, 0, 0, 0, 0
end
def sys_chown(a1, a2, a3) do
  make_raw_syscall 92, a1, a2, a3, 0, 0, 0, 0
end
def sys_chroot(a1) do
  make_raw_syscall 161, a1, 0, 0, 0, 0, 0, 0
end
def sys_clock_adjtime(a1, a2) do
  make_raw_syscall 305, a1, a2, 0, 0, 0, 0, 0
end
def sys_clock_getres(a1, a2) do
  make_raw_syscall 229, a1, a2, 0, 0, 0, 0, 0
end
def sys_clock_gettime(a1, a2) do
  make_raw_syscall 228, a1, a2, 0, 0, 0, 0, 0
end
def sys_clock_nanosleep(a1, a2, a3, a4) do
  make_raw_syscall 230, a1, a2, a3, a4, 0, 0, 0
end
def sys_clock_settime(a1, a2) do
  make_raw_syscall 227, a1, a2, 0, 0, 0, 0, 0
end
def sys_clone(a1, a2, a3, a4, a5) do
  make_raw_syscall 56, a1, a2, a3, a4, a5, 0, 0
end
def sys_clone(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 56, a1, a2, a3, a4, a5, a6, 0
end
def sys_close(a1) do
  make_raw_syscall 3, a1, 0, 0, 0, 0, 0, 0
end
def sys_connect(a1, a2, a3) do
  make_raw_syscall 42, a1, a2, a3, 0, 0, 0, 0
end
def sys_copy_file_range(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 326, a1, a2, a3, a4, a5, a6, 0
end
def sys_creat(a1, a2) do
  make_raw_syscall 85, a1, a2, 0, 0, 0, 0, 0
end
def sys_delete_module(a1, a2) do
  make_raw_syscall 176, a1, a2, 0, 0, 0, 0, 0
end
def sys_dup(a1) do
  make_raw_syscall 32, a1, 0, 0, 0, 0, 0, 0
end
def sys_dup2(a1, a2) do
  make_raw_syscall 33, a1, a2, 0, 0, 0, 0, 0
end
def sys_dup3(a1, a2, a3) do
  make_raw_syscall 292, a1, a2, a3, 0, 0, 0, 0
end
def sys_epoll_create(a1) do
  make_raw_syscall 213, a1, 0, 0, 0, 0, 0, 0
end
def sys_epoll_create1(a1) do
  make_raw_syscall 291, a1, 0, 0, 0, 0, 0, 0
end
def sys_epoll_ctl(a1, a2, a3, a4) do
  make_raw_syscall 233, a1, a2, a3, a4, 0, 0, 0
end
def sys_epoll_pwait(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 281, a1, a2, a3, a4, a5, a6, 0
end
def sys_epoll_wait(a1, a2, a3, a4) do
  make_raw_syscall 232, a1, a2, a3, a4, 0, 0, 0
end
def sys_eventfd(a1) do
  make_raw_syscall 284, a1, 0, 0, 0, 0, 0, 0
end
def sys_eventfd2(a1, a2) do
  make_raw_syscall 290, a1, a2, 0, 0, 0, 0, 0
end
def sys_execve(a1, a2, a3) do
  make_raw_syscall 59, a1, a2, a3, 0, 0, 0, 0
end
def sys_execveat(a1, a2, a3, a4, a5) do
  make_raw_syscall 322, a1, a2, a3, a4, a5, 0, 0
end
def sys_exit(a1) do
  make_raw_syscall 60, a1, 0, 0, 0, 0, 0, 0
end
def sys_exit_group(a1) do
  make_raw_syscall 231, a1, 0, 0, 0, 0, 0, 0
end
def sys_faccessat(a1, a2, a3) do
  make_raw_syscall 269, a1, a2, a3, 0, 0, 0, 0
end
def sys_fadvise64(a1, a2, a3, a4) do
  make_raw_syscall 221, a1, a2, a3, a4, 0, 0, 0
end
def sys_fallocate(a1, a2, a3, a4) do
  make_raw_syscall 285, a1, a2, a3, a4, 0, 0, 0
end
def sys_fanotify_init(a1, a2) do
  make_raw_syscall 300, a1, a2, 0, 0, 0, 0, 0
end
def sys_fanotify_mark(a1, a2, a3, a4, a5) do
  make_raw_syscall 301, a1, a2, a3, a4, a5, 0, 0
end
def sys_fchdir(a1) do
  make_raw_syscall 81, a1, 0, 0, 0, 0, 0, 0
end
def sys_fchmod(a1, a2) do
  make_raw_syscall 91, a1, a2, 0, 0, 0, 0, 0
end
def sys_fchmodat(a1, a2, a3) do
  make_raw_syscall 268, a1, a2, a3, 0, 0, 0, 0
end
def sys_fchown(a1, a2, a3) do
  make_raw_syscall 93, a1, a2, a3, 0, 0, 0, 0
end
def sys_fchownat(a1, a2, a3, a4, a5) do
  make_raw_syscall 260, a1, a2, a3, a4, a5, 0, 0
end
def sys_fcntl(a1, a2, a3) do
  make_raw_syscall 72, a1, a2, a3, 0, 0, 0, 0
end
def sys_fdatasync(a1) do
  make_raw_syscall 75, a1, 0, 0, 0, 0, 0, 0
end
def sys_fgetxattr(a1, a2, a3, a4) do
  make_raw_syscall 193, a1, a2, a3, a4, 0, 0, 0
end
def sys_finit_module(a1, a2, a3) do
  make_raw_syscall 313, a1, a2, a3, 0, 0, 0, 0
end
def sys_flistxattr(a1, a2, a3) do
  make_raw_syscall 196, a1, a2, a3, 0, 0, 0, 0
end
def sys_flock(a1, a2) do
  make_raw_syscall 73, a1, a2, 0, 0, 0, 0, 0
end
def sys_fork() do
  make_raw_syscall 57, 0, 0, 0, 0, 0, 0, 0
end
def sys_fremovexattr(a1, a2) do
  make_raw_syscall 199, a1, a2, 0, 0, 0, 0, 0
end
def sys_fsetxattr(a1, a2, a3, a4, a5) do
  make_raw_syscall 190, a1, a2, a3, a4, a5, 0, 0
end
def sys_fstat(a1, a2) do
  make_raw_syscall 5, a1, a2, 0, 0, 0, 0, 0
end
def sys_fstatfs(a1, a2) do
  make_raw_syscall 138, a1, a2, 0, 0, 0, 0, 0
end
def sys_fsync(a1) do
  make_raw_syscall 74, a1, 0, 0, 0, 0, 0, 0
end
def sys_ftruncate(a1, a2) do
  make_raw_syscall 77, a1, a2, 0, 0, 0, 0, 0
end
def sys_futex(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 202, a1, a2, a3, a4, a5, a6, 0
end
def sys_futimesat(a1, a2, a3) do
  make_raw_syscall 261, a1, a2, a3, 0, 0, 0, 0
end
def sys_getcpu(a1, a2, a3) do
  make_raw_syscall 309, a1, a2, a3, 0, 0, 0, 0
end
def sys_getcwd(a1, a2) do
  make_raw_syscall 79, a1, a2, 0, 0, 0, 0, 0
end
def sys_getdents(a1, a2, a3) do
  make_raw_syscall 78, a1, a2, a3, 0, 0, 0, 0
end
def sys_getdents64(a1, a2, a3) do
  make_raw_syscall 217, a1, a2, a3, 0, 0, 0, 0
end
def sys_getegid() do
  make_raw_syscall 108, 0, 0, 0, 0, 0, 0, 0
end
def sys_geteuid() do
  make_raw_syscall 107, 0, 0, 0, 0, 0, 0, 0
end
def sys_getgid() do
  make_raw_syscall 104, 0, 0, 0, 0, 0, 0, 0
end
def sys_getgroups(a1, a2) do
  make_raw_syscall 115, a1, a2, 0, 0, 0, 0, 0
end
def sys_getitimer(a1, a2) do
  make_raw_syscall 36, a1, a2, 0, 0, 0, 0, 0
end
def sys_get_mempolicy(a1, a2, a3, a4, a5) do
  make_raw_syscall 239, a1, a2, a3, a4, a5, 0, 0
end
def sys_getpeername(a1, a2, a3) do
  make_raw_syscall 52, a1, a2, a3, 0, 0, 0, 0
end
def sys_getpgid(a1) do
  make_raw_syscall 121, a1, 0, 0, 0, 0, 0, 0
end
def sys_getpgrp() do
  make_raw_syscall 111, 0, 0, 0, 0, 0, 0, 0
end
def sys_getpid() do
  make_raw_syscall 39, 0, 0, 0, 0, 0, 0, 0
end
def sys_getppid() do
  make_raw_syscall 110, 0, 0, 0, 0, 0, 0, 0
end
def sys_getpriority(a1, a2) do
  make_raw_syscall 140, a1, a2, 0, 0, 0, 0, 0
end
def sys_getrandom(a1, a2, a3) do
  make_raw_syscall 318, a1, a2, a3, 0, 0, 0, 0
end
def sys_getresgid(a1, a2, a3) do
  make_raw_syscall 120, a1, a2, a3, 0, 0, 0, 0
end
def sys_getresuid(a1, a2, a3) do
  make_raw_syscall 118, a1, a2, a3, 0, 0, 0, 0
end
def sys_getrlimit(a1, a2) do
  make_raw_syscall 97, a1, a2, 0, 0, 0, 0, 0
end
def sys_get_robust_list(a1, a2, a3) do
  make_raw_syscall 274, a1, a2, a3, 0, 0, 0, 0
end
def sys_getrusage(a1, a2) do
  make_raw_syscall 98, a1, a2, 0, 0, 0, 0, 0
end
def sys_getsid(a1) do
  make_raw_syscall 124, a1, 0, 0, 0, 0, 0, 0
end
def sys_getsockname(a1, a2, a3) do
  make_raw_syscall 51, a1, a2, a3, 0, 0, 0, 0
end
def sys_getsockopt(a1, a2, a3, a4, a5) do
  make_raw_syscall 55, a1, a2, a3, a4, a5, 0, 0
end
def sys_get_thread_area(a1) do
  make_raw_syscall 211, a1, 0, 0, 0, 0, 0, 0
end
def sys_gettid() do
  make_raw_syscall 186, 0, 0, 0, 0, 0, 0, 0
end
def sys_gettimeofday(a1, a2) do
  make_raw_syscall 96, a1, a2, 0, 0, 0, 0, 0
end
def sys_getuid() do
  make_raw_syscall 102, 0, 0, 0, 0, 0, 0, 0
end
def sys_getxattr(a1, a2, a3, a4) do
  make_raw_syscall 191, a1, a2, a3, a4, 0, 0, 0
end
def sys_init_module(a1, a2, a3) do
  make_raw_syscall 175, a1, a2, a3, 0, 0, 0, 0
end
def sys_inotify_add_watch(a1, a2, a3) do
  make_raw_syscall 254, a1, a2, a3, 0, 0, 0, 0
end
def sys_inotify_init() do
  make_raw_syscall 253, 0, 0, 0, 0, 0, 0, 0
end
def sys_inotify_init1(a1) do
  make_raw_syscall 294, a1, 0, 0, 0, 0, 0, 0
end
def sys_inotify_rm_watch(a1, a2) do
  make_raw_syscall 255, a1, a2, 0, 0, 0, 0, 0
end
def sys_io_cancel(a1, a2, a3) do
  make_raw_syscall 210, a1, a2, a3, 0, 0, 0, 0
end
def sys_ioctl(a1, a2, a3) do
  make_raw_syscall 16, a1, a2, a3, 0, 0, 0, 0
end
def sys_io_destroy(a1) do
  make_raw_syscall 207, a1, 0, 0, 0, 0, 0, 0
end
def sys_io_getevents(a1, a2, a3, a4, a5) do
  make_raw_syscall 208, a1, a2, a3, a4, a5, 0, 0
end
def sys_ioperm(a1, a2, a3) do
  make_raw_syscall 173, a1, a2, a3, 0, 0, 0, 0
end
def sys_iopl(a1) do
  make_raw_syscall 172, a1, 0, 0, 0, 0, 0, 0
end
def sys_ioprio_get(a1, a2) do
  make_raw_syscall 252, a1, a2, 0, 0, 0, 0, 0
end
def sys_ioprio_set(a1, a2, a3) do
  make_raw_syscall 251, a1, a2, a3, 0, 0, 0, 0
end
def sys_io_setup(a1, a2) do
  make_raw_syscall 206, a1, a2, 0, 0, 0, 0, 0
end
def sys_io_submit(a1, a2, a3) do
  make_raw_syscall 209, a1, a2, a3, 0, 0, 0, 0
end
def sys_kcmp(a1, a2, a3, a4, a5) do
  make_raw_syscall 312, a1, a2, a3, a4, a5, 0, 0
end
def sys_kexec_file_load(a1, a2, a3, a4, a5) do
  make_raw_syscall 320, a1, a2, a3, a4, a5, 0, 0
end
def sys_kexec_load(a1, a2, a3, a4) do
  make_raw_syscall 246, a1, a2, a3, a4, 0, 0, 0
end
def sys_keyctl(a1, a2, a3, a4, a5) do
  make_raw_syscall 250, a1, a2, a3, a4, a5, 0, 0
end
def sys_kill(a1, a2) do
  make_raw_syscall 62, a1, a2, 0, 0, 0, 0, 0
end
def sys_lchown(a1, a2, a3) do
  make_raw_syscall 94, a1, a2, a3, 0, 0, 0, 0
end
def sys_lgetxattr(a1, a2, a3, a4) do
  make_raw_syscall 192, a1, a2, a3, a4, 0, 0, 0
end
def sys_link(a1, a2) do
  make_raw_syscall 86, a1, a2, 0, 0, 0, 0, 0
end
def sys_linkat(a1, a2, a3, a4, a5) do
  make_raw_syscall 265, a1, a2, a3, a4, a5, 0, 0
end
def sys_listen(a1, a2) do
  make_raw_syscall 50, a1, a2, 0, 0, 0, 0, 0
end
def sys_listxattr(a1, a2, a3) do
  make_raw_syscall 194, a1, a2, a3, 0, 0, 0, 0
end
def sys_llistxattr(a1, a2, a3) do
  make_raw_syscall 195, a1, a2, a3, 0, 0, 0, 0
end
def sys_lookup_dcookie(a1, a2, a3) do
  make_raw_syscall 212, a1, a2, a3, 0, 0, 0, 0
end
def sys_lremovexattr(a1, a2) do
  make_raw_syscall 198, a1, a2, 0, 0, 0, 0, 0
end
def sys_lseek(a1, a2, a3) do
  make_raw_syscall 8, a1, a2, a3, 0, 0, 0, 0
end
def sys_lsetxattr(a1, a2, a3, a4, a5) do
  make_raw_syscall 189, a1, a2, a3, a4, a5, 0, 0
end
def sys_lstat(a1, a2) do
  make_raw_syscall 6, a1, a2, 0, 0, 0, 0, 0
end
def sys_madvise(a1, a2, a3) do
  make_raw_syscall 28, a1, a2, a3, 0, 0, 0, 0
end
def sys_mbind(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 237, a1, a2, a3, a4, a5, a6, 0
end
def sys_membarrier(a1, a2) do
  make_raw_syscall 324, a1, a2, 0, 0, 0, 0, 0
end
def sys_memfd_create(a1, a2) do
  make_raw_syscall 319, a1, a2, 0, 0, 0, 0, 0
end
def sys_migrate_pages(a1, a2, a3, a4) do
  make_raw_syscall 256, a1, a2, a3, a4, 0, 0, 0
end
def sys_mincore(a1, a2, a3) do
  make_raw_syscall 27, a1, a2, a3, 0, 0, 0, 0
end
def sys_mkdir(a1, a2) do
  make_raw_syscall 83, a1, a2, 0, 0, 0, 0, 0
end
def sys_mkdirat(a1, a2, a3) do
  make_raw_syscall 258, a1, a2, a3, 0, 0, 0, 0
end
def sys_mknod(a1, a2, a3) do
  make_raw_syscall 133, a1, a2, a3, 0, 0, 0, 0
end
def sys_mknodat(a1, a2, a3, a4) do
  make_raw_syscall 259, a1, a2, a3, a4, 0, 0, 0
end
def sys_mlock(a1, a2) do
  make_raw_syscall 149, a1, a2, 0, 0, 0, 0, 0
end
def sys_mlock2(a1, a2, a3) do
  make_raw_syscall 325, a1, a2, a3, 0, 0, 0, 0
end
def sys_mlockall(a1) do
  make_raw_syscall 151, a1, 0, 0, 0, 0, 0, 0
end
def sys_mmap(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 9, a1, a2, a3, a4, a5, a6, 0
end
def sys_modify_ldt(a1, a2, a3) do
  make_raw_syscall 154, a1, a2, a3, 0, 0, 0, 0
end
def sys_mount(a1, a2, a3, a4, a5) do
  make_raw_syscall 165, a1, a2, a3, a4, a5, 0, 0
end
def sys_move_pages(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 279, a1, a2, a3, a4, a5, a6, 0
end
def sys_mprotect(a1, a2, a3) do
  make_raw_syscall 10, a1, a2, a3, 0, 0, 0, 0
end
def sys_mq_getsetattr(a1, a2, a3) do
  make_raw_syscall 245, a1, a2, a3, 0, 0, 0, 0
end
def sys_mq_notify(a1, a2) do
  make_raw_syscall 244, a1, a2, 0, 0, 0, 0, 0
end
def sys_mq_open(a1, a2, a3, a4) do
  make_raw_syscall 240, a1, a2, a3, a4, 0, 0, 0
end
def sys_mq_timedreceive(a1, a2, a3, a4, a5) do
  make_raw_syscall 243, a1, a2, a3, a4, a5, 0, 0
end
def sys_mq_timedsend(a1, a2, a3, a4, a5) do
  make_raw_syscall 242, a1, a2, a3, a4, a5, 0, 0
end
def sys_mq_unlink(a1) do
  make_raw_syscall 241, a1, 0, 0, 0, 0, 0, 0
end
def sys_mremap(a1, a2, a3, a4, a5) do
  make_raw_syscall 25, a1, a2, a3, a4, a5, 0, 0
end
def sys_msgctl(a1, a2, a3) do
  make_raw_syscall 71, a1, a2, a3, 0, 0, 0, 0
end
def sys_msgget(a1, a2) do
  make_raw_syscall 68, a1, a2, 0, 0, 0, 0, 0
end
def sys_msgrcv(a1, a2, a3, a4, a5) do
  make_raw_syscall 70, a1, a2, a3, a4, a5, 0, 0
end
def sys_msgsnd(a1, a2, a3, a4) do
  make_raw_syscall 69, a1, a2, a3, a4, 0, 0, 0
end
def sys_msync(a1, a2, a3) do
  make_raw_syscall 26, a1, a2, a3, 0, 0, 0, 0
end
def sys_munlock(a1, a2) do
  make_raw_syscall 150, a1, a2, 0, 0, 0, 0, 0
end
def sys_munlockall() do
  make_raw_syscall 152, 0, 0, 0, 0, 0, 0, 0
end
def sys_munmap(a1, a2) do
  make_raw_syscall 11, a1, a2, 0, 0, 0, 0, 0
end
def sys_name_to_handle_at(a1, a2, a3, a4, a5) do
  make_raw_syscall 303, a1, a2, a3, a4, a5, 0, 0
end
def sys_nanosleep(a1, a2) do
  make_raw_syscall 35, a1, a2, 0, 0, 0, 0, 0
end
def sys_newfstatat(a1, a2, a3, a4) do
  make_raw_syscall 262, a1, a2, a3, a4, 0, 0, 0
end
def sys_open(a1, a2, a3) do
  make_raw_syscall 2, a1, a2, a3, 0, 0, 0, 0
end
def sys_openat(a1, a2, a3, a4) do
  make_raw_syscall 257, a1, a2, a3, a4, 0, 0, 0
end
def sys_open_by_handle_at(a1, a2, a3) do
  make_raw_syscall 304, a1, a2, a3, 0, 0, 0, 0
end
def sys_pause() do
  make_raw_syscall 34, 0, 0, 0, 0, 0, 0, 0
end
def sys_perf_event_open(a1, a2, a3, a4, a5) do
  make_raw_syscall 298, a1, a2, a3, a4, a5, 0, 0
end
def sys_personality(a1) do
  make_raw_syscall 135, a1, 0, 0, 0, 0, 0, 0
end
def sys_pipe(a1) do
  make_raw_syscall 22, a1, 0, 0, 0, 0, 0, 0
end
def sys_pipe2(a1, a2) do
  make_raw_syscall 293, a1, a2, 0, 0, 0, 0, 0
end
def sys_pivot_root(a1, a2) do
  make_raw_syscall 155, a1, a2, 0, 0, 0, 0, 0
end
def sys_pkey_alloc(a1, a2) do
  make_raw_syscall 330, a1, a2, 0, 0, 0, 0, 0
end
def sys_pkey_free(a1) do
  make_raw_syscall 331, a1, 0, 0, 0, 0, 0, 0
end
def sys_pkey_mprotect(a1, a2, a3, a4) do
  make_raw_syscall 329, a1, a2, a3, a4, 0, 0, 0
end
def sys_poll(a1, a2, a3) do
  make_raw_syscall 7, a1, a2, a3, 0, 0, 0, 0
end
def sys_ppoll(a1, a2, a3, a4, a5) do
  make_raw_syscall 271, a1, a2, a3, a4, a5, 0, 0
end
def sys_prctl(a1, a2, a3, a4, a5) do
  make_raw_syscall 157, a1, a2, a3, a4, a5, 0, 0
end
def sys_pread64(a1, a2, a3, a4) do
  make_raw_syscall 17, a1, a2, a3, a4, 0, 0, 0
end
def sys_preadv2(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 327, a1, a2, a3, a4, a5, a6, 0
end
def sys_preadv(a1, a2, a3, a4, a5) do
  make_raw_syscall 295, a1, a2, a3, a4, a5, 0, 0
end
def sys_prlimit64(a1, a2, a3, a4) do
  make_raw_syscall 302, a1, a2, a3, a4, 0, 0, 0
end
def sys_process_vm_readv(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 310, a1, a2, a3, a4, a5, a6, 0
end
def sys_process_vm_writev(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 311, a1, a2, a3, a4, a5, a6, 0
end
def sys_pselect6(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 270, a1, a2, a3, a4, a5, a6, 0
end
def sys_ptrace(a1, a2, a3, a4) do
  make_raw_syscall 101, a1, a2, a3, a4, 0, 0, 0
end
def sys_pwrite64(a1, a2, a3, a4) do
  make_raw_syscall 18, a1, a2, a3, a4, 0, 0, 0
end
def sys_pwritev2(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 328, a1, a2, a3, a4, a5, a6, 0
end
def sys_pwritev(a1, a2, a3, a4, a5) do
  make_raw_syscall 296, a1, a2, a3, a4, a5, 0, 0
end
def sys_quotactl(a1, a2, a3, a4) do
  make_raw_syscall 179, a1, a2, a3, a4, 0, 0, 0
end
def sys_read(a1, a2, a3) do
  make_raw_syscall 0, a1, a2, a3, 0, 0, 0, 0
end
def sys_readahead(a1, a2, a3) do
  make_raw_syscall 187, a1, a2, a3, 0, 0, 0, 0
end
def sys_readlink(a1, a2, a3) do
  make_raw_syscall 89, a1, a2, a3, 0, 0, 0, 0
end
def sys_readlinkat(a1, a2, a3, a4) do
  make_raw_syscall 267, a1, a2, a3, a4, 0, 0, 0
end
def sys_readv(a1, a2, a3) do
  make_raw_syscall 19, a1, a2, a3, 0, 0, 0, 0
end
def sys_reboot(a1, a2, a3, a4) do
  make_raw_syscall 169, a1, a2, a3, a4, 0, 0, 0
end
def sys_recvfrom(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 45, a1, a2, a3, a4, a5, a6, 0
end
def sys_recvmmsg(a1, a2, a3, a4, a5) do
  make_raw_syscall 299, a1, a2, a3, a4, a5, 0, 0
end
def sys_recvmsg(a1, a2, a3) do
  make_raw_syscall 47, a1, a2, a3, 0, 0, 0, 0
end
def sys_remap_file_pages(a1, a2, a3, a4, a5) do
  make_raw_syscall 216, a1, a2, a3, a4, a5, 0, 0
end
def sys_removexattr(a1, a2) do
  make_raw_syscall 197, a1, a2, 0, 0, 0, 0, 0
end
def sys_rename(a1, a2) do
  make_raw_syscall 82, a1, a2, 0, 0, 0, 0, 0
end
def sys_renameat2(a1, a2, a3, a4, a5) do
  make_raw_syscall 316, a1, a2, a3, a4, a5, 0, 0
end
def sys_renameat(a1, a2, a3, a4) do
  make_raw_syscall 264, a1, a2, a3, a4, 0, 0, 0
end
def sys_request_key(a1, a2, a3, a4) do
  make_raw_syscall 249, a1, a2, a3, a4, 0, 0, 0
end
def sys_restart_syscall() do
  make_raw_syscall 219, 0, 0, 0, 0, 0, 0, 0
end
def sys_rmdir(a1) do
  make_raw_syscall 84, a1, 0, 0, 0, 0, 0, 0
end
def sys_rt_sigaction(a1, a2, a3, a4) do
  make_raw_syscall 13, a1, a2, a3, a4, 0, 0, 0
end
def sys_rt_sigaction(a1, a2, a3, a4, a5) do
  make_raw_syscall 13, a1, a2, a3, a4, a5, 0, 0
end
def sys_rt_sigpending(a1, a2) do
  make_raw_syscall 127, a1, a2, 0, 0, 0, 0, 0
end
def sys_rt_sigprocmask(a1, a2, a3, a4) do
  make_raw_syscall 14, a1, a2, a3, a4, 0, 0, 0
end
def sys_rt_sigqueueinfo(a1, a2, a3) do
  make_raw_syscall 129, a1, a2, a3, 0, 0, 0, 0
end
def sys_rt_sigreturn() do
  make_raw_syscall 15, 0, 0, 0, 0, 0, 0, 0
end
def sys_rt_sigsuspend(a1, a2) do
  make_raw_syscall 130, a1, a2, 0, 0, 0, 0, 0
end
def sys_rt_sigtimedwait(a1, a2, a3, a4) do
  make_raw_syscall 128, a1, a2, a3, a4, 0, 0, 0
end
def sys_rt_tgsigqueueinfo(a1, a2, a3, a4) do
  make_raw_syscall 297, a1, a2, a3, a4, 0, 0, 0
end
def sys_sched_getaffinity(a1, a2, a3) do
  make_raw_syscall 204, a1, a2, a3, 0, 0, 0, 0
end
def sys_sched_getattr(a1, a2, a3, a4) do
  make_raw_syscall 315, a1, a2, a3, a4, 0, 0, 0
end
def sys_sched_getparam(a1, a2) do
  make_raw_syscall 143, a1, a2, 0, 0, 0, 0, 0
end
def sys_sched_get_priority_max(a1) do
  make_raw_syscall 146, a1, 0, 0, 0, 0, 0, 0
end
def sys_sched_get_priority_min(a1) do
  make_raw_syscall 147, a1, 0, 0, 0, 0, 0, 0
end
def sys_sched_getscheduler(a1) do
  make_raw_syscall 145, a1, 0, 0, 0, 0, 0, 0
end
def sys_sched_rr_get_interval(a1, a2) do
  make_raw_syscall 148, a1, a2, 0, 0, 0, 0, 0
end
def sys_sched_setaffinity(a1, a2, a3) do
  make_raw_syscall 203, a1, a2, a3, 0, 0, 0, 0
end
def sys_sched_setattr(a1, a2, a3) do
  make_raw_syscall 314, a1, a2, a3, 0, 0, 0, 0
end
def sys_sched_setparam(a1, a2) do
  make_raw_syscall 142, a1, a2, 0, 0, 0, 0, 0
end
def sys_sched_setscheduler(a1, a2, a3) do
  make_raw_syscall 144, a1, a2, a3, 0, 0, 0, 0
end
def sys_sched_yield() do
  make_raw_syscall 24, 0, 0, 0, 0, 0, 0, 0
end
def sys_seccomp(a1, a2, a3) do
  make_raw_syscall 317, a1, a2, a3, 0, 0, 0, 0
end
def sys_select(a1, a2, a3, a4, a5) do
  make_raw_syscall 23, a1, a2, a3, a4, a5, 0, 0
end
def sys_semctl(a1, a2, a3, a4) do
  make_raw_syscall 66, a1, a2, a3, a4, 0, 0, 0
end
def sys_semget(a1, a2, a3) do
  make_raw_syscall 64, a1, a2, a3, 0, 0, 0, 0
end
def sys_semop(a1, a2, a3) do
  make_raw_syscall 65, a1, a2, a3, 0, 0, 0, 0
end
def sys_semtimedop(a1, a2, a3, a4) do
  make_raw_syscall 220, a1, a2, a3, a4, 0, 0, 0
end
def sys_sendfile(a1, a2, a3, a4) do
  make_raw_syscall 40, a1, a2, a3, a4, 0, 0, 0
end
def sys_sendmmsg(a1, a2, a3, a4) do
  make_raw_syscall 307, a1, a2, a3, a4, 0, 0, 0
end
def sys_sendmsg(a1, a2, a3) do
  make_raw_syscall 46, a1, a2, a3, 0, 0, 0, 0
end
def sys_sendto(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 44, a1, a2, a3, a4, a5, a6, 0
end
def sys_setdomainname(a1, a2) do
  make_raw_syscall 171, a1, a2, 0, 0, 0, 0, 0
end
def sys_setfsgid(a1) do
  make_raw_syscall 123, a1, 0, 0, 0, 0, 0, 0
end
def sys_setfsuid(a1) do
  make_raw_syscall 122, a1, 0, 0, 0, 0, 0, 0
end
def sys_setgid(a1) do
  make_raw_syscall 106, a1, 0, 0, 0, 0, 0, 0
end
def sys_setgroups(a1, a2) do
  make_raw_syscall 116, a1, a2, 0, 0, 0, 0, 0
end
def sys_sethostname(a1, a2) do
  make_raw_syscall 170, a1, a2, 0, 0, 0, 0, 0
end
def sys_setitimer(a1, a2, a3) do
  make_raw_syscall 38, a1, a2, a3, 0, 0, 0, 0
end
def sys_set_mempolicy(a1, a2, a3) do
  make_raw_syscall 238, a1, a2, a3, 0, 0, 0, 0
end
def sys_setns(a1, a2) do
  make_raw_syscall 308, a1, a2, 0, 0, 0, 0, 0
end
def sys_setpgid(a1, a2) do
  make_raw_syscall 109, a1, a2, 0, 0, 0, 0, 0
end
def sys_setpriority(a1, a2, a3) do
  make_raw_syscall 141, a1, a2, a3, 0, 0, 0, 0
end
def sys_setregid(a1, a2) do
  make_raw_syscall 114, a1, a2, 0, 0, 0, 0, 0
end
def sys_setresgid(a1, a2, a3) do
  make_raw_syscall 119, a1, a2, a3, 0, 0, 0, 0
end
def sys_setresuid(a1, a2, a3) do
  make_raw_syscall 117, a1, a2, a3, 0, 0, 0, 0
end
def sys_setreuid(a1, a2) do
  make_raw_syscall 113, a1, a2, 0, 0, 0, 0, 0
end
def sys_setrlimit(a1, a2) do
  make_raw_syscall 160, a1, a2, 0, 0, 0, 0, 0
end
def sys_set_robust_list(a1, a2) do
  make_raw_syscall 273, a1, a2, 0, 0, 0, 0, 0
end
def sys_setsid() do
  make_raw_syscall 112, 0, 0, 0, 0, 0, 0, 0
end
def sys_setsockopt(a1, a2, a3, a4, a5) do
  make_raw_syscall 54, a1, a2, a3, a4, a5, 0, 0
end
def sys_set_thread_area(a1) do
  make_raw_syscall 205, a1, 0, 0, 0, 0, 0, 0
end
def sys_set_tid_address(a1) do
  make_raw_syscall 218, a1, 0, 0, 0, 0, 0, 0
end
def sys_settimeofday(a1, a2) do
  make_raw_syscall 164, a1, a2, 0, 0, 0, 0, 0
end
def sys_setuid(a1) do
  make_raw_syscall 105, a1, 0, 0, 0, 0, 0, 0
end
def sys_setxattr(a1, a2, a3, a4, a5) do
  make_raw_syscall 188, a1, a2, a3, a4, a5, 0, 0
end
def sys_shmat(a1, a2, a3) do
  make_raw_syscall 30, a1, a2, a3, 0, 0, 0, 0
end
def sys_shmctl(a1, a2, a3) do
  make_raw_syscall 31, a1, a2, a3, 0, 0, 0, 0
end
def sys_shmdt(a1) do
  make_raw_syscall 67, a1, 0, 0, 0, 0, 0, 0
end
def sys_shmget(a1, a2, a3) do
  make_raw_syscall 29, a1, a2, a3, 0, 0, 0, 0
end
def sys_shutdown(a1, a2) do
  make_raw_syscall 48, a1, a2, 0, 0, 0, 0, 0
end
def sys_sigaltstack(a1, a2) do
  make_raw_syscall 131, a1, a2, 0, 0, 0, 0, 0
end
def sys_signalfd(a1, a2, a3) do
  make_raw_syscall 282, a1, a2, a3, 0, 0, 0, 0
end
def sys_signalfd4(a1, a2, a3, a4) do
  make_raw_syscall 289, a1, a2, a3, a4, 0, 0, 0
end
def sys_socket(a1, a2, a3) do
  make_raw_syscall 41, a1, a2, a3, 0, 0, 0, 0
end
def sys_socketpair(a1, a2, a3, a4) do
  make_raw_syscall 53, a1, a2, a3, a4, 0, 0, 0
end
def sys_splice(a1, a2, a3, a4, a5, a6) do
  make_raw_syscall 275, a1, a2, a3, a4, a5, a6, 0
end
def sys_stat(a1, a2) do
  make_raw_syscall 4, a1, a2, 0, 0, 0, 0, 0
end
def sys_statfs(a1, a2) do
  make_raw_syscall 137, a1, a2, 0, 0, 0, 0, 0
end
def sys_statx(a1, a2, a3, a4, a5) do
  make_raw_syscall 332, a1, a2, a3, a4, a5, 0, 0
end
def sys_swapoff(a1) do
  make_raw_syscall 168, a1, 0, 0, 0, 0, 0, 0
end
def sys_swapon(a1, a2) do
  make_raw_syscall 167, a1, a2, 0, 0, 0, 0, 0
end
def sys_symlink(a1, a2) do
  make_raw_syscall 88, a1, a2, 0, 0, 0, 0, 0
end
def sys_symlinkat(a1, a2, a3) do
  make_raw_syscall 266, a1, a2, a3, 0, 0, 0, 0
end
def sys_sync() do
  make_raw_syscall 162, 0, 0, 0, 0, 0, 0, 0
end
def sys_sync_file_range(a1, a2, a3, a4) do
  make_raw_syscall 277, a1, a2, a3, a4, 0, 0, 0
end
def sys_syncfs(a1) do
  make_raw_syscall 306, a1, 0, 0, 0, 0, 0, 0
end
def sys_sysfs(a1, a2, a3) do
  make_raw_syscall 139, a1, a2, a3, 0, 0, 0, 0
end
def sys_sysinfo(a1) do
  make_raw_syscall 99, a1, 0, 0, 0, 0, 0, 0
end
def sys_syslog(a1, a2, a3) do
  make_raw_syscall 103, a1, a2, a3, 0, 0, 0, 0
end
def sys_tee(a1, a2, a3, a4) do
  make_raw_syscall 276, a1, a2, a3, a4, 0, 0, 0
end
def sys_tgkill(a1, a2, a3) do
  make_raw_syscall 234, a1, a2, a3, 0, 0, 0, 0
end
def sys_time(a1) do
  make_raw_syscall 201, a1, 0, 0, 0, 0, 0, 0
end
def sys_timer_create(a1, a2, a3) do
  make_raw_syscall 222, a1, a2, a3, 0, 0, 0, 0
end
def sys_timer_delete(a1) do
  make_raw_syscall 226, a1, 0, 0, 0, 0, 0, 0
end
def sys_timerfd_create(a1, a2) do
  make_raw_syscall 283, a1, a2, 0, 0, 0, 0, 0
end
def sys_timerfd_gettime(a1, a2) do
  make_raw_syscall 287, a1, a2, 0, 0, 0, 0, 0
end
def sys_timerfd_settime(a1, a2, a3, a4) do
  make_raw_syscall 286, a1, a2, a3, a4, 0, 0, 0
end
def sys_timer_getoverrun(a1) do
  make_raw_syscall 225, a1, 0, 0, 0, 0, 0, 0
end
def sys_timer_gettime(a1, a2) do
  make_raw_syscall 224, a1, a2, 0, 0, 0, 0, 0
end
def sys_timer_settime(a1, a2, a3, a4) do
  make_raw_syscall 223, a1, a2, a3, a4, 0, 0, 0
end
def sys_times(a1) do
  make_raw_syscall 100, a1, 0, 0, 0, 0, 0, 0
end
def sys_tkill(a1, a2) do
  make_raw_syscall 200, a1, a2, 0, 0, 0, 0, 0
end
def sys_truncate(a1, a2) do
  make_raw_syscall 76, a1, a2, 0, 0, 0, 0, 0
end
def sys_umask(a1) do
  make_raw_syscall 95, a1, 0, 0, 0, 0, 0, 0
end
def sys_uname(a1) do
  make_raw_syscall 63, a1, 0, 0, 0, 0, 0, 0
end
def sys_unlink(a1) do
  make_raw_syscall 87, a1, 0, 0, 0, 0, 0, 0
end
def sys_unlinkat(a1, a2, a3) do
  make_raw_syscall 263, a1, a2, a3, 0, 0, 0, 0
end
def sys_unshare(a1) do
  make_raw_syscall 272, a1, 0, 0, 0, 0, 0, 0
end
def sys_uselib(a1) do
  make_raw_syscall 134, a1, 0, 0, 0, 0, 0, 0
end
def sys_userfaultfd(a1) do
  make_raw_syscall 323, a1, 0, 0, 0, 0, 0, 0
end
def sys_ustat(a1, a2) do
  make_raw_syscall 136, a1, a2, 0, 0, 0, 0, 0
end
def sys_utime(a1, a2) do
  make_raw_syscall 132, a1, a2, 0, 0, 0, 0, 0
end
def sys_utimensat(a1, a2, a3, a4) do
  make_raw_syscall 280, a1, a2, a3, a4, 0, 0, 0
end
def sys_utimes(a1, a2) do
  make_raw_syscall 235, a1, a2, 0, 0, 0, 0, 0
end
def sys_vfork() do
  make_raw_syscall 58, 0, 0, 0, 0, 0, 0, 0
end
def sys_vhangup() do
  make_raw_syscall 153, 0, 0, 0, 0, 0, 0, 0
end
def sys_vmsplice(a1, a2, a3, a4) do
  make_raw_syscall 278, a1, a2, a3, a4, 0, 0, 0
end
def sys_wait4(a1, a2, a3, a4) do
  make_raw_syscall 61, a1, a2, a3, a4, 0, 0, 0
end
def sys_waitid(a1, a2, a3, a4, a5) do
  make_raw_syscall 247, a1, a2, a3, a4, a5, 0, 0
end
def sys_write(a1, a2, a3) do
  make_raw_syscall 1, a1, a2, a3, 0, 0, 0, 0
end
def sys_writev(a1, a2, a3) do
  make_raw_syscall 20, a1, a2, a3, 0, 0, 0, 0
end
# End generated code
end
