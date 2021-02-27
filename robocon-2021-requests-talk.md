# What's new in RequestsLibrary 0.9

## Intro

- What guided the development.
- What is the new keyword structure with session an session-less.
- How the implicit assert mechanism on status works.
- Best practices with nested keywords.

## What guided the development

### Back in Robocon 2019

- We started working on a core part of our testing library:
  the session handling for our backend test suite
- **Session hacking RoboCon 17-01-2019**
- We were struggling with some odd behaviors:
    - (of our "custom" oauth2 implementation)
    - but also not complete logging
    - and some very tricky bugs in headers handling
  
### CHILI fork

- **CHILI fork 4-3-2019**
- Then some work ... that was useful for CHILI
  but with a little more attention that could have been useful for all the community  
- 8+ Pull Requests finally someone noticed ... Anssi Syrjäsalo (creator of RESTInstance lib)
- Important: if you have libraries but you don't care / have time to maintain move under: MarketSquare
- Fail on status

### Robocon 2020 

- Talking with Pekka and others I collected some ideas like one shot requests 
  without previously having a session
- But there were some problems in the current keyword parameters signatures:
  - session alias could not be removed since was mandatory and the first parameter
  - not all original requests parameters were mapped 
  - parameters order were different between keywords
  - everything was in one file...

A radical change was needed... 

### RobotFramework Italian Meetup

So I took the opportunity of 


- First PR 5-3-2019
- Fail on   
- Merge 

  

