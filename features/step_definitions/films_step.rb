Dado('que eu faço uma requisição de busca de filmes') do
  @filmes = films.busca_filmes
end

Quando('eu armazeno o nome deles') do
  @filme_um = @filmes['results'][0]['title']
  @filme_dois = @filmes['results'][1]['title']
  @filme_tres = @filmes['results'][2]['title']
  @filme_quatro = @filmes['results'][3]['title']
  @filme_cinco = @filmes['results'][4]['title']
  @filme_seis = @filmes['results'][5]['title']

  puts @filme_um
  puts @filme_dois
  puts @filme_tres
  puts @filme_quatro
  puts @filme_cinco
  puts @filme_seis
end

Então('o status code deverá ser {int}') do |code|
  expect(@filmes.code).to eq(code)
end
