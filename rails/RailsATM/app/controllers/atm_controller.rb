class AtmController < ApplicationController
  def home
  	atmaction = params[:atmaction]
  	@balance = RailsATM::Application.config.balance
  	@message = ""

  	case atmaction
  	when 'withdraw'
  		@amount = params[:w_amount].to_f.round(2)
  		if @balance >= @amount
  		@balance -= @amount
  		@message = "Withdrawal complete. Thank you for your business."
  		else @message = "Insufficient funds. Please enter a smaller withdrawal amount."
  		end

  	when 'deposit'
  		@amount = params[:d_amount].to_f.round(2)
  		@balance += @amount
  		@message = "Deposit complete. Thank you for your business."

  	when 'balance'
  		@message = "Your balance is: #{@balance.round(2)}."

  	end

  	RailsATM::Application.config.message = @message
  	RailsATM::Application.config.balance = @balance
  end
end
