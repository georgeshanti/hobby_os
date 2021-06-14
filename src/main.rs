#![no_std]
#![no_main]

extern crate hobby_os;
use core::panic::PanicInfo;

#[panic_handler]
fn _panic_handler(_info: &PanicInfo)->!{ loop{} }

#[no_mangle]
pub extern "C" fn _start() -> ! {
    let s: &[u8] = b"Hello world!";
    // hobby_os::syscalls::print::print(&s[0], 2);
    hobby_os::syscalls::print::print();
    loop {}
}