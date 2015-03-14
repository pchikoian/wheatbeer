class API::V1::CustomersController < ApiController
  skip_before_action :catch_exceptions

  # POST /api/v1/customers/create
  def create
    customer = Customer.new(customer_params)

    if customer.save
      render json: { code: 200, message: 'Create Successful' }
    else
      render json: { code: 500, message: 'Internal Error' }
    end
  end

  private
    def customer_params
      { name:  params.fetch(:name),
        phone: params.fetch(:phone),
        email: params[:email],
        birth: params[:birth]
      }
    end

end
