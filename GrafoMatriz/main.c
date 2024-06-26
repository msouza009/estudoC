#include <stdio.h>
#include <stdlib.h>

#define N 5

// Função para inicializar a matriz de adjacências
void initializeMatrix(int graph[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            graph[i][j] = 0;
        }
    }
}

// Função para adicionar uma aresta ao grafo
void addEdge(int graph[N][N], int u, int v) {
    graph[u][v] = 1;
    graph[v][u] = 1; // Se o grafo for não-direcionado
}

// Função para imprimir a matriz de adjacências
void printMatrix(int graph[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%d ", graph[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int graph[N][N];
    initializeMatrix(graph);

    addEdge(graph, 0, 1);
    addEdge(graph, 0, 4);
    addEdge(graph, 1, 2);
    addEdge(graph, 1, 3);
    addEdge(graph, 1, 4);
    addEdge(graph, 2, 3);
    addEdge(graph, 3, 4);

    printf("Matriz de Adjacências:\n");
    printMatrix(graph);

    return 0;
}