class Customer < ActiveRecord::Base

  def format_phone
    if phone[0] != "+"
      self.phone = "+1" + phone
    end
  end
end
