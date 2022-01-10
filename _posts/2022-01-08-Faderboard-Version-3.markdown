---
layout: post
title: Faderboard Version 3
date: '2022-01-08 12:00:00'
categories: post
entry:
  source: post
---

This post details a significant update to my original Faderboard device for Ableton Live. I finally made time to learn enough Max for Live to do this in the way that I always wanted.

The [prior version](/post/2021/12/01/faderboard-in-ableton.html) worked fine, but changing sounds was very cumbersome, requiring updating the sample loaded into 8 Simpler devices. This new version uses a single sample "drop zone", and offers some nice usability and capability improvements.

# Demo
Here is an instance of zs-Faderboard3 playing the example sample, sent through a Pedal device then into [Valhalla Supermassive](https://valhalladsp.com/shop/reverb/valhalla-supermassive/) on the "We Are Stardust" preset.

<iframe width="100%" height="315" src="https://www.youtube.com/embed/UWtkUmbyKyc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The demo shows off the device's loop management abilities too, including seamlessly transitioning from forward playback to reverse. It also shows a visualization of each voice's place in their journey through the sample.

# Get Started

Click the link below to download the Max For Live device:

* [zs-Faderboard3.amxd](https://github.com/zsteinkamp/m4l-zs-Faderboard3/blob/main/zs-Faderboard3.amxd?raw=true)

After downloading, you can then add the device file to your User Library in Ableton Live, or directly into a MIDI track. You can then drag a sample onto the "Drop Sample Here" area. The .wav file below is a nice example to start with. You can also drag a clip directly from an Audio track in Ableton Live to the drop zone.

* [Harmonic Flights- D3.wav](https://github.com/zsteinkamp/m4l-zs-Faderboard3/blob/main/samples/Harmonic%20Flights-%20D3.wav?raw=true)

Set the root note for your sample. For example, the above sample is rooted at D3.

Then move any of the Gain sliders from `-inf Db` to a positive value to start playing the sample at the pitch indicated above. The sample is triggered as soon as the Gain slider moves off of it's zero position.

You can also set each voice to its own left/right panning location.

# How It Works

The dropped sample populates a `buffer~` device. There are then 8 instances of a group of devices that will play back that buffer, starting with a `groove~` device. Each of those instances can be configured with a pitch/note to play. The Gain slider is connected to some logic/math that will trigger the `groove~` device to play once the gain is raised above `-inf Db`. Open it up and check it out!

<img src="/images/faderboard-boobie.png"/>

And it is also a Blue Footed Boobie.

<img src="/images/faderboard-boobie-real.jpg"/>

# Contributing

If you would like to contribute, then please have a look at [the code on GitHub](https://github.com/zsteinkamp/m4l-zs-Faderboard3). Fork the repo, make your changes, then open a pull request to propose a change. Thanks!

# Feedback is Appreciated!

If you use it and it works or doesn't work, please let me know. [zack@steinkamp.us](mailto:zack@steinkamp.us)
