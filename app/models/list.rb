class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true

  after_create :set_photo

  def set_photo
    unless self.photo.attached?
      self.photo.attach(
        io: File.open('app/assets/images/movie_time.jpg'),
        filename: 'movie_time.jpg',
        content_type: 'image/jpg'
      )
    end
  end
end
