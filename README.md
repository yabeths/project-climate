---
title: Project - Climate Organization
...


# Project

## Overview

The project is to construct a database for a sample organization
working on climate action. The process of developing the database
will follow the model presented in class: you will suggest requirements
on the basis of an initial interview; then you create a data model
that will go on to become the structure of the database. You will
write SQL to create, populate, update, and report on the database
to address the customer's needs.


## Artifacts

I will invite you to collaborate on a shared repository.

This repository will be the Single Source of Truth for your project.
Git keeps a history of your commits, so I encourage you to commit
anything you think is interesting (so it is logged). Git's history
includes deleted files, so feel free to delete any files or parts of
files that are distracting or that you don't want to show as your
final product.

Here are the artifacts I will be asking for in the project. The order
follows the Analysis/Design/Implementation methodology. You should
commit all artifacts to your repository and sync with the origin on
GitHub.


### Requirements Statement

A Statement of Scope is not required. If you write one, I will provide
feedback on it. If you want to try seeing how a generative AI produces
a Statement of Scope, you are welcome to experiment with that, too. If
you use generative AI, watch that the AI does not try to commit you to
features or standards that the customer did not ask for. (These features
would probably raise their costs without providing value.)


### Design

You will adapt the design in a couple of places. The project includes
a Diagrams.net diagram of the sample documents (without
normalization, relations, etc.).

If you use the design tools to help with your table additions, please
add/commit your design files so they can be part of your project
documentation!


### SQL

The project will require several batches of SQL; each will have a
different responsibility and will be needed at different stages of the
database's lifetime. The project framework includes these files; you
should adapt them as necessary.

- SQL statements to complete the table structure from an empty database
- SQL to populate the database with the sample data
- queries to answer questions the organization is interested in



## Tools

### Analysis and Design

During Analysis and Design, you will be working with the sample data
(in .html) and the ERD (in .drawio) format. The DevContainer includes
the hediet.vscode-drawio in your Codespace so you can work with
.drawio files directly. However, VSCode may not be the best tool for
this work: for the ERD you may want more screen space than the
Codespace window.

The Codespace treats .html as source; the samples may be easier to
read in preview or in a browser directly.

You can download both the .html and .drawio files from the GitHub
repository viewer (*not* the Codespace) to your local machine and work
with them there.

Or--even better: clone the repository locally and work in the cloned
directory. You can use VSCode or the Git command line to sync.


### SQL

Use the Codespace and the web-based VSCode when writing SQL: it has
the PostgreSQL installed and set up, and SQLTools configured to work
with it. I will use this Codespace configuration to test your code.
