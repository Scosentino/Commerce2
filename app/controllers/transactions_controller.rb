class TransactionsController < ApplicationController
  #Add user authentication

  def new
    gon.client_token = generate_client_token
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: current_order.subtotal, #removed number_to_currency - 8/24
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
      @order.purchase_cart
      redirect_to root_url, notice: "Congraulations! Your transaction has been successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

private
def generate_client_token
  Braintree::ClientToken.generate
end

  # private
  # def check_cart!
  #   if current_user.get_cart_movies.blank?
  #     redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
  #   end
  # end
# end
end
