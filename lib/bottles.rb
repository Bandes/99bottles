class Bottles

  attr_accessor :initial_count, :count, :verse_string

  def initialize
    @initial_count = 99
    @count = @initial_count
  end

  def song
    verses(99, 0)
  end

  def verse(count)
    self.count = count
    "#{first_stanza}#{take_one_down}"
  end

  def verses(max, min)
    self.count = max
    song = ""
    while self.count >= min do
      song = "#{song}#{verse(self.count)}\n"
    end
    song.chomp
  end

  private

  def bottle_pluralized
    return 'bottle' if self.count == 1
    'bottles'
  end

  def pronoun
    return 'it' if self.count == 0
    'one'
  end

  def quantity_of_bottles_lowercase
    return 'no more' if self.count <= 0
    self.count
  end

  def quantity_of_bottles_uppercase
    return 'No more' if self.count <= 0
    self.count
  end

  def first_stanza
    "#{quantity_of_bottles_uppercase} #{bottle_pluralized} of beer on the wall, #{quantity_of_bottles_lowercase } #{bottle_pluralized} of beer.\n"
  end

  def take_one_down
    self.count -= 1
    if self.count >= 0
      "Take #{pronoun} down and pass it around, #{quantity_of_bottles_lowercase} #{bottle_pluralized} of beer on the wall.\n"
    else
      "Go to the store and buy some more, #{self.initial_count} #{bottle_pluralized} of beer on the wall.\n"
    end
  end

end
