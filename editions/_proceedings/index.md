---
layout: default
title: Proceedings of the Rockbridge Historical Society
---

"Since its inception, the Rockbridge Historical Society has not only served its community by providing original public programs about local history, but has also published them as a lasting resource for generations since, and audiences well beyond Rockbridge.  In 2017, RHS published its 14th Volume of Proceedings: now totaling over 250 printed essays and program accounts since its first volume in 1941."

<a href="https://digitalarchive.wlu.edu/islandora/proceedings-rockbridge-historical-society">View the Proceedings in the W&L Digital Archive</a>
<img id="smallbrick" src="{{ site.baseurl }}/assets/img/smallbrick.png">


### Volume 1 
{% assign articles = site.proceedings | where:"status","live" %}
{% assign articles1 = articles | where:"volume","one" %}
<ul>
	{% for article in articles1 %}
	<li><a class="link-info" href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 5

{% assign articles2 = articles | where:"volume","five" %}
<ul>
	{% for article in articles2  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 10

{% assign articles3 = articles | where:"volume","ten"  %}
<ul>
	{% for article in articles3  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 12

{% assign articles4 = articles | where:"volume","twelve"  %}
<ul>
	{% for article in articles4  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 13

{% assign articles5 = articles | where:"volume","thirteen"  %}
<ul>
	{% for article in articles5  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 