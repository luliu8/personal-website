class Book < ApplicationRecord
  def self.search(term)
    where('LOWER(title) LIKE :term ', term: "%#{term.downcase}%")
  end

  def self.find(title)
    where("LOWER(title)=?", "#{title.downcase}")
  end

  def self.find_neighbors(book_vec)
    # return list of 10 closest neighbors
    select("*").order("cube(array#{book_vec}) <-> cube(vec)").limit(10)
  end
end
