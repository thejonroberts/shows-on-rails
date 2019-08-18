require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  let(:brand) { 'ShowYrOwnWay' }

  describe '#brand_title' do
    it 'returns the brand title' do
      expect(helper.brand_title).to eq(brand)
    end
  end

  describe '#page_title' do
    let(:title_param) { Faker::Company.bs }
    let(:appended) { " | #{brand}" }

    context 'no title param given' do
      it 'returns the brand title' do
        expect(helper.page_title).to eq(brand)
      end
    end

    context 'title param present' do
      it 'displays title with appended brand' do
        expect(helper.page_title(title_param)).to eq(title_param + appended)
      end
    end

    context 'append_brand param absent' do
      it 'shows the appended brand' do
        expect(helper.page_title(title_param)).to eq(title_param + appended)
      end
    end

    context 'append_brand false/nil' do
      it 'does not show the appended brand' do
        expect(helper.page_title(title_param, nil)).to eq(title_param)
        expect(helper.page_title(title_param, false)).to eq(title_param)
      end
    end
  end
end
