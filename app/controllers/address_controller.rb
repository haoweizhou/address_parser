class AddressController < ApplicationController

  def index

  end

  def create
    @form = AccountCreationForm.new(build_params)

    if @form.submit
      head :created
    else
      head :unprocessable_entity
    end
  end

end
