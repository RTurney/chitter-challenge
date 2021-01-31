require 'peeps'

describe Peeps do

  # describe '.initialize' do
  #   it 'will have an empty array upon initlisation' do
  #     expect(Peeps.peep_list).to be_an(Array)
  #     expect(Peeps.peep_list).to be_empty
  #   end
  # end

  describe '.add_peep' do
    it 'will add a peep to the list of peeps' do
      Peeps.post_peep('Hello world')
      expect(Peeps.peep_list.first).to include('Hello world')
    end
  end

  describe '.peep_list' do
    it 'will print peeps in reverse chronological order' do
      Peeps.post_peep('First Peep')
      Peeps.post_peep('Second Peep')
      p Peeps.peep_list
      expect(Peeps.peep_list).not_to eq ['First Peep', 'Second Peep']
    end
  end
end
