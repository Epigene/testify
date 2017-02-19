# testify.host
This app uses the `rspec-scaffold` gem to receive ruby code and build RSpec test scaffold for it.

## Setup

Consult Gemfile for Ruby version and gems used.  
You will need to create local versions of `.env` and `database.yml` files. Consult respective \_example files.  

## Use

The app exposes an API endpoint at /api path.
POSTing to it with needed form data will provide a JSON response. Consult specs for details.

The app itself uses this API to process requests made from the form at root path.  
