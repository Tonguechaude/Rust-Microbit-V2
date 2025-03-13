build:
	cargo build --features v2 --target thumbv7em-none-eabihf
.PHONY: build

flash:
	cargo embed --features v2 --target thumbv7em-none-eabihf
.PHONY: flash

analyze:
	cargo readobj --features v2 --target thumbv7em-none-eabihf --bin led-roulette -- --file-header
.PHONY: analyze

analyze-more:
	cargo readobj --features v2 --target thumbv7em-none-eabihf --bin led-roulett -- --sections
.PHONY: analyze-more

analyze-elf32:
	cargo objdump --features v2 --target thumbv7em-none-eabihf --bin led-roulette -- -h
.PHONY: analyze-elf32

debug:
	gdb-multiarch ./target/thumbv7em-none-eabihf/debug/microbit
.PHONY: debug

clean:
	cargo clean
.PHONY: clean
