#James Bond Theme
use_bpm 220

w = 4
dh = 3
h = 2
dq = 1.5
q = 1
e = 0.5

#Drums
in_thread do
  48.times do
    sleep h
    sample :drum_cymbal_closed
    sleep h
  end
  2.times do
    sample :drum_cymbal_closed
    sleep dq
    sample :drum_cymbal_closed
    sleep h
    sample :drum_bass_hard
    sleep e+h
  end
  2.times do
    sample :drum_cymbal_closed
    sleep dq
  end
  sample :drum_cymbal_closed
  sleep q
  40.times do
    sleep 2
    sample :drum_cymbal_closed
    sleep 2
  end
  2.times do
    sample :drum_cymbal_closed
    sleep dq
    sample :drum_cymbal_closed
    sleep h
    sample :drum_bass_hard
    sleep e+h
  end
  2.times do
    sample :drum_cymbal_closed
    sleep dq
  end
  sample :drum_cymbal_closed
  sleep q
end


#Bass
in_thread do
  use_synth :blade
  use_synth_defaults amp: 0.8
  12.times do
    play_pattern_timed [:b2,:b2,:c3,:c3,:cs3,:cs3,:c3,:c3],[dh,q,dh,q,dh,q,dh,q], release: 0.1
  end
  play_pattern_timed [:b2,:b2,:r,:b3,:r,:b2,:b2,:r,:b3,:r,:b2,:b2,:r],[dq,dq,e,h,e,dq,dq,e,h,e,dq,dq,q], release: 0.1
  10.times do
    play_pattern_timed [:b2,:b2,:c3,:c3,:cs3,:cs3,:c3,:c3],[dh,q,dh,q,dh,q,dh,q], release: 0.1
  end
  play_pattern_timed [:b2,:b2,:r,:b3,:r,:b2,:b2,:r,:b3,:r,:b2,:b2,:r],[dq,dq,e,h,e,dq,dq,e,h,e,dq,dq,q], release: 0.1
end

#Left Hand
in_thread do
  use_synth :chipbass
  use_synth_defaults pan: 0.2
  sleep 8*w
  3.times do
    play_pattern_timed [:b2,:c3,:cs3,:c3],[w,w,w,w]
  end
  sleep 4*w
  sleep 24*w
  play_pattern_timed [:r,:r,:r,:b2,:r,:r,:r,:r,:b2,:r,:r],[h,q,e,h,e,h,q,e,h,e,w]
  sleep 8*w
  3.times do
    play_pattern_timed [:b2,:c3,:cs3,:c3],[w,w,w,w]
  end
  sleep 4*w
  4.times do
    play_pattern_timed [:b2,:c3,:cs3,:c3],[w,w,w,w]
  end
  use_synth :hoover
  play_pattern_timed [:r,:r,:r,:b2,:r,:r,:r,:r,:b2,:r,:r],[h,q,e,h,e,h,q,e,h,e,w]
end

#Right Hand
in_thread do
  use_synth :chiplead
  use_synth_defaults pam: -0.2, amp: 1.5
  sleep 8*w
  play_pattern_timed [:e3,:fs3,:fs3,:fs3,:fs3,:e3,:e3,:e3,:e3,:g3,:g3,:g3,:g3,:fs3,:fs3,:fs3],[q,e,e,q,h,q,q,q,q,e,e,q,h,q,q,q]
  play_pattern_timed [:e3,:fs3,:fs3,:fs3,:fs3,:e3,:e3,:e3,:e3,:g3,:g3,:g3,:g3,:fs3,:f3,:e3],[q,e,e,q,h,q,q,q,q,e,e,q,h,q,q,q]
  play_pattern_timed [:eb4,:d4,:b3,:a3,:b3,:r],[q,dh+h,q,q,w,w]
  sleep 4*w
  2.times do
    play_pattern_timed [:e3,:g3,:r,:eb4,:d4,:g3,:bb3,:b3,:r,:g3,:fs3,:b2,:e3,:cs3],[q,q,q,q,dh,q,q,dh,dh,h,w,q,q,q+w+w]
  end
  sleep 8*w
  play_pattern_timed [:b3,:b3,:r,:r,:b3,:b3,:r,:r,:b3,:a3,:r,:g3,:fs3,:e3],[dq,dq,q,h,dq,dq,q,h,e,e,e,e,q,q]
  sleep 8*w
  play_pattern_timed [:e3,:fs3,:fs3,:fs3,:fs3,:e3,:e3,:e3,:e3,:g3,:g3,:g3,:g3,:fs3,:fs3,:fs3],[q,e,e,q,h,q,q,q,q,e,e,q,h,q,q,q]
  play_pattern_timed [:e3,:fs3,:fs3,:fs3,:fs3,:e3,:e3,:e3,:e3,:g3,:g3,:g3,:g3,:fs3,:f3,:e3],[q,e,e,q,h,q,q,q,q,e,e,q,h,q,q,q]
  play_pattern_timed [:eb4,:d4,:b3,:a3,:b3,:r],[q,dh+h,q,q,w,w]
  sleep 4*w
  2.times do
    play_pattern_timed [:e3,:g3,:r,:eb4,:d4,:g3,:bb3,:b3,:r,:g3,:fs3,:b2,:e3,:cs3],[q,q,q,q,dh,q,q,dh,dh,h,w,q,q,q+w+w]
  end
  play_pattern_timed [:b3,:b3,:r,:b3,:b3,:r,:b3,:a3,:r,:g3,:fs3,:e3],[dq,dq,dh,dq,dq,dh,e,e,e,e,q,q]
end