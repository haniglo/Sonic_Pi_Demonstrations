use_bpm 120
use_synth :pulse

define :intro do
  notes = [:c4, :c4, :c4, :f4, :f4, :f4, :e4, :f4, :g4, :a4, :bb4, :g4, :a4]
  durations = [0.5, 0.5, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1]
  play_pattern_timed notes, durations
  sleep 0.5
end

define :partridge do
  notes = [:c5, :d5, :bb4, :a4, :f4, :g4, :f4]
  durations = [1, 0.5, 0.5, 0.5, 0.5, 1, 1]
  play_pattern_timed notes, durations
  sleep 2
end

define :item do
  notes = [:c5, :g4, :a4, :bb4, :g4]
  durations = [1, 0.5, 0.5, 0.5, 0.5]
  play_pattern_timed notes, durations
end

define :five_gold_rings do
  notes = [:c5, :d5, :b4, :c5]
  durations = [2, 0.5, 1.5, 2]
  play_pattern_timed notes, durations
  sleep 0.5
end

define :four_three_two do
  notes = [:c5, :bb4, :a4, :g4, :f4, :bb4, :d4, :d4, :f4, :g4, :f4, :e4, :d4, :c4]
  durations = [0.5, 0.5, 0.5, 0.5, 1, 1, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 1]
  play_pattern_timed notes, durations
end

days = 1

12. times do
  intro
  
  if days >= 5
    repeat = days - 5
    repeat.times do
      item
    end
    five_gold_rings
    four_three_two
  elsif days > 1
    repeat = days - 1
    repeat.times do
      item
    end
    play :a4
    sleep 0.5
  end
  partridge
  days = days + 1
end
