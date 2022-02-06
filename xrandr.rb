# frozen_string_literal: true

# Module for xrandr tool usage
module Xrandr
  def self.current_brightness
    `xrandr --verbose | awk '/Brightness/ { print $2; exit }'`.to_f
  end

  def self.adjust_brightness(monitor:, brightness:)
    `xrandr --output #{monitor} --brightness #{brightness}`
  end

  def self.monitor
    # Use default monitor (primary) for now
    monitors = `xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1`.split('\n').map(&:strip)
    monitor = monitors.first
    if monitors.length > 1
      puts "Found more than one monitor (#{monitors.join(', ')})."
      puts "Defaulting to primary monitor #{monitor}..."
    else
      puts "Using monitor #{monitor}..."
    end
    monitor
  end
end
