require 'rspec'
require './lib/werefrog'

RSpec.describe Werefrog do
  it 'has a name' do
    werefrog = Werefrog.new('David')
    expect(werefrog.name).to eq('David')
  end

  it 'has a location' do
    werefrog = Werefrog.new('Heka', 'Luxor')
    expect(werefrog.location).to eq('Luxor')
  end

  it 'is by default human' do
    werefrog = Werefrog.new('David', 'London')
    expect(werefrog.human?).to be true
  end

  it 'when starting as a human, changing makes it turn into a werefrog' do
    werefrog = Werefrog.new('David', 'London')
    werefrog.change!
    expect(werefrog.frog?).to be true
    expect(werefrog.human?).to be false
  end

  it 'when starting as a human, changing again makes it be human again' do
    werefrog = Werefrog.new('David', 'London')
    expect(werefrog.human?).to be true

    werefrog.change!

    expect(werefrog.human?).to be false

    werefrog.change!

    expect(werefrog.human?).to be true
  end

  it 'when starting as a werefrog, changing a second time makes it a werefrog' do
    werefrog = Werefrog.new('David', 'London')

    werefrog.change!
    expect(werefrog.frog?).to be true

    werefrog.change!
    werefrog.change!

    expect(werefrog.frog?).to be true
  end

  it 'is not hungry by default' do
    werefrog = Werefrog.new('Cheeseman', 'Wisconsin')
    expect(werefrog.hungry?).to be false
  end

  it 'becomes hungry after changing to a werefrog' do
    werefrog = Werefrog.new('Fred', 'MS')
    werefrog.change!
    expect(werefrog.hungry?).to be true
  end

  class Victim
    attr_accessor :status

    def initialize
      @status = :alive
    end

    def kill!
      @status = :dead
    end
  end

  it 'consumes a victim' do
    werefrog = Werefrog.new('Elizabth', 'UK')
    victim = Victim.new
    werefrog.change!
    expect(werefrog.consume?(victim)).to be true

  end

  it 'cannot consume a victim if it is in human form' do
    werefrog = Werefrog.new('Elizabth', 'UK')
    victim = Victim.new
    werefrog.change!
    werefrog.change!
    expect(werefrog.consume?(victim)).to be false
  end

  it 'a werefrog that has consumed a human being is no longer hungry' do
    werefrog = Werefrog.new('Elizabth', 'UK')
    victim = Victim.new
    werefrog.change!
    werefrog.change!
    expect(werefrog.consume?(victim)).to be false
  end

  it 'a werefrog who has consumed a victim makes the victim dead' do
    werefrog = Werefrog.new('Elizabth', 'UK')
    victim = Victim.new
    werefrog.change!
    werefrog.consume?(victim)
    expect(victim.status).to eq :dead
  end

end