#Mission Impossible

use_bpm 160
amp_bass = 1
amp_hi = 0.5
amp_kick = 1
amp_melody = 1.2
amp_pad = 0.7

#Bass
in_thread do
  use_synth :chiplead
  24.times do
    play_pattern_timed [:a2,:a2,:c3,:d3,:a2,:a2,:g2,:gs2],
      [1.5,1.5,1,1,1.5,1.5,1,1],
      sustain: 0.5, release: 0.5, amp: amp_bass, pan: 0.51
  end
end

define :wash do
  10.times do
    play :a3, release: 0.1, attack: 0.05, sustain: 0.1, amp: amp_hi, pan: 0.49
    sleep 0.5
  end
end

define :kick do
  sample :drum_bass_hard
  sleep 1.5
  sample :drum_bass_hard
  sleep 1.5
  sample :drum_bass_hard
  sleep 1
  sample :drum_bass_hard
  sleep 1
end

#Drums
in_thread do
  use_synth :noise
  24.times do
    wash
  end
  4.times do
    kick
  end
  16.times do
    wash
  end
  4.times do
    kick
  end
end

define :melody1 do
  play_pattern_timed [:c4,:a3,:e3,:c4,:a3,:ds3,
  :c4,:a3,:d3,:c3,:d3],
    [0.5,0.5,4,0.5,0.5,4,
     0.5,0.5,4,0.5,0.5],
    amp: amp_melody
  sleep 4
  play_pattern_timed [:c3,:a2,:gs3,:c3,:a2,:g3,
  :c3,:a2,:fs3,:f3,:e3],
    [0.5,0.5,4,0.5,0.5,4,
     0.5,0.5,4,0.5,0.5],
    amp: amp_melody
  sleep 4
end

define :melody2 do
  play_pattern_timed [:a2,:a2,:c3,:d3,:a2,:a2,:g2,:gs2],
    [1.5,1.5,1,1,1.5,1.5,1,1],
    sustain: 0.5, release: 0.5,amp: amp_melody
end

#Melody
in_thread do
  sleep 40
  use_synth :blade
  2.times do
    melody1
  end
  2.times do
    melody2
  end
  2.times do
    melody1
  end
  2.times do
    melody2
  end
end

#Pad
in_thread do
  use_synth :fm
  sleep 20
  play_pattern_timed [:a3,:a2,:a3,:a2],[5,5,5,5],
    amp: amp_pad, cutoff: 100
  sleep 100
  4.times do
    play_pattern_timed [:a3,:a2,:a3,:a2],[5,5,5,5],
      amp: amp_pad, cutoff: 100
  end
end