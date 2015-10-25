require 'rails_helper'

describe MoviesController, type: :controller do

  describe '#index' do
    let!(:movie1) { FactoryGirl.create(:movie) }
    let!(:movie2) { FactoryGirl.create(:movie) }
    let!(:movie3) { FactoryGirl.create(:movie) }
    let!(:movie4) { FactoryGirl.create(:movie, location: 'test') }
    context 'when location is passed in parameters' do
      it 'expects statastics to be filtered by location' do
        get :index, location: 'test'
        expect(assigns(:movies).pluck(:id)).to eq [movie4.id]
      end
    end
    context 'when location is not passed in parameters' do
      it 'expects statastics of all the movies' do
        get :index
        expect(assigns(:movies)).to eq Movie.all
      end
    end
  end
end
