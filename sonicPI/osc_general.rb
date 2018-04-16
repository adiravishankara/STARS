dir = "C:/Users/arka_/Documents/Python_workSpace/cct_project/audiowav"
A = load_sample dir, :gooseA
B = load_sample dir, :gooseS
C = load_sample dir, :gooseSN
D = load_sample dir, :lullS
E = load_sample dir, :Twinkle
F = load_sample dir, :Water

#onstartup
#play 90
use_synth :pluck
play_pattern_timed [55, 52, 57, 60, 65], [0.2,0.2,0.2,0.3]
#the liveloops
live_loop :swipe_ns do
  use_real_time
  a = sync "/osc/gooseA"
  sample A
end



live_loop :swipe_sn do
  use_real_time
  a = sync "/osc/gooseS"
  sample B
end



live_loop :swipe_we do
  use_real_time
  a = sync "/osc/Twinkle"
  sample E
end



live_loop :swipe_ew do
  use_real_time
  a, b, c = sync "/osc/Water"
  sample F
  
end



live_loop :aw do
  use_real_time
  a = sync "/osc/airwheel"
  synth :dark_ambience, note: a, sustain: 3
  
end



live_loop :x_range do
  use_real_time
  a = sync "/osc/x_range"
  synth :piano, note: a
  
end



live_loop :y_range do
  use_real_time
  a = sync "/osc/y_range"
  synth :dsaw, note: a
  
end


live_loop :z_range do
  use_real_time
  a = sync "/osc/z_range"
  synth :blade, note: a
  
end






