class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    phone = params[:phone]
    body = params[:body]
    media_url = params[:media_url]
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    if media_url.empty?
      message = client.messages.create from: '+18582120341', to: "+1#{phone}", body: body
    else
      message = client.messages.create from: '+18582120341', to: "+1#{phone}", body: body, media_url: media_url
    end
      # render plain: message.status (ORIGINAL SYNTAX)
    redirect_to root_path
  end

  def blast
    body = params[:body]
    media_url = params[:media_url]
    if media_url.empty?
      Customer.all.each do |customer|
        client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
        message = client.messages.create from: '+18582120341', to: "#{customer.format_phone}", body: body
        # render plain: message.status (ORIGINAL SYNTAX)
      end
    else
      Customer.all.each do |customer|
        client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
        message = client.messages.create from: '+18582120341', to: "#{customer.format_phone}", body: body, media_url: media_url
        # render plain: message.status (ORIGINAL SYNTAX)
      end
    end
    redirect_to root_path
  end
 
end