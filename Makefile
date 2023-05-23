binname="learn-tauri"


help:
	@echo 'there is no help.. yet'

run: release size
	@./src-tauri/target/release/$(binname)

edit:
	@nvim ./src-tauri/src/main.rs

savetogit:
	@git add . && git commit -m 'saving' && git push

dev:
	@cargo tauri dev

test:
	@cd ./src-tauri/ && cargo test

size:
	@ls -lAh ./src-tauri/target/release/$(binname)

clean:
	@cargo clean
