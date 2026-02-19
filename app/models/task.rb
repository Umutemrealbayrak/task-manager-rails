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
  default_scope { order(priority: :desc, created_at: :desc) }

scope :deleted, -> { unscope(where: :deleted_at).where.not(deleted_at: nil) }

def soft_delete
  update(deleted_at: Time.current)
end

def restore
  update(deleted_at: nil)
end

def deleted?
  deleted_at.present?
end


end
