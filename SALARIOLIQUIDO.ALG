Algoritmo "salarioliquido"


Var
 salario_bruto, salario_liquido : real
 faixa1, faixa2, faixa3, faixa4 : real
 inss, irrf, desconto, desconto_inss, dependentes : real


Inicio
 Escreval("=================================")
 Escreval("Calculadora de Salário Líquido")
 Escreval("=================================")
 
 Escreval("Informe o seu Salário Bruto:")
 Leia(salario_bruto)
 Escreval("---------------------------------")
 
 Escreval("Quantos dependetes?")
 leia(dependentes)
 
 faixa1 <- 1212 * 0.075
 faixa2 <- (2427.35 - 1212.01) * 0.09
 faixa3 <- (3641.03 - 2427.36) * 0.12
 faixa4 <- (7087.22 - 3641.04) * 0.14
 
 Se(salario_bruto <= 1212)Entao
    inss <- faixa1
    Senao
       Se(salario_bruto >= 1212.01) e (salario_bruto <= 2427.35)Entao
          inss <- (salario_bruto - 1212) * 0.09  + faixa1
          Senao
             Se(salario_bruto >= 2427.36) e (salario_bruto <= 3641.03)Entao
                inss <- (salario_bruto - 2427.35) * 0.12 + faixa1 + faixa2
                Senao
                   Se(salario_bruto >= 3641.04) e (salario_bruto <= 7087.22)Entao
                      inss <- (salario_bruto - 3641.03) * 0.14 + faixa1 + faixa2 + faixa3
                      Senao
                         inss <- 828.38
                   Fimse
             Fimse
       Fimse
 Fimse

 desconto_inss <- salario_bruto - inss
 desconto <- desconto_inss
 
 Se(desconto <= 1903.98)Entao
    irrf <- 0
    Senao
       Se(desconto >= 1903.99) e (desconto <= 2826.65)Entao
          irrf <- ((desconto - (dependentes * 189.59))* 0.075) - 142.80 //diferença do min e max
          Senao
             Se(desconto >= 2826.66) e (desconto <= 3751.05)Entao
                irrf <- ((desconto - (dependentes * 189.59)) * 0.15) - 	354.80
                Senao
                   Se(desconto >= 3751.06) e (desconto <= 4664.68)Entao
                      irrf <- ((desconto - (dependentes * 189.59)) * 0.225) - 	636.13
                      Senao
                         Se(desconto >= 4664.69)Entao
                            irrf <- ((desconto - (dependentes * 189.59)) * 0.275) - 869.36
                            Senao
                         Fimse
                   Fimse
             Fimse
       Fimse
 Fimse


 salario_liquido <- desconto - irrf

 Escreval("---------------------------------")

 Escreval("Desconto INSS: ", inss)
 Escreval("Desconto IRRF: ", irrf)
 Escreval("Desconto Total: ", inss + irrf)

 
 Escreval("---------------------------------")

 Escreval("Valor do salario liquido ", salario_liquido)
 
 Escreval("=================================")
Fimalgoritmo