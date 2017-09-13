class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :rents, dependent: :destroy

  def add_bill(new_bill)
    self.bill_amount = self.bill_amount + new_bill
  end
end
