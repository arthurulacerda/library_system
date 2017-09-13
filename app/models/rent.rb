class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book_unit

  def check_generate_bill
    if rent_checked == false
      delayed_days = (self.return_date - self.created_at.to_date).to_i - self.days_to_deadline
      if delayed_days > 0
        self.user.add_bill(self.bill_day_delay * (delayed_days * bill_day_delay))
      end
      rent_checked = true
    end
  end

  def return_book_unit
    self.return_date = Date.today
    self.check_generate_bill
    self.book_unit.available = true
  end


end
