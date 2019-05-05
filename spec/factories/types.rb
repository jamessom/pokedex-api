FactoryBot.define do

  timestamp = loop do
    date = FFaker::Time.date.to_time
    break date.strftime("%F %T") if date <= Date.today
  end

  types = ['normal', 'fighting','flying', 'poison', 'ground', 'rock', 'bug', 'ghost']

  factory :type do
    name { types.sample }
  end
end
