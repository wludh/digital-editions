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
	{{place.Latitude}}, {{place.Longitude}}<br />
 {% if place.note %}Note: {{person.note}}<br />{% endif %}
 Found in: <a href="{{place.From | absolute_url }}">Link</a>
</li>

{% endfor %}
</ul>