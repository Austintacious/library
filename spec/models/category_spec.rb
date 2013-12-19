require 'spec_helper'

describe Category do

  it 'should seed properly' do
    expect(Category.seed).to be_true
  end
  
end
