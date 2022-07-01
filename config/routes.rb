# frozen_string_literal: true

Rails.application.routes.draw do
  post '/convert', to: 'convert_numbers#receiving_value'
end
