class Micropost < ApplicationRecord
  # 自動的には入ってなかった。g modelのときに複数形referencesにしてなかったから？
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
