#include <stdio.h>
#include <stdlib.h>

#define TABLE_SIZE 10

/* Função hash utilizando o metodo do resto da divisão */
int hashFunction(int key) {
    return key % TABLE_SIZE;
}

/* Função para inserir um elemento na tabela hash */
void insert(int table[], int key) {
    int index = hashFunction(key);
    table[index] = key;
}

/* Função para imprimir a tabela hash */
void printHashTable(int table[]) {
    for (int i = 0; i <TABLE_SIZE; i++) {
        if (table[i] != -1) {
        printf("Index %d: %d\n", i, table[i]);
    } else {
        printf("Index %d: NULL\n", i);
        }
    }
}

int main() {
    int hashTable[TABLE_SIZE]; // Cria a tabela hash
    for (int i = 0; i < TABLE_SIZE; i++) { // Inicializa todos os indices da tabela com -1
        hashTable[i] = -1;
    }
    insert(hashTable, 5); // Insere a chave 5 na tabela
    insert(hashTable, 15); // Insere a chave 15 na tabela
    insert(hashTable, 25); // Insere a chave 25 na tabela
    printHashTable(hashTable);  // Imprime a tabela hash

    return 0;
}