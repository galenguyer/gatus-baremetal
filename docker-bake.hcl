group "default" {
    targets = ["binary"]
}

target "binary" {
    dockerfile = "Dockerfile.bin"
    target = "binary"
    output = ["build"]
}
