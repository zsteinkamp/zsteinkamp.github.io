---
layout: page
title: Music Tools
navtitle: Music Tools
permalink: /music-tools/
data:
- title: Modulation Math
  image: https://github.com/zsteinkamp/m4l-Modulation-Math/raw/main/images/device.gif
  link: https://github.com/zsteinkamp/m4l-Modulation-Math
  description:
  - This device combines two automation signals using math, and outputs a signal you can then map to a parameter.
- title: Modulation Delay
  image: https://github.com/zsteinkamp/m4l-Modulation-Delay/raw/main/images/device.gif
  link: https://github.com/zsteinkamp/m4l-Modulation-Delay
  description:
  - It's a feedbacking echo effect for automation data! Turn pulses into automation oceans!
- title: Modulation Stepper
  image: https://github.com/zsteinkamp/m4l-Modulation-Stepper/raw/main/images/device.gif
  link: https://github.com/zsteinkamp/m4l-Modulation-Stepper
  description:
  - Turns continuous automation input into stair-stepped output at your chosen frequency or note interval.
- title: TapPanVerb
  image: https://github.com/zsteinkamp/m4l-TapPanVerb/raw/main/images/device.png
  link: https://github.com/zsteinkamp/m4l-TapPanVerb
  description:
  - A reverb + bucket-brigade delay tap field with control over timing and stereo placement of each tap. Up to 128 taps + an insane feedback control.
- title: zs Knobbler3
  image: https://github.com/zsteinkamp/m4l-zs-Knobbler3/raw/main/images/ipadInterface.jpg
  link: https://github.com/zsteinkamp/m4l-zs-Knobbler3
  description:
  - This is a combination of Max For Live device and TouchOSC layout that provides an auto-labeling tactile control surface for Ableton Live.
- title: zs Faderboard3
  image: https://github.com/zsteinkamp/m4l-zs-Faderboard3/raw/main/images/device.png
  link: https://github.com/zsteinkamp/m4l-zs-Faderboard3
  description:
  - This device was inspired by the Vestax Faderboard. It is an odd kind of sampler, with 10 voices to play back a sample at your chosen pitch. The thing that makes it unique is that each voice is played using a dedicated fader, and the sample is triggered when the fader leaves the silent position.
  - You can also control voice left/right pan position, loop start and end (with the ability to go backwards!), and trigger all voices to restart playing.
- title: Fractal Note Echo
  image: https://github.com/zsteinkamp/m4l-js-fractalNoteEcho/raw/main/images/iter2.3.png
  link: https://github.com/zsteinkamp/m4l-js-fractalNoteEcho
  description:
  - This is a MIDI Effect device that will trigger notes in a fractal pattern. The base fractal shape (in terms of timing between echo taps) can be defined, then number of iterations and iteration scale can be controlled. The kinds of textures you can get out of it are really surprising, and have been inspiring to me. There is a natural beauty and harmony to fractals, which can contribute a more natural feel to your sounds.
  - This device is mostly implemented in Javascript in Max For Live. Super fun to make.
- title: Fibonacci Note Echo
  image: https://github.com/zsteinkamp/m4l-js-fibonacciNoteEcho/raw/main/images/screenshot.png
  link: https://github.com/zsteinkamp/m4l-js-fibonacciNoteEcho
  description:
  - This is a MIDI Effect device that will repeat notes, with each repeat delay following the Fibonacci Sequence. You can control the number of repeats, time scale, pitch, and velocity change.
  - This was my first Javascript-based M4L patch. It was a great learning experience to figure out how to code up both the logic and visualization in M4L's Javascript environment.
- title: zs Send Duck Rack
  image: https://github.com/zsteinkamp/zs-Send-Duck-Rack/raw/main/images/device.png
  link: https://github.com/zsteinkamp/zs-Send-Duck-Rack
  description:
  - An audio effect rack that provides controls like an effects send, as well as a ducking feature for any effect.
- title: KS-Synth
  image: https://github.com/zsteinkamp/m4l-KS-Synth/raw/main/images/device.png
  link: https://github.com/zsteinkamp/m4l-KS-Synth
  description:
  - A polyphonic Karplus-Strong synthesizer. This was my first foray into [poly~] and can create a surprisingly wide range of sounds.
- title: Tempo To Ms
  image: https://github.com/zsteinkamp/m4l-TempoToMs/raw/main/images/device.png
  link: https://github.com/zsteinkamp/m4l-TempoToMs
  description:
  - Displays a grid of durations, in milliseconds, of various note lengths at the current song tempo.

---
I have made a handful of tools for electronic musicians who use Ableton Live Suite, which includes Max For Live.

Max For Live is a visual signal processing environment that integrates seamlessly with Ableton Live. This allows people like me to make my own utilities, effects, sound generators, and automation within my digital audio workstation (DAW). This is an incredibly powerful capability of Ableton Live that sets it apart from other DAWs. We are no longer limited to the tools that come with the DAW or installable VSTs. We can make our own devices to explore their own creativity to an amazing level, and share those tools as our own art that helps other artists make their art. It's really beautiful.

This page serves as a jumping off point to more detailed information about the devices.

<ul>
  {%- for app in page.data -%}
    <li><a href="#{{app.title}}">{{app.title}}</a></li>
  {%- endfor -%}
</ul>


<div class="apps">
  {%- for app in page.data -%}
    <br/>
    <br/>
    <br/>
    <h2><a name="{{app.title}}" href="{{app.link}}">{{app.title}}</a></h2>

    <p>
    <a href="{{app.link}}"><img src="{{app.image}}"/></a>
    </p>

    {%- for p in app.description -%}
    <p>{{p}}</p>
    {%- endfor -%}

    <a href="{{app.link}}"><button>More Info / Download</button></a>
  {%- endfor -%}
</div>
