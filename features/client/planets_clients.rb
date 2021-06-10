# frozen_string_literal: true

module Planets
  # classe de implementação dos métodos de busca dos planetas
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
