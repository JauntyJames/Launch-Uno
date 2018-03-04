require 'rails_helper'

RSpec.describe GameChannel, type: :channel do
  it "successfully connects" do
    subscribe
    expect(subscription).to be_confirmed
  end

  xit "rejects connection" do # add some validations first
    expect { connect "/cable" }.to have_rejected_connection
  end
end
