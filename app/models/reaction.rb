class Reaction < ApplicationRecord
     belongs_to :article, optional: true
  belongs_to :user
  belongs_to :comment, optional: true

  validates :kind, acceptance: {
 accept: %w[like dislike boring neutral uninterested interested],
 }
 def self.kinds
 %w[like dislike boring neutral uninterested interested]
 end
end

  