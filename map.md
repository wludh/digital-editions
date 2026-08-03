---
layout: map
title: Places + Map
---

<h1>Places</h1>

{% assign places = site.data.places | sort: "Name" %}
<ul class="list-group">
	{% for place in places %}
  <li class="list-group-item" id="{{person.id}}">
<strong> {{place.Name}}</strong><br />
 ID: {{person.id}}<br />
 Reference: <a href="{{person.ref}}" target="_new">{{person.ref}}</a><br />
 Occupation: {{person.occupation}}<br />
 {% if person.note %}Note: {{person.note}}<br />{% endif %}
 Found in: <a href="{{person.foundIn | absolute_url }}">Link</a>
</li>

{% endfor %}
</ul>