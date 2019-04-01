require 'rails_helper'

RSpec.describe Idea, :type => :model do
  before do
    @idea = Idea.create!(name: 'My Awesome Idea Name',
                         description: 'Idea description')
  end

  it 'has a name' do # yep, you can totally use 'it'
    # second_idea = Idea.create!(name: "My Second Idea Name")
    # expect(second_idea.name).to eq("My Second Idea Name")
    expect(@idea.name).to eq('My Awesome Idea Name')
  end

  it 'has a description' do
    expect(@idea.description).to eq('Idea description')
  end

  describe 'associations' do
    it{ is_expected.to have_many(:comments) }
  end

  describe 'validations' do
    it{ is_expected.to validate_presence_of :name }
  end

end
