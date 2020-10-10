#ifndef UAPI_MM
#define UAPI_MM

#include <stdint.h>
// Initialization function
void mm_init();

// Registration function

void mm_instantiate_new_page_family(char *struct_name,uint32_t struct_size);

#define MM_REG_STRUCT(struct_name) \
	(mm_instantiate_new_page_family(#struct_name,sizeof(struct_name)))

#endif