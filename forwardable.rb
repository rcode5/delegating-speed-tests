require 'forwardable'

module Prof
  class Forwardable

    extend ::Forwardable

    def_delegators :@object, :one, :two, :three

    attr_reader :object

    def initialize(object)
      @object = object
    end
  end
end
