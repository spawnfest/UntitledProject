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

This project was created as a spawnfest entry, if you are a judge, you may want to look at the <a href="./spawnfest-manifest.md">spawnfest-manifest</a> which outlines about the project and its boundaries.

🚀 HTMX is not just another web development library; it's pure web development magic! Think of it as your secret potion to create dynamic, interactive, and fast web applications with minimal effort.   No "React" in sight, no frameworks.  We bring the "Hype" back into Hyper Text Markup Language.  When you couple HTMXs magic with the unstoppable terminator mindset of BEAM supervised processes, industrial grade magic is within reach.

The Untitled Project is basically a learning tool.  Its an interactive experience that demonstrates the
unstopable power of using Lisp Flavored Erlang on the backend and HTMX on the front.

Each micro lesson provides both backend and frontend code for the reader to observe and interact with while
not having to setup the full stack in a safe and controlled environment.

## Rationale [&#x219F;](#table-of-contents)


### Why HTMX ?
Matt.sh talks about <a href="https://matt.sh/htmx-is-a-erlang"> HTMX being an erlang </a>, While there is
more to erlang than self-upgrading its still very cool.

HTMX puts development of Single Page Applications (SPA, apparently web pages are apps).  It appears to do
most of the common webappy stuff with markup instead of writing oodles of javascript.


### Why Lisp Flavored Erlang

Lisp Flavored Erlang has tickled my fancy for a while.  I haven't had enough time to really dive into
the feature and use it in production.  I have written common lisp and erlang for some time now, deploying
both into production.

Erlang is the T-800 terminator of programming languages, when its hit or crashes it just gets right back up.  Lisp
Flavored Erlang provides alien technology to Erlang raising the bar once again.

This verion of TBWLE (Untitled Project) intends to demonstrate HTMX and LFE, I will continue to feed my learning
back into this project as I learn new skills.


## Build [&#x219F;](#table-of-contents)

```shell
$ rebar3 lfe compile
```

# Start the Project REPL [&#x219F;](#table-of-contents)

```shell
$ rebar3 lfe repl
```

# Tests [&#x219F;](#table-of-contents)

```shell
$ rebar3 as test lfe test
```

## Usage [&#x219F;](#table-of-contents)

TBD


## Roadmap [&#x219F;](#roadmap)

[~] Create a tutorial of basic HTMX used with LFE.

☑ Provide a simple working LFE web server that serves html.

☑ Provide an example of serving htmx from LFE.

☑  Add github actions for quick test results.

☐ Add github action to create container

☐ Update instructions on how to run container.

☐ Create a playground which serves up simple editable html page and a lfe handler.

Post Spawnfest

☐ Provide advanced examples of per user processes linked to a single page (advanced, probably after spawnfest).

☐ Create "export" of custom sandbox function for use in users project.

☐ Implement the "debug" HTMX extension.

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
