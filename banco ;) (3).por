programa {
  funcao inicio() {
    inteiro menu = 1 
    real saldo = 0.0
    real saque
    real deposito
    cadeia extrato = ""
    enquanto(menu != 0 ){
      escreva("[--------MENU--------]\n") 
      escreva("[ 1-> SALDO          ]\n")
      escreva("[ 2-> SAQUE          ]\n")
      escreva("[ 3-> DEPOSITO       ]\n")
      escreva("[ 4-> EXRATO         ]\n")
      escreva("[ 0-> SAIR           ]\n")
      escreva("[--------------------]\n")
      escreva("|Opção :")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
        //SALDO
          escreva(" Saldo = R$",saldo,"\n")
        pare


        caso 2:
        //SAQUE
          escreva("Digite o valor do saque: ")
          leia(saque)
          se (saldo < saque){
            escreva("Não autorizado!\n")
          }
          senao se (saque <= 0 ){
            escreva("Valor Invalido!\n")
          }
          senao{
            saldo = saldo - saque
            escreva("Saquerealizado com sucesso!\n")
            extrato = extrato + "SAQUE -----------R$" + saque + "\n"
          }

        pare


        caso 3:
        //DEPOSITO
        escreva("Digite o valor do deposito: ")
        leia(deposito)
        se(deposito <= 0){
          escreva("Valor invalido!\n")
        }
        senao{
          saldo = saldo + deposito
          escreva("Depósito realizado com sucesso!\n")
          extrato = extrato + "SAQUE -----------R$" + saque + "\n"
        }
        pare


        caso 4:
        //EXTRATO
        escreva(extrato)
        pare
      }







    }
  }
}