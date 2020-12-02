
### Welcome
- Short presentation of myself
- Attendees presentation
  - where are you from?
  - how do you use RobotFramework?
  - Python knowledge

### RequestsLibrary
- https://github.com/MarketSquare/robotframework-requests
  - 0.8
  - project structure
  - documentation 
  - examples
- https://requests.readthedocs.io/en/master/
  - full documentation

### How to setup a basic API testing/rpa project using the RequestsLibrary
- see README.md
- selfcheck
  - httpbin
- example
  - configuration file
  - external and reusable resources
  - testcase
  - resp.text
  - logs

### How to handle shared session and authentication
- httpbin Basic Auth
- branch 1-shared-session
  - advantages of common headers for sessions
- more complex example:
  - oauth2 authentication
  - differnt roles / scope
  - setup user generator
- global session atest setup

### How to validate the response
- response object
  - python way challenge
  - https://2.python-requests.org/en/master/api/?highlight=response#requests.Response
- json response
  - challenge assert https://jsonplaceholder.typicode.com/posts/1 contains optio
- status assertion
- implicit status assert
  - specific implicit status assert
  - nested keywords that handle negative tests

### What to address with api testing in your test suite
 - testing pyramid

### How to use RF for basic stress tests
- RF for loops
- sh for loops
- data generation
- data driver

### How to use pabot and RequestsLibrary to execute many requests in parallel
- realworld examples: 
  - user delete
  - data sync
- data driver + pabot
  - test level split
  - different configurations

### We will use the new 0.8 pre-release version and we will talk about the development roadmap
- new keyword structure
- project and next milestones
- how to contribute
