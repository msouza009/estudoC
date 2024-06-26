#include <stdio.h>
#include <stdlib.h>

#define max(a, b) ((a) > (b) ? (a) : (b))

// Estrutura de um nó da árvore AVL
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
    int height;
};

// Função para obter a altura de um nó
int height(struct Node* N) {
    if (N == NULL) return 0;
    return N->height;
}

// Função para criar um novo nó
struct Node* createNode(int data) {
    struct Node* node = (struct Node*)malloc(sizeof(struct Node));
    node->data = data;
    node->left = NULL;
    node->right = NULL;
    node->height = 1;
    return node;
}

// Função para rotacionar à direita a subárvore com raiz y
struct Node* rightRotate(struct Node* y) {
    struct Node* x = y->left;
    struct Node* T2 = x->right;

    // Realiza a rotação
    x->right = y;
    y->left = T2;

    // Atualiza alturas
    y->height = max(height(y->left), height(y->right)) + 1;
    x->height = max(height(x->left), height(x->right)) + 1;

    // Retorna a nova raiz
    return x;
}

// Função para rotacionar à esquerda a subárvore com raiz x
struct Node* leftRotate(struct Node* x) {
    struct Node* y = x->right;
    struct Node* T2 = y->left;

    // Realiza a rotação
    y->left = x;
    x->right = T2;

    // Atualiza alturas
    x->height = max(height(x->left), height(x->right)) + 1;
    y->height = max(height(y->left), height(y->right)) + 1;

    // Retorna a nova raiz
    return y;
}

// Função para obter o fator de balanceamento de um nó
int getBalance(struct Node* N) {
    if (N == NULL) return 0;
    return height(N->left) - height(N->right);
}

// Função para inserir um novo elemento na árvore AVL
struct Node* insert(struct Node* node, int data) {
    // Passo 1: Inserção normal na árvore binária de busca
    if (node == NULL) return createNode(data);

    if (data < node->data) {
        node->left = insert(node->left, data);
    } else if (data > node->data) {
        node->right = insert(node->right, data);
    } else {
        return node; // Duplicatas não são permitidas
    }

    // Passo 2: Atualiza a altura deste nó ancestral
    node->height = 1 + max(height(node->left), height(node->right));

    // Passo 3: Obtém o fator de balanceamento deste nó ancestral para verificar se ele ficou desbalanceado
    int balance = getBalance(node);

    // Se o nó ficar desbalanceado, existem 4 casos

    // Caso 1: Desbalanceamento à esquerda-esquerda
    if (balance > 1 && data < node->left->data) {
        return rightRotate(node);
    }

    // Caso 2: Desbalanceamento à direita-direita
    if (balance < -1 && data > node->right->data) {
        return leftRotate(node);
    }

    // Caso 3: Desbalanceamento à esquerda-direita
    if (balance > 1 && data > node->left->data) {
        node->left = leftRotate(node->left);
        return rightRotate(node);
    }

    // Caso 4: Desbalanceamento à direita-esquerda
    if (balance < -1 && data < node->right->data) {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }

    // Retorna o ponteiro do nó (inalterado)
    return node;
}

// Função para imprimir a árvore em ordem
void inorderTraversal(struct Node* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->data);
        inorderTraversal(root->right);
    }
}

int main() {
    struct Node* root = NULL;
    root = insert(root, 10);
    root = insert(root, 20);
    root = insert(root, 30);
    root = insert(root, 40);
    root = insert(root, 50);
    root = insert(root, 25);

    printf("Árvore AVL em Ordem:\n");
    inorderTraversal(root);

    return 0;
}