class Dragon
  def initialize name
    @name = name
    @asleep = false
    @belly = 10
    @bladder = 0
    
    puts "#{@name} is born."
  end
  def feed
    puts "You feed #{@name}."
    @belly = 10
    passage_of_time
  end
  def walk
    puts "You walk #{@name}"
    @bladder = 0
    passage_of_time
  end
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = false
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end 
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He breifly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '.. but wakes up when you stop.'
    end
  end
  private

  def hungry?
    @belly <= 2
  end

  def poopy?
    @bladder >=8
  end

  def passage_of_time
    if @belly > 0
      @belly -= 1
      @bladder += 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#@{name} is starving! In despersation, he ate YOU!"
      exit
  end 
  if @stuff_in_intestine >= 10       
    @stuff_in_intestine = 0       
    puts "Whoops!#{@name} had an accident..." 
  end 
  if hungry? 
    if @asleep         
      @asleep = false         
      puts 'He wakes up suddenly!' 
    end  
    puts " #{@name} 's stomach grumbles..." 
  end 
  if poopy? 
    if @asleep         
      @asleep = false         
      puts 'He wakes up suddenly!' 
    end       
    puts " #{@name} does the potty dance..." 
  end 
end
end

pet = Dragon.new 'Norbet'
pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
