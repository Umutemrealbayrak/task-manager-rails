class Task < ApplicationRecord
  belongs_to :user

  enum :status, {
    bekliyor: 0,
    devam_ediyor: 1,
    tamamlandi: 2
  }
  enum :priority, {
  dusuk: 0,
  orta: 1,
  yuksek: 2
}
  validates :title, presence: true

end
