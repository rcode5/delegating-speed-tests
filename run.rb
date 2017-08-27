#!/usr/bin/env ruby

require 'benchmark'
require './my_model.rb'
require './simple_delegator.rb'
require './forwardable.rb'
require './rails_delegate.rb'

def exercise(model)
  result = [ model.one, model.two, model.three ]
end

model = MyModel.new
d1 = Prof::SimpleDelegator.new(MyModel.new)
d2 = Prof::Forwardable.new(MyModel.new)
d3 = Prof::RailsDelegate.new(MyModel.new)

NUM_RUNS = 1000000
Benchmark.bm do |x|
  [ model, d1, d2, d3 ].each do |item|
    x.report(item.class.name) { for i in 1..NUM_RUNS; exercise(item); end }
  end
end
