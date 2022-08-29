Algoritmo "semnome"
// Disciplina   : Técnicas de Programação e Algoritmos
// Professor   : Tiago Antonio da Silva
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/06/2021
Var
// Seção de Declarações das variáveis
opcao,resp:caracter

nome:caractere

Prod: vetor[1..99] de caractere
Valor: vetor[1..99] de real
Quant: vetor[1..99] de inteiro
i,list:inteiro
acumulador,custo,saldo,receita:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

acumulador <- 0
i<-0
Escreval("Bem-vindo ao Sistema de Loja")
Repita



     Se(nome = "") Então
         Escreval("Informe seu nome")
         Leia(nome)
     Fimse
     Escreval("")
     Se(i>=1)então
     Escreval("========================")
     Escreval("| X - Total de compras |")
     fimse
     Escreval("|----------------------|")
     Escreval("| Y - Inserir Item     |")
     Escreval("|----------------------|")
     Escreval("| Z - Sair do Sistema  |")
     Escreval("|----------------------|")
     Escreval("| S - Receita diária   |")
     Escreval("========================")
     Leia(opcao)

     //As estruturas de decisão bugaram e apenas dessa forma está funcionando
     //qualquer outro tipo acba dando erro, e já tentei modificar o código várias
     //vezes
      Se(opcao="x") então
        opcao<-"X"
      fimse
      Se(opcao="y") então
        opcao<-"Y"
      fimse
      Se(opcao="z") então
        opcao<-"Z"
      fimse
      Se(opcao="s") então
        opcao<-"S"
      fimse

    
    //Começa a venda

     Escolha opcao
         Caso "X"
         Se(i=0)Então
         Escreval("Nennhum item registrado")
         Fimse
         
              para list de 1 até i faça
              Escreval("")
                  Escreval("n°",list," - ",Prod[list])
                  Escreval("Valor - ",Valor [list]*Quant[list])
                  Escreval("(Valor unitário: R$",Valor [list],")")
                  custo <- custo+(Valor[list]*Quant[list])
              fimpara
              Se(i>=1)Então
              Escreval("===================")
              Escreval("Total de custo: R%",custo)
              Escreval("Dinheirto fornecido:")
              Leia(saldo)

              se(saldo >= custo) então
              Escreval("Pago com sucesso")
              Escreval("Troco:", (custo-saldo)*(-1))
              senão
              Escreval("Não atingiu o total")
              Escreval("Dívida:", custo-saldo)
              fimse
              fimse
              Escreval("")
              Escreval("\\\\\\\\\\\\\\\\\\\\\\\\\\")
              Escreval("")
              i<-0
              receita<-receita+saldo
              custo<-0
              nome<-""

         Caso "Y"
         resp<-""
         repita
         i<-i+1
              Escreval("Vai registrar um produto")
              Escreval("----------------")
              Escreval("Digite o nome do produto")
              leia(Prod[i])
              Escreval("Digite o preço do produto")
              leia(Valor[i])
              Escreval("Digite a quantidade do produto")
              leia(Quant[i])
              Escreval("")
              Escreval("Restam: ",99-i," cadastros de produtos")
              Escreval("----------------")
              Escreval("Deseja registrar mais alguma roupa? S-(Sim) N-(Não)")
              leia(resp)
              
              se(resp = "N") ou (resp="n")então
              resp<-"falso"
              fimse
              
         até resp = "falso"
         Caso "S"
         Escreval("")
         Escreval("=========================================")
         Escreval("Seus ganhos atuais foram de: R$",receita)
         Escreval("=========================================")
         Caso "Z"
              Escreval("Até logo, ", nome)

         Outrocaso
              Escreval("Opção Inválida. Digite a opcao certa ", nome)
     Fimescolha



Até (opcao = "Z")



Fimalgoritmo