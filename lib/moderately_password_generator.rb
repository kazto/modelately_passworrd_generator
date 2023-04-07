# frozen_string_literal: true

require "securerandom"
require_relative "moderately_password_generator/version"

module ModeratelyPasswordGenerator
  class Error < StandardError; end
  
  class ModeratelyPasswordGenerator
    DEFAULT_NUM = 10
    DEFAULT_LENGTH = 16
    DEFAULT_ADDITIONAL_CHAR = '-_'

    attr_reader :num, :length, :additional

    def initialize(**opts)
      @num = opts[:num] || DEFAULT_NUM
      @length = opts[:length] || DEFAULT_LENGTH
      @additional = opts[:additional] || DEFAULT_ADDITIONAL_CHAR
    end

    def generate
      num.times.map do |_|
        head = SecureRandom.alphanumeric(1)
        tail = SecureRandom.alphanumeric(1)
        base_length = length - 2 - additional.length
        base = SecureRandom.urlsafe_base64(base_length)[0...base_length]

        base += additional
        result = base.split(//).shuffle.unshift(head).push(tail).join
        result
      end
    end
  end
end
