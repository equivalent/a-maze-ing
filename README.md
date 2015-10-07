# Maze App

This repo is my solution for technical task asked for interview:

http://which-technical-exercise.herokuapp.com/exercises

```md
Build a Rails application that generates and solves a Maze. You will be
assessed primarily on your:

  - Testing approach
  - Solution design
  - Code quality

Please treat this exercise as if you were writing a real business
application.
```

### Solution resources

Solution is hosted at:

* https://a-maze-ing.herokuapp.com/?height=10&width=10

Solution source-code: 

* https://github.com/equivalent/a-maze-ing
* https://github.com/equivalent/maze_magic

# My implementation process:

## Breaking down design thoughts

First question that needs to be answered: **what will be the value of this sotware?**.

```
You will be assessed primarily on your:
  - Testing approach
  - Solution design
  - Code quality
```

... and

```
Please treat this exercise as if you were writing a real business
application.
```

...therefore in this code solution I will **NOT** focuse on algorithm solving approach.
I will focuse on delivering end product, with potential to improve
backend/frontend later.


Another set of questions are based of how should I approach the
designing of the software?:

UX or Backend first?:

* are we building from UX towards to Backend? (Cucumber, UX Wireframes, ...)
* are we building form Backend toward to Frontend and envolving UX
  around Backend ?
* are we focusing around any particular Fronted framework or Technology
  (mobile-app application)

From software quality perspective, is the priority:

* clean code & libraries ?
* plesent UX ?
* architecture that is easier to maintain, the ease of adding features,
  team separation (maybe microservice? , hexagonal architecture?
  singe-page frontend? )
* pragmatic code (fast implementation) ?
* comprehencive Testing ?
* good Search Engine Optimatization ?
* suport of old devices (like IE6) ?
* persistance technology (SQL based DB?, NoSQL DB ?, Graph DB? ... )


I've decided to focus on deliver pragmatic web-application which primary
content delivery will be via static HTML.

Frontend  can be later refactored to use Rails RJS to async serve results,
or we can introduce API endpoint and refactor the frontend to use Frontend framework
(EmberJS, Angular, ...)

In terms of Backend first I'll create the Maze generating functionality
inside the Rails app and then refactor it to own library.

As Maze generating/solving process could potentionaly take some time and slow down client
waiting for response a good idea would be to serve with via Evented server
(EventMachine), or easier way generate it as a background job and either
client will query: "is the maze ready?", or server would push
notification to client when the maze is ready (Chrome Push
Notifications)

I will focuse on the software beeing easier to improve in the Future.

In terms of testing I could write Feature scenarios/implementations
(Cucumber, Spinach, ..) but as this is not required I will skip this.

In terms of deployment / software resision, I'll go with Git-flow
approach and deployment to Heroku. I will not do Docker container or
Vagrant VM as I'm running on Linux.

Persistance layer is not important so I'll store the maze/solutino is cache
store.


## Breaking down tasks

As the decision was to go with "Backend towards Frontend" This will be
the steps I'll focus on.

1. generating app
2. maze generating lib.
4. presentation of maze in frontend
3. maze solving
5. presentation of maze solution in frontend

### 1. generating app

We will generate Rails 4.2.4 on Ruby 2.2.3

```sh
mkdir ~/apps/maze-task
cd ~/apps/maze-task
rvm install ruby-2.2.3
echo 2.2.3 > .ruby-version
echo maze-app > .ruby-gemset
cd .
# ruby-2.2.3 - #gemset created ~/.rvm/gems/ruby-2.2.3@maze-app
gem install bundler rails

# I don't need database so I'll skip active record, I'll user RSpec for
# testing so I skip native Rails tests
rails new maze-app --skip-active-record --skip-test-unit
```

next steps

* updates in Gemfile adding RSpec
* bootstrap RSpec

### 2. Maze Generating

I've created lib [maze_magic](https://github.com/equivalent/maze_magic) that uses
"Recursive Backtracking" Algorithm"

The lib generates a two dimensional Array of Singleton objects that
represents the walls, passages. I will further reference these objects
in this article as *Maze Representation Objects*

### 3. Render the maze in frontend

We will decorate the Maze Representation Obects so that they render HTML

TODO


## Additional Sources of info:

* http://weblog.jamisbuck.org/2010/12/27/maze-generation-recursive-backtracking
* http://www.jamisbuck.org/mazes/
* https://gist.githubusercontent.com/jamis/756896/raw/ef1436f848e646720bfe7087ee17b98692af0940/kruskals.rb
* http://www.jamisbuck.org/mazes/
* http://weblog.jamisbuck.org/2010/12/27/maze-generation-recursive-backtracking
