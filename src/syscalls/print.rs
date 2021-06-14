// pub fn print(source: &u8, length: u64){
pub fn print(){
    unsafe{
        asm!(
            "mov    ah, 0eh",
            "mov    al, 'H'",
            "int    10h",
        );
    }
}