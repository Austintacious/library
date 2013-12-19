require 'spec_helper'

describe Categorizations do
  let(:blanks) {['',nil]}
  it {should belong_to :book}
  it {should belong_to :category}

  it {should have_valid(:book_id).when(1)}
  it {should_not have_valid(:book_id).when(*blanks)}

  it {should have_valid(:category_id).when(1)}
  it {should_not have_valid(:category_id).when(*blanks)}
end
