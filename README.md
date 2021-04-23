# A small Hobby OS
This is my attempt at writing an Operating System from scratch, which is actually an attempt at trying to learn Rust. Please don't use this as a guide on how to make one yourself. Instead maybe use this as a guide on what not to do.

I don't think I'll be working on this regularly much like my other projects. But I do hope to come back to this once in a while when I get bored of whatever else it is I'm doing.

I will try and keep the code as well documented as possible through good commenting and all that jazz. I'll also try and keep the Readme updated. If you have suggestions for style guides I should for comments and documentation then feel free to raise an Issue.

### Build
For those of you who are crazy enough to try and build this. Don't worry. It's really easy:

Build tools you'll need:
* NASM
* Make

To build the binary:
```
make os.bin
```


### How to run
I'm using VirtualBox to run this in a VM. to build the disk image:
```
make os-vmdk
```
This will create a virtual disk out of the binary we built earlier with a very specific VBox UUID. Now this is a UUID that's already been mapped to the disk that I'm creating and is already present int he VBox drive managing thing. So use the following command to create a VBox disk image with a specific UUID:
```
VBoxManage convertfromraw --format VMDK ./bootloader/target/os.bin os.vmdk
```
Once you've created the disk image. Load it into VBox which will assign it a unique UUID which you can replace in the makefile to then just always build it with the make command.


### FYI
* Yes, I will structure the project better.
* Yes, I will specify what each of the files are in a broad sense later.
* No, I will most likely not come back to this ever again.
* Yes, I do feel bad about it.