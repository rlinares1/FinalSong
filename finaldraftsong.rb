#Tank! by The Seatbelts
#Stardust Crusaders by Yugo Kanno

#tank! (song1)

#main samples
radio = "C:/Users/romario_linares/Desktop/samples/radio.wav"
siren = "C:/Users/romario_linares/Desktop/samples/siren.wav"
jail = "C:/Users/romario_linares/Desktop/samples/jail.wav"
pizza = "C:/Users/romario_linares/Desktop/samples/pizza.wav"
dream = "C:/Users/romario_linares/Desktop/samples/dream.wav"
gummi = "C:/Users/romario_linares/Desktop/samples/gummy.wav"
footsteps = "C:/Users/romario_linares/Desktop/samples/footsteps.wav"
gotem = "C:/Users/romario_linares/Desktop/samples/gothim.wav"
glass = "C:/Users/romario_linares/Desktop/samples/glassbreak.wav"

#randomization of samples
ranarray = [pizza, gummi, dream]

#b acts as number of times the beats/melodies need to be played
b = 0

#intro for first song
sample siren, amp: 1
sample radio

#printing how long samples are in console log
print sample_duration siren
print sample_duration radio
sleep 13.4

set :bpm , 144

sample jail, amp: 2
sample footsteps, amp: 5
#first song drum beat
live_loop :snare do
  sample :drum_snare_soft
  sleep 0.4
  #when b is played more than 7 times, entire song stops
  if (b >= 7) then
  stop end
end

#heavy kick acts as main beat for drums
live_loop :kik2 do
  sample :drum_heavy_kick, amp: 1.3
  sleep 0.2
  if (b >= 7) then
  stop end
end

sample radio

sample siren

sleep 12.78

sample glass
#cymbals and snare come in to match up with melody
live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.1
  if (b >= 7) then
  stop end
end

live_loop :snare2 do
  sync :kik
  sample :drum_snare_hard
  sleep 0.3
  if (b >= 7) then
  stop end
end

#chipbass is the best synth for bass
use_synth :chipbass
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120

live_loop :bassmel do
  bass :c2, :g2, :gb2, :f2, :eb2, :c2, :bb1
  if (b >= 7) then
  stop end
end

#main bass
define :bass do |note1, note2, note3, note4, note5, note6, note7|
  play note1
  sleep 0.3
  play note2
  sleep 0.3
  play note3
  sleep 0.2
  play note4
  sleep 0.3
  play note5
  sleep 0.2
  play note6
  sleep 0.1
  play note7
  sleep 0.2
end

sleep 6.4

use_synth :square
use_synth_defaults attack: 0,
  decay: 0, amp: 1, sustain: 0.1, release: 0,
  cutoff: 120

#second bass
live_loop :bassmel2 do
  4.times do
    bass :c3, :g3, :gb3, :f3, :eb3, :c3, :bb2
  end
  stop
end

#play a random sample
sampleChoose = rrand_i(0, 2)
sample ranarray[sampleChoose], amp: 3

sleep 6.4

#first melody
melarray = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
i = 0
sleeparray = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
2.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    i +=1
  end
  
  #note needs to be held longer
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

#second melody raised to a different set of chords
melarray2 = [:f3, :c4, :f3, :b3, :f3, :ab3, :f3]
k = 0
sleeparray2 = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]
use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  k = 0
  7.times do
    #multiple variables so it doesn't repeat the variables, messing code up
    play melarray2[k]
    sleep sleeparray2[k]
    k +=1
  end
  play :eb3, sustain: 0.3
  sleep 0.36
  play :f3, sustain: 0.4
  sleep 1.85
end

1.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    i +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0,
  cutoff: 120

live_loop :mel do
  2.times do
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.4
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :g4, sustain: 0.6
    play :c5, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.5
  end
  stop
end

#array
melarray = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
i = 0
sleeparray = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
2.times do
  
  i = 0
  7.times do
    play melarray[i]
    sleep sleeparray[i]
    #variables
    i +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

#background melody for second major
use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0,
  cutoff: 120

live_loop :mel2 do
  1.times do
    play :eb4
    play :c4
    play :f4
    sleep 0.4
    
    play :eb4
    play :c4
    play :b4
    sleep 0.4
    
    play :eb4
    play :c4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :c4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :c4, sustain: 0.6
    play :f4, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :c4
    play :f4
    sleep 0.4
    
    play :eb4
    play :c4
    play :b4
    sleep 0.3
    
    play :eb4
    play :c4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :c4
    play :b4
    sleep 0.5
  end
  stop
end

#second melody in a different major
melarray2 = [:f3, :c4, :f3, :b3, :f3, :ab3, :f3]
k = 0
sleeparray2 = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]
use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  k = 0
  7.times do
    play melarray2[k]
    sleep sleeparray2[k]
    k +=1
  end
  play :eb3, sustain: 0.3
  sleep 0.36
  play :f3, sustain: 0.4
  sleep 1.85
end

#second background melody also in a different major to match melarray2 chords
use_synth :piano
use_synth_defaults attack: 0,
  decay: 0, sustain: 0.4, release: 0.2,
  cutoff: 120

live_loop :mel do
  1.times do
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.4
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4, sustain: 0.6
    play :g4, sustain: 0.6
    play :c5, sustain: 0.6
    sleep 0.3
    
    play :eb4
    play :g4
    play :c5
    sleep 0.4
    
    play :eb4
    play :g4
    play :b4
    sleep 0.3
    
    play :eb4
    play :g4
    play :bb4
    sleep 0.3
    
    play :eb4, release: 0.7
    play :g4, release: 0.7
    play :b4, release: 0.7
    sleep 0.5
  end
  stop
end

melarrayend = [:c3, :g3, :c3, :gb3, :c3, :eb3, :c3]
b = 0
sleeparrayend = [0.1, 0.2, 0.1, 0.2, 0.1, 0.2, 0.1]

use_synth :blade
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.1, release: 0,
  cutoff: 120
1.times do
  
  b = 0
  7.times do
    play melarrayend[b]
    sleep sleeparrayend[b]
    b +=1
  end
  play :bb2, sustain: 0.3
  sleep 0.36
  play :c3, sustain: 0.4
  sleep 1.85
end

goodgrief = "C:/Users/romario_linares/Desktop/samples/grief.wav"
ora = "C:/Users/romario_linares/Desktop/samples/ora.wav"
copter = "C:/Users/romario_linares/Desktop/samples/chopper.wav"

sample siren
sample radio
sample copter
print sample_duration copter
sleep 13.4

sample goodgrief, amp: 5
sleep 0.01

#a equals 0 so when it goes over 29, song will stop
a = 0

#jotaro theme (song 2)

use_bpm 60

#drums for jotaro
live_loop :kik do
  sample :drum_bass_hard, amp: 1.3
  sleep 0.2
  if (a >= 29) then
  stop end
end

live_loop :snare do
  sync :kik
  sleep 0.1
  sample :drum_snare_soft
  sleep 0.7
  if (a >= 29) then
  stop end
end

live_loop :snare2 do
  sync :kik
  sleep 0.6
  sample :drum_snare_hard
  sleep 1
  if (a >= 29) then
  stop end
end

melarray = [:f2, :f2, :eb2, :c2, :ab1, :f1, :b1, :bb1, :ab1, :f1, :b1, :bb1, :ab1, :f1, :d2, :eb2, :e2]
i = 0
sleeparray = [0.1, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2]

in_thread do
  use_synth :chipbass
  use_synth_defaults attack: 0,
    decay: 0, amp: 3, sustain: 0.1, release: 0,
    cutoff: 120
  8.times do
    i = 0
    17.times do
      play melarray[i]
      sleep sleeparray[i]
      i +=1
    end
  end
end

melarray2 = [:f3, :f3, :eb3, :c3, :ab2, :f2, :b2, :bb2, :ab2, :f2, :b2, :bb2, :ab2, :f2, :d3, :eb3, :e3]
k = 0
sleeparray2 = [0.1, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2]
sleep 6.4
in_thread do
  use_synth :chipbass
  use_synth_defaults attack: 0,
    decay: 0, amp: 2, sustain: 0.1, release: 0,
    cutoff: 120
  6.times do
    k = 0
    17.times do
      play melarray2[k]
      sleep sleeparray2[k]
      k +=1
    end
  end
end

live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.7
  sleep 0.1
  if (a >= 29) then
  stop end
end

sleep 6.4

in_thread do
  use_synth :chiplead
  use_synth_defaults attack: 0,
    decay: 0, amp: 1, sustain: 0.1, release: 0,
    cutoff: 120
  9.times do
    play :f3
    play :ab3
    play :bb3
    sleep 0.2
    play :f3
    play :ab3
    play :bb3
    sleep 0.2
    play :f3
    play :ab3
    play :bb3
    sleep 0.3
  end
  
  play :f3
  play :ab3
  play :bb3
  sleep 0.1
  
  8.times do
    play :f4
    play :ab4
    play :bb4
    sleep 0.2
    play :f4
    play :ab4
    play :bb4
    sleep 0.2
    play :f4
    play :ab4
    play :bb4
    sleep 0.3
  end
end

melarray3 = [:f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :eb3, :f3, :gb3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3]
j = 0
sleeparray3 = [0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.8]
sleep 12.8
in_thread do
  use_synth :chipbass
  use_synth_defaults attack: 0,
    decay: 0, amp: 3, sustain: 0.1, release: 0,
    cutoff: 120
  1.times do
    
    j = 0
    29.times do
      play melarray3[j]
      sleep sleeparray3[j]
      j +=1
    end
  end
end

sleep 6.377
melarray = [:f2, :f2, :eb2, :c2, :ab1, :f1, :b1, :bb1, :ab1, :f1, :b1, :bb1, :ab1, :f1, :d2, :eb2, :e2]
i = 0
sleeparray = [0.1, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2, 0.3, 0.2, 0.1, 0.2]

in_thread do
  use_synth :chipbass
  use_synth_defaults attack: 0,
    decay: 0, amp: 3, sustain: 0.1, release: 0,
    cutoff: 120
  8.times do
    i = 0
    17.times do
      play melarray[i]
      sleep sleeparray[i]
      i +=1
    end
  end
end

use_synth :tri
use_synth_defaults attack: 0,
  decay: 0, amp: 2, sustain: 0.2, release: 0,
  cutoff: 120
define :mel1 do |n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13|
  play n1
  sleep 1.6
  play n2
  sleep 0.6
  play n3
  sleep 0.6
  play n4
  sleep 0.4
  play n5
  sleep 2.6
  play n6
  sleep 0.2
  play n7
  sleep 0.2
  play n8
  sleep 0.2
  play n9
  sleep 0.3
  play n10
  sleep 0.3
  play n11
  sleep 0.3
  play n12
  sleep 0.3
  play n13
  sleep 0.2
end

mel1 :f3, :ab3, :c4, :f4, :g4, :ab4, :bb4, :b4, :c5, :b4, :ab4, :f4, :c4

define :mel2 do |n1, n2, n3, n4, n5, n6, n7|
  play n1
  sleep 0.25
  play n2
  sleep 0.2
  play n3
  sleep 0.3
  play n4
  sleep 0.25
  play n5
  sleep 0.6
  play n6
  sleep 0.2
  play n7
end

mel2 :c5, :b4, :ab4, :f4, :c4, :eb4, :d4

sleep 2.6

play :f4
sleep 0.1
play :e4
sleep 0.1
play :eb4
sleep 0.1
play :d4
sleep 0.1
play :eb4
sleep 0.1
play :e4
sleep 0.1
play :f4, sustain: 1
sleep 1.6

sample ora, amp: 2
play :c4
play :f4
play :ab4
sleep 0.6
play :f4
play :ab4
play :c5
sleep 0.6
play :ab4
play :c5
play :f5
sleep 0.4
play :ab4
play :d5
play :g5
sleep 2
play :f5
play :ab5
sleep 0.4
play :f5
play :bb5
sleep 0.4
play :f5
play :b5
sleep 0.4
play :f5
play :c6
sleep 0.3
play :f5
play :b5
sleep 0.3
play :f5
play :ab5
sleep 0.3
play :c5
play :f5
sleep 0.3
play :ab4
play :c5
sleep 0.2
play :f5
play :c6
sleep 0.2
play :f5
play :b5
sleep 0.3
play :f5
play :ab5
sleep 0.3
play :c5
play :f5
sleep 0.4
play :eb5
sleep 0.3
play :eb6
sleep 0.2
play :g5
play :bb5
play :d6

sleep 3.3
melarray4 = [:f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :eb3, :f3, :gb3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3, :c3, :eb3, :e3, :f3]
a = 0
sleeparray4 = [0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.3, 0.2, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.8]
in_thread do
  use_synth :chipbass
  use_synth_defaults attack: 0,
    decay: 0, amp: 3, sustain: 0.1, release: 0,
    cutoff: 120
  1.times do
    
    a = 0
    29.times do
      play melarray4[a]
      sleep sleeparray4[a]
      a +=1
    end
  end
end

#end of the entire song
sleep 6
use_synth :tri
use_synth_defaults attack: 0,
  decay: 0, amp: 3, sustain: 0.4, release: 0.7,
  cutoff: 120

play :c4
play :eb4
play :g4

sleep 1
sample gotem, amp: 3