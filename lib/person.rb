require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account
  attr_accessor :happiness
  attr_accessor :hygiene

  def initialize(name, happiness = 8, hygiene = 8, bank_account = 25)
    @name = name
    @happiness = happiness
    @hygiene = hygiene
    @bank_account = bank_account
  end

  def name
    @name
  end

  def bank_account 
    @bank_account 
  end

  def bank_account=(value)
    @bank_account = value
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else 
      @happiness = value
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(value)
    if value >10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else 
      @hygiene = value
    end
  end
  
  def clean? 
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(amount)
    self.bank_account = self.bank_account + amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end 

  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics" 
      self.happiness = self.happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif
      topic == "weather"
      self.happiness = self.happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end