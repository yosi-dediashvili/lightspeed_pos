require_relative 'resource'

require_relative 'item'
require_relative 'item_matrix'

module Lightspeed
  class Image < Lightspeed::Resource
    attr_accessor :baseImageURL, :publicID

    has_one :Item, :ItemMatrix

    def url
      "#{baseImageURL}#{publicID}"
    end

  end
end
