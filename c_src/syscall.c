#include "erl_nif.h"
#include <unistd.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>

#define MAXBUFLEN 1024

#ifdef DEBUG
# define D ;
# ifdef DEBUG_VERBOSE
#  define DV ;
# else
#  define DV if (0)
# endif
#else
# define D if (0)
# define DV if (0)
#endif

static ERL_NIF_TERM
make_raw_syscall(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]) {
	uint64_t no, a0, a1, a2, a3, a4, a5, a6;

	enif_get_int64(env, argv[0], &no);
	enif_get_int64(env, argv[1], &a0);
	enif_get_int64(env, argv[2], &a1);
	enif_get_int64(env, argv[3], &a2);
	enif_get_int64(env, argv[4], &a3);
	enif_get_int64(env, argv[5], &a4);
	enif_get_int64(env, argv[6], &a5);
	enif_get_int64(env, argv[7], &a6);

    DV fprintf(stderr, "no %lld a0 %lld a1 %p a2 %lld\n",
            no, a0, a1, a2);

	// Usual C unreadable code because this way is more true
	int result = syscall(no, a0, a1, a2, a3, a4, a5, a6);

	return enif_make_int(env, result);
}

static ERL_NIF_TERM
stringify_term(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]) {
    char *buffer;
    int length, rc;

    enif_get_int(env, argv[0], &length);

    /* allocate the buffer for the string */
    D fprintf(stderr, "Length of file: %d\n", length);

    buffer = enif_alloc(length + 1);

    D fprintf(stderr, "Buffer of file: %p\n", buffer);
    if (buffer == NULL)
        return enif_make_int(env, -ENOMEM);

    rc = enif_get_string(env, argv[1], buffer, length + 1, ERL_NIF_LATIN1);
    D fprintf(stderr, "Return from string make: %d\n", rc);
    return enif_make_int64(env, (uint64_t) buffer);
}

static ERL_NIF_TERM
get_errno(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]) {
    return enif_make_int(env, (int) errno);
}

// Let's define the array of ErlNifFunc beforehand:
static ErlNifFunc nif_funcs[] = {
  // {erl_function_name, erl_function_arity, c_function}
  {"make_raw_syscall", 8, make_raw_syscall},
  {"stringify_term", 2, stringify_term},
  {"get_errno", 0, get_errno}
};

ERL_NIF_INIT(Elixir.Syscall, nif_funcs, NULL, NULL, NULL, NULL)

