# Untitled Project - The Tank Bison with Lazer Eyes Story.

[![Build Status][gh-actions-badge]][gh-actions]
[![LFE Versions][lfe badge]][lfe]
[![Erlang Versions][erlang badge]][version]
[![Tags][github tags badge]][github tags]
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/spawnfest/UntitledProject/graphs/commit-activity)


[![Project Logo][logo]][logo-large]


##### Table of Contents

* [About](#about-)
* [Build](#build-)
* [Start the Project REPL](#start-the-repl-)
* [Tests](#tests-)
* [Usage](#usage-)
* [License](#license-)

## About [&#x219F;](#table-of-contents)

The Untitled Project is basically a learning tool.  Its an interactive experience that demonstrates the
unstopable power of using Lisp Flavored Erlang on the backend and HTMX on the front.

Each micro lesson provides both backend and frontend code for the reader to observe and interact with while
not having to setup the full stack in a safe and controlled environment. 

This project was created as a spawnfest entry, if you are a judge, you may want to look at the <a href="./spawnfest-manifest.md">spawnfest-manifest</a> which outlines about the project and its boundaries.

## Rationale [&#x219F;](#table-of-contents)


### Why HTMX ?


🚀 HTMX is not just another web development library; it's pure web development magic! Think of it as your secret potion to create dynamic, interactive, and fast web applications with minimal effort.   No "React" in sight, no frameworks.  We bring the "Hype" back into Hyper Text Markup Language.  When you couple HTMXs magic with the unstoppable terminator mindset of BEAM supervised processes, industrial grade magic is within reach.


HTMX simplifies the development of Single Page Applications (SPA, apparently web pages are apps).  It does most of 
the common webappy stuff with markup instead of writing oodles of javascript.


### Why Lisp Flavored Erlang

Lisp Flavored Erlang has tickled my fancy for a while.  I haven't had enough time to really dive into
the feature and use it in production.  I have written common lisp and erlang for some time now, deploying
both into production.

Erlang is the T-800 terminator of programming languages, when its hit or crashes it just gets right back up.  Lisp
Flavored Erlang provides alien technology to Erlang raising the bar once again.

This version of TBWLE (Untitled Project) intends to demonstrate HTMX and LFE, I will continue to feed my learning
back into this project as I learn new skills.

It would be great if people could also contribute to this project to foster a learning community around LFE and HTMX.

## Submitting bugs [&#x219F;](#table-of-contents)

This project accepts bugs and features using github issues, you can lodge one <a href="https://github.com/spawnfest/UntitledProject/issues"> here </a>

Bugs and features will be fixed when I can.  Pull Requests, are also it accepted will make my life a lot easier. Github actions are configured on this repostiory, when cloning this repo, please make sure that the current tests pass.

## Build [&#x219F;](#table-of-contents)

This program is tested and developed on Linux, it may not work on other platforms.  

```shell
$ rebar3 compile
$ rebar3 lfe compile
```

# Start the Project REPL [&#x219F;](#table-of-contents)

```shell
$ rebar3 lfe repl
lfe> (untitled_project:start)
```

Open http://localhost:8888 in your web browser and begin reading.

# Run non-interactively

```shell
$ rebar3 lfe run
```

Open http://localhost:8888 in your web browser and begin reading.

# Tests [&#x219F;](#table-of-contents)

```shell
$ rebar3 lfe ltest -tall 
```

## Usage [&#x219F;](#table-of-contents)

```shell
$ rebar3 lfe run
```

Visit http://localhost:8888 in your browser.

## Roadmap [&#x219F;](#roadmap)

☑ Create a tutorial of basic HTMX used with LFE.

☑ Provide a simple working LFE web server that serves html.

☑ Provide an example of serving htmx from LFE.

☑ Use Lanes as the router (less hassle than current)

☑ - Add github actions for quick test results.

☑ Add github action to create container

☑ Create a playground which serves up simple editable html page and a lfe handler.


Post Spawnfest


☐ Publish a container.

☐ Update instructions on how to run container.

☐ Implement all examples on the <a hre="https://htmx.org/examples/"> HTMX.org examples </a> page.

☐ Implement examples of routing specific htmx features to gen-server processes.

☐ Demonstrate emacs workflow at repl.

☐ Provide advanced examples of per user processes linked to a single page (advanced, probably after spawnfest).

☐ Create "export" of custom sandbox function for use in users project.

☐ Implement the "debug" HTMX extension on all pages.



## License [&#x219F;](#table-of-contents)

Apache License, Version 2.0

Copyright © 2023, Wade Mealing <wmealing@gmail.com>.

<!-- Named page links below: /-->

[logo]: https://github.com/spawnfest/UntitledProject/blob/main/priv/images/lazer-bison.jpeg
[logo-large]: https://github.com/spawnfest/UntitledProject/blob/main/priv/images/lazer-bison.jpeg
[github]: https://github.com/spawnfest/UntitledProject
[gh-actions-badge]: https://github.com/spawnfest/UntitledProject/workflows/build/badge.svg
[gh-actions]: https://github.com/spawnfest/UntitledProject/actions?query=workflow%3Abuild+
[lfe]: https://github.com/lfe/lfe
[lfe badge]: https://img.shields.io/badge/lfe-2.1-blue.svg
[erlang badge]: https://img.shields.io/badge/erlang-26-blue.svg
[version]: https://github.com/spawnfest/UntitledProject/blob/master/.github/workflows/cicd.yml
[github tags]: https://github.com/spawnfest/UntitledProject/tags
[github tags badge]: https://img.shields.io/github/tag/spawnfest/untitled-project.svg
[github downloads]: https://img.shields.io/github/downloads/ORG/untitled-project/total.svg
