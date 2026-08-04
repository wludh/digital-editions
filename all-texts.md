---
title: All Texts
layout: default
---

<div class="row">
<!-- makes an array of pages where the yaml metadata has status:live -->
{% assign all = site.documents | where:"status","live"%}

  {% for card in all  %}

<div class="card">
  <a href="{{card.url | relative_url }}"><img src="{{ site.baseurl }}{{card.image}}" class="card-img-top" alt="..."></a>
  <div class="card-body">
    <h3 class="card-title">{{ card.title }}</h3>
    <p class="card-text">{{ card.author }}</p>
    <p class="card-text">{{ card.description }}</p>
    <a href="{{card.url | relative_url }}" class="btn btn-info">Read it</a>
  </div>
</div>
{% endfor %}
</div>