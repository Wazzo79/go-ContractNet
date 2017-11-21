# This Makefile is meant to be used by people that do not usually work
# with Go source code. If you know what GOPATH is then you probably
# don't need to bother with make.

.PHONY: gContractNet android ios gContractNet-cross evm all test clean
.PHONY: gContractNet-linux gContractNet-linux-386 gContractNet-linux-amd64 gContractNet-linux-mips64 gContractNet-linux-mips64le
.PHONY: gContractNet-linux-arm gContractNet-linux-arm-5 gContractNet-linux-arm-6 gContractNet-linux-arm-7 gContractNet-linux-arm64
.PHONY: gContractNet-darwin gContractNet-darwin-386 gContractNet-darwin-amd64
.PHONY: gContractNet-windows gContractNet-windows-386 gContractNet-windows-amd64

GOBIN = build/bin
GO ?= latest

gContractNet:
	build/env.sh go run build/ci.go install ./cmd/gContractNet
	@echo "Done building."
	@echo "Run \"$(GOBIN)/gContractNet\" to launch gContractNet."

evm:
	build/env.sh go run build/ci.go install ./cmd/evm
	@echo "Done building."
	@echo "Run \"$(GOBIN)/evm\" to start the evm."

all:
	build/env.sh go run build/ci.go install

android:
	build/env.sh go run build/ci.go aar --local
	@echo "Done building."
	@echo "Import \"$(GOBIN)/gContractNet.aar\" to use the library."

ios:
	build/env.sh go run build/ci.go xcode --local
	@echo "Done building."
	@echo "Import \"$(GOBIN)/GContractNet.framework\" to use the library."

test: all
	build/env.sh go run build/ci.go test

clean:
	rm -fr build/_workspace/pkg/ $(GOBIN)/*

# Cross Compilation Targets (xgo)

gContractNet-cross: gContractNet-linux gContractNet-darwin gContractNet-windows gContractNet-android gContractNet-ios
	@echo "Full cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-*

gContractNet-linux: gContractNet-linux-386 gContractNet-linux-amd64 gContractNet-linux-arm gContractNet-linux-mips64 gContractNet-linux-mips64le
	@echo "Linux cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-*

gContractNet-linux-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/386 -v ./cmd/gContractNet
	@echo "Linux 386 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep 386

gContractNet-linux-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/amd64 -v ./cmd/gContractNet
	@echo "Linux amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep amd64

gContractNet-linux-arm: gContractNet-linux-arm-5 gContractNet-linux-arm-6 gContractNet-linux-arm-7 gContractNet-linux-arm64
	@echo "Linux ARM cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep arm

gContractNet-linux-arm-5:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/arm-5 -v ./cmd/gContractNet
	@echo "Linux ARMv5 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep arm-5

gContractNet-linux-arm-6:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/arm-6 -v ./cmd/gContractNet
	@echo "Linux ARMv6 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep arm-6

gContractNet-linux-arm-7:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/arm-7 -v ./cmd/gContractNet
	@echo "Linux ARMv7 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep arm-7

gContractNet-linux-arm64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/arm64 -v ./cmd/gContractNet
	@echo "Linux ARM64 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep arm64

gContractNet-linux-mips64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/mips64 -v ./cmd/gContractNet
	@echo "Linux MIPS64 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep mips64

gContractNet-linux-mips64le:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/mips64le -v ./cmd/gContractNet
	@echo "Linux MIPS64le cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-linux-* | grep mips64le

gContractNet-darwin: gContractNet-darwin-386 gContractNet-darwin-amd64
	@echo "Darwin cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-darwin-*

gContractNet-darwin-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=darwin/386 -v ./cmd/gContractNet
	@echo "Darwin 386 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-darwin-* | grep 386

gContractNet-darwin-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=darwin/amd64 -v ./cmd/gContractNet
	@echo "Darwin amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-darwin-* | grep amd64

gContractNet-windows: gContractNet-windows-386 gContractNet-windows-amd64
	@echo "Windows cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-windows-*

gContractNet-windows-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=windows/386 -v ./cmd/gContractNet
	@echo "Windows 386 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-windows-* | grep 386

gContractNet-windows-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=windows/amd64 -v ./cmd/gContractNet
	@echo "Windows amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gContractNet-windows-* | grep amd64
