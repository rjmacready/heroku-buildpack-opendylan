# Heroku Buildpack for OpenDylan

Dylan is a multi-paradigm functional and object-oriented programming language. It is dynamic while providing a programming model designed to support efficient machine code generation, including fine-grained control over dynamic and static behaviors.

This buildpack enables the [opendylan implementation](http://opendylan.org/) in [heroku](https://www.heroku.com/)

## User manual

Use as a regular heroku buildpack (https://devcenter.heroku.com/articles/third-party-buildpacks#using-a-custom-buildpack)

You should: 
* Have your main .lid at the root directory of the project
* Include all dependencies in your project; you can (and should!) use git submodules. You need to register the location of every needed .lid (http://opendylan.org/documentation/getting-started-cli/adding-new-libraries.html).
* Your project should compile to an executable. 

There's a hello-world: https://github.com/rjmacready/heroku-opendylan-helloworld

### Caveats

This buildpack assumes a x64 machine (we need this to download the right version of the compiler) and a 10.04 ubuntu compatible machine (required by libgc.so).

## Developer notes

...


