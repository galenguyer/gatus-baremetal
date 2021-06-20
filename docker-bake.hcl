variable "VERSION" {
    default = "1.0.0"
}

group "default" {
    targets = ["binary"]
}

target "binary" {
    dockerfile = "Dockerfile.bin"
    target = "binary"
    output = ["build"]
}

target "deb" {
    dockerfile = "Dockerfile.deb"
    target = "final"
    output = ["build"]
    args = {
        VERSION = VERSION
    }
}
