#ifndef VCVECTOR_H
#define VCVECTOR_H

#include <stdbool.h>
#include <stdio.h>

typedef struct vc_vector vc_vector;
typedef void (vc_vector_deleter)(void *);

// ----------------------------------------------------------------------------
// Control
// ----------------------------------------------------------------------------

// Constructs an empty vector with an reserver size for count_elements.
vc_vector* vc_vector_create(size_t count_elements, size_t size_of_element, vc_vector_deleter* deleter);

// Constructs a copy of an existing vector.
vc_vector* vc_vector_create_copy(const vc_vector* vector);

// Releases the vector.
void vc_vector_release(vc_vector* vector);

// Compares vector content
bool vc_vector_is_equals(vc_vector* vector1, vc_vector* vector2);

// Returns constant value of the vector growth factor.
float vc_vector_get_growth_factor();

// Returns constant value of the vector default count of elements.
size_t vc_vector_get_default_count_of_elements();

// Returns constant value of the vector struct size.
size_t vc_vector_struct_size();

// ----------------------------------------------------------------------------
// Element access
// ----------------------------------------------------------------------------

// Returns the item at index position in the vector.
void* vc_vector_at(vc_vector* vector, size_t index);

// Returns the first item in the vector.
void* vc_vector_front(vc_vector* vector);

// Returns the last item in the vector.
void* vc_vector_back(vc_vector* vector);

// Returns a pointer to the data stored in the vector. The pointer can be used to access and modify the items in the vector.
void* vc_vector_data(vc_vector* vector);

// ----------------------------------------------------------------------------
// Iterators
// ----------------------------------------------------------------------------

// Returns a pointer to the first item in the vector.
void* vc_vector_begin(vc_vector* vector);

// Returns a pointer to the imaginary item after the last item in the vector.
void* vc_vector_end(vc_vector* vector);

// Returns a pointer to the next element of vector after 'i'.
void* vc_vector_next(vc_vector* vector, void* i);

// ----------------------------------------------------------------------------
// Capacity
// ----------------------------------------------------------------------------

// Returns true if the vector is empty; otherwise returns false.
bool vc_vector_empty(vc_vector* vector);

// Returns the number of elements in the vector.
size_t vc_vector_count(const vc_vector* vector);

// Returns the size (in bytes) of occurrences of value in the vector.
size_t vc_vector_size(const vc_vector* vector);

// Returns the maximum number of elements that the vector can hold.
size_t vc_vector_max_count(const vc_vector* vector);

// Returns the maximum size (in bytes) that the vector can hold.
size_t vc_vector_max_size(const vc_vector* vector);

// Resizes the container so that it contains n elements.
bool vc_vector_reserve_count(vc_vector* vector, size_t new_count);

// Resizes the container so that it contains new_size / element_size elements.
bool vc_vector_reserve_size(vc_vector* vector, size_t new_size);

// ----------------------------------------------------------------------------
// Modifiers
// ----------------------------------------------------------------------------

// Removes all elements from the vector (without reallocation).
void vc_vector_clear(vc_vector* vector);

// The container is extended by inserting a new element at position.
bool vc_vector_insert(vc_vector* vector, size_t index, const void* value);

// Removes from the vector a single element by 'index'
bool vc_vector_erase(vc_vector* vector, size_t index);

// Removes from the vector a range of elements '[first_index, last_index)'.
bool vc_vector_erase_range(vc_vector* vector, size_t first_index, size_t last_index);

// Inserts multiple values at the end of the vector.
bool vc_vector_append(vc_vector* vector, const void* values, size_t count);

// Inserts value at the end of the vector.
bool vc_vector_push_back(vc_vector* vector, const void* value);

// Removes the last item in the vector.
bool vc_vector_pop_back(vc_vector* vector);

// Replace value by index in the vector.
bool vc_vector_replace(vc_vector* vector, size_t index, const void* value);

// Replace multiple values by index in the vector.
bool vc_vector_replace_multiple(vc_vector* vector, size_t index, const void* values, size_t count);

#endif // VCVECTOR_H
