---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

Check out all the pages we've got:

{% for page in site.pages %}
{% if page.title != nil %}
- [{{page.title}}]({{page.url}})
{% endif %}
{% endfor %}
