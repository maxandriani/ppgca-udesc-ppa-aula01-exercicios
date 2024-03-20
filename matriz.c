#include <stdio.h>
#include <stdlib.h>
#include "matriz.h"

matriz_t *matriz_criar(int linhas, int colunas)
{
   matriz_t *result = NULL;
   double *bloco = NULL;
   int i = 0;
   
   result = (matriz_t *) malloc(sizeof(matriz_t));
   result->linhas = linhas;
   result->colunas = colunas;
   result->dados = (double **) malloc(sizeof(double) * linhas);

   bloco = (double *) malloc(sizeof(double) * linhas * colunas);

   for(i = 0; i < linhas; i++) {
      result->dados[i] = &bloco[i * colunas];
   }

   return result;
}

void matriz_destruir(matriz_t *m)
{
   free(m->dados);
   free(m);
   return;
}

void matriz_preencher_rand(matriz_t *m)
{
   int i, j;
   for (i = 0; i < m->linhas; i++) {
      for (j = 0; j < m->colunas; j++) {
         m->dados[i][j] = random();
      }
   }
}

void matriz_preencher(matriz_t *m, double valor)
{
   int i, j;
   for (i = 0; i < m->linhas; i++) {
      for (j = 0; j < m->colunas; j++) {
         m->dados[i][j] = valor;
      }
   }
}

matriz_t *matriz_multiplicar(matriz_t *A, matriz_t *B)
{
    printf("Implementar!\n");
    return NULL;
}

void matriz_imprimir(matriz_t *m)
{
   
   int i, j;
   for (i = 0; i < m->linhas; i++) {
      for (j = 0; j < m->colunas; j++) {
         printf("%.17f ", m->dados[i][j]);
      }
      printf("\n");
   }
}

matriz_t *matriz_somar(matriz_t *A, matriz_t *B)
{
    printf("Implementar!\n");
    return NULL;
}

