ERL_INCLUDE_PATH=$(shell erl -eval 'io:format("~s~n", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)

syscall.so: syscall.c
	gcc -shared \
		-fPIC \
		-I$(ERL_INCLUDE_PATH) \
		-o $@ $<
	cp $@ ../lib/

debug_erl:
	echo $(ERL_INCLUDE_PATH)

.PHONY: debug_erl
