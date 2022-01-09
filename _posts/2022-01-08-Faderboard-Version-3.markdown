---
layout: post
title: Faderboard Version 3
date: '2022-01-08 12:00:00'
categories: post
entry:
  source: post
---

# Overview

This post details a significant update to my original Faderboard device for Ableton Live. I finally made time to learn enough Max for Live to do this in the way that I always wanted.

The [prior version](/post/2021/12/01/faderboard-in-ableton.html) worked fine, but changing sounds was very cumbersome, requiring updating the sample loaded into 8 Simpler devices. This new version uses a single sample "drop zone", and offers some nice usability and capability improvements.

# Demo
Here is an instance of zs-Faderboard3 playing the example sample, sent through a Pedal device then into [Valhalla Supermassive](https://valhalladsp.com/shop/reverb/valhalla-supermassive/) on the "We Are Stardust" preset.

<iframe width="560" height="315" src="https://www.youtube.com/embed/1citpBViWqU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Get Started

Click the link below to download a .zip file including the Max for Live device (zs-faderboard3.amxd) and a nice sample file to get you started.
[zs-Faderboard3.zip](/audio/zs-Faderboard3.zip)

Simply drag the zs-Faderboard3.amxd file into your User Library in Ableton Live, or directly into a MIDI track. You can then drag a sample onto the "Drop Sample Here" area. The included .wav file is a nice example. You can also drag a clip directly from an Audio track in Ableton Live to the drop zone. Since there are no looping controls, make sure the clip is cropped to how you want it.

Set the root note for your sample.

Then move any of the Gain sliders from `-inf Db` to a positive value to start playing the sample at the pitch indicated above. The sample is triggered as soon as the Gain slider moves off of it's zero position.

You can also set each voice to its own left/right panning location.

# How It Works

The dropped sample populates a `buffer~` device. There are then 8 instances of a group of devices that will play back that buffer, starting with a `groove~` device. Each of those instances can be configured with a pitch/note to play. The Gain slider is connected to some logic/math that will trigger the `groove~` device to play once the gain is raised above `-inf Db`. Open it up and check it out!

# Feedback is Appreciated!

If you use it and it works or doesn't work, please let me know. [zack@steinkamp.us](mailto:zack@steinkamp.us)
