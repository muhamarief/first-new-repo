class Url < ApplicationRecord

  validates :long_url, presence: true
  before_create :shorten, :default_count

  def shorten
   self.short_url = SecureRandom.hex(3)
  end

  def default_count
    self.click_count = 0
  end

end
