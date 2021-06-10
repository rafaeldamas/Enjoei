# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].sort.each { |file| require file }

World(Films)
World(Planets)
