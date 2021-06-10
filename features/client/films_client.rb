module Films
  class FilmsClient
    include HTTParty
    headers 'Content-Type' => 'application/json'

    def busca_filmes
      HTTParty.get('https://swapi.dev/api/films/')
    end
  end
end
