class Api::V1::ValidationCodesController < ApplicationController
  def create
    code = SecureRandom.random_number.to_s[2..7]
    validation_code = ValidationCode.new email: params[:email],
      kind: 1, code: code, update_at: Time.now
    if validation_code.save
      render json: { resources: code }
    else
      render json: { errors: validation_code.errors}
    end
  end
end
