#include <stdio.h>
#include <stdlib.h>

int fatorial_recursivo (int n) {
    if (n==0) {
        return 1;
    }
    else {
        return n*fatorial_recursivo(n-1);
    }
}

int fatorial_loop (int n)
{
    int temp = 1;
    while (n > 0)
    {
          temp *= n;
          n--;
    }
    return(temp);
}

int main()
{
    int n;
    printf("\nInforme o valor de n: ");
    scanf("%d",&n);
    printf ("\nFatorial recursivo: %d\n\n", fatorial_recursivo(n));
    printf("\nFatorial em loop: %d\n\n", fatorial_loop(n));
    return 0;
}
