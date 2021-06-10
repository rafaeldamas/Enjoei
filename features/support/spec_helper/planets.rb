# frozen_string_literal: true

# módulo de instância da classe de Planetas
module Planets
  def planets
    Planets::PlanetsClient.new
  end
end
