+++
date = "2016-12-21T01:25:44-08:00"
title = "Documentation"
description = "Simple documentation for Hugo"
menu = "main"
+++

## Simple Documentation for getting started with Hugo

### Understanding how it works
1. Main file is **config.toml**
    * Don't really need to understand the syntax
    * Main stuff is the baseurl, title, and theme you'll be using
    * to setup new theme just clone the git repo for that theme into themes folder and change theme = 'folderNameOfTheme' in config.toml
    * Most commands are different theme to theme
    * Every theme has an example site if you want to get started with that
2. Creating a new post
    * All posts are put underneath content->posts
    * To create a post you can do **hugo new post my-new-post**
    * It automatically shows up on the blog
3. Testing your blog
    * **hugo serve -w** deploys it locally to localhost:1313
4. Deploying to server
    * type **hugo** in the root dir and it'll generate a public folder that just contains the html files for your entire website
5. MD syntax on blog posts
    * https://github.com/adam-p/markdown-here/wiki/Markdown-Here-Cheatsheet <- nice cheat sheet for markdown syntax
    * There's all these settings you can setup in the top of the file, the main ones are:
        1. author
        2. title
        3. description
        4. tags
        5. categories
        6. menu = "main" // this puts it in the navbar
        * there's 2 types of syntax they use within these files, I don't know which language it is but the **+++** style (shown in goisforlovers.md and hugoisforlovers.md) is one that i prefer than the **- - -** seen in creating-a-new-theme
6. Modifying source code
    * All source code is in themes->themeName->layouts this usually has all the html files being used, and they use a razor syntax to link files together
7. FAQ
    * I just created a new blog post e.g. **doc.md**, why doesn't it show up in the recent posts ?
        - because its not under the post folder within content, recent widget only looks in the post folder