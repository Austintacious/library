# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :categorization, :class => 'Categorizations' do
    book_id 1
    category_id 1
  end
end
