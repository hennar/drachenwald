---
title: Archery Marshal List 
excerpt: Archery marshals across the regions of Drachenwald
toc: true
toc_label: Contents
---

__Too long; didn't read:__ Current list of warranted marshals of archery and thrown weapons in Drachenwald. 
{: .notice--primary}

{% if site.data['archery-marshal'] %}
  {% assign archery_marshal = site.data['archery-marshal'].data | sort: "name" %}

{% else %}
  {% assign company-ranks = "" %}
  The marshal list isn't available right now - please check back later.
{% endif %}

# Archery and thrown weapons marshals

<table>
  <tr><td style="font-size:14pt">🏹</td><td> Archery marshal</td></tr>
  <tr><td style="font-size:14pt">🗡️</td><td> Thrown weapons marshal</td></tr>
  <tr><td style="font-size:14pt">📜</td><td> Warranting marshal</td></tr>
</table>

## Nordmark

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Warranting</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.region == "Nordmark" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>

## Insulae Draconis

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Warranting</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.region == "Insulae Draconis" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>

## Aarnimetsä

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Warranting</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.region == "Aarnimetsä" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>


## Central

<table>
  <tr><th>Name</th><th>Archery</th><th>Thrown weapons</th><th>Warranting</th></tr>
 {% for itemAll in archery_marshal %}{% if itemAll.region == "Central" %} <tr><td> {{ itemAll.name }} </td><td style="font-size:14pt"> {{ itemAll['target-archery'] }} </td><td style="font-size:14pt"> {{ itemAll['thrown-weapons'] }} </td><td style="font-size:14pt"> {{ itemAll.warranting }} </td></tr> {% endif %}{% endfor %} 
</table>


Data last updated: {{site.data['archery-marshal'].metadata.LastUpdate}}
