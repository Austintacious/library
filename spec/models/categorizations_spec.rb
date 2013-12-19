require 'spec_helper'

describe Categorizations do
  it {should belong_to :book}
  it {should belong_to :category}
end
