class Url < ApplicationRecord

  validates :long_url, presence: true

  def shorten
   self.short_url = SecureRandom.hex(3)
  end

end
