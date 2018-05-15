ERL_INCLUDE_PATH=$(shell erl -eval 'io:format("~s~n", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)

priv/syscall.so: c_src/syscall.c
	mkdir -p $(PRIV)
	echo $(PRIV)
	gcc -shared \
		-fPIC \
		-I$(ERL_INCLUDE_PATH) \
		-o $(PRIV)/syscall.so c_src/syscall.c

clean:
	rm -rf $(PRIV)

debug_erl:
	echo $(ERL_INCLUDE_PATH)

.PHONY: debug_erl clean
