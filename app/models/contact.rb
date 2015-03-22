class Contact < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 250 }
  before_save   :downcase_email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  private

    # Converts email to all lower-case.
    def downcase_email
      email.downcase!
    end
end
