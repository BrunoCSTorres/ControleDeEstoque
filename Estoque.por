algoritmo "Controle de Estoque"
// Fun��o : Realizar o cadastro e controle de produtos em estoque de um estabelecimento
// Autor : Bruno Caetano, Edmar Pires, Gabriel Lage, Gustavo Barcario, Vinicius Costa
// Data : 24/11/2022
// se��o de Declara��es
var
opcao :inteiro
opc : caracter
descricao :vetor[1..50] de caracter
quantidade :vetor[1..50] de inteiro
precoCusto, precoVenda, porcento :vetor[1..50] de real
codItem :inteiro


Procedimento Apresentacao
inicio
timer 100
Escreval("    ____    ______   __  __    __      __  _____   _   _   _____     ____    _ ")
Escreval("   |  _ \  |  ____| |  \/  |   \ \    / / |_   _| | \ | | |  __ \   / __ \  | |")
Escreval("   | |_) | | |__    | \  / |    \ \  / /    | |   |  \| | | |  | | | |  | | | |")
Escreval("   |  _ <  |  __|   | |\/| |     \ \/ /     | |   | . ` | | |  | | | |  | | | |")
Escreval("   | |_) | | |____  | |  | |      \  /     _| |_  | |\  | | |__| | | |__| | |_|")
Escreval("   |____/  |______| |_|  |_|       \/     |_____| |_| \_| |_____/   \____/  (_)")
Escreval("                                            ____                               ")
Escreval("                                   /\      / __ \                              ")
Escreval("                                  /  \    | |  | |                             ")
Escreval("                                 / /\ \   | |  | |                             ")
Escreval("                                / ____ \  | |__| |                             ")
Escreval("                               /_/    \_\  \____/                              ")
Escreval("          _____   _____    _____   _______   ______   __  __                   ")
Escreval("         / ____| |_   _|  / ____| |__   __| |  ____| |  \/  |     /\           ")
Escreval("        | (___     | |   | (___      | |    | |__    | \  / |    /  \          ")
Escreval("         \___ \    | |    \___ \     | |    |  __|   | |\/| |   / /\ \         ")
Escreval("         ____) |  _| |_   ____) |    | |    | |____  | |  | |  / ____ \        ")
Escreval("        |_____/  |_____| |_____/     |_|    |______| |_|  |_| /_/    \_\       ")
Escreval("          ______    _____   _______    ____     ____    _    _   ______        ")
Escreval("         |  ____|  / ____| |__   __|  / __ \   / __ \  | |  | | |  ____|       ")
Escreval("         | |__    | (___      | |    | |  | | | |  | | | |  | | | |__          ")
Escreval("         |  __|    \___ \     | |    | |  | | | |  | | | |  | | |  __|         ")
Escreval("         | |____   ____) |    | |    | |__| | | |__| | | |__| | | |____        ")
Escreval("         |______| |_____/     |_|     \____/   \___\_\  \____/  |______|       ")
timer 0
Escreval
Escreval
Escreval
Escreval("Integrantes do projeto:")
timer 380
Escreva("- Bruno")
Escreval(" Caetano")
Escreva("- Edmar")
Escreval(" Pires")
Escreva("- Gabriel")
Escreval(" Lage")
Escreva("- Gustavo")
Escreval(" Barcario")
Escreva("- Vinicius")
Escreval(" Costa")
timer 0
Escreval
Escreval
Escreval
Escreval
Escreva("Pressione ENTER para continuar...")
Leia(opc)

LimpaTela

Escreval
Escreva("C A R R E G A N D O ")
timer 600
Escreva(".")
Escreva(".")
Escreval(".")
timer 0
Escreval
Escreval
Escreval(" Iniciando!!")
Escreval("              (   ()   )")
Escreval("    ) ________    /  )")
Escreval(" ()  |\       \  /")
Escreval("( \\__ \ ______\/")
Escreval("   \__) |       |")
Escreval("     |  |       |")
Escreval("      \ |       |")
Escreval("       \|_______|")
Escreval("        /    \")
Escreval("       (     |")
Escreval("        \    |")
Escreval("      ( ()   |")
Escreval("             () )")
Timer 1000
Timer 0

fimprocedimento

Procedimento Menu
inicio
repita
   LimpaTela
   Escreval("=================================================================================")
   Escreval("==                               Sistema Estoque                               ==")
   Escreval("=================================================================================")
   Escreval("|                                                                               |")                                                                               |")
   Escreval("|                             1 - Cadastrar Produto                             |")
   Escreval("|                             2 - Consultar Estoque                             |")
   Escreval("|                             3 - Pesquisar/Editar                              |")
   Escreval("|                             4 - Vender Produto                                |")
   Escreval("|                             5 - Relat�rio de Vendas                           |")
   Escreval("|                             6 - Sair                                          |")
   Escreval("|                                                                               |")
   Escreval("=================================================================================")
   Escreval
   Escreva("Digite a op��o desejada: ")
   Leia(opcao)

   Escolha (opcao)

   caso 1
      LimpaTela
      CadastrarProduto()
   caso 2
      LimpaTela
      consultaEstoque()
   caso 3
      LimpaTela
      pesquisarEditar()
   caso 4
      LimpaTela
      VendaProduto()
   caso 5
      LimpaTela
      RelatorioVenda()

   caso 6

   fimescolha
ate opcao=6
Escreval ("Obrigado pela prefer�ncia, volte sempre!")
fimprocedimento

procedimento CadastrarProduto
// se��o de Declara��es Internas
inicio
LimpaTela
codItem:= codItem+1
Escreval("=================================================================================")
Escreval("==                             Cadastro de Produto                             ==")
Escreval("=================================================================================")
Escreval
Escreva("Digite o nome do produto: ")
Leia(descricao[codItem])
Escreval
Escreval
Escreval
Escreval("=================================================================================")
Escreval("|    __                                                                  __     |")
Escreval("|   |..|                                                                |..|    |")
Escreval("|  _|..|_          Todas as op��es abaixo devem apenas n�meros!!       _|..|_   |")
Escreval("|  \..../                                                              \..../   |")
Escreval("|   \../                                                                \../    |")
Escreval("|    \/                                                                  \/     |")
Escreval("=================================================================================")
Escreval
Escreva("Digite a quantidade de produtos a cadastrar: ")
leia(quantidade[codItem])
Escreva ("Pre�o de CUSTO: R$ ")
leia (precoCusto[codItem])
Escreva("Digite o percentual de lucro desejado: ")
leia(porcento[codItem])
precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100)


LimpaTela
Escreval("=================================================================================")
Escreval("==                                   Resumo                                    ==")
Escreval("=================================================================================")
Escreval("Voc� cadastrou  : ",descricao[coditem])
Escreval("Quantidade      :",quantidade[coditem])
Escreval("Custo           : R$ ",precoCusto[coditem]:1:2)
Escreval("Pre�o           : R$ ",precoVenda[coditem]:1:2)
Escreval
Escreval("Cadastrar novo produto (1) | Menu (ENTER)")
Leia(opc)
se (opc="1") entao
   CadastrarProduto()
fimse
// se��o de Comandos
fimprocedimento

procedimento consultaEstoque()
inicio
limpatela
Escreval("=================================================================================")
Escreval("==                                  Estoque                                    ==")
Escreval("=================================================================================")
Escreval
se (codItem = 0) entao
   Escreval("Nenhum produto cadastrado!")
   Escreval
   Escreval("Para verificar o estoque � necessario cadastrar um item!")
   Escreval
   Escreva("Pressione ENTER para voltar ao menu...")
   leia (opc)
senao
   Escreval("Possui", codItem," item(s) cadastrado(s)" )
   Escreval("Voc� possui no estoque os seguintes itens: ")
   para codItem de 1 ate codItem faca
      Escreval
      Escreval("C�digo :",codItem)
      Escreval("Descri��o : ",descricao[codItem])
      Escreval("Quantidade :",quantidade[codItem])
      Escreval("valor de custo : R$",precoCusto[codItem])
      Escreval("valor de venda : R$",precoVenda[codItem])
      Escreval
      Escreval("------------------------------------------")
   fimpara
   Escreval("Editar (1) | Menu (ENTER)")
   leia(opc)
   se (opc = "1") entao
      pesquisarEditar()
   senao
      Menu()
   fimse
fimse
fimProcedimento

procedimento pesquisarEditar()
inicio
limpatela
Escreval("=================================================================================")
Escreval("==                             Pesquisar/Editar                                ==")
Escreval("=================================================================================")
Escreval
se (codItem = 0) entao
   Escreval("Nenhum produto cadastrado!")
   Escreval
   Escreval("Para pesquisar e editar � necessario cadastrar um item!")
   Escreval
   Escreval("Pressione ENTER para voltar ao menu...")
   leia (opc)
senao
   Escreval("Insira o c�digo do produto que deseja pesquisar: ")
   leia(codItem)
   Escreval
   se(codItem >=1) E (codItem <= codItem) entao
      Escreval("C�digo :",codItem)
      Escreval("Descri��o : ",descricao[codItem])
      Escreval("Quantidade :",quantidade[codItem])
      Escreval("Valor de venda : R$",precoVenda[codItem])
      Escreval
      Escreval("Editar (1) | Pesquisar Novamente (2) | Consultar Estoque (3) | Menu (ENTER)")
      leia(opc)
      se (opc = "1") entao
         Escreval("=================================================================================")
         Escreval("==                                   Editar                                    ==")
         Escreval("=================================================================================")
         Escreval
         Escreval("Nome (1) | Quantidade (2) | Pre�o de Custo (3) | Percentual (4)")
         leia(opc)
         se(opc = "1") entao
            Escreva("Digite o novo nome do produto: ")
            leia(descricao[codItem])
            Escreval("O nome do produto foi corrigido: ",descricao[codItem])
         senao
            se (opc = "2") entao
               Escreva("Digite a nova quantidade para alterar o estoque: ")
               leia(quantidade[codItem])
               Escreval("O produto ",descricao[codItem]," agora possui ",quantidade[codItem]," unidades")
            senao
               se (opc = "3") entao
                  Escreva("Digite a atualiza��o do pre�o de custo: ")
                  leia(precoCusto[codItem])
                  precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100)
                  Escreval("O produto ",descricao[codItem]," est� com o valor de custo de R$ ",precoCusto[codItem]:1:2)
               senao
                  se (opc = "4") entao
                     Escreva("Digite o novo percentual de lucro desejado: ")
                     leia(porcento[codItem])
                     precoVenda[codItem]:= precoCusto[codItem] + (precoCusto[codItem]*porcento[codItem]/100)
                     Escreval("Percentual de lucro atualizado: ", porcento[codItem],"%")
                  fimse
               fimse
            fimse
         fimse
      senao
         se (opc = "2") entao
            pesquisarEditar()
            se (opc = "3") entao
               consultaEstoque()
            senao
               menu()
            fimse
         fimse
      fimse
   fimse
fimse
Escreval
Escreval("Pesquisar Novamente (1) | Menu (ENTER)")
Leia(opc)
se (opc="1") entao
   pesquisarEditar()
fimse
fimprocedimento


inicio
// se��o de Comandos
Apresentacao()

Menu()

fimalgoritmo

