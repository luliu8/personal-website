class Book < ApplicationRecord
  def self.search(term)
    where('LOWER(title) LIKE :term ', term: "%#{term.downcase}%")
  end

  def self.find(title)
    where("LOWER(title)=?", "#{title.downcase}")
  end

  def self.find_neighbors(title)
    #return list of 10 closest neighbors
    select("*").limit(5)
  end
end
