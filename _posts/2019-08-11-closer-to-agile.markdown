---
layout: post
title: Closer to Agile
date: '2019-08-11 23:09:30'
categories: post
entry:
  source: post
  data:
    thumb_url: ''
    title: Closer to Agile
    excerpt: 'As a software development team, we should be relentness in our pursuit of efficiency. Not only in our algorithms, but more importantly in how our team gets work done. This document describes what I have learned in this area over the last 20 years.'
---
As a software development team, we should be relentness in our pursuit of
efficiency. Not only in our algorithms, but more importantly in how our
team gets work done.  This document describes what I have learned in this area
over the last 20 years.

## Efficiency
Let's first clarify this concept. What do we mean by 'efficiency' in this
context? The simple definition of efficiency is the amount of output for a
given amount of input. In the context of a commercial software development team, the input is the
amount of time the people in the team give to their jobs, and the output is the amount of
value that team delivers to their business.

Any team activity that is not directly contributing to shipping value is
friction in the system. Some frictions are necessary (e.g.  the friction of a
bearing in an electric motor providing a guiding force to keep the motor
spinning precisely on a given axis), and some frictions are unnecessary (e.g. a
malfunctioning brake system that engages the brakes of a car all the time, slowing it down).

Sometimes an improvement in efficiency can be made by changing the design of a
system. By transitioning from steam power to gasoline power, automobiles became
more efficient. By transitioning from gasoline to electric, cars have became even
more efficient. Similarly, a team who is at maximum efficiency within the
constraints of one system of working may be more or less efficient in a
different system of working.

Our jobs as members of a team are to maintain a vigilance of skepticism for how
the team operates. What worked yesterday may not work today. Tomorow may bring
new learning or innovation that brings us toward better efficiency. It is our
job to identify these opportunities to improve efficiency and act on them.

## Systems of Working - The Role of Leadership
There are as many systems of working as there are development teams. One
important dimension in evaluating a system of working is identifying the role
of leadership in the team.

### In this corner: Command and Control
On one end of the leadership scale is what I call "Command and Control". This
is the typical single-leader taskmaster model. In this system of working, there
is a fleet of "resources" (they are never referred to as "people") who answer
to a leader. This leader's primary activity is to delegate tasks across the
team. The team members are judged based upon how many tasks they complete in a
given amount of time. The team is rewarded for shipping a set of predefined
tasks by a particular date. The date is normally determined outside the team.

Benefits:
* Outside parties are happy to have received a date where their work will be "delivered".
* Fixed scope of work decided early on facilitates resource planning.
* One way to work with a team of disengaged or low-skilled employees.

Drawbacks:
* Encourages apathy, discourages individual ownership.
* Guaranteed waste (padding delivery date too much) or burnout (delivery date too aggressive).
* Individual development is secondary concern.

### In the other corner: Self-Organizing Teams
At the other end of the scale is the "Self-Organizing Team". This is a team of
leaders. They collaborate to define the best outcome for the success of the
business and divide tasks between themselves. They know each other's strengths
and weaknesses and operate with their individual strengths when necessary. Priorities
and commitments are decided within the team after collecting input from stakeholders.
Roles within the team are fluid and decided by the team.

Benefits:
* A great environment for a motivated and engaged team. Encourages such behavior.
* Individuals feel like individuals, not cogs in a machine.
* Provides an opportunity for Agile principles to spread through the organization.

Drawbacks:
* Other parts of the organization (Finance, HR, other dev teams) may not know how to work with such a team.
* At its extreme, the role of the people-manager becomes unclear, especially regarding reviews and compensation.

### Somewhere in the middle: Servant-Lead Team
At some point between these two extremes is a model that I call a "Servant-Led
Team". This is a team with a manager whose top concern is simply the
empowerment of their team. Empowerment has many contexts -- in technical
decisions, roles and responsibilities, work style, hours, communication
mechanisms, tools, policies, etc. This is the model where the org chart looks
more like a tree, where the trunk, limbs, and branches exist only to position
the leaves and flowers for maximum effectiveness. The manager is judged on the
improvement vector of their team and their team's ability to satisfy the needs of the business.

Benefits:
* Grows an engaged team of expanding capability.
* Encourages team members to become invested in deciding priorities and setting expectations, which builds a sense of ownership.
* Provides an opportunity for Agile principles to spread through the organization.
* Fits into typical corporate model of private compensation, reviews, and rewards.

Drawbacks:
* May not work well with expectations of the rest of the business.
* Requires a mature, capable team (most are!)

The rest of this document will assume a Servant-Led model, since in my experience that is the most effective in real companies.

## The Role of Date Commitments
There is a direct connection between distance to a commitment date and team morale.  The further out a given commitment is made, the more toxic that commitment is to the organization. Let's look at some typical scenarios:

### Moving Target
In the real world, the final destination is a moving target. Perhaps the expectations of your userbase changes over time. Perhaps a system you are integrating with evolves. Perhaps the goal of your business shifts. Perhaps your competitors innovate and you need to catch up. Perhaps there is new senior leadership in your company that provides a new unique vision or strategy. In the real world, all of these things are happening __all the time__.

By making a commitment far in the future, the team sets out on a course, blindly marching to the originally understood destination. If the team or organization is not aware of the actual moving target, where the team lands on the "due date" is quite likely underwater.

### Over-Aggressive Commitment / Procrastination
These are two sides of a similar situation, and both lead to team burnout and low quality. In this scenario, a delivery commitment is made and the team works at a normal or easy pace for the first 80% of the time commitment, finishing 50% of the project. The remaining 20% of the project duration is spent working nights and weekends and taking shortcuts to "deliver" the project on time.

Those nights and weekends are not yours to take from your team. That is your team members' valuable recharge time, time to connect with friends and family, and time to persue personal interests that are not your business's software project. By taking this time from them, you are also taking away their enthusiasm to do their work. Software engineers are humans first.

The pressure of the due date also leads to shortcuts in design and implementation that decrease overall quality. So not only are you burning out your employees, but you are shipping crap at the same time.

The due date is an easy organizational and personal benchmark of success, and most people want to be successful. The further out the due date is, the wider a margin of failure is created.

### Under-Aggressive Commitment / Sandbagging
Again, this is a two-sided coin of inaccuracy or waste. Typically this scenario is created by "experienced" teams that have been burned in the past by over-aggressive commitments. In response to their lost personal time, the team learns to pad their time estimates by 1.5x, 2x, or 4x. This gives the project managers of the organization the prized "done date" they desire, and gives the employees a nice and easy job. The team then enjoys a life of foosball and ping-pong and a trickle of productivity. Invariably, the lure of the table tennis table is so strong that the team ends up in the procrastination zone toward the end of the project anyway. They fritter away their nights and weekends to hit their ship date and end up resenting their job.

## What to Do? Start Shaping Your Relationships
Do everything in your capacity to __stop__ agreeing to dates far in the future. The farther out a given date is, the wider actual margin of waste is created. For instance, if your date estimations are on average 80% accurate (something to be proud of!), in a six month project, the actual delivery will happen in a window of __5 weeks__ before or after the committed date. Welcome to the waste / burnout zone of teams who "hit their date"!

You must begin now to shape the relationships and commitments you make outside your team. It's important to have a roadmap or strategy sketched out before embarking on any large project, but that strategy needs to be re-evaluated on a regular and frequent basis to make sure it is correct in the present environment.

Take your customers along with you on the journey. Help them understand the reality of the world of moving targets. Do not fall into the trrap of people leaning on you to perfectly predict the future. That is an unreasonable expectation, and you should not set yourself and your team up for failure like that.

Make your customer a partner in your endeavor. Check in with them regularly. Show them incremental progress. Help them understand the challenges your team is facing. Ask them for their help in resolving those challenges. Get their input on prioritizing the team's work.

If they feel like they are a partner in your teams' journey, they should stop pressing for dates far in the future. They will now understand and appreciate that the team faces unpredictable challenges and that they are __necessarily__ chasing a moving target. A compassionate partner will not set you up for failure like that.
