#include <stdio.h>
#include <stdlib.h>

#define TABLE_SIZE 10

// Função hash utilizando o método do resto da divisão
int hashFunction(int key) {
    return key % TABLE_SIZE;
}

// Função para inserir um elemento na tabela hash
void insert(int table[], int key) {
    int index = hashFunction(key);
    table[index] = key;
}

// Função para buscar um elemento na tabela hash
int search(int table[], int key) {
    int index = hashFunction(key);
    if (table[index] == key) {
        return index;
    }
    return -1;
}

int main() {
    int hashTable[TABLE_SIZE];
    for (int i = 0; i < TABLE_SIZE; i++) {
        hashTable[i] = -1;
    }

    insert(hashTable, 5);
    insert(hashTable, 15);
    insert(hashTable, 25);

    int key = 15;
    int result = search(hashTable, key);
    if (result != -1) {
        printf("Elemento %d encontrado no índice %d.\n", key, result);
    } else {
        printf("Elemento %d não encontrado.\n", key);
    }

    return 0;
}