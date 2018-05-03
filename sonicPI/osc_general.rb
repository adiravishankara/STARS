dir = "../../../home/pi/Documents/GIT/STARS/music"
A = load_sample dir, :a
B = load_sample dir, :b
C = load_sample dir, :c


#onstartup
#play 90
use_synth :pluck
play_pattern_timed [55, 52, 57, 60, 65], [0.2,0.2,0.2,0.3]
#the liveloops
live_loop :swipe_ns do
  use_real_time
  a = sync "/osc/a/north - south"
  sample A
end



live_loop :swipe_sn do
  use_real_time
  a = sync "/osc/a/south - north"
  sample B
end



live_loop :swipe_we do
  use_real_time
  a = sync "/osc/a/west - east"
  sample B
end



live_loop :swipe_ew do
  use_real_time
  a = sync "/osc/a/east - west"
  sample C
  
end



live_loop :aw do
  use_real_time
  a = sync "/osc/a/airwheeltxt"
  synth :dark_ambience, note: a, sustain: 3
  
end



live_loop :x_range do
  use_real_time
  a,b,c = sync "/osc/a/xyz"
  synth :piano, note: a
  
end



live_loop :y_range do
  use_real_time
  a,b,c = sync "/osc/a/xyz"
  synth :dsaw, note: b
  
end


live_loop :z_range do
  use_real_time
  a,b,c = sync "/osc/a/xyz"
  synth :blade, note: c
  
end

use_synth :pluck
play_pattern_timed [55, 52, 57, 60, 65], [0.2,0.2,0.2,0.3]
#the liveloops
live_loop :swipe_ns do
  use_real_time
  a = sync "/osc/b/north - south"
  sample A
end



live_loop :swipe_sn do
  use_real_time
  a = sync "/osc/b/south - north"
  sample B
end



live_loop :swipe_we do
  use_real_time
  a = sync "/osc/b/west - east"
  sample B
end



live_loop :swipe_ew do
  use_real_time
  a = sync "/osc/b/east - west"
  sample C
  
end



live_loop :aw do
  use_real_time
  a = sync "/osc/b/airwheeltxt"
  synth :dark_ambience, note: a, sustain: 3
  
end



live_loop :x_range do
  use_real_time
  a,b,c = sync "/osc/b/xyz"
  synth :piano, note: a
  
end



live_loop :y_range do
  use_real_time
  a,b,c = sync "/osc/b/xyz"
  synth :dsaw, note: b
  
end


live_loop :z_range do
  use_real_time
  a,b,c = sync "/osc/b/xyz"
  synth :blade, note: c
  
end

use_synth :pluck
play_pattern_timed [55, 52, 57, 60, 65], [0.2,0.2,0.2,0.3]
#the liveloops
live_loop :swipe_ns do
  use_real_time
  a = sync "/osc/c/north - south"
  sample A
end



live_loop :swipe_sn do
  use_real_time
  a = sync "/osc/c/south - north"
  sample B
end



live_loop :swipe_we do
  use_real_time
  a = sync "/osc/c/west - east"
  sample B
end



live_loop :swipe_ew do
  use_real_time
  a = sync "/osc/c/east - west"
  sample C
  
end



live_loop :aw do
  use_real_time
  a = sync "/osc/c/airwheeltxt"
  synth :dark_ambience, note: a, sustain: 3
  
end



live_loop :x_range do
  use_real_time
  a,b,c = sync "/osc/c/xyz"
  synth :piano, note: a
  
end



live_loop :y_range do
  use_real_time
  a,b,c = sync "/osc/c/xyz"
  synth :dsaw, note: b
  
end


live_loop :z_range do
  use_real_time
  a,b,c = sync "/osc/c/xyz"
  synth :blade, note: c
  
end






