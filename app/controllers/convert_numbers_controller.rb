# frozen_string_literal: true

require './app/services/convert_service'

class ConvertNumbersController < ApplicationController
  def receiving_value
    number = params[:number].to_s
    convert = ConvertService.new('', '', '', number, []).transform
    ConvertService.new(nil, nil, nil, nil, convert).output_convert
    render json: convert
  end
end
