require 'rspec'
require './lib/necromancer'
require './lib/person'

RSpec.describe Necromancer do
  it 'has a name' do
    necromancer = Necromancer.new('Cassiopeia')
    expect(necromancer.name).to eq('Cassiopeia')
  end

  it 'has no zombie when created' do
    necromancer  = Necromancer.new('Cassiopeia')
    expect(necromancer.zombies).to be_empty
  end

  it 'gains a zombie when staring at a person' do
    necromancer  = Necromancer.new('Cassiopeia')
    victim = Person.new('Perseus')

    necromancer.stare(victim)
    expect(necromancer.zombies.count).to eq(1)
    expect(necromancer.zombies.first.name).to eq('Perseus')
    expect(necromancer.zombies.first).to be_an_instance_of(Person)
  end

  it 'turns a person to zombified when staring at them' do
    necromancer = Necromancer.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.zombified?).to be false
    necromancer.stare(victim)
    expect(victim.zombified?).to be true
  end

  it 'can only have three victims' do
    necromancer = Necromancer.new("Pamela")
    victim = Person.new("Jorja")
    victim2 = Person.new("Tim")
    victim3 = Person.new("Eric")
    victim4 = Person.new("Spatz")
    necromancer.stare(victim)
    necromancer.stare(victim2)
    necromancer.stare(victim3)
    necromancer.stare(victim4)
    
    expect(necromancer.zombies.count).to eq 3
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    necromancer = Necromancer.new("Pamela")
    victim = Person.new("Jorja")
    victim2 = Person.new("Tim")
    victim3 = Person.new("Eric")
    victim4 = Person.new("Spatz")
    necromancer.stare(victim)
    necromancer.stare(victim2)
    necromancer.stare(victim3)
    necromancer.stare(victim4)
    
    expect(necromancer.zombies.count).to eq 3
    expect(victim.zombified?).to be false
  end
end
