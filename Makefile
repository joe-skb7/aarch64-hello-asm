CROSS_COMPILE = aarch64-linux-gnu-
SRC = main.S
ELF = hello
BIN = hello.bin

all:
	@$(CROSS_COMPILE)as $(SRC)
	@mv a.out $(ELF)
	@$(CROSS_COMPILE)objcopy -O binary --only-section=.text $(ELF) $(BIN)

clean:
	@-rm -f $(ELF) $(BIN)
