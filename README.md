# Untitled Project - The Cyber Laser Bison Story.

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

🚀 HTMX is not just another web development library; it's pure web development magic! Think of it as your secret potion to create dynamic, interactive, and fast web applications with minimal effort.   No "React" in sight, no frameworks.  We bring the "Hype" back into Hyper Text Markup Language.

The Untitled Project is basically a learning tool.  Its an interactive experience that demonstrates the
unstopable power of using Lisp Flavored Erlang on the backend and HTMX on the front.

Each micro lesson provides both backend and frontend code for the reader to observe and interact with while
not having to setup the full stack in a safe and controlled environment.

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

[x] Provide a simple working LFE web server that serves html.

[x] Provide an example of serving htmx from LFE.

[x] Add github actions for quick test results.

[ ] Add github action to create container

    [ ] Update instructions on how to run container.

[ ] Create a playground which serves up simple editable html page and a lfe handler.

Post Spawnfest

[ ] Provide advanced examples of per user processes linked to a single page (advanced, probably after spawnfest).

[ ] Create "export" of custom sandbox function for use in users project.

[ ] Implement the "debug" HTMX extension.

## License [&#x219F;](#table-of-contents)

Apache License, Version 2.0

Copyright © 2023, Wade Mealing <wmealing@gmail.com>.

<!-- Named page links below: /-->

[logo]: https://avatars1.githubusercontent.com/u/3434967?s=250
[logo-large]: https://github.com/spawnfest/UntitledProject/blob/main/priv/images/lazer-bison.jpeg
[github]: https://github.com/spawnfest/UntitledProject
[gh-actions-badge]: https://github.com/spawnfest/UntitledProject/workflows/build/badge.svg
[gh-actions]: https://github.com/spawnfest/UntitledProject/actions?query=workflow%3Abuild+
[lfe]: https://github.com/lfe/lfe
[lfe badge]: https://img.shields.io/badge/lfe-2.1-blue.svg
[erlang badge]: https://img.shields.io/badge/erlang-19%20to%2025-blue.svg
[version]: https://github.com/spawnfest/UntitledProject/blob/master/.github/workflows/cicd.yml
[github tags]: https://github.com/spawnfest/UntitledProject/tags
[github tags badge]: https://img.shields.io/github/tag/spawnfest/untitled-project.svg
[github downloads]: https://img.shields.io/github/downloads/ORG/untitled-project/total.svg
