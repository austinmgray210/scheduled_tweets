# The Model View Controller (MVC) Pattern

GET /about HTTP:/1.1
Host: 127.0.0.1

GET for "/about"

## Routes
Matchers for the URL that is requested

GET for "/about"

I see you requested "/about", we'll give that to the AboutController to handle

## Models
Database wrapper

User
- Query for records
- Wrap individual records

## Views
Your response body content
- Html
- CSV
- PDF
- XML

This is what gets sent back to the browser and displayed

## Controllers
Decide how to process a request and define a response