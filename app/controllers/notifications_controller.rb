class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    phone = params[:phone]
    body = params[:body]
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '+18582120341', to: "+1#{phone}", body: body
      # render plain: message.status (ORIGINAL SYNTAX)
    redirect_to root_path
  end

  def blast
    Customer.all.each do |customer|
      client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
      message = client.messages.create from: '+18582120341', to: "#{customer.phone}", body: "Hi #{customer.first_name}! This is a super sweet test SMS"
      # render plain: message.status (ORIGINAL SYNTAX)
    end
    redirect_to root_path
  end
 
end