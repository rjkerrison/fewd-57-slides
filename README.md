# Remark slides + Jekyll

This is a repo with the basics for creating a website repository of presentations.

It uses [**Jekyll**][jekyll], a site preprocessor,
and [**remark**][remark], a slideshow generator.

## Getting started

Prerequisites:

- [Jekyll][jekyll]. On Mac OS, you can install with `gem install jekyll`.

To run the site locally, execute

```sh
jekyll serve
```

Then head to http://localhost:4000.
You'll see a link to _Example Presentation_,
where an example presentation awaits.

### How it works

**[Jekyll][jekyll]** picks up files with YAML frontmatter,
such as the below extract from [`example.remark`](example.remark):
```markdown
---
layout: presentation
title: Example Presentation
permalink: /example
---

# Example Presentation

…
```

Here, it is the line `layout: presentation` which tells Jekyll
to use the presentation layout template at [`_layout/presentation.html`](_layout/presentation.html).

Inside [`_layout/presentation.html`](_layout/presentation.html),
**[RemarkJS][remark]** creates the presentation based on the markdown.

You can save presentation pages as either `*.html` or `*.remark`. See [_a note on `.remark` files_](#a-note-on-.remark-files) below.

### A note on `.remark` files

For convenience, there's a plugin [`_plugins/remark-converter.rb`](_plugins/remark-converter.rb)
which converts files with the extension `.remark` to `.html` files,
and there's an included [`.vscode/settings.json`](.vscode/settings.json)
override which interprets `.remark` files as `Markdown` for syntax highlighting.

Alternatively, saving those as `.html` files will work too.
If deploying to GitHub Pages, the `.remark` files should be saved as `.html` files
as the plugin won't run.

Saving them as `.markdown` will cause **Jekyll** to preprocess them,
which will break **Remark**'s ability to generate presentations. 


## Example structure

If you're using this to create slides for teaching purposes,
you may want to break down your slides by topic.

```sh
.
├── index.md
├── javascript
│   ├── reactjs.remark
│   └── vanilla.remark
├── python.remark
├── rust
│   ├── ownership.remark
│   └── macros.remark
└── stylesheets.remark
```

As long as all files have `layout: presentation` in their YAML frontmatter,
Jekyll will convert them to presentations.
If you need to override their URL, you can set the `permalink:` property to do so.

As a bonus, anything with a valid string `title:` property will show up in the [`index.md`](index.md) homepage.

[remark]: https://github.com/gnab/remark "gnab/remark on GitHub"
[jekyll]: https://jekyllrb.com/ "jekyll official site"
