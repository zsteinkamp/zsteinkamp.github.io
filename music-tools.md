---
layout: page
title: Music Tools
navtitle: Music Tools
permalink: /music-tools/
data:
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
- title: Toggle Input
  image: https://github.com/zsteinkamp/m4l-js-toggleInput/raw/main/images/1.png
  link: https://github.com/zsteinkamp/m4l-js-toggleInput
  description:
  - This is a utility device whose sole purpose in life is to allow you to map a MIDI button to enable/disable recording in the currently selected track. This allows you to overdub automation recording without changing the MIDI or Audio clips that are already in the track. It saves you some hassle in disabling/enabling the track's inputs.
  - The device is mostly written in Javascript, and interfaces with the Live API.

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
