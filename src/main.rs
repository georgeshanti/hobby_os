#![no_std]
#![no_main]

use core::panic::PanicInfo;

#[panic_handler]
fn _panic_handler(_info: &PanicInfo)->!{ loop{} }

#[no_mangle]
pub extern "C" fn _start() -> ! {
    loop {}
}