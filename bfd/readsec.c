#include <bfd.h>
#include <stdio.h>
#include <stdlib.h>

unsigned int number_of_sections(bfd *abfd){
    return bfd_count_sections(abfd);
}

void read_sections(const char *filename){
    bfd         *abfd;
    struct bfd_section *section;
    bfd_size_type       size, size_read;
    void *data;

    // Initialize BFD
    bfd_init();

    abfd = bfd_openr(filename, NULL);
    if(!abfd){
        fprintf(stderr, "Error opening file: %s\n", 
            bfd_errmsg(bfd_get_error()));
        return 1;
    }

    // check if the file is an object file
    if(!bfd_check_format(abfd, bfd_object)){
        fprintf(stderr, "Not an object file: %s\n", 
            bfd_errmsg(bfd_get_error()));
        bfd_close(abfd);
        return 1;
    }

    // Iterate through the sections
    for(section = abfd->sections; section; section = section->next){
        printf("Section name: %s\n", section->name);

        size = section->size;
        printf("Section size: %lu\n", size);
        // Allocate memory for the section data
        data = malloc(size);
        if(!data){
            perror("malloc");
            bfd_close(abfd);
            return 1;
        }

        // read the section data
        size_read = bfd_get_section_contents(abfd, section, data,0,size);
        printf("size_read: %lu\n", size_read);

        if(size_read < 1){
            fprintf(stderr, "Failed to read section: %s\n",
                section->name);
            free(data);
            bfd_close(abfd);
            return 1;
        }

        printf("Section size: %lu bytes\n", (unsigned long)size);

        free(data);
    }


    // Close the BFD object
    bfd_close(abfd);
}

int main(int argc, char*argv[]){
    printf("hello bfd!\n");

    if(argc != 2){
        fprintf(stderr, "Usage: %s <object file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    read_sections(argv[1]);

    return EXIT_SUCCESS;
}
