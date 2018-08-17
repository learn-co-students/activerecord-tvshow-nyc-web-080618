class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end # self.highest_rating

  def self.most_popular_show
    find_by(rating: highest_rating)
  end # self.most_popular_show

  def self.lowest_rating
    minimum(:rating)
  end # self.lowest_rating

  def self.least_popular_show
    find_by(rating: lowest_rating)
  end # self.least_popular_show

  def self.ratings_sum
    sum(:rating)
  end # self.ratings_sum

  def self.popular_shows
    where("rating > 5")
  end # self.popular_shows

  def self.shows_by_alphabetical_order
    all.order(:name)
  end # self.shows_by_alphabetical_order
end # class Show
