# What's new in RequestsLibrary 0.9

## Intro

Who am I, since 2020 I maintain RequestsLibrary.  
I won't talk only about 0.9 but more features and changes introduced in the last year. 

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
- **8+ Pull Requests** finally someone noticed ... Anssi Syrjäsalo (creator of RESTInstance lib)
- Important: if you have libraries but you don't care / have time to maintain move under: MarketSquare

#### Problems we faced:  
- Since we had to deal with very unstable test environment [retry method and status lists](https://robotframework-requests.netlify.app/doc/requestslibrary#Create%20Session)
- Hard to debug and hidden fails problems ([see hard to debug log](../failonstatus/hard_to_debug_log_example.html))

### Robocon 2020 

- Talking with Pekka and others I collected some ideas (like fire and forget requests 
  without previously having a session)
- But there were some problems in the current keyword parameters signatures:
  - session alias could not be removed since was mandatory and the first parameter
  - not all original requests parameters were mapped 
  - parameters order were different between keywords
  - everything was in one file...

A radical change was needed... so I prepared a big refactor with more CI and tests 

### RobotFramework Italian's Meetup

I took the opportunity of Italian's Meetup to further discuss 
and organize coding events to contribute to the library.

## New Keyword Structure and 0.8 version

- Approach more clean and transparent to the original Requests library
  - removing custom parsing or behavior
  - using [\*\*kwargs to allow all parameters](https://robotframework-requests.netlify.app/doc/requestslibrary#GET) (also in the future) supported by Requests
- [Kew Keyword Structure Issue](https://github.com/MarketSquare/robotframework-requests/issues/258)

### Implicit Assert On Status

And finally the original fail on error idea used in CHILI has been integrated in the new `* On Session` keywords.  
The implementation is easy and relies on the original requests [raise_for_status()](https://2.python-requests.org/en/master/_modules/requests/models/#Response.raise_for_status) method.

### Best Practices

Problems might arise when you embed requests in more complicated keywords ([see test_response example](../response/test_response.robot))
that might fail on purpose or where you need to test the response on failure. 

### Common pitfalls 

- Urls with parameters (= symbol in url)
- String as arguments or missing spaces

## Session-less requests in 0.9 version

They're quite self-explanatory :)
[pre-release 0.9 version](https://github.com/MarketSquare/robotframework-requests/blob/master/README.md)
