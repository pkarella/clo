class Fixnum
  define_method(:clock_angle) do |m|
    hour_angle = 0.5 * (60 * self + m)
    minute_angle = 6 * m
    if self == 12
      return 0
    elsif minute_angle.<(hour_angle)
      angle = hour_angle - minute_angle
    else
      angle = minute_angle - hour_angle
    end
    angle
  end
end
