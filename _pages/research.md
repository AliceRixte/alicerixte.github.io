---
layout: single
permalink: /research/
---

# Research

## Publications

{% assign pubs = site.publications | sort: "published_date" | reverse %}
{% assign current_year = "" %}


{% for pub in pubs %}
  {% assign year = pub.published_date | date: "%Y" %}

  {% if year != current_year %}
    {% if current_year != "" %}
      </ul>
    {% endif %}
  {% endif %}

  {% if year != current_year %}
  <h3>{{ year }}</h3>
  <ul>
  {% assign current_year = year %}
  {% endif %}

<li>
  {{ pub.authors }}.
  <a href="{{ pub.pdf }}">{{ pub.title }}</a>.
  {% if pub.conference %} <em>{{ pub.conference }}</em>{% endif %}
  {% if pub.published_date %}. {{ pub.published_date | date: "%B %Y" }}{% endif %}
  —
  <small>
    {% if pub.pdf %}
      <a href="{{ pub.pdf }}" target="_blank" rel="noopener noreferrer">PDF</a>
      {% if pub.slides or pub.url %} · {% endif %}
    {% endif %}

    {% if pub.slides %}
      <a href="{{ pub.slides }}" target="_blank" rel="noopener noreferrer">Slides</a>
      {% if pub.url %} · {% endif %}
    {% endif %}

    {% if pub.url %}
      <a href="{{ pub.url }}">Blog</a>
    {% endif %}
  </small>
  <!-- </div> -->
</li>

{% endfor %}
</ul>

## Seminars

{% assign sems = site.seminars | sort: "published_date" | reverse %}
{% assign current_year = "" %}


{% for pub in sems %}
  {% assign year = pub.published_date | date: "%Y" %}

  {% if year != current_year %}
    {% if current_year != "" %}
      </ul>
    {% endif %}
  {% endif %}

  {% if year != current_year %}
  <h3>{{ year }}</h3>
  <ul>
  {% assign current_year = year %}
  {% endif %}

<li>
  {% if pub.authors %} {{pub.authors }}.{% endif %}
  <a href="{{ pub.slides }}">{{ pub.title }}</a>.
  {% if pub.conference %} <em>{{ pub.conference }}</em>{% endif %}
  {% if pub.published_date %}. {{ pub.published_date | date: "%B %Y" }}{% endif %}
  —
  <small>
    {% if pub.pdf %}
      <a href="{{ pub.pdf }}" target="_blank" rel="noopener noreferrer">PDF</a>
      {% if pub.slides or pub.url %} · {% endif %}
    {% endif %}

    {% if pub.slides %}
      <a href="{{ pub.slides }}" target="_blank" rel="noopener noreferrer">Slides</a>
      {% if pub.url %} · {% endif %}
    {% endif %}

    {% if pub.url %}
      <a href="{{ pub.url }}">Blog</a>
    {% endif %}
  </small>
  <!-- </div> -->
</li>

{% endfor %}
</ul>

