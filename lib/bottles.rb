class Bottles
  def verses(start_num, end_num)
    all_verses = (end_num..start_num).collect{ |num|
      verse(num)
    }
    all_verses.reverse.join("\n")
  end

  def verse(num)
    if num == 2
      pronoun = "one"
      current_state = "bottles"
      next_state = "1 bottle of beer"
    elsif num == 1
      pronoun = "it"
      current_state = "bottle"
      next_state = "no more bottles of beer"
    elsif num == 0
      next_state = ""
    else
      pronoun = "one"
      current_state = "bottles"
      next_state = "#{num-1} bottles of beer"
    end
    "#{num} #{current_state} of beer on the wall, #{num} #{current_state} of beer.\nTake #{pronoun} down and pass it around, #{next_state} on the wall.\n"
  end

  def song
    bottles = Bottles.new
    (99..0).each {|num|
      bottles.verse(num)
    }
  end
end
