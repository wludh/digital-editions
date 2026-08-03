---
layout: default
title: Personography
---

<!-- This Liquid for loop pulls from the persnames csv in _data, then loops through the rows and places the data in a list element block. --> 

{% assign people = site.data.persnames | sort: "LastName" %}
<ul class="list-group">
	{% for person in people %}
  <li class="list-group-item" id="{{person.id}}">
<strong> {{person.LastName}}, {{person.FirstName}}</strong><br />
 ID: {{person.id}}<br />
 Reference: <a href="{{person.ref}}" target="_new">{{person.ref}}</a><br />
 Occupation: {{person.occupation}}<br />
 {% if person.note %}Note: {{person.note}}<br />{% endif %}
 Found in: <a href="{{person.foundIn | absolute_url }}">Link</a> {% if person.foundIn2 %}, <a href="{{person.foundIn2 | absolute_url }}">Link 2</a>{% endif %}
</li>

{% endfor %}
</ul>