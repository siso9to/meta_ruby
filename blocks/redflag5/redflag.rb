lambda {
  setup_blocks = []
  event_blocks = []

  Kernel.send :define_method, :setup do |&block|

  setup_blocks << block
  end

  Kernel.send :define_method, :event do |description, &block|
    event_blocks << {:description => description, :condition => block}
  end

  Kernel.send :define_method, :each_setup do |&block|

  setup_blocks.each do |setup|
      block.call setup
    end
  end

  Kernel.send :define_method, :each_event do |&block|
    event_blocks.each do |event|
      block.call event
    end
  end
}.call

load 'events.rb'

each_event do |event|
  env = Object.new

  each_setup do |setup|
    env.instance_eval &setup
  end

  puts "ALERT: #{event[:description]}" if env.instance_eval &(event[:condition])
end
