class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    Customer.all.each do |customer|
      client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
      message = client.messages.create from: '+18582120341', to: "#{customer.phone}", body: "Hi #{customer.first_name}! This is a super sweet test SMS"
      redirect_to root_path
      # render plain: message.status (ORIGINAL SYNTAX)
    end
  end
 
end