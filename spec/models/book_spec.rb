require 'spec_helper'

describe Book do
  let(:blanks) {['', nil]}
  let(:valid_ratings) {[0, 10, 100]}
  let(:invalid_ratings) {[-10, -100, 'abc']}

  it {should have_valid(:title).when('a title')}
  it {should_not have_valid(:title).when(*blanks)}

  it {should validate_presence_of :author}

  it {should have_valid(:rating).when(*valid_ratings)}
  it {should_not have_valid(:rating).when(*invalid_ratings)}

  it {should have_many :checkouts}
  it {should have_many :categorizations}

  it 'should seed properly' do
    expect(Book.seed).to be_true
  end

end
