#language: pt
Funcionalidade: Testes de busca de planetas

  @rafael_damas
    @busca_planetas
  Esquema do Cenário: Cenário: Busca de planetas e validando o número registrado
    Dado que eu faço uma busca de planetas
    Quando eu armazeno o numero de planetas registrados
    E busco por planetas não registrados utilizando "<valores_aleatorios>"
    Então deverá retornar status code 404 e uma mensagem de não encontrado

    Exemplos:
      | valores_aleatorios |
      | 61                 |
      | teste              |
      | R$                 |
      | -1                 |
      | 0                  |
