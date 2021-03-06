# frozen_string_literal: true

require_relative "alanriverogorinstein_palindrome/version"


module AlanriverogorinsteinPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end
end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end


class String
  include AlanriverogorinsteinPalindrome
end

class Integer
  include AlanriverogorinsteinPalindrome
end
