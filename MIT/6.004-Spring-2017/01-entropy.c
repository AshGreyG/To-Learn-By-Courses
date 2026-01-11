#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

#define ASCII 256

char* huffman_codes_map[ASCII] = { 0 };

typedef struct HuffmanNode {
    char symbol;
    double frequency;
    struct HuffmanNode* left;
    struct HuffmanNode* right;
} HuffmanNode;

typedef struct {
    int size;
    int capacity;
    HuffmanNode** data;
    // data[i] is a pointer pointing to a HuffmanNode, this is pointers arithmetic
    // data[0] points to the root of this min heap (or priority queue)
} MinHeap;

MinHeap* create_heap(int capacity) {
    MinHeap* heap = (MinHeap*)malloc(sizeof(MinHeap));
    // sizeof(MinHeap) is a fixed constant and the operations on HuffmanNode
    // don't affect the memory of heap
    heap->size = 0;
    heap->capacity = capacity;
    heap->data = (HuffmanNode**)malloc(capacity * sizeof(HuffmanNode*));
    return heap;
}

/**
 * swap function is used to swap two huffman nodes in heapify function
 */
void swap(HuffmanNode** a, HuffmanNode** b) {
    HuffmanNode* temp = *a;
    *a = *b;
    *b = temp;
}

/**
 * heapify function operates from position i to bottom unless the parent node has
 * been less than its two children nodes.
 *
 *             [i]
 *            /   \
 *      [2i+1]     [2i+2]
 *
 * smallest ← index of min([i].f, [2i+1].f, [2i+2].f)
 * swap smallest and i, it only ensure every parent node is less than its children 
 * nodes
 */
void heapify(MinHeap* heap, int i) {
    int smallest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;
    if (l < heap->size && heap->data[l]->frequency < heap->data[smallest]->frequency)
        smallest = l;
    if (r < heap->size && heap->data[r]->frequency < heap->data[smallest]->frequency)
        smallest = r;
    // First check which one is the smallest
    if (smallest != i) {
        swap(&heap->data[i], &heap->data[smallest]);
        heapify(heap, smallest);
    }
}

/**
 * heap_insert functions is also a kind of heapify but it's from bottom up!
 */
void heap_insert(MinHeap* heap, HuffmanNode* node) {
    int i = heap->size++;
    heap->data[i] = node;

    while (i && heap->data[(i - 1) / 2]->frequency > heap->data[i]->frequency) {
        // No matter i is left leaf or right leaf, [(i - 1) / 2] is always [i]'s
        // parent node.
        swap(&heap->data[i], &heap->data[(i - 1) / 2]);
        i = (i - 1) / 2;
    }
}

/**
 * heap_extract_min function pops the root of min heap, and change heap size,
 * change pointing position of heap[0] to the last element and heapify.
 */
HuffmanNode* heap_extract_min(MinHeap* heap) {
    HuffmanNode* root = heap->data[0];
    heap->data[0] = heap->data[--heap->size];
    heapify(heap, 0);
    return root;
}

HuffmanNode* create_huffman_node(char symbol, double frequency) {
    HuffmanNode* node = (HuffmanNode*)malloc(sizeof(HuffmanNode));
    node->symbol = symbol;
    node->frequency = frequency;
    node->left = node->right = NULL;
    return node;
}

/**
 * Every node of min heap is a sub-binary-tree consisting of HuffmanNode. When
 * inserting back the reduction HuffmanNode (which is `w` in the following code),
 * it also compares with remaining nodes.
 *
 * => [A, B, C, D]
 * => [A, B, (C,D)]
 * => [B, ((C,D),A)]
 * => [(((C,D),A),B)]
 *
 * so when the size of heap comes to 1, there is only a Huffman tree in this
 * heap!
 */
HuffmanNode* build_huffman(const char* symbols, double frequencies[], int n) {
    MinHeap* heap = create_heap(n);

    for (int i = 0; i < n; ++i) {
        heap_insert(heap, create_huffman_node(symbols[i], frequencies[i]));
    }

    while (heap->size > 1) {
        HuffmanNode* u = heap_extract_min(heap);
        HuffmanNode* v = heap_extract_min(heap);

        HuffmanNode* w = create_huffman_node('\0', u->frequency + v->frequency);
        w->left = u;
        w->right = v;

        heap_insert(heap, w);
    }

    return heap_extract_min(heap);
}

/**
 * huffman_code function will store the map between symbols and coding result.
 */
void huffman_code(HuffmanNode* root, char path[], int depth, char* table[]) {
    if (!root) return;

    if (!root->left && !root->right) {
        // When there is no children nodes
        path[depth] = '\0';
        table[(unsigned char)root->symbol] = strdup(path);
        // Notice path is a shared cache for every coding result of symbols. If
        // we store the pointer then every coding result is same !
        return;
    }

    path[depth] = '0';
    huffman_code(root->left, path, depth + 1, table);

    path[depth] = '1';
    huffman_code(root->right, path, depth + 1, table);
}

void print_huffman_result(const char* input) {
    int length = strlen(input);
    if (length == 0) return;

    int count = 0;
    int appear_times[ASCII] = { 0 };
    double appear_frequencies[ASCII] = { 0.0 };
    char kind[ASCII];
    char path[ASCII];

    for (int i = 0; i < length; ++i) {
        appear_times[(unsigned char)input[i]]++;
        if (appear_times[(unsigned char)input[i]] == 1) {
            kind[count] = input[i];
            count++;
        }
    }

    for (int i = 0; i < ASCII; ++i) {
        appear_frequencies[i] = (double)appear_times[i] / length;
    }

    HuffmanNode* root = build_huffman(kind, appear_frequencies, count);
    huffman_code(root, path, 0, huffman_codes_map);

    double average_length = 0.0;
    for (int i = 0; i < count; ++i) {
        average_length += appear_frequencies[kind[i]] * strlen(huffman_codes_map[kind[i]]);
    }
    printf("Huffman Average Length:     %.4f bits\n", average_length);

    int bits = 0;
    for (int i = 0; i < length; ++i) {
        bits += strlen(huffman_codes_map[input[i]]);
    }
    printf("Huffman Encoding Bits:      %.4f bits\n", (double)bits);

    printf("Huffman Encoding Result:    ");
    for (int i = 0; i < length; ++i) {
        printf("%s", huffman_codes_map[input[i]]);
    }
    printf("\n");

    printf("Huffman Map: \n");
    for (int i = 0; i < count; ++i) {
        printf("  %c → %s\n", kind[i], huffman_codes_map[kind[i]]);
    }
}

/* calculate the information entropy of a string using Shannon formula. It doesn't
 * calculate its frequency in ASCII characters set though.
 */
double information_entropy(const char* str) {
    int length = strlen(str);
    if (length == 0) {
        return 0.0;
    }
    int appear_times[ASCII] = { 0 };
    double appear_frequencies[ASCII] = { 0.0 };
    double entropy = 0.0;

    for (int i = 0; i < length; ++i) {
        appear_times[(unsigned char)str[i]]++;
    }

    for (int i = 0; i < ASCII; ++i) {
        appear_frequencies[i] = (double)appear_times[i] / length;
        if (appear_times[i] != 0) {
            entropy -= appear_frequencies[i] * log2(appear_frequencies[i]);

            // At first I use ℍ(x) = ∑ [f(xᵢ) * log₂(1 / f(xᵢ))] but here the
            // precision of floating number will be lost two times! One for
            // reciprocal and one for logarithm.
        }
    }

    return entropy;
}

/* calculate the total information of a string.
 */
double information_value(const char* str) {
    int length = strlen(str);
    if (length == 0) {
        return 0.0;
    }
    int appear_times[ASCII] = { 0 };
    double appear_frequencies[ASCII] = { 0.0 };
    double information = 0.0;

    for (int i = 0; i < length; ++i) {
        appear_times[(unsigned char)str[i]]++;
    }

    for (int i = 0; i < ASCII; ++i) {
        appear_frequencies[i] = (double)appear_times[i] / length;
        if (appear_times[i] != 0) {
            information -= appear_times[i] * log2(appear_frequencies[i]);
        }
    }

    return information;
}

int main() {
    char input[3000];
    printf("Enter the input string: ");
    fgets(input, sizeof(input), stdin);
    input[strcspn(input, "\n")] = '\0';
    printf("\n");

    printf("Input String:               %s\n", input);
    printf("Information Entropy:        %.4f bits\n", information_entropy(input));
    printf("Information Value:          %.4f bits\n", information_value(input));
    print_huffman_result(input);
    return 0;
}