---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---

**Undergraduate Thesis**

<span style="color:#DFA321;"> ¿Los seguros sociales y atención médica mejoran la salud? Evidencia del Seguro Popular en México > </span>, _Adviser: Enrique Seira, 2023_

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
