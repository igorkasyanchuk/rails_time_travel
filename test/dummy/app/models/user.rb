class User < ApplicationRecord
  has_many :histories

  scope :active, -> { where("created_at > ?", Time.now) }

  after_commit :log_history

  def log_history
    self.histories.create
  end
end
