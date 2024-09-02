require 'rails_helper'

RSpec.describe Address, type: :model do
  subject do
    described_class.new(
      zip_code:,
      street:,
      neighborhood:,
      number:,
      city:,
      state:,
      complement:
    )
  end

  let(:builded_address) { build(:address) }

  let!(:zip_code) { builded_address.zip_code }
  let!(:street) { builded_address.street }
  let!(:neighborhood) { builded_address.neighborhood }
  let!(:number) { builded_address.number }
  let!(:city) { builded_address.city }
  let!(:state) { builded_address.state }
  let!(:complement) { builded_address.complement }

  context 'when sucessful' do
    context 'when valid params' do
      it do
        expect(subject).to be_valid
      end
    end
  end

  context 'when unsuccessful' do
    context 'when pass attribute without validation' do
      context "when zip_code" do
        let!(:zip_code) { '57000000' }
        let!(:message) { "Zip code deve estar no formato xxxxx-xxx" }

        it do
          expect(subject).not_to be_valid
          expect(subject.errors.full_messages.to_sentence).to eq(message)
        end
      end
    end

    context 'when do not pass a required attribute' do
      context 'when attribute has one validation' do
        [:street, :neighborhood, :number, :city, :state].each do |attribute|
          context "when #{attribute}" do
            let!(attribute) {}
            let!(:message) { "#{attribute.to_s.humanize} can't be blank" }
  
            it do
              expect(subject).not_to be_valid
              expect(subject.errors.full_messages.to_sentence).to eq(message)
            end
          end
        end
      end

      context 'when attribute has other validation' do
        context "when zip_code" do
          let!(:zip_code) {}
          let!(:message) { "Zip code deve estar no formato xxxxx-xxx and Zip code can't be blank" }

          it do
            expect(subject).not_to be_valid
            expect(subject.errors.full_messages.to_sentence).to eq(message)
          end
        end
      end
    end
  end
end
