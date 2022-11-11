# Intro to Sinatra

In this section, what we will be working on is building an API. 

### Lecture Take Aways

- Request-response cycle
- APIs
- Active Record
- Rack
- Sinatra
- Routes
- HTTP methods
- Params
- Dynamic Routing

### Lecture Objectives

- Explain how the web works, including request-response cycle
- Understand what an API is and its role in the way the web works
- Explain how Active Record, Rack, and Sinatra tie together
- Demonstrate the full request-response cycle using a Sinatra GET route and Postman

### Lecture Deliverables

- Implement Sinatra with the existing application domain 
- Create an Organizations Controller
- Define a route that will return all organizations in JSON format upon a request
- Test request and response results using Postman
- Define a route that will return one instance of organizations in JSON format upon a request

### Internet Review

- What does a full stack web application entail? 
    1. front and back end 
    2. client and server side interactions 
    3. front end GUI (graphical user interface) and associated back end database 
- What the client vs server? 
    1. client is what the user sees (web page, etc), interacts with the DOM (frontend)
    2. server is what handles requests from the client (backend)
        a. receives requests and sends responses
- What does API stand for?
    1. Appliction Programming Interface
    2. Broad term applies to any program. In this context (API) it refers to the interface we use to interact with a web server. Hitting end points and getting responses. API lives in the server. Interacted with from the client.
    3. API Endpoint => routes in our controllers. A pattern that we can send a request to and if our request matches that pattern out API will respond in a particular way. 
- Explain the request/response cycle
    1. Client makes a requestm server takes in request and sends back the response
- What is MVC
    1. Model, View, Controller. A seperation of responsibility
    2. Models = Classes (where our associtions live)
    3. View = what the user sees 
    4. Controller = what the Model and the Viewer use to handle requests and responses between eachother
        a. classes that define routes and describe how to handle incoming requests that match the routes 
- What is HTTP? 
    1. hyper text transfer protocal 
    2. set of rules to govern how data gets moved from one place to another
    3. a request triggers a transfer
    4. Attributes: headers, body, method, content-type, url(path)
- When a request is made, what determines the path of the request? 
    1. fetch request argument
    2. https://amason.com/products ("/products" is the path - part after the domain)
- Define the common HTTP Verbs used to perform CRUD actions:
    1. POST
    2. PATCH (partial update)
    3. DELETE
    4. PUT (replace)
- What is the difference between the following status codes: 200, 300, 400, 500
    200: success codes (indicated as "ok" in response object we get back from fetch)
    300: used on server side apps to redirect from one route to another - send another request
    400: client or user errors 
    500: indicate server side errors - developer errors 
- FETCH: returns an object called a promise 
# Sinatra

### What is Sinatra? 

- A DSL (domain specific language) used for creating simple web applications
- A framework implemented in Ruby - Sinatra is a gem that gives us access to methods 
- Uses Rack under the hood
- A great introduction to Ruby on Rails

### How to create a Sinatra application?

- Install the Sinatra gem into application and manually setup application with necessary files and configurations  
- Or even better use the corneal gem to generate a Sinatra application, [Corneal Gem](https://github.com/thebrianemory/corneal)

### Routing in Sinatra

Create a route for the following behaviors based on the REST Conventions:
1. Read all organizations
2. Read a single organization
3. Create a new organization
4. Update an existing organization
5. Delete an existing organization 


