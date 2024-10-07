# app/models/movie.rb
class Movie < ApplicationRecord
  has_one :customer, foreign_key: 'rented_movie_id' # Relación inversa
  scope :available, -> { where(available: true) } # Solo mostrar las disponibles
end

