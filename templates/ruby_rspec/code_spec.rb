require_relative 'spec_helper'
require_relative 'code'

describe Foo do
  it 'should pass' do
    'John Doe'.should == 'John Doe'
  end
end