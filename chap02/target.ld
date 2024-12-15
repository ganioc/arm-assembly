/* 
    ldscript for i.mx6ULL 

    0x80000000 ~ 0x80001FFF, reserved for ROM code, 8KB

    0x60000000 ~ 0x6FFFFFFF, 256MB, QSPI1 Memory,

*/



MEMORY
{
    /* on chip memory , 128KB */
    m_ocram      (RWX)  : ORIGIN=0x00900000, LENGTH=0x00020000
    /* in DRAM */
    m_interrupts (RX)   : ORIGIN=0x80002000, LENGTH=0x00000040
    /* for code,   from 0x80000000, 400000, 4MB, Too small ? */
    m_text       (RX)   : ORIGIN=0x80002040, LENGTH=0x003FDFC0
    /* for data, 4MB */
    m_data       (RW)   : ORIGIN=0x80400000, LENGTH=0x00400000

}

SECTIONS{
    .text : {
        . = ALIGN(4);
        *(.text)        /* .text sections (code) */
        *(.text*)       /* .text* sections (code) */
        *(.rodata)      /* .rodata sections (constants, strings, etc.) */
        *(.rodata*)     /* .rodata* sections (constants, strings, etc.) */
    } > m_ocram

    .init: {

    } > m_ocram

    .fini: {

    } > m_ocram

    .rodata : {

    } > m_ocram

    .data : {

    } > m_ocram

    .bss (NOLOAD) :{

    } > m_ocram

    .heap (NOLOAD) : {

    }> m_ocram

    .stack (NOLOAD):{

    } > m_ocram

    _end = .;
}

