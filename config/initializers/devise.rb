# frozen_string_literal: true

Devise.secret_key = Rails.application.credentials[:secret_access_key]
