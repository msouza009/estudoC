#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Estrutura de um nó da lista de adjacências
struct Node {
    int dest;
    struct Node* next;
};

// Estrutura do grafo
struct Graph {
    int numVertices;
    struct Node** adjLists;
    bool* visited;
};

// Função para criar um novo nó
struct Node* createNode(int dest) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->dest = dest;
    newNode->next = NULL;
    return newNode;
}

// Função para criar um grafo
struct Graph* createGraph(int vertices) {
    struct Graph* graph = (struct Graph*)malloc(sizeof(struct Graph));
    graph->numVertices = vertices;

    graph->adjLists = (struct Node**)malloc(vertices * sizeof(struct Node*));
    graph->visited = (bool*)malloc(vertices * sizeof(bool));

    for (int i = 0; i < vertices; i++) {
        graph->adjLists[i] = NULL;
        graph->visited[i] = false;
    }

    return graph;
}

// Função para adicionar uma aresta ao grafo
void addEdge(struct Graph* graph, int src, int dest) {
    struct Node* newNode = createNode(dest);
    newNode->next = graph->adjLists[src];
    graph->adjLists[src] = newNode;

    // Se o grafo for não-direcionado
    newNode = createNode(src);
    newNode->next = graph->adjLists[dest];
    graph->adjLists[dest] = newNode;
}

// Função de busca em profundidade para verificar o caminho
bool DFS(struct Graph* graph, int src, int dest) {
    graph->visited[src] = true;

    if (src == dest) {
        return true;
    }

    struct Node* temp = graph->adjLists[src];
    while (temp != NULL) {
        int adjVertex = temp->dest;

        if (!graph->visited[adjVertex]) {
            if (DFS(graph, adjVertex, dest)) {
                return true;
            }
        }
        temp = temp->next;
    }
    return false;
}

// Função para verificar se há um caminho entre dois vértices
bool isPath(struct Graph* graph, int src, int dest) {
    for (int i = 0; i < graph->numVertices; i++) {
        graph->visited[i] = false;
    }
    return DFS(graph, src, dest);
}

int main() {
    struct Graph* graph = createGraph(5);

    addEdge(graph, 0, 1);
    addEdge(graph, 0, 4);
    addEdge(graph, 1, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);
    addEdge(graph, 2, 3);
    addEdge(graph, 3, 4);

    int src = 0, dest = 3;
    if (isPath(graph, src, dest)) {
        printf("Há um caminho entre %d e %d.\n", src, dest);
    } else {
        printf("Não há caminho entre %d e %d.\n", src, dest);
    }

    return 0;
}