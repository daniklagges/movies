# app/models/customer.rb
class Customer < ApplicationRecord
  belongs_to :rented_movie, class_name: 'Movie', optional: true

  def has_rented_movie?
    rented_movie.present?
  end
end

