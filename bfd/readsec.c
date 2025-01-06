#include <bfd.h>
#include <stdio.h>

unsigned int number_of_sections(bfd *abfd){
    return bfd_count_sections(abfd);
}

int main(void){
    printf("hello bfd!\n");
    return 0;
}