# frozen_string_literal: true

require_relative 'cell'
# The World class is responsible for creating a world with a Matrix.
# The Matrix data structure is defined in the 'matrix.rb' file included in this project
# A world instance has:
# @matrix, initialized as a Matrix using the Matrix Ruby library
class World
  attr_reader :matrix

  def initialize
    @matrix = Matrix[
      [Cell.new(0, 0), Cell.new(0, 1), Cell.new(0, 2), Cell.new(0, 3)],
      [Cell.new(1, 0), Cell.new(1, 1), Cell.new(1, 2), Cell.new(1, 3)],
      [Cell.new(2, 0), Cell.new(2, 1), Cell.new(2, 2), Cell.new(2, 3)],
      [Cell.new(3, 0), Cell.new(3, 1), Cell.new(3, 2), Cell.new(3, 3)]
    ]
  end

  def randomly_populate
    matrix.each do |cell|
      cell.alive = [true, false].sample
    end
  end
end
