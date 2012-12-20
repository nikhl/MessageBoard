require 'spec_helper'

describe User do
  it { should respond_to(:provider) }
  it { should respond_to(:name)     }
  it { should respond_to(:uid)      }
end
