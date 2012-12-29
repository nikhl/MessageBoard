require 'spec_helper'

describe Post do
  it { should respond_to(:title)   }
  it { should respond_to(:message) }
end
