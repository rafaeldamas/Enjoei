module Planets
  class PlanetsClient
    include HTTParty
    headers 'Content-Type' => 'application/json'

    def busca_planeta
      HTTParty.get('https://swapi.dev/api/planets')
    end

    def busca_planeta_nao_registrado(valores_aleatorios)
      HTTParty.get("https://swapi.dev/api/planets/#{valores_aleatorios}")
    end
  end
end
