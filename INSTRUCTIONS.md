# APIs
## Week 7 Lab: Secure API
##### Due Monday, March 21, 2016
For this project, you will be building a Rails-based application which serves up only an API. This API will be responding with JSON and will be secured against unauthorized access.

## Deliverables
* Link to a GitHub repo
* Rails 4.2 application
* Including the test runner script (unmodified)

Models:

* User `username:string` `password_digest:string`
* Post `title:string`

### Normal Mode
Create a Rails app that allows a client to list all Posts via an API.

* GET `/api/posts` to return all posts
* GET `/api/posts/:id` gives details of a post
* POST `/api/posts` creates a post
* PUT `/api/posts/:id` updates a post
* PATCH `/api/posts/:id` updates a post
* DELETE `/api/posts/:id` deletes a post

However, this API will follow standard conventions, meaning:

1. It is secured with an OAuth Password Grant (https://github.com/doorkeeper-gem/doorkeeper)
2. So, you need to post credentials to `/oauth/token` with username, password, and "grant_type: 'password'" to get an access token.
3. Access Tokens will then be supplied as Authorization Headers: `Authorization: Bearer #{token}`
4. The JSON returned will be customized with JBuilder and will look like the following

/api/posts
```
{
  posts: [
    {"id": 2, "title": "Yolo"},
    {"id": 3, "title": "Bolo"},
  ]
}
/api/post
```
```
{
  post: {
    "id": 2,
    "title": "Yolo"
  }
}
```
To test your API, run the [api_runner.rb](https://github.com/tiy-hou-q1-2016-rails/week-7-api-runner) by running `ruby api-runner.rb` while your rails app is running. It should output the following. If it doesn't, something is wrong with your code.
```
Should have 401 if I request api/posts
Creating a User
Creating an oauth token to user
Found 0 posts
Created post with id: $id
Setting title to Macbook
Title is now MacBook
Deleting...
Found 0 posts
Deleting the user to clean up
```

### Difficult Mode
1. Add Comments to the API, returning a nested comment list when I ask for `/api/posts/4`.
2. Add the ability to add comments by posting to `/api/posts/4/comments`

### Epic Mode
1. To the homepage, add a JavaScript script that will allow the browser to sign up, and sign in
2. Enhance the posts to have a content:text and seed with several long posts
3. When you load the page, use JavaScript (jQuery or equivalent [fetch]) to request from /api/posts and load them on the page, displaying their time to read.


## Notes and Links
* https://github.com/doorkeeper-gem/doorkeeper
* https://github.com/httprb/http/wiki/Authorization-Header
* http://getpostman.com/
