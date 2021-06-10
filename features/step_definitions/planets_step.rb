# frozen_string_literal: true

Dado('que eu faço uma busca de planetas') do
  @planetas = planets.busca_planeta
end

Quando('eu armazeno o numero de planetas registrados') do
  @numero_de_planetas_registrados = @planetas['count']
end

Quando('busco por planetas não registrados utilizando {string}') do |valores_aleatorios|
  @planeta_nao_registrado = planets.busca_planeta_nao_registrado(valores_aleatorios)
end

Então('deverá retornar status code {int} e uma mensagem de não encontrado') do |code|
  expect(@planeta_nao_registrado.code).to eq(code)
  expect(@planeta_nao_registrado['detail']).to eq('Not found')
end
