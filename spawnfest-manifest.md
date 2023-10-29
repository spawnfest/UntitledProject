Hello spawnfest judges.

This is my first time in this competition, so I'm hoping that I dont' break the rules or do anything unbecoming.

* Resources used during the competition:

README - Based on [This](https://gist.githubusercontent.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc/raw/d59043abbb123089ad6602aba571121b71d91d7f/README-Template.md)  Basically a full rewrite, i borrowed headings and layout from this.

Barista - https://github.com/lfe-http/barista - I didn't write the webserver, this exits already.
Lanes - https://github.com/lfe-http/lanes - I didn't write this.

Build tests - based on [this](https://github.com/wmealing/CI-CD-TEST) which was modified.

Lazer bison - From the htmx.org twitter owner.  He suggested this was the path to world domination.

I have not written a web application before, (I'm a C programmer by trade) this is quite a lot more wierder than I expected.

I have more written in the security context about XSS that is unable to be included.

Running the project:

 - Check out the code:
	git clone https://github.com/spawnfest/UntitledProject.git
 - Build it:
	rebar3 do compile, lfe compile
 - Run it:
	rebar3 lfe run

Note:
  - No AI was used in the making of this project. 
  - Github actions run tests ! 
  - Github actions builds (but doesn't publish) a container, thats on my list.

Barista isnt showing what happens to error 500s!  I had to bruteforce error conditions !


