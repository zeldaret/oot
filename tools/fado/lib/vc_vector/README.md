# vc_vector
Fast simple C vector implementation

[![Build Status: make && make test](https://travis-ci.org/skogorev/vc_vector.svg)](https://travis-ci.org/skogorev/vc_vector)

## Usage

### Basic
```c
#include "vc_vector.h"

int main() {
  // Creates an empty vector with the default reserved size
  // and without custom deleter. Vector will contain 'int'
  vc_vector* v = vc_vector_create(0, sizeof(int), NULL);
  if (!v) {
    return 1;
  }

  const int count = 10;
  for (int i = 0; i < count; ++i) {
    // The function takes a pointer to the elements,
    // but the vector will make a copy of the element
    vc_vector_push_back(v, &i);
  }

  // Print each vector element
  for (void* i = vc_vector_begin(v);
             i != vc_vector_end(v);
             i = vc_vector_next(v, i)) {
    printf("%u; ", *(int*)i);
  }

  vc_vector_release(v);
  return 0;
}
```

### Advanced
```c
#include "vc_vector.h"

struct Item {
  int val1;
  int val2;
};

int main() {
  const int n = 10;

  // Creates an empty vector with the reserved size for the 'n' elements
  // and with custom deleter 'free'. Vector will contain pointers to 'Item'
  vc_vector* v = vc_vector_create(n, sizeof(struct Node*), free);
  if (!v) {
    return 1;
  }

  struct Item* item = NULL;
  const int count = n + 1;
  // Vector automatically increases the reserved size when 'n + 1' will be added
  for (int i = 0; i < count; ++i) {
    // Creating item
    item = malloc(sizeof(struct Item));
    if (!item) {
      continue;
    }

    item->val1 = i;
    item->val2 = 0;

    // Pushing to the end of the vector
    if (!vc_vector_push_back(v, item)) {
      // If the item was not pushed, you have to delete it
      free(item);
    }
  }

  // ...

  // Calls custom deleter 'free' for all items
  // and releases the vector
  vc_vector_release(v);
  return 0;
}
```

## Projects that use vc_vector
[kraken.io](https://kraken.io/)

## License

[MIT License](LICENSE.md)
