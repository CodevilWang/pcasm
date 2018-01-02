nasm=/Users/bytedance/Downloads/software/homebrew/Cellar/nasm/2.13.02/bin/nasm
test:
	$(nasm) -f macho64 helloworld.asm
first:
	$(nasm) -f macho32 asm_io.asm 
	$(nasm) -f macho32 first.asm 
	gcc -m32 -arch i386 -c driver.c
	gcc -m32 -arch i386 -o first asm_io.o first.o driver.o

clean:
	@rm driver.o
	@rm first.o
	@rm asm_io.o
	@rm first
	@rm helloworld.o
	@rm helloworld

