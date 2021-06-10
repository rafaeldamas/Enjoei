# frozen_string_literal: true

# módulo de instância da classe Films
module Films
  def films
    Films::FilmsClient.new
  end
end
