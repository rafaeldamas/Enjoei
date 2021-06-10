# frozen_string_literal: true

module Films
  # classe de implementação dos métodos de busca de filmes
  class FilmsClient
    include HTTParty
    headers 'Content-Type' => 'application/json'

    def busca_filmes
      HTTParty.get('https://swapi.dev/api/films/')
    end
  end
end
