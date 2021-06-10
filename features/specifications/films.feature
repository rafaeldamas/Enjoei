#language: pt
Funcionalidade: Testes de busca de filmes

  @rafael_damas
  @busca_de_filmes_e_armazenando_titulo
  Cenário: Busca de filmes e armazenando o título dos mesmos
    Dado que eu faço uma requisição de busca de filmes
    Quando eu armazeno o nome deles
    Então o status code deverá ser 200
