def event(description, &block)
  @events << {:description => description, :condition => block}
end

def setup(&block)
  @setups << block
end

@events = []
@setups = []

load('events.rb')

@events.each do |e|
  @setups.each do |s|
    s.call
  end

  puts "ALERT: #{e[:description]}" if e[:condition].call
end
