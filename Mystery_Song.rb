use_synth :tb303
use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100

1.times do
  #use_synth :tb303
  #use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100
  play chord(:A3, :minor)
  sleep 2
  play chord(:C4, :major)
  sleep 2
  play chord(:E3, :minor)
  sleep 2
  play chord(:D4, :major)
  sleep 2
end

in_thread do
  #use_synth :tb303
  #use_synth_defaults release: 0.25, attack: 0.5, cutoff: 100
  loop do
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :D3
    sleep 2
    play chord(:A3, :minor)
    play :A2
    sleep 2
    play chord(:C4, :major)
    play :C3
    sleep 2
    play chord(:E3, :minor)
    play :E3
    sleep 2
    play chord(:D4, :major)
    play :Gb3
    sleep 2
  end
end

in_thread do
  use_synth :tb303
  use_synth_defaults attack: 0.1, release: 0.1
  loop do
    2.times do
      sleep 0.25
      play :C5
      sleep 0.25
      play :C5
      sleep 0.25
      play :C5
      sleep 0.125
      play :C5
      sleep 0.25
      play :C5
      sleep 0.125
      play :C5
      sleep 0.25
      play :D5
      sleep 0.5
    end
    sleep 0.25
    play :B4
    sleep 0.25
    play :B4
    sleep 0.25
    play :B4
    sleep 0.125
    play :B4
    sleep 0.25
    play :B4
    sleep 0.125
    play :B4
    sleep 0.25
    play :D5
    sleep 0.5
    sleep 0.25
    play :A4
    sleep 0.25
    play :A4
    sleep 0.25
    play :A4
    sleep 0.125
    play :A4
    sleep 0.25
    play :A4
    sleep 0.125
    play :B4
    sleep 0.25
    play :A4
    sleep 0.25
    play :G4
    sleep 0.25
  end
end

in_thread do
  loop do
    3.times do
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
      sample :drum_heavy_kick
      sleep 0.5
      sample :drum_snare_hard
      sleep 0.5
    end
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_heavy_kick
    sleep 0.25
    sample :drum_snare_hard
    sleep 0.25
  end
end