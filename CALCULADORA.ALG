Algoritmo "Calculadora"

Var
   num1, num2, resultado : real
   operacao : caractere

Inicio
   Escreval("====================================")
   Escreval("Calculadora")
   Escreval("------------------------------------")
   
   Escreval("Qual operação deseja realizar? +, -, * ou / ?")
   Leia(operacao)
   
   Escreval("------------------------------------")
   Escreva("Digite o numero 1: ")
   Leia(num1)
   Escreva("Digite o numero 2: ")
   Leia(num2)
   Escreval("------------------------------------")
   
   Escolha operacao
      Caso "+"
         resultado <- num1 + num2
         Escreval("O resultado: ", resultado)
      Caso "-"
         resultado <- num1 - num2
         Escreval("O resultado: ", resultado)
      Caso "*"
         resultado <- num1 * num2
         Escreval("O resultado: ", resultado)
      Caso "/"
         resultado <- num1 / num2
         Escreval("O resultado é: ", resultado)
      Outrocaso
         Escreval("Opção inválida")
   Fimescolha
   
Fimalgoritmo