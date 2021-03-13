
### Welcome
- Short presentation of myself
- Attendees presentation
  - where are you from?
  - how do you use RobotFramework?
  - Python knowledge

### RequestsLibrary
- https://github.com/MarketSquare/robotframework-requests
  - 0.9
  - project structure
  - documentation 
  - examples
- https://requests.readthedocs.io/en/master/
  - original requests library documentation

### How HTTP works as an application layer protocol

### What is a REST API and why they are now so common

### How to setup a basic API testing/rpa project using the RequestsLibrary
- see README.md
- [PERSONAL LAB] setup the environment and run selfcheck
- example
  - configuration file
  - external and reusable resources
  - testcase
  - resp.text
  - logs
- [PERSONAL LAB] customize your own example with a different website
- test websites
  - https://httpbin.org/
  - https://jsonplaceholder.typicode.com/
- more on example
  - parameters
  - json body
- [PERSONAL LAB] customize your own parameter and post a json

### How to handle shared session and authentication
- httpbin Basic Auth
- branch 1-shared-session
  - advantages of common headers for sessions
- more complex example:
  - oauth2 authentication
  - different roles / scope
- global session atest setup

### How to validate the response
- branch 2-response
- response object
  - python way challenge
  - https://2.python-requests.org/en/master/api/?highlight=response#requests.Response
- json response
  - challenge assert https://jsonplaceholder.typicode.com/posts/1 contains optio
- status assertion
- implicit status assert
  - specific implicit status assert
  - nested keywords that handle negative tests
- jsonpath https://github.com/peterservice-rnd/robotframework-jsonvalidator

### What to address with api testing in your test suite
 - testing pyramid https://martinfowler.com/bliki/images/testPyramid/test-pyramid.png
   - integration and component tests as far as a whole system is up are still somehow e2e
 - setup user generator
 - data preparation setup examples

### How to use RF for basic stress tests
- RF for loops
- sh for loops
- data generation
- data driver

### How to use pabot and RequestsLibrary to execute many requests in parallel
- realworld examples: 
  - user delete
  - data sync
  - example unsubscribe 
- data driver + pabot
  - test level split
  - different configurations

### We will use the new 0.8 pre-release version and we will talk about the development roadmap
- new keyword structure
- project and next milestones
- how to contribute
- challenge cookie test
