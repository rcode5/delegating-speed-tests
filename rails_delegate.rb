require 'active_support/core_ext/module/delegation'

module Prof
  class RailsDelegate
    delegate :one, :two, :three, to: :object

    attr_reader :object

    def initialize(object)
      @object = object
    end
  end
end
