#include <stdio.h>
#include <stdlib.h>

#define TABLE_SIZE 10

// Estrutura de uma lista encadeada para colisões
struct Node {
    int data;
    struct Node* next;
};

// Função hash utilizando o método do resto da divisão
int hashFunction(int key) {
    return key % TABLE_SIZE;
}

// Função para inserir um elemento na tabela hash com listas encadeadas
void insertWithChaining(struct Node* table[], int key) {
    int index = hashFunction(key);
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = key;
    newNode->next = table[index];
    table[index] = newNode;
}

// Função para buscar um elemento na tabela hash com listas encadeadas
struct Node* searchWithChaining(struct Node* table[], int key) {
    int index = hashFunction(key);
    struct Node* temp = table[index];
    while (temp != NULL) {
        if (temp->data == key) {
            return temp;
        }
        temp = temp->next;
    }
    return NULL;
}

int main() {
    struct Node* hashTableChaining[TABLE_SIZE] = { NULL };

    insertWithChaining(hashTableChaining, 5);
    insertWithChaining(hashTableChaining, 15);
    insertWithChaining(hashTableChaining, 25);

    int key = 15;
    struct Node* result = searchWithChaining(hashTableChaining, key);
    if (result != NULL) {
        printf("Elemento %d encontrado.\n", key);
    } else {
        printf("Elemento %d não encontrado.\n", key);
    }

    return 0;
}