# Heroku Buildpack for Opendylan

Dylan is a multi-paradigm functional and object-oriented programming language. It is dynamic while providing a programming model designed to support efficient machine code generation, including fine-grained control over dynamic and static behaviors.

This buildpack enables [opendylan](http://opendylan.org/) in [Heroku](https://www.heroku.com/)

## User manual

Use it as a normal Heroku buildpack (https://devcenter.heroku.com/articles/third-party-buildpacks#using-a-custom-buildpack)

You should: 
* Have your main .lid at the root directory of the project
* Include all dependencies in your project; you can (and should!) use git submodules. You need to register the location of every needed .lid (http://opendylan.org/documentation/getting-started-cli/adding-new-libraries.html).
* Your project should compile to an executable. 

There's a [hello-world](https://github.com/rjmacready/heroku-opendylan-helloworld) (http://opendylan-helloworld.herokuapp.com)
And a [http-server-demo](https://github.com/rjmacready/heroku-http-server-demo) (http://http-server-demo.herokuapp.com)

### Caveats

This buildpack assumes a x64 machine (we need this to download the right version of the compiler) and a 10.04 ubuntu compatible machine (required by libgc.so).

As we need to download the compiler and compile from scratch, compiling may take a while... we try to use the <a href="https://devcenter.heroku.com/articles/buildpack-api#caching">cache</a> though

## Developer notes

The bin/ and lib/ directories inside the _build will be the "released" binaries; the Procfile calls a sh script because we need to HACK LD_LIBRARY_PATH

## TODO

* Generate Procfile from project (deft)
* Configurations: -force download of compiler, -force of build
