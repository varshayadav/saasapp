module Varsha
  extend ActiveSupport::Concern

  def call
    puts 'hello'
  end
end

class Use
  include Varsha
end

use = Use.new
use.call
Use.call