class Micropost < ApplicationRecord
  # 自動的には入ってなかった。g modelのときに複数形referencesにしてなかったから？
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  #とりあえずuserの方に書いたけど、多分こちら＝micropostにあった方がいい気がする。
  has_many :reverses_of_favorites, class_name: 'Favorite', foreign_key: 'user_id'
  has_many :favored, through: :reverses_of_favorites, source: :user
  
end
