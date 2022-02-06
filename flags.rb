# frozen_string_literal: true

# Module for cli flags related services
module Flags
  def help_flag?
    (@flags & ['-h', '--help']).any?
  end

  def once_only_flag?
    (@flags & ['-o', '--only']).any?
  end

  def reset_brightness_flag?
    (@flags & ['-r', '--reset']).any?
  end

  def user_interval
    interval_flag_index = ARGV.index('-i') || ARGV.index('--index')
    interval_flag_index && ARGV[interval_flag_index + 1]
  end
end
