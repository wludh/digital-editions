---
layout: default
title: Proceedings of the Rockbridge Historical Society
---

"Since its inception, the Rockbridge Historical Society has not only served its community by providing original public programs about local history, but has also published them as a lasting resource for generations since, and audiences well beyond Rockbridge.  In 2017, RHS published its 14th Volume of Proceedings: now totaling over 250 printed essays and program accounts since its first volume in 1941."

<a href="https://dspace.wlu.edu/handle/11021/33112">View the Proceedings in the W&L Digital Archive</a>
<img id="smallbrick" src="{{ site.baseurl }}/assets/img/smallbrick.png">


### Volume 1 

{% assign articles = site.proceedings | where:"volume","one"  %}
<ul>
	{% for article in articles  %}
	<li><a class="link-info" href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 5

{% assign articles = site.proceedings | where:"volume","five"  %}
<ul>
	{% for article in articles  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 10

{% assign articles = site.proceedings | where:"volume","ten"  %}
<ul>
	{% for article in articles  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 12

{% assign articles = site.proceedings | where:"volume","twelve"  %}
<ul>
	{% for article in articles  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 

### Volume 13

{% assign articles = site.proceedings | where:"volume","thirteen"  %}
<ul>
	{% for article in articles  %}
	<li><a href="{{ article.url | relative_url }}">{{ article.title }}</a></li>
	 {% endfor %}
</ul> 