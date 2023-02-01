define :riff1 do
  with_bpm 120 do
    play 50
    play 55
    sleep 1
    play 53
    play 58
    sleep 1
    play 55, release: 1.5
    play 60, release: 1.5
  end
end

define :riff2 do
  with_bpm 120 do
    play :d3
    play :g3
    sleep 1
    play :f3
    play :bb3
    sleep 1
    play :ab3, release: 1.5
    play :cs4, release: 1.5
    sleep 0.5
    play :g3, release: 2
    play :c4, release: 2
  end
end

live_loop :smoke do
  with_bpm 120 do
    with_fx :distortion, distort: 0.9 do
      use_synth :dsaw
      riff1
      sleep 1.5
      riff2
      sleep 2.0
      riff1
      sleep 1.5
      play 53
      play 58
      sleep 1
      play 50, release: 3
      play 55, release: 3
      sleep 3.5
    end
  end
end

live_loop :drums do
  with_bpm 120 do
    sync:smoke
    8. times do
      sample :drum_cymbal_closed, amp: 2
      sleep 0.5
      sample :drum_cymbal_closed, amp: 2
      sleep 0.25
      sample :drum_cymbal_closed, amp: 2
      sleep 0.25
      sample :drum_cymbal_closed, amp: 2
      sample :drum_snare_hard, amp: 2
      sleep 0.5
      sample :drum_cymbal_closed, amp: 2
      sleep 0.25
      sample :drum_cymbal_closed, amp: 2
      sleep 0.25
    end
  end
end

live_loop :bass do
  sync :smoke
  with_bpm 120 do
    32. times do
      play 43, amp: 6
      sleep 0.5
    end
  end
end