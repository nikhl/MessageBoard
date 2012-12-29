require 'spec_helper'

describe User do
  it { should respond_to(:provider)         }
  it { should respond_to(:name)             }
  it { should respond_to(:uid)              }
  it { should respond_to(:oauth_token)      }
  it { should respond_to(:oauth_expires_at) }
end
