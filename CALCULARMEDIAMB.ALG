Algoritmo "CalcularMediaMB"

Var
 prova_dissertativa, seminario_grupo, prova_pratica : real
 media : real
 nome : caractere

Inicio
 Escreval("Nome do aluno:")
 Leia(nome)

 Escreval("Nota da Prova Dissertativa:")
 Leia(prova_dissertativa)

 Escreval("Nota do Seminário em grupo:")
 Leia(seminario_grupo)

 Escreval("Nota da Prova Pratica")
 Leia(prova_pratica)

 media <- (prova_dissertativa * 0.4) + (seminario_grupo * 0.1) + (prova_pratica * 0.5)

 Escreval("A média final do(a) aluno(a): ", nome, "  é:", media)

  Se(media >= 9)Então
       Escreval("Sua nota é MB")
       Escreval("Aluno(a) aprovado")
          Senão
           Se(media > 8)Então
             Escreval("Sua nota é B")
             Escreval("Aluno(a) aprovado")
                Senão
                 Se(media >= 6)Então
                   Escreval("Sua nota é R")
                   Escreval("Aluno(a) aprovado")
                      Senão
                       Se(media <6 )Então
                         Escreval("Sua nota é I")
                         Escreval("Aluno(a) reprovado")
                      Fimse
                Fimse
          Fimse
    Fimse

Fimalgoritmo